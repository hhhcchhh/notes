[TOC]

原文：https://blog.csdn.net/qq_29966203/article/details/90733538

# 第三章 Java基础 （二）

# （八）Java的反射机制

## 1、什么是反射？——框架设计的灵魂

- 框架：半成品软件。可以在框架的基础上进行软件开发，简化代码。
- java代码在计算机中经历的阶段（三阶段）

![在这里插入图片描述](https://img-blog.csdnimg.cn/20190901141812427.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI5OTY2MjAz,size_16,color_FFFFFF,t_70)

反射：就是把Java类中的各种成分映射成相应的Java类，然后对这些类进行操作。（如：类的成员属性->Field、类的成员方法->Method、类的构造方法->Constructor等等）
反射的好处包括：
（1）可以在程序运行过程中，操作这些对象。
（2）可以解耦，提高程序可扩展性。
Java反射说的是在运行状态中，对于任何一个类，我们都能够知道这个类有哪些方法和属性。对于任何一个对象，我们都能够对它的方法和属性进行调用。

## 2、字节码Class对象

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

**结论：**同一个字节码文件（*.class）在一次程序运行过程中，只会被加载一次，不论通过哪一种方式获取的class对象都是同一个。

## 4、反射案例

### （4.1）Class类的动态加载

编译时刻加载的类是静态加载类，运行时刻加载的类是动态加载类。

- 需求
  写一个"框架"，在不能改变该类任何代码的前提下，可以帮我们创建任意类的对象，并且执行其中任意方法。

# （十）依赖倒置（DIP）、依赖注入（DI）和控制反转（IOC）

## 1、依赖（Dependency）

**定义**
依赖是类与类之间的连接，依赖关系表示一个类依赖于另一个类的定义，通俗来讲就是需要
**实例**
一个人(Person)可以买车(Car)和房子(House),Person类依赖于Car类和House类

```java
static class Person{

    //表示依赖House
    public void buy(House house){}
    //表示依赖Car
    public void buy(Car car){}
}
```

## 2、依赖倒置(Dependence Inversion Principle)

**定义**
高层模块不应该依赖低层模块，二者都该依赖其抽象；抽象不应该依赖细节；细节应该依赖抽象；

通俗来讲，依赖倒置原则的本质就是通过抽象（接口或抽象类）使个各类或模块的实现彼此独立，互不影响，实现模块间的松耦合。

类A直接依赖类B，假如要将类A改为依赖类C，则必须通过修改类A的代码来达成。这种场景下，类A一般是高层模块，负责复杂的业务逻辑；类B和类C是低层模块，负责基本的原子操作；假如修改类A，会给程序带来不必要的风险。此时将类A修改为依赖接口interface，类B和类C各自实现接口interface，类A通过接口interface间接与类B或者类C发生联系，则会大大降低修改类A的几率。
```java
public class Person {

//    private Bike mBike;
    private Car mCar;
    private Train mTrain;
    private Driveable mDriveable;

    public Person(){
//        mBike = new Bike();
        //mCar = new Car();
       mDriveable = new Train();
    }

    public void goOut(){
        System.out.println("出门啦");
        mDriveable.drive();
        //mCar.drive();
//        mTrain.drive();
    }

    public static void main(String ... args){
            //TODO:
        Person person = new Person();
        person.goOut();
    }
}
```

使用接口来控制执行而不是具体的类（向上转型、多态）

## 3、控制反转(Inversion of Control)

**定义**
IoC 是一种新的设计模式，它对上层模块与底层模块进行了更进一步的解耦。控制反转的意思是反转了上层模块对于底层模块的依赖控制。

```java
public class Person2 {

    private Driveable mDriveable;

    public Person2(Driveable driveable){
        this.mDriveable = driveable;
    }

    public void goOut(){
        System.out.println("出门啦");
        mDriveable.drive();
        //mCar.drive();
//        mTrain.drive();
    }

    public static void main(String ... args){
            //TODO:将 mDriveable 的实例化移到 Person 外面
        Person2 person = new Person2(new Car());
        person.goOut();
    }
}
```

无论出行方式怎么变化，Person 这个类都不需要更改代码了。
在上面代码中，Person 把内部依赖的创建权力移交给了 Person2。也就是说 Person **只关心依赖提供的功能**，但并不关心依赖的创建。
其中Person2称为IoC容器（依赖注入的地方）

## 4、依赖注入(Dependency injection)

为了不因为依赖实现的变动而去修改 Person，也就是说以可能在 Driveable 实现类的改变下不改动 Person 这个类的代码，尽可能减少两者之间的耦合需要采用IoC 模式来进行改写代码。
这个需要我们移交出对于依赖实例化的控制权，Person 无法实例化依赖了，它就需要在外部（IoC 容器）赋值给它，这个赋值的动作有个专门的术语叫做注入（injection），需要注意的是在 IoC 概念中，这个注入依赖的地方被称为 IoC 容器，但在依赖注入概念中，一般被称为注射器 （injector)。
表达通俗一点就是：我不想自己实例化依赖，你（injector）创建它们，然后在合适的时候注入给我

