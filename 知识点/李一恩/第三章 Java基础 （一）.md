[TOC]



# 第三章 Java基础 （一）——内部类

## 静态规则：

静态成员不能访问非静态成员

## （三）内部类

### 1、什么是内部类 

内部类可以访问外部类的所有方法与属性

内部类是一个编译时的概念。外部类outer.java内定义了一个内部类inner，一旦编译成功，就会生成两个完全不同的.class文件，分别是outer.class和outer$inner.class。

### 2、为什么要设计内部类
内部类是为了更好的封装，把内部类封装在外部类里，不允许同包其他类访问
内部类中的属性和方法即使是外部类也不能直接访问，相反内部类可以直接访问外部类的属性和方法，即使private
实现多继承：每个内部类都能独立地继承一个（接口的）实现，所以无论外围类是否已经继承了某个（接口的）实现，对于内部类都没有影响。
匿名内部类用于实现回调

### 3、内部类分类

1. **静态内部类**

定义：

```java
public class Out {
    private static int a;
    private int b;

    public static class Inner {
        public void print() {
            System.out.println(a);
        }
    }
}
```

静态内部类可以访问**外部类所有静态变量和方法**。静态内部类和一般类一致，可以定义静态变量、方法，构造方法等。

使用：

外部类.静态内部类

```java
Out.Inner inner = new Out.Inner();
inner.print();
```

原理：

```java
public class Out$Inner {
    public Out$Inner() {
    }

    public void print() {
        System.out.println(Out.access$000());
    }
}

```

Out.java编译后会生成两个class文件，分别是Out.class和Out$Inner.class。因为这两个类处于同一个包下，所以静态内部类自然可以访问外部类的非私有成员。对外部类私有变量的访问则通过**外部类的access$000()方法**。（外部类的私有成员不可访问）

2. **成员内部类**：类内部的非静态类

定义：

```java
public class Out {
    private static int a;
    private int b;

    public class Inner {
        public void print() {
            System.out.println(a);
            System.out.println(b);
        }
    }
}
```

成员内部类可以访问**外部类所有的变量和方法**，和静态内部类不同的是，每一个成员内部类的实例都**依赖一个外部类的实例**（成员内部类是依附外部类而存在的）。其它类使用内部类必须要先创建一个外部类的实例。

使用：

```java
Out out = new Out();
Out.Inner inner = out.new Inner();
inner.print();
```

注意：

成员内部类不能定义静态方法和变量（final修饰的除外）。这是因为成员内部类是非静态的，类初始化的时候先初始化静态成员，如果允许成员内部类定义静态变量，那么成员内部类的静态变量初始化顺序是有歧义的。

原理：

```java
public class Out$Inner {

   public Out$Inner(Out var1) {
        this.this$0 = var1;
    }

    public void print() {
        System.out.println(Out.access$000());
    }
}
```

Out.java编译后会生成两个class文件，分别是Out.class和Out$Inner.class。成员内部类访问外部类的私有变量和方法也是通过编译时生成的代码访问的。区别是，成员内部类的构造方法会添加一个**外部类的参数**。

3. **局部内部类**&闭包：

   局部类：外部类方法中的类，定义在外部类方法中的类，叫局部类

定义：

```java
public class Out {
    private static int a;
    private int b;

    public void test(final int c) {
        final int d = 1;
        class Inner {
            public void print() {
                System.out.println(a);
                System.out.println(b);
                System.out.println(c);
                System.out.println(d);
            }
        }
    }

    public static void testStatic(final int c) {
        final int d = 1;
        class Inner {
            public void print() {
                System.out.println(a);
                //定义在静态方法中的局部类不可以访问外部类的实例变量
                //System.out.println(b);
                System.out.println(c);
                System.out.println(d);
            }
        }
    }
}
```

局部类只能在定义该局部类的**方法**中使用。定义在**实例方法**中的局部类可以访问外部类的所有变量和方法，定义在**静态方法**中的局部类只能访问**外部类的静态变量和方法**。同时局部类还可以访问**方法的final的参数和局部变量**。否则会报错

原理：

和成员内部类类似，生成的局部类的构造方法包含了外部类的参数，并且还包含了定义局部类方法的参数。

