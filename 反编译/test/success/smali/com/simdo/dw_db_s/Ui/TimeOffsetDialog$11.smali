.class Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$11;
.super Ljava/lang/Object;
.source "TimeOffsetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->showCityConfirmDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

.field final synthetic val$delete:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$11;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    iput p2, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$11;->val$position:I

    iput-boolean p3, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$11;->val$delete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 315
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$11;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetcityList(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$11;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/CityBean;

    .line 316
    iget-boolean v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$11;->val$delete:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/CityBean;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Util/GnbCity;->deleteCity(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/CityBean;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Util/GnbCity;->setCurCity(Ljava/lang/String;)V

    .line 321
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$11;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$fgetmListAdapter(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

    move-result-object p1

    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Util/GnbCity;->getCityList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->setList(Ljava/util/List;)V

    .line 322
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$11;->this$0:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)V

    return-void
.end method
