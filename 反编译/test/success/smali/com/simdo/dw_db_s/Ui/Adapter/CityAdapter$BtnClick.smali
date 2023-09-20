.class Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$BtnClick;
.super Ljava/lang/Object;
.source "CityAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BtnClick"
.end annotation


# instance fields
.field pos:I

.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;


# direct methods
.method public constructor <init>(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;I)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$BtnClick;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p2, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$BtnClick;->pos:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$BtnClick;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

    iget v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$BtnClick;->pos:I

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->-$$Nest$mDeleteItemDialog(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;I)V

    return-void
.end method