```java
class Out$1Inner {
    Out$1Inner(Out var1, int var2) {
        this.this$0 = var1;
        this.val$c = var2;
    }

    public void print() {
        System.out.println(Out.access$000());
        System.out.println(Out.access$100(this.this$0));
        System.out.println(this.val$c);
        System.out.println(1);
    }
}
```

注意：**为什么局部类访问的变量需要final修饰？**
基本知识：内部类和外部类是处于同一个级别的，方法内部的类不是在调用方法时才会创建的，它们一样也被事先编译了,内部类也不会因为定义在方法中就会随着方法的执行完毕就被销毁。（内部类只有没有引用指向该对象时，才回被GC回收）

为了防止

1外部类方法结束时局部变量被销毁但局部类还持有引用 2局部类修改局部变量时内外不一致

所以将局部变量设为final才能够访问。

**闭包**：把函数以及变量包起来，使得变量的生存周期延长。闭包（Closure）是一种能被调用的对象，它保存了创建它的作用域的信息。JAVA并不能显式地支持闭包，但是在JAVA中，闭包可以通过“接口+内部类”（接口实例化）来实现。

使用：

```java
public class OutClass {
    
    private void readBook(){
        System.out.println("read book");
    }

    public InnerClass getInnerClass(){
        return new InnerClass();
    }

    public class InnerClass{
        public void read(){
            readBook();
        }
    }

}
```

闭包是实现回调的一种很灵活的方式,在该例种InnerClass即是一个闭包，它包含了OutClass的对象；调用InnerClass的read()方法会回调OutClass的readBook()方法。

应用：

当你需要在内部类中去回调外部类的方法时？`writerProgrammer.getProgrammerInner().work();`



4. **匿名内部类**

定义：

```java
public class Out {
    private static int a;
    private int b;

    private Object obj = new Object() {
        private String name = "匿名内部类";
        @Override
        public String toString() {
            return name;
        }
    };

    public void test() {
        Object obj = new Object() {
            @Override
            public String toString() {
                System.out.println(b);
                return String.valueOf(a);
            }
        };
        System.out.println(obj.toString());
    }
}
```

原理：

Out.java编译后匿名内部类会生成相应的class文件。

```java
class Out$1 {
    private String name;

    Out$1(Out var1) {
        this.this$0 = var1;
        this.name = "匿名内部类";
    }

    public String toString() {
        return this.name;
    }
}
```

匿名内部类可以访问外部类所有的变量和方法。

#### 4、内部类总结

（4.1）内部类特点
1.非静态内部类对象不仅指向该内部类，还指向实例化该内部类的外部类对象的内存。
2.内部类和普通类一样可以重写Object类的方法，如toString方法；并且有构造函数，执行顺序依旧是先初始化属性，再执行构造函数
3.在编译完之后，会出现（外部类.class）和（外部类﹩内部类.class）两个类文件名。
4.内部类可以被修饰为private，只能被外部类所访问。事实上一般也都是如此书写。
5.内部类可以被写在外部类的任意位置，如成员位置，方法内。
（4.2）内部类访问外部类

静态内部类只能访问外部类静态成员;非静态内部类可以访问任意成员。（原因是：内部类有一个外部类名.this的指引）当访问外部类静态成员出现重名时，通过(外部类名.静态成员变量名)访问。如，Out.show();
重名情况下，非静态时，内部类访问自己内部类通过this.变量名。访问外部类通过（外部类名.this.变量名）访问 。如Out.this.show();
在没有重名的情况下，无论静态非静态，内部类直接通过变量名访问外部成员变量。
（4.3）外部类访问内部类
内部类为非静态时，外部类访问内部类，必须建立内部类对象。建立对象方法，如前所述。
内部类为静态时，外部类访问非静态成员，通过（外部类对象名.内部类名.方法名）访问，如new Out().In.function();
内部类为静态时，外部类访问静态成员时，直接通过（外部类名.内部类名.方法名），如 Out.In.funchtion();
当内部类中定义了静态成员时，内部类必须是静态的；当外部静态方法访问内部类时，内部类也必须是静态的才能访问。
外部静态方法只能访问内部静态类（非静态的需要对象）
访问静态内部类的非静态方法时外部类必须是非静态且需要先创建外部和内部的对象（非静态需要对象）

## （四）静态属性与静态方法的继承问题

子类不可以重写父类的静态/非静态属性。父类的同名属性会被隐藏。
子类可以重写覆盖父类的非静态方法但不可重写覆盖父类静态方法。

