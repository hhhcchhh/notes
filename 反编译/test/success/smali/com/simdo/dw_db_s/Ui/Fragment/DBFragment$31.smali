.class Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;
.super Landroid/os/Handler;
.source "DBFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V
    .locals 0

    .line 1364
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1367
    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_11

    const/4 v5, 0x2

    if-eq v1, v5, :cond_10

    const/4 v6, 0x4

    if-eq v1, v6, :cond_0

    goto/16 :goto_6

    .line 1385
    :cond_0
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetworkState(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)I

    move-result v1

    const/16 v7, 0x8

    if-ne v1, v7, :cond_f

    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1386
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getLockState()I

    move-result v1

    const-string v7, "0"

    const/4 v8, 0x5

    const/4 v9, 0x3

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide v12, 0x3ff599999999999aL    # 1.35

    const/4 v14, 0x0

    if-eq v1, v4, :cond_2

    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v1

    .line 1387
    invoke-virtual {v1}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getLockState()I

    move-result v1

    if-ne v1, v9, :cond_1

    goto :goto_0

    .line 1399
    :cond_1
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvValueFirst:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1388
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getRsrp_first()I

    move-result v1

    if-nez v1, :cond_3

    .line 1389
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetzeroCount(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)I

    move-result v15

    add-int/2addr v15, v4

    invoke-static {v1, v15}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputzeroCount(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V

    .line 1390
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetzeroCount(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)I

    move-result v1

    if-le v1, v8, :cond_4

    .line 1391
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1, v14}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputzeroCount(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V

    .line 1392
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvValueFirst:Landroid/widget/TextView;

    iget-object v15, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v15}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v15

    invoke-virtual {v15}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getRsrp_first()I

    move-result v15

    int-to-double v2, v15

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v12

    add-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1395
    :cond_3
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1, v14}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputzeroCount(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V

    .line 1396
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvValueFirst:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getRsrp_first()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v12

    add-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1401
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getLockState()I

    move-result v1

    if-eq v1, v5, :cond_6

    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v1

    .line 1402
    invoke-virtual {v1}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getLockState()I

    move-result v1

    if-ne v1, v9, :cond_5

    goto :goto_2

    .line 1414
    :cond_5
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvValueSecond:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1403
    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getRsrp_second()I

    move-result v1

    if-nez v1, :cond_7

    .line 1404
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetzeroCount(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputzeroCount(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V

    .line 1405
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetzeroCount(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)I

    move-result v1

    if-le v1, v8, :cond_8

    .line 1406
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1, v14}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputzeroCount(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V

    .line 1407
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvValueSecond:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getRsrp_second()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v12

    add-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1410
    :cond_7
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1, v14}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fputzeroCount(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V

    .line 1411
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    iget-object v1, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvValueSecond:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getRsrp_second()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v12

    add-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1416
    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const v2, 0x7f10011e

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    .line 1417
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetrxGain(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)I

    move-result v3

    if-ne v3, v4, :cond_9

    .line 1418
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const v2, 0x7f10011f

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1419
    :cond_9
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetrxGain(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)I

    move-result v3

    if-ne v3, v5, :cond_a

    .line 1420
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const v2, 0x7f100121

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1421
    :cond_a
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetrxGain(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)I

    move-result v3

    if-nez v3, :cond_b

    .line 1422
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    .line 1424
    :cond_b
    :goto_4
    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getLockState()I

    move-result v2

    const-string v3, " ]"

    const v7, 0x7f100160

    if-ne v2, v4, :cond_c

    .line 1425
    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v5, v7}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[ \u9501\u5b9a ][ \u5931\u9501 ][ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1426
    :cond_c
    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getLockState()I

    move-result v2

    if-ne v2, v5, :cond_d

    .line 1427
    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v5, v7}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[ \u5931\u9501 ][ \u9501\u5b9a ][ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_5

    .line 1428
    :cond_d
    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getLockState()I

    move-result v2

    if-ne v2, v9, :cond_e

    .line 1429
    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v5, v7}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[ \u9501\u5b9a ][ \u9501\u5b9a ][ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_5

    .line 1431
    :cond_e
    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v5, v7}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[ \u5931\u9501 ][ \u5931\u9501 ][ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    .line 1434
    :cond_f
    :goto_5
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmHandler(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 1372
    :cond_10
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmHandler(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    :cond_11
    const-wide/16 v2, 0x3e8

    .line 1369
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->-$$Nest$fgetmHandler(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_6
    return-void
.end method
