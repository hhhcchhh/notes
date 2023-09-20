.class Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$1;
.super Ljava/lang/Object;
.source "CityAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->DeleteItemDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$1;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

    iput p2, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$1;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->-$$Nest$fgetcityList(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$1;->val$pos:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 123
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$1;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->notifyDataSetChanged()V

    .line 124
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$1;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;)V

    return-void
.end method
