# ArkTS语言声明式UI描述

## 一、创建组件

构造方法分为有参数和无参数两种。无需new运算符。

### 1、无参数

```
.Column(){
 .Text('item 1')
 .Divider()
 .Text('item2')
}
```

### 2、有参数

```
.Image('https://xyz/test.jpg')
.Image(this.imagePath)
.Image('https://' + this.imageUrl)
.Text('test')
.Text($r('app.string.title_value'))
.Text('count:${this.count}')
```

## 二、配置属性

以"."链式调用

```
.Text('text')
..fontSize(12)	//字体大小
.Image('test.jpg')
..alt('error.jpg')	//创建失败时显示的图片
..width(100)
..height(100)
```

也可以传入变量或表达式

```
.Image('test.jpg')
..width(this.count % 2 === 0 ? 100 : 200)
..height(this.offset + 100)
```

还可以传入枚举类型

```
.Text('hello')
..fontColor(Color.Red)
..fontWeight(FontWeight.Bold)
```

## 三、配置事件

以"."链式调用

使用lambda表达式

```
Button('click me')
..onclick(()=>{
.  this.myText = 'ArkUI';
})
```

使用匿名函数表达式，要求使用bind确保函数体中的this指向当前组件

```
.Button('add counter')
..onClick(function(){
.  this.counter+=2;
.}.bind(this))
```

使用组件成员函数配置组件的事件方法

```
.myClickHandler():void{
. this.counter+=2;
}
...
.Button('add counter')
.onClick(this.myClickHandler.bind(this))
```

## 四、配置子组件

如果组件支持子组件，需在尾随闭包{...}中添加子组件的描述。

容器组件：Column, Row, Stack, Grid, List等

```
.Column(){
. Text('Hello')
.  .fontSize(100)
. Divider()
. Text(this.myText)
}
```

容器组件均支持子组件配置，可以实现相对复杂的多级嵌套。