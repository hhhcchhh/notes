# 第三章 Java基础 （二）

## （八）Java的反射机制

### 1、什么是反射？——框架设计的灵魂

- 框架：半成品软件。可以在框架的基础上进行软件开发，简化代码。
- java代码在计算机中经历的阶段（三阶段）

![在这里插入图片描述](https://img-blog.csdnimg.cn/20190901141812427.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI5OTY2MjAz,size_16,color_FFFFFF,t_70)

反射：就是把Java类中的各种成分映射成相应的Java类，然后对这些类进行操作。（如：类的成员属性->Field、类的成员方法->Method、类的构造方法->Constructor等等）
反射的好处包括：
（1）可以在程序运行过程中，操作这些对象。
（2）可以解耦，提高程序可扩展性。
Java反射说的是在运行状态中，对于任何一个类，我们都能够知道这个类有哪些方法和属性。对于任何一个对象，我们都能够对它的方法和属性进行调用。

### 2、字节码Class对象

**（1）Class类对象——描述.class字节码文件**

将（.java类文件）经过编译后的.class字节码文件（位于硬盘上）通过类加载器（ClassLoader）加载进内存，通过java.lang.Class类对象对字节码文件进行描述。每一个类都是一个Class类的实例对象。
Class类对象是用来对.class文件进行描述。主要包括三个成员变量：

类成员变量 Field[] fields
类构造方法 Constructor[] constructors
类成员方法 Method[] methods（2）获取Class对象的方式

**（2）获取Class对象的方式**（对应三个阶段）

1. Class.forName(“全类名”)：将字节码文件加载进内存，返回class对象
在Source源代码阶段，此时java类仍位于硬盘上。多用于配置文件，将类名定义在配置文件中。读取文件，并触发类构造器加载类。
Class.forName() 方法如果写错类的路径会报 ClassNotFoundException 的异常。
2. 类名.class：通过类名的属性class获取
在Class类对象阶段，此时java类位于内存中，但没有实际对象。多用于参数的传递。
通过这种方式时，只会加载Dog类，并不会触发其类构造器的初始化。
3. 对象.getClass()：getClass（）方法在Object类中定义
在运行阶段，此时已经获取类的实例对象，多用于对象的获取字节码的方式。