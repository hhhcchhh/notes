# Scoped Storage

## 背景

Android 10引入的概念，每个应用程序只能有权在自己的外置存储空间关联目录（/storage/emulated/0/Android/data/<包名>/files）下读取和创建文件，可以完全使用之前的写法来对文件进行读写，会被计入到应用程序的占用空间当中，会随着应用程序的卸载而被删除：context.getExternalFilesDir()。只要应用程序指定的targetSdkVersion<=29，在AndroidManifest.xml中加入如下配置：

```
<manifest ... >
  <application android:requestLegacyExternalStorage="true" ...>
    ...
  </application>
</manifest>
```

就可以不启用Scoped Storage。

在Android 11中，Scoped Storage被强制启用了。

外置存储空间：SD卡，也是共有文件。

## 不需要管理设备上的所有文件（SD卡）

使用MediaStore提供的API，（图片、音频、视频）

使用系统的文件选择器选择（其他类型的文件）

具体使用参考https://guolin.blog.csdn.net/article/details/105419420

## 需要管理设备上的所有文件（SD卡）

获取MANAGE_EXTERNAL_STORAGE权限