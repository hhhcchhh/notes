.class Lcom/dwdbsdk/MessageControl/MessageController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/MessageControl/MessageController;->a()V
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
    iput-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v1, p0

    .line 1
    :goto_0
    iget-object v0, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->b(Lcom/dwdbsdk/MessageControl/MessageController;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_1
    :try_start_0
    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4
    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->isTracing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getTraceTacChangeDelay()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x9

    if-le v3, v4, :cond_2

    .line 9
    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getStartTac()I

    move-result v3

    .line 10
    iget-object v4, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v4}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v4}, Lcom/dwdbsdk/Bean/DW/TracePara;->getMaxTac()I

    move-result v4

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, -0x6

    :goto_2
    move v8, v3

    .line 15
    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3, v8}, Lcom/dwdbsdk/Bean/DW/TracePara;->setStartTac(I)V

    .line 16
    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getPlmn()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v3, ""

    .line 17
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 18
    iget-object v4, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v4}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->isLte()Z

    move-result v6

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getCellId()I

    move-result v7

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getArfcn()Ljava/lang/String;

    move-result-object v10

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getPci()Ljava/lang/String;

    move-result-object v11

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getUeMaxTxpwr()Ljava/lang/String;

    move-result-object v12

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    .line 19
    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getTimingOffset()I

    move-result v13

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getWorkMode()I

    move-result v14

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getAirSync()I

    move-result v15

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getPlmn1()Ljava/lang/String;

    move-result-object v16

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    .line 20
    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getUlRbOffset()I

    move-result v17

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getCid()J

    move-result-wide v18

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getSsbBitmap()I

    move-result v20

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getBandWidth()I

    move-result v21

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    .line 21
    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getCfr()I

    move-result v22

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getSwapRf()I

    move-result v23

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getRejectCode()I

    move-result v24

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getRxLevMin()I

    move-result v25

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    .line 22
    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getMobRejectCode()I

    move-result v26

    iget-object v3, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getSplitArfcndl()Ljava/lang/String;

    move-result-object v27

    .line 23
    invoke-static/range {v4 .. v27}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IJIIIIIIILjava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    .line 30
    :cond_2
    iget-object v4, v1, Lcom/dwdbsdk/MessageControl/MessageController$2;->a:Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-static {v4}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v4, v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->setTraceTacChangeDelay(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MessageController startTimeDelay :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    :cond_4
    const-wide/16 v2, 0x3e8

    .line 37
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    return-void
.end method
