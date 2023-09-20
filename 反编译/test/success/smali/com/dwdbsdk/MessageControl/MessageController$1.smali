.class Lcom/dwdbsdk/MessageControl/MessageController$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/MessageControl/MessageController;->startTimeDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/MessageControl/MessageController;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/MessageControl/MessageController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2
    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->isTracing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->isEnableChangeTac()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getTraceTacChangeDelay()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x9

    if-le v3, v4, :cond_1

    .line 7
    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getStartTac()I

    move-result v3

    .line 8
    iget-object v4, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v4}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v4}, Lcom/dwdbsdk/Bean/DW/TracePara;->getMaxTac()I

    move-result v4

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x6

    :goto_1
    move v8, v3

    .line 13
    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3, v8}, Lcom/dwdbsdk/Bean/DW/TracePara;->setStartTac(I)V

    .line 14
    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getPlmn()Ljava/lang/String;

    move-result-object v9

    .line 15
    iget-object v4, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v4}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->isLte()Z

    move-result v6

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getCellId()I

    move-result v7

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getArfcn()Ljava/lang/String;

    move-result-object v10

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getPci()Ljava/lang/String;

    move-result-object v11

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getUeMaxTxpwr()Ljava/lang/String;

    move-result-object v12

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    .line 16
    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getTimingOffset()I

    move-result v13

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getWorkMode()I

    move-result v14

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getAirSync()I

    move-result v15

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getPlmn1()Ljava/lang/String;

    move-result-object v16

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    .line 17
    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getUlRbOffset()I

    move-result v17

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getCid()J

    move-result-wide v18

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getSsbBitmap()I

    move-result v20

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getBandWidth()I

    move-result v21

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    .line 18
    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getCfr()I

    move-result v22

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getSwapRf()I

    move-result v23

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getRejectCode()I

    move-result v24

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getRxLevMin()I

    move-result v25

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    .line 19
    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getMobRejectCode()I

    move-result v26

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getSplitArfcndl()Ljava/lang/String;

    move-result-object v27

    .line 20
    invoke-static/range {v4 .. v27}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IJIIIIIIILjava/lang/String;)V

    const/4 v3, 0x0

    .line 26
    :cond_1
    iget-object v4, v1, Lcom/dwdbsdk/MessageControl/MessageController$1;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v4}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v4, v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->setTraceTacChangeDelay(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MessageController startTimeDelay :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
