[TOC]

# Android控件架构与自定义控件详解

## 1、Android控件架构

![image-20240710174709775](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20240710174709775.png)

整个页面上的控件形成一个控件树，在每个控件树的顶部都有一个**ViewParent**对象控制整棵树的交互管理事件。

![image-20240710180215999](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20240710180215999.png)

每个Activity都包含一个Window对象（PhoneWindow），并将DecorView设置为应用窗口的根View，并封装了一些窗口操作的方法在里面。

而View的监听事件则通过WMS（WindowManagerService）接收并通过Acticity回调到相应的onClickListener上。

ContentView是一个ID为content的FrameLayout，activity_main.xml就设置在这里。

当在onCreate()中调用setContentView()的时候，AMS（ActivityManagerService）会回调onResume()方法，此时系统才会把DecorView添加到PhoneWindow中并显示。

## 2、View的测量

在onMeasure(int widthMeasureSpec, int heightMeasureSpec)方法中进行，安卓提供了MeasureSpec类测量View。

MeasureSpec类是32位的int值，高2位是测量模式，低30位是测量大小。

上面的两个参数代表父视图提供的MeasureSpec。

测量模式分为3种：

EXACTLY，精确值模式，当控件的宽高为具体数值时或match_parent时系统使用这个模式。

AT_MOST，最大值模式，当控件宽高为wrap_content时使用这个模式。ATMOST的意思是在自适应大小的情况下最大不超过父视图的大小，但没有规定最小的下限，所以在重写时需要指定他的下限。

UNSPECIFIED，不指定测量模式，View想多大就多大，绘制自定义View时才使用。

默认的模式为EXACTLY模式，控件可以响应你指定的具体宽高或者match_parent属性，而不能响应wrap_content。如果需要则重写onMeasure()方法。

而onMeasure()的作用是调用setMeasuredDimension()将测量出来的宽高值设置进去，所以我们重写onMeasure()方法的代码如下：

```
@Override
protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec){
	setMeasureDimension(
		measureWidth(widthMeasureSpec),	//测量宽度
		measureHeight(heightMeasureSpec)//测量高度
	);
}
```

而具体的测量方法measureWidth()传入父视图的MeasureSpec返回子视图测量的结果:

![image-20240710193926183](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20240710193926183.png)

在AT_MOST模式中，结果取了200和父视图中最小的那个作为下限。

## 3、View的绘制

Canvas canvas = new Canvas(bitmap);

canvas.drawBitmap(bitmap1, 0, 0, null);

为什么创建Canvas要传入一个bitmap对象进去呢？

这个过程叫做装载画布，其实在canvas上绘制的像素信息都存储在bitmap上，后面调用的canvas.drawxxx都是在bitmap上发生的。

## 4、ViewGroup的测量

ViewGroup的测量只有为wrap_content的时候才需要对子View进行遍历。

测量完毕后，通常会重写onLayout方法控制显示位置的逻辑，如果要支持wrap_conten，同样要重写onMeasure方法。

## 5、自定义View

### （1）对现有控件进行拓展

#### 1假设要对TextView多设置一个背景

那么可以重写onDraw，在系统调用super.onDraw绘制文字的前后实现自己的逻辑。

![image-20240711114529932](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20240711114529932.png)

#### 2要对TextView施加一个闪动的效果

可以先在OnSizeChanged()中做对象初始化工作：获取当前绘制TextView的画笔(getPaint())并给他设置LinearGradient渲染器

![image-20240711145739466](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20240711145739466.png)

然后在onDraw方法通过矩阵平移实现渐变效果：

```
@Override
protected void onDraw(Canvas canvas) {
	super. onDraw(canvas):
	if (mGradientMatrix ! = null) (
		mTranslate += mViewWidth / 5:
		if (mTranslate> 2* mViewWidth) {
			mTranslate = -mViewWidth:
		}
		mGradientMatrix. setTranslate (mTranslate, 0):
		mLinearGradient. setLocalMatrix(mGradientMatrix):
		postInvalidateDelayed(100):
	}
}
```

