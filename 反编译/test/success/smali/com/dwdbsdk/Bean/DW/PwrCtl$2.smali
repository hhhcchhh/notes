.class Lcom/dwdbsdk/Bean/DW/PwrCtl$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/Bean/DW/PwrCtl;->Nr5g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/Bean/DW/PwrCtl;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/PwrCtl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/PwrCtl$2;->a:Lcom/dwdbsdk/Bean/DW/PwrCtl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Nr5g() pwr = 0"

    .line 1
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/dwdbsdk/Native/Native;->SetModulePwr(II)Z

    .line 3
    invoke-static {}, Lcom/dwdbsdk/Arfcn/Nr5g;->a()Lcom/dwdbsdk/Arfcn/Nr5g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Arfcn/Nr5g;->m()V

    return-void
.end method
