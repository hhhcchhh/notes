.class public Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/MessageControl/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageObserver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/MessageControl/MessageController;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/MessageControl/MessageController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDBGetJamRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBGetJamRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;)V

    :cond_0
    return-void
.end method

.method public onDBGetLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBGetLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDBGetVersionRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgVersionRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBGetVersionRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgVersionRsp;)V

    :cond_0
    return-void
.end method

.method public onDBHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDBRebootRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBRebootRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDBRxGainCfgRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBRxGainCfgRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDBSetBtNameRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBSetBtNameRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDBSetDevNameRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBSetDevNameRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDBSetGpioCfgRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBSetGpioCfgRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDBSetTimeRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBSetTimeRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDBStartJamRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBStartJamRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDBStartPwrDetectRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgScanRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBStartPwrDetectRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgScanRsp;)V

    :cond_0
    return-void
.end method

.method public onDBStartSGRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBStartSGRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDBStartScanRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgScanRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBStartScanRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgScanRsp;)V

    :cond_0
    return-void
.end method

.method public onDBStopJamRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBStopJamRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDBStopPwrDetectRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBStopPwrDetectRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDBStopSGRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBStopSGRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDBUpgradeRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBUpgradeRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDBWifiCfgRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onDBWifiCfgRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDWDeleteOpLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWDeleteOpLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWFreqScanGetDocumentRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWFreqScanGetDocumentRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;)V

    :cond_0
    return-void
.end method

.method public onDWFreqScanRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWFreqScanRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;)V

    :cond_0
    return-void
.end method

.method public onDWGetCatchCfgRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCatchCfgRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWGetCatchCfg(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCatchCfgRsp;)V

    :cond_0
    return-void
.end method

.method public onDWGetFtpRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbFtpRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWGetFtpRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbFtpRsp;)V

    :cond_0
    return-void
.end method

.method public onDWGetGpsInOut(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbGpsInOutRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWGetGpsInOut(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbGpsInOutRsp;)V

    :cond_0
    return-void
.end method

.method public onDWGetGpsRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbGpsRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWGetGpsRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbGpsRsp;)V

    :cond_0
    return-void
.end method

.method public onDWGetLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWGetLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWGetMethIpRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbMethIpRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWGetMethIpRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbMethIpRsp;)V

    :cond_0
    return-void
.end method

.method public onDWGetOpLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWGetOpLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWGetPaGpioRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbGpioRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWGetPaGpioRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbGpioRsp;)V

    :cond_0
    return-void
.end method

.method public onDWGetSysInfoRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbGetSysInfoRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWGetSysInfoRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbGetSysInfoRsp;)V

    :cond_0
    return-void
.end method

.method public onDWGetSysLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWGetSysLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWGetUserData(Lcom/dwdbsdk/Response/DW/GnbUserDataRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWGetUserData(Lcom/dwdbsdk/Response/DW/GnbUserDataRsp;)V

    :cond_0
    return-void
.end method

.method public onDWHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V

    :cond_0
    return-void
.end method

.method public onDWQueryVersionRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbVersionRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWQueryVersionRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbVersionRsp;)V

    :cond_0
    return-void
.end method

.method public onDWRebootRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWRebootRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetBlackListRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetBlackListRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetBtNameRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetBtNameRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetDevNameRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetDevNameRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetDualCellRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetDualCellRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetFanAutoSpeedRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetFanAutoSpeedRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetFanSpeedRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetFanSpeedRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetForwardUdpMsg(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetForwardUdpMsg(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetFtpRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetFtpRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetGnbRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetGnbRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetGpioTxRx(Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetGpioTxRx(Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetGpsInOut(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetGpsInOut(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetGpsRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetGpsRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetJamArfcn(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetJamArfcn(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetMethIpRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetMethIpRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetNvTxPwrOffsetRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetNvTxPwrOffsetRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetPaGpioRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetPaGpioRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetRxGainRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetRxGainRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetTimeRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetTimeRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetTxPwrOffsetRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetTxPwrOffsetRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetUserData(Lcom/dwdbsdk/Response/DW/GnbUserDataRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetUserData(Lcom/dwdbsdk/Response/DW/GnbUserDataRsp;)V

    :cond_0
    return-void
.end method

.method public onDWSetWifiInfoRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWSetWifiInfoRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWStartBandScan(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWStartBandScan(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWStartCatchRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbTraceRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWStartCatchRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbTraceRsp;)V

    :cond_0
    return-void
.end method

.method public onDWStartControlRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbTraceRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWStartControlRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbTraceRsp;)V

    :cond_0
    return-void
.end method

.method public onDWStartLteTraceRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbTraceRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWStartLteTraceRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbTraceRsp;)V

    :cond_0
    return-void
.end method

.method public onDWStartNrTraceRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbTraceRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWStartNrTraceRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbTraceRsp;)V

    :cond_0
    return-void
.end method

.method public onDWStartTdMeasure(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWStartTdMeasure(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWStopCatchRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWStopCatchRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWStopControlRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWStopControlRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWStopFreqScanRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWStopFreqScanRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWStopLteTraceRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWStopLteTraceRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWStopNrTraceRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWStopNrTraceRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWUpgradeRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWUpgradeRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onDWWriteOpLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DWBusinessListener;->onDWWriteOpLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V

    :cond_0
    return-void
.end method

.method public onReadDataFwdRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dwdbsdk/Interface/DBBusinessListener;->onReadDataFwdRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;)V

    :cond_0
    return-void
.end method