### (2)创建复合控件（以创建TopBar为例）

#### 1为一个View提供可自定义的属性：

在res的values目录创建一个attrs.xml，内容如下：reference-color表示既可以传入图片也可以是具体颜色

```java
<? xml version=”1.0" encoding= utf-8"? >
<resources>
	<declare-styleable name="TopBar">
		<attr nane="title” format="string" />
		<attr nane="titleTextSize” format="dimension" />
		<attr name="titleTextColor" format="color" />
		<attr nane="leftTextColor” format="color" />
		<attr name= "leftBackground" format="reference-color" />
		<attr name="leftText" format="string"/»
		<attr name= "rightTextColor” format= "color"/→
		<attr name="rightBackground" format="reference-color" >
		<attr name="rightText” format="string" />
	</declare-styleable>
</resources>
```

然后在构造方法中获取文件自定义的属性：

```java
TypedArray ta = context. obtainStyledAttributes (attrs, R. styleable. TopBar);	//TopBar是自定义属性的name名
```

然后获取属性值：

```java
//从TypedArray中取出对应的值来为要设置的属性赋值
mLeftTextColor = ta. getColor(R. styleable. TopBar_leftTextColor, 0):
mLeftBackground = ta. getDrawable(R. styleable. opBar_leftBackground)
mLeftText = ta. getString(R. styleable. TopBar_leftText):
mRight TextColor = ta. getColor(R. styleable. TopBar_right TextColor, 0):
mRightBackground = ta. getDrawable(R. styleable.TopBar_rightBackground):
mRightText = ta. getString (R. styleable. TopBar_rightText):
mTitleTextSize = ta. getDimension(R. styleable. TopBar_titleTextSize, 10);
mTitleTextColor = ta. getColor(R. styleable. TopBar_titleTextColor, 0)
mTitle = ta. getString (R. styleable. TopBar_title):
//获取完TypedArray的值后，一般要调用
//recyle方法来避免重新创建的时候的错误
ta. recycle():
```

#### 2组合控件

使用上面获取的属性去设置，并创建控件用addView的方式添加到布局中

```java
mLeftButton=new Button (context)
mRightButton=new Button(context)
mTitleView-new TextView (context)
//为创建的组件元素赋值
//值就来源于我们在引用的xml文件中给对应属性的赋值
mLeftButton. setTextColor (mLeftTextColor);
mLeftButton. setBackground (mLeftBackground):
mLeftButton. setText (mLeftText):

mRightButton. setTextColor(mRightTextColor):
mRightButton, setBackground (mRightBackground):
mRightButton. setText(mRightText):

mTitleView. setText (mitle):
mTitleView. setTextColor (mTitleTextColor):
mTitleView. setTextSize(mTitleTextSize):
mTitleView. setGravity (Gravity. CENTER):
//为组件元素设置相应的布局元素
mLeftParams=new LayoutParams (
	LayoutParams.WRAP_CONTENT.
	LayoutParams.MATCH PARENT)
mLeftParams.addRule(Relativelayout. ALIGN _PARENT_LEFT, TRUE):
//添加到ViewGroup
addView (mLeftButton, mLeftParams):

mRightParams=new LayoutParams(
	LayoutParams.WRAP_CONTENT.
	LayoutParams.MATCH_PARENT):
mRightParams, addRule(RelativeLayout. ALIGN_PARENT_RIGHT, TRUE):
addView(mRightButton, mRightParams):

mTitlepParams =new LayoutParams(
	LayoutParams. WRAP_CONTENT,
	LayoutParams. MATCH PARENT)-
mTitlepParams.addRule (RelativeLayout. CENTER_IN_PARENT, TRUE):
addView (mTitleView. mTitlepParams):
```

为左右两个按钮添加点击事件、通过回调的思想将具体的实现逻辑交给调用者：

①UI模板类中定义接口

```java
//接口对象，实现回调机制，在同调方法中
//迪过映射的接口对象调用接口中的方法
//而不用去考虑如何实现，具体的实现由调用者去创建
public interface topbarClickListener {
	//左按钮点击于件
	void leftClick();
	//右按钮点击事件
	void rightClick();
}
```

