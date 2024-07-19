# adb

adb命令位于sdk的platform-tools目录下，因此在使用的时候要将命令行切到此目录下，或者将路径添加到系统环境变量中。

使用$ adb 查看是否配置成功。

```
adb shell 	//使用shell命令
```

shell 命令是基于Linux下的常用shell命令。如：

```
ls - grep "data"
cd xxx
```

## 常用命令

```
//显示系统中全部Android平台
android list targets	
//安装应用程序，使应用成为普通应用程序
adb install -r F:\Test.apk	
//安装应用程序，将文件写入手机存储系统，只要有权限可以放入任何目录下，甚至是System目录，成为一个系统应用程序，所以最大的用处还是向手机写入文件
adb push D:\Test.apk /system/app/	
//从手机获取文件()
adb pull /system/temp/ D:\file.txt
```

开发者命令

```
//查看log
adb shell
logcat - grep "abc"
//删除应用
adb remount	//重新挂载系统分区，使系统分区重新可写
adb shell 
cd system/app
rm *.apk
//查看系统盘符
adb shell df
//输出所有已经安装的应用
adb shell pm list packages -f (grep)
//模拟按键输入(最后一位数字代表keyevent Code，可在网上查到)
adb shell input keyevent 3
//模拟滑动输入
adb shell input touchscreen swipe 1866518350

//查看运行状态，可以列出很多运行状态，详细的命令可以查看API文档
adb shell dumpsys
dumpsys activity activities - grep "tencent"  //列出Activity的运行状态并过滤tencent

//Package管理信息，PM命令和Dumpsys命令一样强大，复杂，详细命令可以查看API文档
pm list packages -f	//列出所有的Package

//AM管理信息，同上
adb shell am start -n 包名/包名+类名	//启动一个Activity

//录制屏幕
adb shell screenrecord /sdcard/demo.mp4
//重新启动
adb reboot
```

更多详细命令请查阅API文档