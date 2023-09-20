.class public Lcom/dwdbsdk/Logcat/LogcatHandler$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/Logcat/LogcatHandler;->a(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/Logcat/LogcatHandler;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Logcat/LogcatHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Logcat/LogcatHandler$a;->a:Lcom/dwdbsdk/Logcat/LogcatHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/Logcat/LogcatHandler$a;->a:Lcom/dwdbsdk/Logcat/LogcatHandler;

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/LogcatHandler;->a(Lcom/dwdbsdk/Logcat/LogcatHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f88\u62b1\u6b49,\u7a0b\u5e8f\u51fa\u73b0\u5f02\u5e38,\u5373\u5c06\u9000\u51fa."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
