# Android 性能优化

Android 性能优化的主题比较多，但**内存优化，速度优化以及包体积优化这三个主题相对来说是最重要的**。流量优化、功耗优化也很重要，不过相比前面三个开展的频率就低了很多。  

**内存优化部分**，我们会基于底层中去了解内存是什么，讲解 Android 内存的底层组成，内存增长的原理，基于原理扩展出优化方案，并进行相应实战。

**速度优化部分**，我们主要从计算机硬件和 Linux 系统层了解影响 App 速度的本质因素，并基于这些因素衍生出一些方法路，自下而上系统化地提升 App 的速度，包括启动速度、页面打开速度、渲染速度等。

**包体积优化部分**，我们会拆分一个 APK 包的构成，从包体构成的每个部分和模块逐一击破，全面提升你的包体积优化能力。

# 内存优化

## 原理：重新认识内存

为什么做个内存优化需要从操作系统层了解内存呢？

不同的应用因为环境不一样、业务不一样，很多优化方法都不能通用，只有当我们从底层掌握了内存的原理，从下而上地制定优化方案，才能适用于任何业务

当我们重新认识了内存后，我们再来看内存优化，它其实分为两部分。

- 一是物理内存的优化：也就是这个程序实际消耗的物理内存。

- 二是虚拟内存的优化：在前面我们也知道了 32 位机只有 3G 的虚拟内存可用，所以一个比较大的Android 程序，很容易就会出现虚拟内存不足的情况（64 位系统就完全不用担心这个问题）。

## 原理：掌握 App 运行时的内存模型

**从 App 运行时的内存模型中我们可以知道导致内存增长的源头，从源头出发，可以更有目的去治理内存，还能进一步分析引起增长的代码逻辑或者数据。**

### 内存描述指标

内存描述指标可以用来度量一个 App 的内存情况，也可以在我们做内存优化时，更直观地展示出优化前后的效果。常用的内存描述指标有 6 个：

- **PSS**（ Proportional Set Size ）：实际使用的物理内存，会按比例分配共享的内存。比如一个应用有两个进程都用到了 Chrome 的 V8 引擎，那么每个进程会承担 50% 的 V8 这个 so 库的内存占用。PSS 是我们使用最频繁的一个指标，App 线上的内存数据统计一般都取这个指标。
- **RSS**（ Resident Set Size ）：PSS 中的共享库会按比例分担，但是 RSS 不会，它会完全算进当前进程，所以把所有进程的 RSS 加总后得出来的内存会比实际高。按比例计算内存占用会有一定的消耗，因此当想要高性能的获取内存数据时便可以使用 RSS，Android 的 LowMemoryKiller 机制就是根据每个进程的 RSS 来计算进程优先级的。
- **Private Clean / Private Dirty**：当我们执行 dump meminfo 时会看到这个指标，Private 内存是只被当前进程独占的物理内存。独占的意思是即使释放之后也无法被其他进程使用，只有当这个进程销毁后其他进程才能使用。Clean 表示该对应的物理内存已经释放了，Dirty 表示对应的物理内存还在使用。
- **Swap Pss Dirty**：这个指标和上面的 Private 指标刚好相反，Swap 的内存被释放后，其他进程也可以继续使用，所以我们在 meminfo 中只看得到 Swap Pss Dirty，而看不到Swap Pss Clean，因为 Swap Pss Clean 是没有意义的。
- **Heap Alloc**：通过 Malloc、mmap 等函数实际申请的虚拟内存，包括 Naitve 和虚拟机申请的内存。
- **Heap Free**：空闲的虚拟内存。

### 内存数据获取

主要有 2 种方式。① 线下通过 adb 命令获取，一般用于线下调试：

```shell
adb shell
dumpsys meminfo 进程名/pid
```

② 线上通过代码获取，一般用于收集线上的内存数据：	

```java
ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
```

虽然获取方法不同，但这两种方式获取数据的原理完全一样，它们调用的都是 [android_os_Debug.cpp](https://link.juejin.cn/?target=https%3A%2F%2Fcs.android.com%2Fandroid%2Fplatform%2Fsuperproject%2F%2B%2Fmaster%3Aframeworks%2Fbase%2Fcore%2Fjni%2Fandroid_os_Debug.cpp) 对象中的 `android_os_Debug_getDirtyPagesPid` 接口

梳理下里面的逻辑，主要分为 4 部分。

1. **读取 maps 文件，获取该进程的内存详情**：
2. **调用 libmemtrack 接口获取 graphics 内存数据**：
3. **分配 Unknow 区域的内存数据**：
4. **存放获取到的内存数据并返回**：

	### 内存模型详解

我们已经知道如何获取内存数据，但是这些数据从哪儿来呢？毕竟只有知道来源，我们才能从源头进行治理。那接下来，我们就对 App 运行时的内存模型进行一个全面且详细的剖析。