[TOC]



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

# kotlin的函数类型

在 Kotlin 中，函数可以分为以下几种类型，根据用途和特性，可以选择适当的函数类型：

1. **常规函数（Regular Functions）**：
   - 这是最常见的函数类型，接受参数并返回一个值。
   - 用于执行通用的任务，可以根据需要定义参数和返回类型。
   - 示例：`fun add(a: Int, b: Int): Int { return a + b }`

2. **扩展函数（Extension Functions）**：
   - 扩展函数是在已有的类上添加新函数的一种方式，无需修改原始类的代码。
   - 用于向现有类添加新的操作，以增强其功能。
   - 示例：`fun String.capitalizeWords(): String { /* 实现代码 */ }`

3. **高阶函数（Higher-Order Functions）**：
   - 高阶函数可以接受一个或多个函数作为参数，或者返回一个函数作为结果。
   - 用于操作其他函数，以实现更高级的功能，如函数式编程中的 `map`、`filter` 等。
   - 示例：`fun <T> List<T>.filter(predicate: (T) -> Boolean): List<T> { /* 实现代码 */ }`

4. **内联函数（Inline Functions）**：
   - 内联函数在调用处将函数体的代码复制到调用点，可以提高运行效率，但可能增加代码大小。
   - 用于减少函数调用的开销，特别适用于高阶函数。
   - 示例：`inline fun <reified T> Gson.fromJson(json: String): T { /* 实现代码 */ }`

5. **尾递归函数（Tail Recursive Functions）**：
   - 尾递归函数是一种特殊类型的函数，其递归调用是在函数的最后一行进行的。
   - 用于执行递归操作而不会引发堆栈溢出。
   - 示例：`tailrec fun factorial(n: Int, accumulator: Int = 1): Int { /* 实现代码 */ }`

6. **单表达式函数（Single-Expression Functions）**：
   - 单表达式函数是只有一行表达式的简短函数，无需显式的 `return`。
   - 用于简化函数的定义，通常在函数体内执行单一的操作。
   - 示例：`fun isEven(number: Int) = number % 2 == 0`

选择哪种类型的函数取决于你的需求和编程场景。通常，你可以根据以下考虑来选择函数类型：
- 功能需求：确定函数的功能和用途。
- 参数和返回值：定义函数所需的参数和返回类型。
- 代码结构：考虑函数是否适合成为常规函数、扩展函数、高阶函数等。
- 性能和可读性：根据性能需求和代码可读性，选择是否使用内联函数、尾递归函数等。

在实际编程中，通常会混合使用多种函数类型，以满足不同的需求和任务。根据具体的情况来选择合适的函数类型，有助于编写更具表现力和可维护性的 Kotlin 代码。

除了上述列出的主要函数类型之外，Kotlin还支持一些其他的函数特性和变种，这些特性可以根据具体的需求使用：

1. **局部函数（Local Functions）**：
   - 局部函数是在另一个函数内部定义的函数。它们可以访问外部函数的变量和参数。
   - 用于将复杂的功能分解为更小的、可重用的部分，以提高代码的结构性和可读性。

```kotlin
fun performOperation(input: Int) {
    fun doOperation(x: Int) {
        // 在局部函数中执行操作
    }
    // 调用局部函数
    doOperation(input)
}
```

2. **内部函数（Inner Functions）**：
   - 内部函数是定义在另一个类或对象内部的函数，可以访问其包含类或对象的成员。
   - 用于实现嵌套功能，通常在类内部使用。

```kotlin
class Calculator {
    fun add(x: Int, y: Int): Int {
        fun validate(value: Int) {
            // 内部函数可以访问外部函数的参数和成员
        }
        validate(x)
        validate(y)
        return x + y
    }
}
```

3. **实例函数（Member Functions）**：
   - 实例函数是定义在类中的函数，它们可以访问类的属性和成员。
   - 用于操作和管理对象的状态和行为。

```kotlin
class Person(val name: String) {
    fun greet() {
        println("Hello, my name is $name.")
    }
}

val person = Person("Alice")
person.greet()
```

4. **顶层函数（Top-Level Functions）**：
   - 顶层函数是定义在文件顶部而不是类中的函数，它们属于文件的命名空间。
   - 用于实现独立的功能，不依赖于特定的类。

```kotlin
fun calculateSum(a: Int, b: Int): Int {
    return a + b
}

val result = calculateSum(3, 4)
```

总之，Kotlin提供了多种函数类型和特性，以满足不同的编程需求。你可以根据具体的场景和功能要求来选择合适的函数类型，并灵活使用这些特性来编写高效、可读性强的代码。