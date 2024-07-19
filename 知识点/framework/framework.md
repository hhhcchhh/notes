# framework

![image-20240710134930542](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20240710134930542.png)

Framework学习（三）之PMS、AMS、WMS

https://blog.csdn.net/ljx1400052550/article/details/115518631

# **一、认识WMS**

## **1.1、WMS功能**

WindowManagerService（WMS）的职责是管理所有窗口的UI（Window）。

① 为所有窗口分配并管理Surface（表面）。客户端向WMS添加窗口的过程其实就是WMS为其分配一块Surface的过程，Window的本质就是Surface。

② 管理Surface的显示顺序、尺寸、位置。

③ 管理窗口动画

④ 输入系统相关（触摸事件）。当接收到一个触摸事件，它会寻找一个最合适的窗口来处理消息。

## 1.2、Window的实质

Window（窗口）是一个抽象概念，从用户角度，他是一个界面；从SurfaceFlinger角度，它是一个Layer（层），承载和界面有关的数据和属性；从WMS角度，它是一个WindowState，用于管理和界面有关的状态。

Android支持的窗口类型很多，统一可以分为三大类，另外各个种类下还细分为若干子类型，且都在`WindowManager.java`中有定义。这三类分别是`ApplicationWindow`，`SystemWindow`，`SubWindow`。

## 1.3、ViewRoot、SurfaceFling和WMS

整个界面就像由N个演员参与的话剧：SurfaceFling是摄像机，它只负责客观的捕捉当前的画面，然后真实的呈现给观众；WMS就是导演，它要负责话剧的舞台效果、演员站位；ViewRoot就是各个演员的长相和表情，取决于它们各自的条件与努力。可见，WMS与SurfaceFling的一个重要区别就是——后者只做与显示相关的事情，而WMS要处理对输入事件的派发。

## 1.4、WMS和WM的关系

### 关系

- **通信桥梁**：`WindowManager` 是应用程序与 `WindowManagerService` 之间的通信桥梁。应用程序通过 `WindowManager` 提交窗口管理请求，`WindowManager` 将请求转发给 `WindowManagerService` 进行实际处理。
- **客户端-服务器架构**：`WindowManager` 可以视为客户端，`WindowManagerService` 可以视为服务器。应用程序（客户端）向 `WindowManager`（客户端接口）发送窗口管理请求，`WindowManager` 将这些请求转发给 `WindowManagerService`（服务器）来执行具体的窗口管理操作。

## 1.4工作流程

## 1.5设计思想

见原文

# 二、认识AMS

## 1、介绍

ActivityManagerService（AMS）是系统的引导服务，引导应用进程的启动、切换、调度，四大组件的启动管理。

# 三、认识PMS

## 1、介绍

PackageManagerService（PMS）处理包管理相关的工作，比如安装、卸载应用等。PMS是系统服务，所以应用层会有个PM作为binder call client端来供使用，但PM是抽象类，所以他的实现类实际上是ApplicationPackageManager。

## 2、功能

①提供应用程序的所有信息

② 提供四大组件的信息

③ 查询permission相关信息

④ 提供包的信息

⑤ 安装、卸载APK

# 四、总结

## 服务端

AMS 主要用于管理所有应用程序的Activity
WMS 管理各个窗口，隐藏，显示等
PMS 用来管理跟踪所有应用APK，安装，解析，控制权限等.
还有用来处理触摸消息的两个类KeyInputQueue和InputDispatchThread，一个用来读消息，一个用来分发消息.。

## 客户端

主要包括ActivityThread，Activity，DecodeView及父类View，PhoneWindow，ViewRootImpl及内部类等
ActivityThread主要用来和AMS通讯的客户端，Activity是我们编写应用比较熟悉的类。