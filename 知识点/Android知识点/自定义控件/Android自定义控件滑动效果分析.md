# Android滑动效果分析

## 1、介绍

滑动的本质就是根据触摸事件不断改变View的位置

getLocationOnScreen获取该视图**左上角**在Android坐标系中的坐标

## 2、实现滑动的7种方法

实现原理都是触摸时记录触摸坐标，移动时记录移动后的坐标，获取偏移量，修改View的坐标。

### ① 使用layout方法

在onTouchEvent中调用layout重新摆放View的位置

```java
@Override
public boolean onTouchEvent(MotionEvent event) {
    int x = (int) (event.getX());
    int y = (int) (event.getY());
    switch (event.getAction()) {
        case MotionEvent.ACTION_DOWN:
            // 记录触摸点坐标
            lastX = x;
            lastY = y;
            break;
        case MotionEvent.ACTION_MOVE:
            // 计算偏移量
            int offsetX = x - lastX;
            int offsetY = y - lastY;
            // 在当前left, top, right, bottom的基础上加上偏移量
            layout(getLeft() + offsetX,
                   getTop() + offsetY,
                   getRight() + offsetX,
                   getBottom() + offsetY);
            break;
    }
    return true;
}
```

如果使用getRawX()绝对坐标则需要记录前一个位置（因为getX为相对视图的位置，每次收到触摸事件会自动更新，而getRawX为相对布局的位置，需要手动记录上次的位置）

```java
@Override
public boolean onTouchEvent(MotionEvent event) {
    int rawX = (int) (event.getRawX());
    int rawY = (int) (event.getRawY());
    switch (event.getAction()) {
        case MotionEvent.ACTION_DOWN:
            // 记录触摸点坐标
            lastX = rawX;
            lastY = rawY;
            break;
        case MotionEvent.ACTION_MOVE:
            // 计算偏移量
            int offsetX = rawX - lastX;
            int offsetY = rawY - lastY;
            // 在当前left, top, right, bottom的基础上加上偏移量
            layout(getLeft() + offsetX,
                   getTop() + offsetY,
                   getRight() + offsetX,
                   getBottom() + offsetY);
            // 重新设置初始坐标
            lastX = rawX;
            lastY = rawY;
            break;
    }
    return true;
}
```

### ② offsetLeftAndRight()与offsetTopAndBottom()

代码与上面一致，只是使用offsetLeftAndRight(offsetX)替换layout()方法。括号内为偏移量。

### ③ LayoutParams

代码与上面一致。LayoutParams保存了一个View的布局参数，所以可以通过改变LayoutParams来改变View

的位置。一般通过改变margin属性来实现。

可以获取子View的：

```java
LinearLayout. LayoutParams layoutParams = (LinearLayout. LayoutParams) getLayoutParams():
layoutParams.leftMargin = getLeft + offsetX:
layoutParams. topMargin = get Top0 + offsetY:
setLayoutParams(layoutParams):
```

也可以获取父视图的：

```java
ViewGroup.MarginLayoutParams layoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams;layoutParams.leftMargin = getLeft0 + offsetX;
layoutParams.topMargin = getTop0 + offsetY;
setLayoutParams(layoutParams);
```

这种更方便，因为他不需要知道父布局的类型，但原理都是一样的。

### ④ scrollTo（移动到）与scrollBy（移动）

代码与上面一致。但这两个方法移动的是控件的内容，且移动的是盖板（ViewGroup如下图，把内容想象成一块画布，手机屏幕是盖板），所以我们应该把值取一个负数，这样实现的效果就对了。

```java
((View) getParent()). scrollBy (offsetX, offsetY):
```

![image-20240712173927777](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20240712173927777.png)

![image-20240712173936215](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20240712173936215.png)

scrollTo使用的就是绝对坐标了，也是一样的道理。

### ⑤ Scroller

Scroller类是通过scrollBy的瞬时移动为原理实现平滑移动的效果。

实现一个Scroller分为3步：1、初始化Scroller对象2、重写View的computeScroll方法3、监听手指离开屏幕事件并调用startScroll方法完成平滑移动。

1、初始化

mScroller = new Scroller(context)

2、重写View的computeScroll方法

```java
@Override
public void computeScroll() {
    super.computeScroll();
    // 判断Scroller是否执行完毕 (Check if the Scroller has finished scrolling)
    if (mScroller.computeScrollOffset()) {
        ((View) getParent()).scrollTo(mScroller.getCurrX(), mScroller.getCurrY());
        // 通过重绘来不断调用computeScroll (Trigger redraw to continuously call computeScroll)
        invalidate();
    }
}
```

computeScrollOffset返回是否完成了整个滑动，getCurrX，getCurrY获取当前的滑动坐标

computeScroll是不会自动调用的，所以需要通过invalidate->draw->computeScroll来间接调用。

3、调用startScroll方法

startScroll(int startX, int startY, int dx, int dy, int duration)	起始xy和偏移量xy和持续时长

startScroll(int startX, int startY, int dx, int dy)

```java
case MotionEvent.ACTION_UP:
    // 手指离开时，执行滑动过程 (When the finger is lifted, execute the scrolling process)
    View viewGroup = (View) getParent();
    mScroller.startScroll(
        viewGroup.getScrollX(),
        viewGroup.getScrollY(),
        -viewGroup.getScrollX(),
        -viewGroup.getScrollY()
    );
    invalidate();
    break;
```

### ⑥ 属性动画

见书第7章

### ⑦ ViewDragHelper

