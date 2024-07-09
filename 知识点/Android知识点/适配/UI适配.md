# 适配知识点

## **平台版本**

为表明可用的 API 集，每个平台版本都会指定 [API 级别](https://developer.android.google.cn/guide/topics/manifest/uses-sdk-element?hl=zh-cn#ApiLevels)。

Android 1.0 是 API 级别 1，而 Android 4.4 是 API 级别 19。

通过 API 级别，您可以使用minSdkVersion 属性来声明应用兼容的最低版本。[`targetSdkVersion`](https://developer.android.google.cn/guide/topics/manifest/uses-sdk-element?hl=zh-cn#target) 属性声明应用经过优化后适用的最高版本。

build.gradle文件：

```java
    android {
      defaultConfig {
        applicationId 'com.example.myapp'
        // Defines the minimum API level required to run the app.
        minSdkVersion 15
        // Specifies the API level used to test the app.
        targetSdkVersion 28
        ...
      }
    }
    
```

如果您的应用使用的是较新平台版本中添加的 API，但其主要功能并不需要这些 API，则应在运行时检查 API 级别，并在 API 级别过低时适当降级相应的功能。

将当前系统的版本 `SDK_INT` 与 `Build.VERSION_CODES` 中对应于您要检查的 API 级别的一个代号常量进行比较。

```java
    if (Build.VERSION.SDK_INT < Build.VERSION_CODES.HONEYCOMB) {
        // Running on something older than API level 11, so disable
        // the drag/drop features that use <code><a href="/reference/android/content/ClipboardManager.html">ClipboardManager</a></code> APIs
        disableDragAndDrop();
    }
    
```

## **屏幕配置**

Android 可在各种尺寸的设备上运行，包括手机、平板电脑和电视。为了按照屏幕类型对设备进行分类，Android 为每种设备定义了两个特征：屏幕尺寸（屏幕的物理尺寸）和屏幕密度（屏幕上像素的物理密度，称为 DPI）。为了简化不同的配置，Android 将这些变体归纳成组，使它们更容易作为定位目标：

- 四种广义的尺寸：小、标准、大和特大。
- 还有几种广义的密度：mdpi（中）、hdpi（高）、xhdpi（超高）、xxhdpi（超超高）等。

默认情况下，您的应用会兼容所有屏幕尺寸和密度，因为系统会根据需要对各个屏幕的界面布局和图片资源进行相应的调整。不过，您应针对不同的屏幕尺寸添加专门的布局，针对常见的屏幕密度添加优化的位图图片，以优化每种屏幕配置的用户体验。

## 使用链控制线性组

链是一组视图，这些视图通过双向位置约束条件相互链接到一起。链中的视图可以垂直或水平分布。

链可以采用以下几种样式之一：

1. **Spread**：视图是均匀分布的（在考虑外边距之后）。这是默认值。
2. **Spread inside**：第一个和最后一个视图固定在链两端的约束边界上，其余视图均匀分布。
3. **Weighted**：当链设置为 **spread** 或 **spread inside** 时，您可以通过将一个或多个视图设置为“match constraints”(`0dp`) 来填充剩余空间。默认情况下，设置为“match constraints”的每个视图之间的空间均匀分布，但您可以使用 `layout_constraintHorizontal_weight` 和 `layout_constraintVertical_weight` 属性为每个视图分配重要性权重。如果您熟悉[线性布局](https://developer.android.google.cn/guide/topics/ui/layout/linear?hl=zh-cn)中的 `layout_weight` 的话，就会知道该样式与它的原理是相同的。因此，权重值最高的视图获得的空间最大；相同权重的视图获得同样大小的空间。
4. **Packed**：视图打包在一起（在考虑外边距之后）。 然后，您可以通过更改链的头视图偏差调整整条链的偏差（左/右或上/下）。

链的“头”视图（水平链中最左侧的视图以及垂直链中最顶部的视图）以 XML 格式定义链的样式。不过，您可以通过选择链中的任意视图，然后点击出现在该视图下方的链按钮在 **spread**、**spread inside** 和 **packed** 之间进行切换。

![img](https://developer.android.google.cn/static/training/constraint-layout/images/constraint-chain_2x.png?hl=zh-cn)

![img](https://developer.android.google.cn/static/training/constraint-layout/images/constraint-chain-styles_2x.png?hl=zh-cn)

# drawable和mipmap的区别

1. **`drawable` 文件夹**：
   - `drawable` 文件夹用于存放不同密度的位图资源（如图片），可以根据设备的密度进行适配。例如，你可以在 `drawable-mdpi`、`drawable-hdpi`、`drawable-xhdpi`、`drawable-xxhdpi`、`drawable-xxxhdpi` 等文件夹中存放相同图片的不同分辨率版本，系统会根据设备的密度选择合适的资源。这样做有助于确保在不同密度的屏幕上显示良好的图片质量。
2. **`mipmap` 文件夹**：
   - `mipmap` 文件夹用于存放应用图标或 launcher icon。通常，你会在 `mipmap` 文件夹中存放应用程序图标的各种尺寸和分辨率的版本，这些图标会在不同的情况下被系统调用，如应用在桌面上显示、在应用商店中显示等。与 `drawable` 相比，`mipmap` 文件夹中的图标不会自动进行缩放，系统会根据需要选择最合适的图标版本并进行缩放，以确保图标在各种情况下显示清晰。

总的来说，`drawable` 用于存放可变分辨率的位图资源，而 `mipmap` 用于存放应用图标等不需要缩放的图像资源。在合适的情况下使用这两种资源文件夹可以确保应用在不同的设备上具有良好的显示效果。

# 像素密度

像素密度是屏幕单位面积内的像素数，称为 dpi（每英寸的点数）。 它与分辨率不同，后者是屏幕上的总像素数

Android 设备不仅有[不同的屏幕尺寸](https://developer.android.google.cn/training/multiscreen/screensizes?hl=zh-cn)（手机、平板电脑、电视等），而且其屏幕也有不同的像素尺寸。也就是说，有可能一部设备的屏幕为每平方英寸 160 像素，而另一部设备的屏幕在相同的空间内可以容纳 480 像素。如果您不考虑像素密度的这些差异，系统可能会缩放图片（导致图片变模糊），或者图片可能会以完全错误的尺寸显示。

第一个陷阱是使用像素来定义距离或尺寸。使用像素来定义尺寸会带来问题，因为不同的屏幕具有不同的像素密度，所以同样数量的像素在不同的设备上可能对应于不同的物理尺寸。

要在密度不同的屏幕上保留界面的可见尺寸，您必须使用密度无关像素 (dp) 作为度量单位来设计界面。dp 是一个虚拟像素单位，1 dp 约等于中密度屏幕（160dpi；“基准”密度）上的 1 像素。对于其他每个密度，Android 会将此值转换为相应的实际像素数。

不过，在定义文本大小时，您应改用可缩放像素 (sp) 作为单位（但切勿将 sp 用于布局尺寸）。默认情况下，sp 单位与 dp 大小相同，但它会根据用户的首选文本大小来调整大小。

### **将 dp 单位转换为像素单位**

在某些情况下，您需要以 `dp` 表示尺寸，然后将其转换为像素。dp 单位转换为屏幕像素很简单：

```
px = dp * (dpi / 160)
```

假设在某一应用中，用户的手指至少移动 16 像素之后，系统才会识别出滚动或滑动手势。在基线屏幕上，用户必须移动 `16 pixels / 160 dpi`（等于一英寸的 1/10 或 2.5 毫米），系统才会识别该手势。而在配备高密度显示屏 (240dpi) 的设备上，用户的手指必须至少移动 `16 pixels / 240 dpi`，相当于 1 英寸的 1/15（1.7 毫米）。此距离短得多，因此用户会感觉应用在该设备上更灵敏。

要解决此问题，必须在代码中以 `dp` 表示手势阈值，然后再转换为实际像素。例如：

```java
    // The gesture threshold expressed in dp
    private static final float GESTURE_THRESHOLD_DP = 16.0f;

    // Get the screen's density scale
    final float scale = getResources().getDisplayMetrics().density;
    // Convert the dps to pixels, based on density scale
    mGestureThreshold = (int) (GESTURE_THRESHOLD_DP * scale + 0.5f);

    // Use mGestureThreshold as a distance in pixels...
    
```

`DisplayMetrics.density` 字段根据当前像素密度指定将 `dp` 单位转换为像素时所必须使用的缩放系数。在中密度屏幕上，`DisplayMetrics.density` 等于 1.0；在高密度屏幕上，它等于 1.5；在超高密度屏幕上，等于 2.0；在低密度屏幕上，等于 0.75。此数字是一个系数，用其乘以 `dp` 单位，即可得出当前屏幕的实际像素数。