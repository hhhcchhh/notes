.class Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$19;
.super Ljava/lang/Object;
.source "DWFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN41(II)V
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

    .line 1053
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$19;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iput p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$19;->val$report_level:I

    iput p3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$19;->val$async_enable:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1056
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7b49e

    .line 1059
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7e37e

    .line 1060
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7d38e

    .line 1061
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7bd0e

    .line 1062
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object v0

    const-string v1, "504990"

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Util/GnbCity;->getTimingOffset(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Util/GnbCity;->getTimingOffset(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Util/GnbCity;->getTimingOffset(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Util/GnbCity;->getTimingOffset(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 1067
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$19;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetdwDeviceList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$19;->val$report_level:I

    iget v3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$19;->val$async_enable:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual/range {v0 .. v7}, Lcom/dwdbsdk/MessageControl/MessageController;->startDWFreqScan(Ljava/lang/String;IIILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