实现依赖注入有 3 种方式：

* 构造函数中注入
* setter 方式注入
* 接口注入

# （十一）Java代理模式

## 1、代理模式基本概念及分类

### **（1.1）基本概念**

代理类和委托类有共同的父类或父接口，可去掉功能服务或增加额外的服务。负责为委托类预处理消息，过滤消息并将请求分派给委托类处理，以及进行消息被委托类执行后的后续操作。

### **（1.2）代理模式模型**

![在这里插入图片描述](https://img-blog.csdnimg.cn/20190601204859723.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI5OTY2MjAz,size_30,color_FFFFFF,t_70)

代理模式一般设计到角色有4 种：
1、**抽象角色**：对应代理接口（<< interface >>Subject），用来定义代理类和委托类的公共对外方法/接口；
2、**真实角色**：对应委托类（接口实现类RealSubject），真正实现业务逻辑的类，是代理角色所代表的真实对象，是最终要引用的对象；
3、**代理角色**：对应代理类（Proxy），用来代理和封装真实角色。代理角色内部含有对真实对象的引用，从而可以操作真实对象。同时，代理对象可以在执行真实对象操作时，添加或去除其他操作，相当于对真实对象进行封装；
4、**客户角色**：对应客户端，使用代理类和主题接口完成一些工作。

## 2、代理模式实现方式

### （2.1）静态代理

所谓静态代理也就是在程序运行前就已经存在代理类的.class文件，代理类和委托类的关系在运行前就确定了。

#### **（2.1.1）继承方式**

#### **（2.1.2）聚合方式**

#### **（2.1.3）继承方式与聚合方式对比**

聚合方式比继承方式更适合代理模式：适合功能的叠加（可灵活传递，组合）

**问题：**

如果要按照上述的方法使用代理模式，那么真实角色(委托类)必须是事先已经存在的，并将其作为代理对象的内部属性。但是实际使用时，一个真实角色必须对应一个代理角色，如果大量使用会导致类的急剧膨胀；此外，如果事先并不知道真实角色（委托类），该如何使用代理呢？这个问题可以通过Java的动态代理类来解决。


### （2.2）动态代理

通过动态代码可实现对不同类、不同方法的代理。动态代理的源码是在程序运行期间由JVM根据反射等机制动态的生成，所以**不存在代理类的字节码文件（.class）**。代理类和委托类的关系在程序运行时确定。

#### **（2.2.1）JDK动态代理**

![在这里插入图片描述](https://img-blog.csdnimg.cn/20190601211348201.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI5OTY2MjAz,size_16,color_FFFFFF,t_70)

Java动态代理类位于java.lang.reflect包下，一般主要涉及到以下两个类：
**（1）Interface InvocationHandler**

InvocationHandler是负责连接代理类和委托类的中间类必须实现的接口，它自定义了一个 invoke 方法，用于集中处理在动态代理类对象上的方法调用，每次生成动态代理对象都要制定一个对应的调用处理器对象，通常在该方法中实现对委托类的代理访问。

`public object invoke(Object obj,Method method,Object[] args)`

obj指代理类的实例，method指被代理的方法，args是该方法的参数数组。这个抽象方法在代理类中动态实现。

该方法也是InvocationHandler接口所定义的唯一的一个方法，该方法负责集中处理动态代理类上的所有方法的调用。调用处理器根据这三个参数进行预处理或分派到委托类实例上执行。

#### **（2）Proxy class动态代理类**

Proxy是 Java 动态代理机制的静态主类，它提供了一组静态方法来为一组接口动态地生成代理类及其对象。

`static Object newProxyInstance(ClassLoader loader,Class[] interfaces,InvocationHandler h)`

传入：类装载器、一组接口和调用处理器

返回：代理类（可使用委托类在接口中声明的方法）

#### （3）例子

**1继承InvocationHandler实现调用处理器**

```java
public class TimeHandler implements InvocationHandler {
//动态代理类对应的调用处理程序类（时间处理器）
	public TimeHandler(Object target) {
		super();
		this.target = target;
	}
//代理类持有一个委托对象引用
	private Object target;
	
	/*
	 * 参数：
	 * proxy  委托对象
	 * method  委托对象的方法
	 * args 方法的参数
	 * 
	 * 返回值：
	 * Object  方法的返回值
	 * */
	@Override
	public Object invoke(Object proxy, Method method, Object[] args)
			throws Throwable {
		long starttime = System.currentTimeMillis();
		System.out.println("汽车开始行驶....");
		method.invoke(target);//调用委托对象的方法（Car的move方法）
		long endtime = System.currentTimeMillis();
		System.out.println("汽车结束行驶....  汽车行驶时间：" 
				+ (endtime - starttime) + "毫秒！");
		return null;
	}
}
```

接受一个委托对象

实现了invoke方法，在调用代理对象的方法时invoke方法会被回调。

**2创建接口和委托类**

```java
public interface Moveable {
	void move();
}
```

```java
public class Car implements Moveable {

	@Override
	public void move() {
		//实现开车
		try {
			Thread.sleep(new Random().nextInt(1000));
			System.out.println("汽车行驶中....");
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
```

**3调用Proxy的静态方法newProxyInstance创建代理类并调用方法**

```java
//客户端，使用代理类和主题接口完成功能
public class Test {
	/**
	 * JDK动态代理测试类
	 */
	public static void main(String[] args) {
		Car car = new Car();
		InvocationHandler h = new TimeHandler(car);
		Class<?> cls = car.getClass();
		/**
		 * loader  类加载器
		 * interfaces  实现接口
		 * h InvocationHandler
		 */
		Moveable m = (Moveable)Proxy.newProxyInstance(cls.getClassLoader(),
												cls.getInterfaces(), h);//获得动态代理对象，动态代理对象与代理对象实现同一接口
		m.move();//调用动态代理的move方法
	}
}
```

**总结：**

动态代理大致就是：实现调用处理器，获得委托类的类引用、将委托对象传入调用处理器、通过类引用获得类加载器，然后使用静态方法生成动态代理对象，调用代理对象的方法。

#### **（2.2.2）cglib动态代理**

**1引入cglib-nodep.jar**

**2实现委托类**

```java
public class Train {

	public void move(){
		System.out.println("火车行驶中...");
	}
}
```

**3创建代理类实现MethodInterceptor接口**

```java
public class CglibProxy implements MethodInterceptor {

	private Enhancer enhancer = new Enhancer();//创建代理类的属性
	
	public Object getProxy(Class clazz){
		//设置代理类
		enhancer.setSuperclass(clazz);
		enhancer.setCallback(this);
		
		return enhancer.create();//返回代理类的实例
	}
	
	/**
	 * 拦截所有委托类方法的调用
	 * obj  委托对象
	 * m   委托方法的反射对象
	 * args  方法的参数
	 * proxy代理类的实例
	 */
	@Override
	public Object intercept(Object obj, Method m, Object[] args,
			MethodProxy proxy) throws Throwable {
		System.out.println("日志开始...");
		//代理类调用父类的方法（cglib采用继承的方式，故代理类是委托类的子类）
		proxy.invokeSuper(obj, args);
		System.out.println("日志结束...");
		return null;
	}

}
```

创建代理类属性并实现getProxy方法

重写intercept方法调用委托类方法并实现需要的逻辑

**4创建代理类对象并调用方法**

```java
	public static void main(String[] args) {

		CglibProxy proxy = new CglibProxy();
		Train t = (Train)proxy.getProxy(Train.class);
		t.move();
	}
```

#### **（2.2.3）JDK动态代理与cglib动态代理的区别**

JDK动态代理：只能代理**实现了接口的类**，没有实现接口的类不能实现JDK的动态代理。
CGLIB动态代理：通过**继承**实现代理，对指定目标类产生一个子类，通过**方法拦截技术**拦截所有父类方法的调用。不能代理final的类。







