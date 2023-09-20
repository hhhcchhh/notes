.class public Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;
.super Landroid/app/Dialog;
.source "TimeOffsetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private contentView:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static bridge synthetic -$$Nest$fgetcityList(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->cityList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListAdapter(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mListAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->closeCustomDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAddOrModifiedArfcnDialog(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->showAddOrModifiedArfcnDialog(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCityConfirmDialog(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->showCityConfirmDialog(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCitySelectDialog(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->showCitySelectDialog(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 1

    const v0, 0x7f110400

    .line 35
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0c0031

    const/4 v0, 0x0

    .line 39
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->contentView:Landroid/widget/RelativeLayout;

    .line 40
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->setCanceledOnTouchOutside(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x50

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 46
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 48
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 49
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 50
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 52
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->initView()V

    return-void
.end method

.method private closeCustomDialog()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 352
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private createCustomDialog()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 343
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f110400

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 344
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 345
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 346
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 56
    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Util/GnbCity;->getCityList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->cityList:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->contentView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mListView:Landroid/widget/ListView;

    .line 58
    new-instance v0, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->cityList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/util/List;)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mListAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/CityAdapter;

    .line 59
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelected(Z)V

    .line 61
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$1;

    invoke-direct {v1, p0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$1;-><init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->contentView:Landroid/widget/RelativeLayout;

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->contentView:Landroid/widget/RelativeLayout;

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showAddCityDialog()V
    .locals 6

    .line 88
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->createCustomDialog()V

    .line 90
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900f4

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0900f2

    .line 92
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f090106

    .line 93
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const v4, 0x7f090084

    .line 94
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 95
    new-instance v5, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;

    invoke-direct {v5, p0, v1, v2, v3}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$2;-><init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09007c

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 146
    new-instance v2, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$3;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$3;-><init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, v0, v1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private showAddOrModifiedArfcnDialog(I)V
    .locals 5

    .line 214
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->createCustomDialog()V

    .line 216
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900f2

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f090106

    .line 218
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f090076

    .line 219
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 220
    new-instance v4, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;

    invoke-direct {v4, p0, v1, v2, p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$8;-><init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;Landroid/widget/EditText;Landroid/widget/EditText;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09007f

    .line 265
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 266
    new-instance v3, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$9;

    invoke-direct {v3, p0, v1, p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$9;-><init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;Landroid/widget/EditText;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09007c

    .line 289
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 290
    new-instance v1, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$10;

    invoke-direct {v1, p0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$10;-><init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 296
    invoke-direct {p0, v0, p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private showCityConfirmDialog(IZ)V
    .locals 7

    .line 300
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->createCustomDialog()V

    .line 301
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09029d

    .line 302
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090290

    .line 303
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 304
    iget-object v3, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100186

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->cityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/CityBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/CityBean;->getCity()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    .line 307
    iget-object v5, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100063

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object v5, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100137

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v1, 0x7f090084

    .line 311
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 312
    new-instance v2, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$11;-><init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;IZ)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09007c

    .line 326
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 327
    new-instance p2, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$12;

    invoke-direct {p2, p0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$12;-><init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    invoke-direct {p0, v0, v4}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private showCitySelectDialog(I)V
    .locals 8

    .line 161
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->createCustomDialog()V

    .line 162
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09029d

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090297

    .line 164
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090281

    .line 165
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090289

    .line 166
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090286

    .line 167
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 168
    iget-object v6, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->cityList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/simdo/dw_db_s/Bean/CityBean;

    invoke-virtual {v6}, Lcom/simdo/dw_db_s/Bean/CityBean;->getCity()Ljava/lang/String;

    move-result-object v6

    .line 169
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 171
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 172
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 173
    iget-object v6, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06026d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v6, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    .line 176
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 177
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 178
    iget-object v6, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0601bc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v6, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    :goto_0
    new-instance v6, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$4;

    invoke-direct {v6, p0, p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$4;-><init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;I)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    new-instance v2, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$5;

    invoke-direct {v2, p0, p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$5;-><init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;I)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v2, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$6;

    invoke-direct {v2, p0, p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$6;-><init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;I)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    new-instance p1, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$7;

    invoke-direct {p1, p0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog$7;-><init>(Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;)V

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-direct {p0, v0, v1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private showCustomDialog(Landroid/view/View;Z)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 358
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 359
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x2

    if-eqz p2, :cond_0

    const/16 p2, 0x50

    .line 361
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 362
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 363
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v1, -0x1

    .line 364
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 365
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 366
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x11

    .line 368
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 369
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 371
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x7

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 372
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 373
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090076

    if-eq p1, v0, :cond_1

    const v0, 0x7f09007a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->dismiss()V

    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->showAddCityDialog()V

    :goto_0
    return-void
.end method
