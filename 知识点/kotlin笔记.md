# **kotlin笔记**

# kotlin的类

Kotlin 所有的类默认都是`final`的，如果某个类需要被其他类继承，则需使用`open`修饰。

## 一. 构造函数和初始化块

一个主构造函数和 N 个次构造函数。

### 1.1 主构造函数

Kotlin 的主构造函数可以借助初始化块，对代码进行初始化。Kotlin 使用`init`关键字作为初始化块。最终会被包含在无参数的构造函数中。

    class Constructor1 {
    	init { // 初始化块
    
       	 	println("test")
    	}
    
    	......
    }

等价于`constructor`关键字作为构造函数的函数名，可以省略constructor函数名。

```kotlin
class Constructor2 constructor() {
	init {

    	println("test")
	}

	......
}
```

**特性：**

* 主构造函数可以省略`constructor`

* 初始化块可以有多个，调用主构造函数时会按照初始化块的顺序执行。

### 1.2 次构造函数

使用`constructor`作为函数名，但不能省略函数名。

**如果定义了主构造函数，那么调用次构造函数时必须要调用主构造函数（this)**

```kotlin
class Constructor3(str:String) {

    init {

        println("$str")
    }

    constructor(str1: String, str2: String):this(str1) { // 调用主构造函数以及初始化块

        println("$str1 $str2")
    }

    fun foo() = println("this is foo function")

}

fun main(args: Array<String>) {
    val obj = Constructor3("hello","world")
    obj.foo()
}
```

如果类中出现多个初始化块，则会按照顺序依次执行。实际上，多个初始化块的代码会按照顺序合并到`主构造函数`中。

**次构造函数特性：**

- 类可以拥有多个次构造函数
- 主构造函数的属性可以使用var、val修饰，次构造函数不能用他们进行修饰
- 每个次构造函数需要委托给主构造函数，调用次构造函数时会先调用主构造函数以及初始化块。