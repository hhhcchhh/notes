# 第十章 进程间的通信 之 Java/Android多线程开发（二）

## 2.2）复合使用

### 1、AsyncTask

**（1）简介**

是一个线程类（如Thread类）+Handler结合的工具，用于实现异步通信、在工作线程中执行耗时任务。

采用线程池的缓存线程和复用线程

#### **（2）类定义**

AsyncTask类属于抽象类，即使用时需 实现子类，并实现其唯一的一doInBackgroud 抽象方法。

```java
public abstract class AsyncTask<Params, Progress, Result> { 
 ... 
}
// 类中参数为3种泛型类型
// 整体作用：控制AsyncTask子类执行线程任务时各个阶段的返回类型
// 具体说明：
    // a. Params：开始异步任务执行时传入的参数类型，对应excute（）中传递的参数
    // b. Progress：异步任务执行过程中，返回下载进度值的类型
    // c. Result：异步任务执行完成后，返回的结果类型，与doInBackground()的返回值类型保持一致
// 注：
    // a. 使用时并不是所有类型都被使用，若无被使用，可用java.lang.Void类型代替
    // c. 若有不同业务，需额外再写1个AsyncTask的子类
}
```

#### **（3）核心方法**

execute(Params params)：触发执行任务，需要在主线程中调用
onPreExecute()：任务开启之前回调，用于界面初始化操作。
doInBackground()：执行异步任务，在线程池中执行，返回执行结果，可调用publishProgress更新进度信息。
onProgressUpdate()：publishProgress回调，显示执行进度，在主线程中执行。
onPostExecute()：在异步任务执行结束回调，接收执行结果，在主线程中执行
onCancelled()：将异步任务设置为取消状态，被取消时回调，当他被调用onPostExecute就不会被调用。

#### **（4）使用步骤**