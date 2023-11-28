# 第八章 性能优化 之 App启动优化（二）

# 应用杀死不同方式的区别

1、点击返回杀死（finish）：会将activity杀掉但进程不会结束，如果内存不足进程可能会被杀，下次启动可能是热启动。

2、直接划掉：第一个activity会执行ondestroy，其他的不会。之后进程结束。service有的厂商会调onDestroy有的不会。

3、

## （二）启动速度优化

### 1、Android Application启动流程分析

#### （1）App基础理论

每个Android App都在一个独立空间里, 意味着其运行在一个单独的进程中, 拥有自己的VM, 被系统分配一个唯一的user ID.
Android App由很多不同组件组成, 这些组件还可以启动其他App的组件. 因此, Android App并没有一个类似程序入口的main()方法.
Android进程与Linux进程一样. 默认情况下, 每个apk运行在自己的Linux进程中. 另外, 默认一个进程里面只有一个线程—主线程. 这个主线程中有一个Looper实例, 通过调用Looper.loop()从Message队列里面取出Message来做相应的处理.
进程在其需要的时候被启动. 任意时候, 当用户或者其他组件调取你的apk中的任意组件时, 如果你的apk没有运行, 系统会为其创建一个新的进程并启动. 通常, 这个进程会持续运行直到被系统杀死.
#### （2）App启动流程

![在这里插入图片描述](https://img-blog.csdnimg.cn/20190520151230633.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI5OTY2MjAz,size_16,color_FFFFFF,t_70)

用户点击Home上的一个App图标, 启动一个应用时:
Click事件会调用startActivity(Intent), Launcer会通过Binder IPC机制, 最终通知ActivityManagerService（AMS是Android系统的一个进程，用于管理系统四大组件运行状态）去启动Activity。
该Service会执行如下操作:
第一步：通过PackageManager的resolveIntent()收集这个intent对象的指向信息.指向信息被存储在一个intent对象中
第二步：通过grantUriPermissionLocked()方法来验证用户是否有足够的权限去调用该intent对象指向的Activity.
如果有权限, ActivityManagerService会检查并在新的task中启动目标activity
第三步：检查这个进程的ProcessRecord是否存在了.若存在，直接启动activity，如果ProcessRecord是null, ActivityManagerService会创建新的进程来实例化目标activity
第四步：ActivityManagerService调用startProcessLocked()方法来创建新的进程, 该方法会通过前面讲到的socket通道传递参数给Zygote进程. Zygote孵化自身, 并调用ZygoteInit.main()方法来实例化ActivityThread对象并最终返回新进程的pid
ActivityThread随后依次调用Looper.prepareLoop()和Looper.loop()来开启消息循环
第五步：将进程和指定的Application绑定起来
第六步：在该存在的进程中调用realStartActivity()来启动Activity

### 2、App启动方式

**（1）冷启动**

App没有启动过或App进程被killed, 系统中不存在该App进程, 此时启动App即为冷启动.
冷启动的流程即为第2节所描述的App启动流程的全过程, 需要创建App进程, 加载相关资源, 启动Main Thread, 初始化首屏Activity等.
在这个过程中, 屏幕会显示一个空白的窗口(颜色基于主题), 直至首屏Activity完全启动.

**（2）热启动**

热启动意味着你的App进程只是处于后台, 系统只是将其从后台带到前台, 展示给用户.
类同与冷启动, 在这个过程中, 屏幕会显示一个空白的窗口(颜色基于主题), 直至activity渲染完毕.

**（3）温启动**
介于冷启动和热启动之间, 一般来说在以下两种情况下发生:
a.用户back退出了App, 然后又启动. App进程可能还在运行, 但是activity需要重建.
b.用户退出App后, 系统可能由于内存原因将App杀死, 进程和activity都需要重启, 但是可以在onCreate中将被动杀死锁保存的状态(saved instance state)恢复.
通过三种启动状态的相关描述, 可以看出我们要做的启动优化其实就是针对**冷启动**. 热启动和温启动都相对较快.

### 3、导致App启动慢原因
根据冷启动的时间图, 可以看出, 对于App来说, 我们可以控制的启动时间线的点无外乎:
（3.1）Application的onCreate
（3.2）首屏Activity的渲染
而我们现在的App动不动集成了很多第三方服务, 启动时需要检查广告, 注册状态等等一系列接口都是在Application的onCreate或是首屏的onCreate中做的.

### 4、实例分析

Application的onCreate有很多第三方平台的初始化工作，可以利用traceView工具来分析Application的onCreate耗时：

在onCreate开始和结尾打上trace.(注意: 需要给程序加上**写存储的权限**:)

```java
Debug.startMethodTracing("GithubApp");
...
Debug.stopMethodTracing();
```

运行程序, 会在sdcard上生成一个"GithubApp.trace"的文件.

在AS的左下角Device File Exploer中找到/sdcard/Android/data/包名/files/xxx.traces，双击打开，点击Top Down按钮排序，可以看到每个方法和它的耗时	

##### （3）对Application的onCreate优化

将第三方SDK初始化放在一个单独的线程中处理。这里用了一个InitializeService的IntentService来做初始化工作.（IntentService不同于Service, 它是工作在后台线程的.）

```java
public class InitializeService extends IntentService {

    private static final String ACTION_INIT_WHEN_APP_CREATE = "com.anly.githubapp.service.action.INIT";

    public InitializeService() {
        super("InitializeService");
    }

    public static void start(Context context) {
        Intent intent = new Intent(context, InitializeService.class);
        intent.setAction(ACTION_INIT_WHEN_APP_CREATE);
        context.startService(intent);
    }

    @Override
    protected void onHandleIntent(Intent intent) {
        if (intent != null) {
            final String action = intent.getAction();
            if (ACTION_INIT_WHEN_APP_CREATE.equals(action)) {
                performInit();
            }
        }
    }

    private void performInit() {
        AppLog.d("performInit begin:" + System.currentTimeMillis());

        // init Drawer image loader
        DrawerImageLoader.init(new AbstractDrawerImageLoader() {
            @Override
            public void set(ImageView imageView, Uri uri, Drawable placeholder) {
                ImageLoader.loadWithCircle(getApplicationContext(), uri, imageView);
            }
        });

        // init crash helper
        CrashHelper.init(this.getApplicationContext());

        // init Push
        PushPlatform.init(this.getApplicationContext());

        // init Feedback
        FeedbackPlatform.init(this.getApplication());

        // init Share
        SharePlatform.init(this.getApplicationContext());

        AppLog.d("performInit end:" + System.currentTimeMillis());
    }
}
```

GithubApplication的onCreate改成:

```java
public class GithubApplication extends MultiDexApplication {

    @Override
    public void onCreate() {
        super.onCreate();

        // init logger.
        AppLog.init();

        InitializeService.start(this);
    }
}
```

