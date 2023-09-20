.class public Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;
.super Landroid/widget/BaseAdapter;
.source "CityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;,
        Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$BtnClick;
    }
.end annotation


# instance fields
.field private cityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/CityBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static bridge synthetic -$$Nest$fgetcityList(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->cityList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mDeleteItemDialog(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->DeleteItemDialog(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->closeCustomDialog()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/CityBean;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object p3, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->cityList:Ljava/util/List;

    return-void
.end method

.method private DeleteItemDialog(I)V
    .locals 4

    .line 112
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->createCustomDialog()V

    .line 114
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090290

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090084

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 119
    new-instance v2, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$1;-><init>(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09007c

    .line 127
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 128
    new-instance v1, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$2;

    invoke-direct {v1, p0}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$2;-><init>(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 135
    invoke-direct {p0, v0, p1}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private closeCustomDialog()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private createCustomDialog()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mDialog:Landroid/app/Dialog;

    .line 150
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f110400

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 151
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 152
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 153
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method private showCustomDialog(Landroid/view/View;Z)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 158
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    if-eqz p2, :cond_0

    .line 160
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x50

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 162
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 163
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    .line 164
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 165
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 60
    new-instance p2, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;-><init>(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;)V

    .line 61
    iget-object p3, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0032

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090288

    .line 63
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;->-$$Nest$fputtv_city(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;Landroid/widget/TextView;)V

    const v0, 0x7f09029c

    .line 64
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;->-$$Nest$fputtv_timingOffset(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 65
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->cityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/CityBean;

    if-nez p1, :cond_1

    .line 71
    invoke-static {p2}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;->-$$Nest$fgettv_city(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/CityBean;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [\u5f53\u524d\u57ce\u5e02]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 73
    :cond_1
    invoke-static {p2}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;->-$$Nest$fgettv_city(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/CityBean;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/CityBean;->getArfcnList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const-string v2, "\u9891\u70b9: "

    .line 78
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->getArfcn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t\t\t\t\u65f6\u504f: "

    .line 80
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Bean/ArfcnTimingOffset;->getTimingOffset()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    const-string v2, "\n"

    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    :cond_3
    invoke-static {p2}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;->-$$Nest$fgettv_timingOffset(Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/CityBean;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->cityList:Ljava/util/List;

    .line 38
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;->notifyDataSetChanged()V

    return-void
.end method
