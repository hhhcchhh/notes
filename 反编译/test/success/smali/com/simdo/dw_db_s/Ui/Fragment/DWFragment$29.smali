.class Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$29;
.super Ljava/lang/Object;
.source "DWFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB41(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

.field final synthetic val$async_enable:I

.field final synthetic val$report_level:I


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1283
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$29;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iput p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$29;->val$report_level:I

    iput p3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$29;->val$async_enable:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1286
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1288
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x9fe8

    .line 1289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0xa174

    .line 1290
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0xa0ae

    .line 1291
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1292
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1293
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    .line 1294
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1296
    :cond_0
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v1

    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$29;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetdwDeviceList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$29;->val$report_level:I

    iget v4, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$29;->val$async_enable:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v8

    invoke-virtual/range {v0 .. v7}, Lcom/dwdbsdk/MessageControl/MessageController;->startDWFreqScan(Ljava/lang/String;IIILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
