# JUnit单元测试

# espresso自动化测试

依赖：

旧版本：

```java
	androidTestImplementation 'androidx.test.ext:junit:1.1.2'
    androidTestImplementation 'androidx.test:rules:1.1.0'
    androidTestImplementation 'androidx.test:runner:1.1.0'
    androidTestImplementation 'androidx.test.espresso:espresso-core:3.1.0'

```

新版本已自动配置好

## 注释

@RunWith(AndroidJUnit4.class)

在类前注明，表示使用JUnit4测试

@Before/@After

在测试之前/之后运行代码

@Rule

将被标记的方法视为规则，在每个测试方法之前运行。

@Test

测试方法

**@SmallTest**/@**MediumTest**/@LargeTest

将类\方法标记为大型测试，在测试时会获得更多的资源和关注

## 自动化测试常用方法

**withId**(R.id.main_text)：通过ID找到对应的组件，并将其封装成一个Matcher
**onView**()：将窗口焦点给某个组件，并返回ViewInteraction实例
**perform**()：该组件需要执行的任务，传入ViewAction的实例，可以有多个，意味着用户的多种操作，用，分割
**typeText**()：输入字符串任务，还有replaceText方法也可以实现类似的效果，不过没有输入动画
**closeSoftKeyboard**()：关闭软键盘

onView(withId(R.id.main_text)).perform(**click**()/**doubleClick**()/**matches**(**withText**("Hello MainActivity!")));点击事件/双击事件/判断是否符合预期

**assertThat、assertEquals、assertNotSame**

在Android单元测试中可以使用断言来判断变量值是否符合预期