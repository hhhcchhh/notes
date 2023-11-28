# Jetpack DataStore介绍

Jetpack DataStore 是一种改进的新数据存储解决方案，允许使用协议缓冲区存储键值对或类型化对象。

**DataStore 以异步、一致的事务方式存储数据，克服了 SharedPreferences（以下统称为SP）的一些缺点。**

DataStore基于Kotlin协程和Flow实现，并且可以对SP数据进行迁移，旨在取代SP。

DataStore提供了两种不同的实现：**Preferences DataStore与Proto DataStore**，其中Preferences DataStore用于存储键值对；Proto DataStore用于存储类型化对象，基于`Google protobuf`模式， `protobuf`是 `Google`自研的一种数据结构

# SP的缺点

google对SP的定义为轻量级存储，当需要存储数据比较多时，SP可能会导致以下问题：

1. SP第一次加载数据时需要全量加载，当数据量大时可能会阻塞UI线程造成卡顿

2. SP读写文件不是类型安全的，且没有发出错误信号的机制，缺少事务性API

3. commit() / apply()操作可能会造成ANR问题：

commit()是同步提交，会在UI主线程中直接执行IO操作，当写入操作耗时比较长时就会导致UI线程被阻塞，进而产生ANR；apply()虽然是异步提交，但异步写入磁盘时，如果执行了Activity / Service中的onStop()方法，那么一样会同步等待SP写入完毕，等待时间过长时也会引起ANR问题。

> 画外音：SP使用过程中导致的ANR问题，可以通过一些Hook手段进行优化，如字节发布的 **今日头条 ANR 优化实践系列 -** **告别 SharedPreference 等待**(https://mp.weixin.qq.com/s/kfF83UmsGM5w43rDCH544g)。我司项目里使用的SP也是按此优化，优化后效果还是比较显著的，所以目前项目也还没有对SP进行迁移(如迁移到MMKV或DataStore)，但并不影响我们学习新的存储姿势。

当我们不涉及到**跨进程**，并且存储**数据量比较少**的情况下，`SP`还是相当不错的选择。

# DataStore优势：

- DataStore基于事务方式处理数据更新。
- DataStore基于Kotlin Flow存取数据，默认在Dispatchers.IO里异步操作，避免阻塞UI线程，且在读取数据时能对发生的Exception进行处理。
- 不提供apply()、commit()存留数据的方法。
- 支持SP一次性自动迁移至DataStore中。

## **Preferences DataStore**

```kotlin
implementation 'androidx.datastore:datastore-preferences:1.0.0'
```

`DataStore`是兼容当前使用的`SP`的，`SP`支持的数据类型为`Int`,`Long`,`Float`,`Boolean`,`String`和`StringSet`，`DataStore`不仅支持以上六种数据结构，还支持一种额外的`Double`类型.

## 构建Preferences DataStore

### 创建一个`DataStore`对象：

```kotlin
val Context.dataStore: DataStore<Preferences> by preferencesDataStore(name = "dataStore_data")
```

通过上面的代码，我们就成功创建了Preferences DataStore，其中preferencesDataStore()是一个顶层函数，包含以下几个参数：

- name：创建Preferences DataStore的文件名称。
- corruptionHandler：如果DataStore在试图读取数据时，数据无法反序列化，会抛出androidx.datastore.core.CorruptionException，此时会执行corruptionHandler。
- produceMigrations：SP产生迁移到Preferences DataStore。ApplicationContext作为参数传递给这些回调，迁移在对数据进行任何访问之前运行。
- scope：协程作用域，默认IO操作在Dispatchers.IO线程中执行。

上述代码执行后，会在/data/data/项目包名/files/下创建名为pf_datastore的文件。后缀名并不是xml，而是**.preferences_pb**。

**注意：**不能将上面的初始化代码写到Activity里面去，否则重复进入Actvity并使用Preferences DataStore时，会尝试去创建一个同名的.preferences_pb文件，因为之前已经创建过一次，当检测到尝试创建同名文件时，会直接抛异常：

*java.lang.IllegalStateException:* 

### 读取一个`Int`型的对象：

```kotlin
val keyName = intPreferencesKey("example_counter")
val keyNameFlow: Flow<Int> = context.dataStore.data
  .map { preferences -> preferences[keyName] ?: 0
}
```

### 然后我们写入一个 `Int`型的对象：

```kotlin
val keyName = intPreferencesKey("example_counter")

suspend fun incrementCounter() {
  context.dataStore.edit { settings ->
    val currentCounterValue = settings[keyName] ?: 0
    settings[keyName] = currentCounterValue + 1
  }
}
```

### 讲解

`SP`是基于`XML`文件的`Key-Value`结构，那么 `DataStore`作为它的兼容类，也必然兼容这种`Key-Value`结构。那么`DataStore`的`Key`是`String`型的么？然而并不是，它是一种`Preferences.Key`类型，具体类型为：`androidx.datastore.preferences.core.Preferences.Key`, 可以分为以下几种类型：

>intPreferencesKey -> Preferences.Key<Int> 保存Int类型数据
>doublePreferencesKey -> Preferences.Key<Double> 保存Double类型数据
>stringPreferencesKey -> Preferences.Key<String> 保存String类型数据
>booleanPreferencesKey ->Preferences.Key<Boolean> 保存Boolean类型数据
>floatPreferencesKey -> Preferences.Key<Float> 保存Float类型数据
>longPreferencesKey -> Preferences.Key<Long> 保存Long类型数据
>stringSetPreferencesKey -> Preferences.Key<Set<String>> 保存Set<String>类型数据