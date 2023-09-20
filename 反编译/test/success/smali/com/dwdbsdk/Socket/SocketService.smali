.class public Lcom/dwdbsdk/Socket/SocketService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public a:Lcom/dwdbsdk/Socket/ZTcpService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/dwdbsdk/Socket/ZTcpService;->build()Lcom/dwdbsdk/Socket/ZTcpService;

    move-result-object v0

    iput-object v0, p0, Lcom/dwdbsdk/Socket/SocketService;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    .line 3
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/dwdbsdk/Socket/SocketService;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-virtual {v1, v0}, Lcom/dwdbsdk/Socket/ZTcpService;->registerHandler(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)V

    .line 5
    iget-object v1, p0, Lcom/dwdbsdk/Socket/SocketService;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->setClient(Lcom/dwdbsdk/Socket/ZTcpService;)V

    .line 7
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->setTransceiver(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)V

    .line 9
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketService;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-virtual {v0}, Lcom/dwdbsdk/Socket/ZTcpService;->launch()V

    .line 12
    invoke-static {}, Lcom/dwdbsdk/Socket/UdpControl;->build()Lcom/dwdbsdk/Socket/UdpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Socket/UdpControl;->startUdp()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "SocketService onCreate"

    .line 2
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/dwdbsdk/Socket/SocketService;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "SocketService onDestroy"

    .line 2
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/dwdbsdk/Socket/UdpControl;->build()Lcom/dwdbsdk/Socket/UdpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Socket/UdpControl;->closeUdp()V

    .line 5
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketService;->a:Lcom/dwdbsdk/Socket/ZTcpService;

    invoke-virtual {v0}, Lcom/dwdbsdk/Socket/ZTcpService;->onDestroy()V

    return-void
.end method