②模板方法中暴露接口给调用者

```java
//按钮的点击事件，不需要具体的实现,
//只需调用接口的方法,同调的时候，会有具体的实现
mRightButton. setOnClickListener (new OnClickListener () {
	@Override
	public void onClick(View v)(
		mListener. rightClick():
}):
mLeftButton. setOnClickListener (new OnClickListener(){
	@Override
	public void onClick(View v) I
		mListener. leftClick():
}):
//暴露一个方法给调用者来注册接口回调
public void setOnTopbarClickListener (topbarClickListener mListener) {
	this.mlistener = mListener:
}
```

③调用者实现接口回调

④或公共方法动态修改UI属性

#### 3引用自定义控件

创建命名空间：

```
xmins:custom-"http://schemas. android. com/apk/res-auto"
```

之后就可以通过custom来引用自定义属性了

再将这个自定义控件写入单独的xml中，则可以使用include去引用这个View了

**Tips**：当实现动态效果时，不需要每次绘制完之后就立马重绘，这样刷新太快会影响效果，可以使用以下代码实现：

```
postInvalidateDelayed(300);
```

## 6、自定义ViewGroup

自定义ViewGroup的目的是为了对子View进行管理，因此一般需要重写onMeasure来测量子View和onLayout来确定子View的位置，重写onTouchEvent来处理响应事件。

下面实现一个自定义ScrollView实现当滑动距离大于某值则显示下一个，小于某值则回到原位置。

①重写onMeasure循环测量子View：

```java
@Override
protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
	super. onMeasure(widthMeasureSpec, heightMeasureSpec):
	int count = getChildCount O:
	for (int i=0: i < count; ++i) {(
		View childView = getChildAt(i):
		measureChild(childView, widthMeasureSpec, heightMeasureSpec):
    }
}
```

②重写onLayout先获取整个ViewGroup的高度，然后设置让子View独占一屏的高度：

```java
@Override
protected void onLayout (boolean changed, int l, int t, int r, int b) (
	int childCount=getChildCount O:
	// 设置ViewGroup的高度
	MarginLayoutParams mlp=(MarginLayoutParams)getLayoutParams O :
	mlp. height=mScreenHeight*childCount:
	setLayoutParams (mlp).
	for(int i=0; i<childCount: i++){
		View child=getChildAt(i):
		if (child. getVisibilityo ! =Vies.GONE) {
            //设置top和bottom确定子View摆放的位置
			child. layout (1, i * mScreenHeight, r, (i+ 1) * mScreenHeight):
        }
    }
}
```

③重写onTouchEvent，添加滑动事件，实现滑动效果

int y = (int) event.getY();

```java
case MotionEvent. ACTION_DOWN:
	mLastY = y:		//计算用户触摸的y点
	break:
case MotionEvent. ACTION_MOVE:
	if (!mScroller. isFinished()) {	//如果动画还没有结束，结束动画
		mScroller. abortAnimation():
    }
	int dy = mLastY - y;	
	if (getScrollY() < 0){	//垂直滚动位置小于0（在顶部下滑）
		dy = 0;
    }
	if (getScrollY() > getHeight() - mScreenHeight) (	//滚动位置超出边界
		dy =0;
    }
	scrollBy(0, dy):	//滑动dy距离
	mLastY = y;
	break:

```

④实现黏性效果，在ACTION_UP中判断滑动的距离，超过则滑到下一个，没超过则复原。

```
public void startScroll(int startX, int startY, int dx, int dy)
//`startX` 和 `startY`：滚动的起始位置。
//`dx` 和 `dy`：滚动的距离（相对于起始位置）。
```

