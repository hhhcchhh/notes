.class Lcom/dwdbsdk/Arfcn/Nr5g$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/Arfcn/Nr5g;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/Arfcn/Nr5g;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Arfcn/Nr5g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g$1;->a:Lcom/dwdbsdk/Arfcn/Nr5g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g$1;->a:Lcom/dwdbsdk/Arfcn/Nr5g;

    invoke-virtual {v0}, Lcom/dwdbsdk/Arfcn/Nr5g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g$1;->a:Lcom/dwdbsdk/Arfcn/Nr5g;

    invoke-virtual {v0}, Lcom/dwdbsdk/Arfcn/Nr5g;->l()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g$1;->a:Lcom/dwdbsdk/Arfcn/Nr5g;

    invoke-static {v0}, Lcom/dwdbsdk/Arfcn/Nr5g;->a(Lcom/dwdbsdk/Arfcn/Nr5g;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g$1;->a:Lcom/dwdbsdk/Arfcn/Nr5g;

    invoke-static {v0}, Lcom/dwdbsdk/Arfcn/Nr5g;->c(Lcom/dwdbsdk/Arfcn/Nr5g;)I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ARFCN: rstCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dwdbsdk/Arfcn/Nr5g$1;->a:Lcom/dwdbsdk/Arfcn/Nr5g;

    invoke-static {v1}, Lcom/dwdbsdk/Arfcn/Nr5g;->b(Lcom/dwdbsdk/Arfcn/Nr5g;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g$1;->a:Lcom/dwdbsdk/Arfcn/Nr5g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dwdbsdk/Arfcn/Nr5g;->a(Lcom/dwdbsdk/Arfcn/Nr5g;I)I

    .line 9
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g$1;->a:Lcom/dwdbsdk/Arfcn/Nr5g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dwdbsdk/Arfcn/Nr5g;->b(Lcom/dwdbsdk/Arfcn/Nr5g;I)I

    .line 10
    invoke-static {}, Lcom/dwdbsdk/Bean/DW/PwrCtl;->build()Lcom/dwdbsdk/Bean/DW/PwrCtl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/Bean/DW/PwrCtl;->modulePwrCtl(Z)V

    :cond_1
    return-void
.end method
