# **EventBus环境配置**

## 1，依赖导入

在app module的builde.gradle文件中导入依赖库：

`imlementation ‘org.greenrobot:eventbus:3.2.0’`

## 2，配置混淆

必须配置，否则会出现，debug环境正常，release环境接收不到事件的问题

```java
-keepattributes *Annotation*
-keepclassmembers class * {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }
# Only required if you use AsyncExecutor
-keepclassmembers class * extends org.greenrobot.eventbus.util.ThrowableFailureEvent {
    <init>(java.lang.Throwable);
}
```

# **EventBus的使用**

EventBus事件三部曲：Subscriber、Event、Publisher。
Subscriber   —— EventBus的register方法，会接收到一个Object对象。
Event           —— EventBus的post()方法中传入的事件类型 (可以是任意类型)。
Publisher     —— EventBus的post()方法。

## 1，创建一个事件类

```java
public class EventMessage {
    private int type;
    private String message;
    public EventMessage(int type, String message) {
        this.type = type;
        this.message = message;
    }
    public int getType() {
        return type;
    }
    public void setType(int type) {
        this.type = type;
    }
    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }
    @Override
    public String toString() {
        return "type="+type+"--message= "+message;
    }
}
```

## **2，在需要订阅事件的模块中，注册EventBus**

> **注意事项：**
>
> 1，该方法有且仅有一个参数
>
> 2，必须用public修饰，不能使用static或者abstract
>
> 3，需要添加@Subscribe()注解

```java
public class EventBusActivity extends AppCompatActivity {
 
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }
    
    @Override
    protected void onStart() {
        super.onStart();
        //注册EventBus
        EventBus.getDefault().register(this);
    }
 
    //接收事件
    @Subscribe(threadMode = ThreadMode.POSTING, sticky = true, priority = 1)
    public void onReceiveMsg(EventMessage message){
        Log.e("EventBus_Subscriber", "onReceiveMsg_POSTING: " + message.toString());
    }
 
    //接收事件
    @Subscribe(threadMode = ThreadMode.MAIN, sticky = true, priority = 1)
    public void onReceiveMsg1(EventMessage message){
        Log.e("EventBus_Subscriber", "onReceiveMsg_MAIN: " + message.toString());
    }
 
    //接收事件
    @Subscribe(threadMode = ThreadMode.MAIN_ORDERED, sticky = true, priority = 1)
    public void onReceiveMsg2(EventMessage message){
        Log.e("EventBus_Subscriber", "onReceiveMsg_MAIN_ORDERED: " + message.toString());
    }
 
    //接收事件
    @Subscribe(threadMode = ThreadMode.BACKGROUND, sticky = true, priority = 1)
    public void onReceiveMsg3(EventMessage message){
        Log.e("EventBus_Subscriber", "onReceiveMsg_BACKGROUND: " + message.toString());
    }
 
    //接收事件
    @Subscribe(threadMode = ThreadMode.ASYNC, sticky = true, priority = 1)
    public void onReceiveMsg4(EventMessage message){
        Log.e("EventBus_Subscriber", "onReceiveMsg__ASYNC: " + message.toString());
    }
 
    @Override
    protected void onDestroy() {
        super.onDestroy();
        //取消事件
        EventBus.getDefault().unregister(this);
    }
}
```

## **3，创建订阅者发起通知**

使用eventbus.post(eventMessage) 或者 eventbus.postSticky(eventMessage)来发起事件

```java
@OnClick(R2.id.send_event_common)
public void clickCommon(){
    EventMessage message = new EventMessage(1, "这是一条普通事件");
    EventBus.getDefault().post(message);
}
 
@OnClick(R2.id.send_event_sticky)
public void clickSticky(){
    EventMessage message = new EventMessage(1, "这是一条黏性事件");
    EventBus.getDefault().postSticky(message);
}
```

# **Subscribe注解介绍**

Subscribe是EventBus自定义的注解，共有三个参数（可选）：threadMode、boolean sticky、int priority。

```java
@Subscribe(threadMode = ThreadMode.MAIN,sticky = true,priority = 1)
public void onReceiveMsg(EventMessage message) {
    Log.e(TAG, "onReceiveMsg: " + message.toString());
}
```

## **1、ThreadMode 模式**

用来设置onReceiveMsg()方法，将在哪种线程环境下被调用，共有五种模式：

### 1.1 POSTING: 默认模式

发送事件 post() 发生在哪个线程，接收事件 onReceiveMsg() 就发生在哪个线程环境中。

这种模式不需要线程切换的一些判断逻辑， 直接分发至相同的线程环境，速度快、耗时少。

### 1.2 MAIN / MAIN_ODERED: 主线程接收事件

表示无论事件在什么线程环境发布 post()，事件的接收总是在主线程环境执行。

二者之间的区别：
1.2.1 对于MAIN模式而言：
如果post事件也在主线程环境，就会阻塞post事件所在的线程环境，通俗点讲，就是在连续的多个post事件的情况下，只有在接收事件的方法执行完，才会执行下一个post事件。
如果post事件不在主线程环境，并且在主线程接收事件中存在耗时操作的话，属于是非阻塞的。
1.2.2 对于MAIN_ORDERED模式而言，无论post事件在哪种线程环境，它的执行流程都是非阻塞的。

### 1.3 BACKGROUND

不管post事件发生在那个线程环境， 事件接收始终在一个子线程中执行。

### 1.4 ASYNC

该模式表示，不管post事件处于哪种线程环境，事件接收处理总是在子线程。

## 2、sticky黏性

sticky是一个boolean类型，默认值为false，默认不开启黏性sticky特性，那么什么是sticky特性呢？
上面的例子都是对订阅者 (接收事件) 先进行注册，然后在进行post事件。那么sticky的作用就是：订阅者可以先不进行注册，如果post事件已经发出，再注册订阅者，同样可以接收到事件，并进行处理。
其实就是在sticky场景下，EventBus对事件进行了保存而已。
## **3、priority**

priority是优先级，是一个int类型，默认值为0。值越大，优先级越高，越优先接收到事件。

值得注意的是，只有在post事件和事件接收处理，处于同一个线程环境的时候，才有意义。

## 二、EventBus的原理

[EventBus核心原理其实保存这三张图就可以弄懂了，收藏一下 - 知乎](https://zhuanlan.zhihu.com/p/149176367)

[EventBus 原理解析 - 简书](https://www.jianshu.com/p/d9516884dbd4)

总结：

1、要理解EventBus就要从register，unRegister,post,postSticky方法入手。要理解register实质上是将订阅对象（比如activity）中的每个带有subscriber的方法找出来，最后获得调用的就是这些方法。订阅对象（比如activity）是一组event方法的持有者。

2、后注册的对象中sticky方法能够收到之前的stickyEvent方法的原因是EventBus中维护了stickyEvent的hashMap表，在subsribe注册的时候就遍历其中有没有注册监听stickyEvent如果有就会执行一次回调。

# EventBus缺点

1、使用的时候有定义很多event类
2、event在注册的时候会调用反射去遍历注册对象的方法在其中找出带有@subscriber标签的方法，性能不高。
3、需要自己注册和反注册，如果忘了反注册就会导致内存泄漏