```java
case MotionEvent.ACTION_DOWN:
    // 记录触摸起点
    mStart = getScrollY();
    break;
case MotionEvent.ACTION_UP:
    // 记录触摸终点
    mEnd = getScrollY();
    int dScrollY = mEnd - mStart;
    if (dScrollY > 0) {		//向下滑动
        if (dScrollY < mScreenHeight / 3) {	//没有超出屏幕高度/3
            mScroller.startScroll(0, getScrollY(), 0, -dScrollY);	//回到原来的位置
        } else {	//超出滑到下一个页面
            mScroller.startScroll(0, getScrollY(), 0, mScreenHeight - dScrollY);
        }
    } else {
        if (-dScrollY < mScreenHeight / 3) {
            mScroller.startScroll(0, getScrollY(), 0, -dScrollY);
        } else {
            mScroller.startScroll(0, getScrollY(), 0, -mScreenHeight - dScrollY);
        }
    }
    break;
```

最后加上computeScroll代码

```java
@Override
public void computeScroll() {
    super.computeScroll();
    if (mScroller.computeScrollOffset()) {
        scrollTo(0, mScroller.getCurrY());
        postInvalidate();
    }
}
```

# 7、事件拦截机制

## 1、介绍

当点击一个按钮时通常会产生2-3个事件：点击、滑动、抬起。

onTouchEvent的参数是MotionEvent，也就是触摸事件，其中封装了很多东西如：点的坐标，点击事件类型Action。

## 2、重要方法

![img](file:///C:\Users\Administrator\AppData\Local\Temp\ksohtml23184\wps1.jpg)

ViewGroup有3个方法，意义以及返回值的意义

dispatchTouchEvent():接收事件，用来判断是否拦截事件，返回值受下面两个方法影响表示是否消耗此事件。

onInterceptTouchEvent():拦截事件，返回true表示拦截，不继续分发，调用onTouchEvent()，并且同一个事件序列当中，此方法不会被再次调用。返回false继续分发。

onTouchEvent():处理事件，返回true表示消耗该事件不向上级反馈，返回false表示不消耗事件并向上级反馈，并且在同一个事件序列中，当前View无法再次接收到事件。

View有2个方法

dispatchTouchEvent()和onTouchEvent()，View没有拦截器，它默认拦截

## 3、调用顺序

![image-20240712141411551](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20240712141411551.png)

对于以上的布局，点击之后你处理不了A处理的调用顺序：

A.dispatchTouchEvent->A.onInterceptTouchEvent

->B.dispatchTouchEvent->B.onInterceptTouchEvent

->My.dispatchTouchEvent->My.onTouchEvent->B.onTouchEvent->A.onTouchEvent

你处理不了B处理顺序

A.dispatchTouchEvent->A.onInterceptTouchEvent

->B.dispatchTouchEvent->B.onInterceptTouchEvent

->My.dispatchTouchEvent->My.onTouchEvent->B.onTouchEvent

你处理了不报告顺序

A.dispatchTouchEvent->A.onInterceptTouchEvent

->B.dispatchTouchEvent->B.onInterceptTouchEvent

->My.dispatchTouchEvent->My.onTouchEvent

由B拦截但处理不了的顺序：

A.dispatchTouchEvent->A.onInterceptTouchEvent

->B.dispatchTouchEvent->B.onInterceptTouchEvent->B.onTouchEvent->A.onTouchEvent

由A拦截处理的顺序

A.dispatchTouchEvent->A.onInterceptTouchEvent->A.onTouchEvent



## 4、流程总结

Activity（Window） -> ViewGroup（容纳UI组件的容器，一组View的集合，如DecorView、Layout等） -> View（所有UI的基类）

Activity去分发，先给ViewGroup，如果ViewGroup要拦截就会调用onTouch方法，如果不拦截就会传递给子View，接着子View如果不消费就会按层级回传，最终又到达Activity。

一般只关心拦截onInterceptTouchEvent()方法，其他的不太会去改写所以不关心。



## 5、onTouch、onTouchEvent （和onClick） 有什么区别

这两个方法都在View.dispatchTouchEvent()中调用

滚动事件onScroll与点击事件onClick等等均基于onTouchEvent

onTouch优先级比onTouchEvent优先级高，onTouchEvent中performClick是onClick的入口方法

onTouch>onTouchEvent>onClick
