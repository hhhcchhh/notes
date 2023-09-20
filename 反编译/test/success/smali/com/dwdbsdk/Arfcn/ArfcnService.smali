.class public Lcom/dwdbsdk/Arfcn/ArfcnService;
.super Landroid/app/Service;
.source "SourceFile"


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
    invoke-static {}, Lcom/dwdbsdk/Native/Native;->LcInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#### ArfcnService(): Device ready!"

    .line 3
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "#### ArfcnService(): Device no ready!"

    .line 5
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Lcom/dwdbsdk/Native/Native;->EnableNrUsb(I)Z

    .line 9
    invoke-static {v0}, Lcom/dwdbsdk/Native/Native;->EnableHOST(I)Z

    .line 10
    invoke-static {v0}, Lcom/dwdbsdk/Native/Native;->EnableOTG(I)Z

    .line 11
    invoke-static {v0}, Lcom/dwdbsdk/Native/Native;->SetCardTo5G(I)Z

    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Lcom/dwdbsdk/Native/Native;->EnableTypec(I)Z

    .line 14
    invoke-static {}, Lcom/dwdbsdk/Bean/DW/PwrCtl;->build()Lcom/dwdbsdk/Bean/DW/PwrCtl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dwdbsdk/Bean/DW/PwrCtl;->modulePwrCtl(Z)V

    .line 15
    invoke-static {}, Ld/a;->a()Ld/a;

    .line 16
    invoke-static {}, Lcom/dwdbsdk/Arfcn/Nr5g;->a()Lcom/dwdbsdk/Arfcn/Nr5g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Arfcn/Nr5g;->g()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    const-string v0, "#### ArfcnService: onCreate()"

    .line 1
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/dwdbsdk/Arfcn/ArfcnService;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "#### ArfcnService: onDestroy()"

    .line 2
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/dwdbsdk/Arfcn/Nr5g;->a()Lcom/dwdbsdk/Arfcn/Nr5g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Arfcn/Nr5g;->n()V

    .line 4
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    invoke-virtual {v0}, Ld/a;->c()V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/Native/Native;->LcClose()Z

    return-void
.end method
