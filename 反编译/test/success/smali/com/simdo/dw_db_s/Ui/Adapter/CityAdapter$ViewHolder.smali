.class Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

.field private tv_city:Landroid/widget/TextView;

.field private tv_timingOffset:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgettv_city(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;->tv_city:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_timingOffset(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;->tv_timingOffset:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputtv_city(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;->tv_city:Landroid/widget/TextView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtv_timingOffset(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;->tv_timingOffset:Landroid/widget/TextView;

    return-void
.end method

.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;->this$0:Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
