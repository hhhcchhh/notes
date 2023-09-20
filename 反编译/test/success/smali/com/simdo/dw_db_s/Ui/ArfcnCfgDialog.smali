.class public Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;
.super Landroid/app/Dialog;
.source "ArfcnCfgDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private contentView:Landroid/widget/LinearLayout;

.field private context:Landroid/content/Context;

.field private ed_arfcn:Landroid/widget/EditText;

.field private ed_k1:Landroid/widget/EditText;

.field private ed_k2:Landroid/widget/EditText;

.field private ed_time_offset:Landroid/widget/EditText;

.field private mDialog:Landroid/app/Dialog;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->closeCustomDialog()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 5

    const v0, 0x7f110400

    .line 24
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0c002e

    const/4 v0, 0x0

    .line 28
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->contentView:Landroid/widget/LinearLayout;

    .line 29
    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->setContentView(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 30
    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 36
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 38
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, p1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int p1, v1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p1, -0x2

    .line 39
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 42
    invoke-virtual {v0, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 44
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->initView()V

    return-void
.end method

.method private closeCustomDialog()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private createCustomDialog()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    const v2, 0x7f110400

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 152
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 153
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 154
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->contentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0900f2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->ed_arfcn:Landroid/widget/EditText;

    .line 49
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->contentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->ed_k1:Landroid/widget/EditText;

    .line 50
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->contentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->ed_k2:Landroid/widget/EditText;

    .line 51
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->contentView:Landroid/widget/LinearLayout;

    const v1, 0x7f090106

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->ed_time_offset:Landroid/widget/EditText;

    .line 52
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->contentView:Landroid/widget/LinearLayout;

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->contentView:Landroid/widget/LinearLayout;

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->contentView:Landroid/widget/LinearLayout;

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showCustomDialog(Landroid/view/View;Z)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 164
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, -0x2

    if-eqz p2, :cond_0

    .line 166
    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x50

    .line 167
    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 168
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 169
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 170
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 171
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 172
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x11

    .line 175
    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 176
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x7

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 179
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 180
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private showDeleteConfirmDialog(I)V
    .locals 5

    .line 110
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->createCustomDialog()V

    .line 111
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09029d

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090290

    .line 113
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u786e\u5b9a\u5220\u9664\u9891\u70b9: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100186

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090084

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 117
    new-instance v2, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$1;-><init>(Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09007c

    .line 134
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 135
    new-instance v1, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$2;

    invoke-direct {v1, p0}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog$2;-><init>(Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 141
    invoke-direct {p0, v0, p1}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090076

    const v1, 0x7f10007f

    if-eq p1, v0, :cond_3

    const v0, 0x7f09007c

    if-eq p1, v0, :cond_2

    const v0, 0x7f09007f

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->ed_arfcn:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 98
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 101
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->showDeleteConfirmDialog(I)V

    goto/16 :goto_1

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->dismiss()V

    goto/16 :goto_1

    .line 63
    :cond_3
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->ed_arfcn:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->ed_k1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->ed_k2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->ed_time_offset:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_4

    .line 68
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v4, 0x7f100084

    if-gtz v1, :cond_5

    .line 72
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "k1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_6

    .line 76
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "k2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_7

    .line 80
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 84
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->build()Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->add(IIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 86
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_8
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->context:Landroid/content/Context;

    const v0, 0x7f100094

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->dismiss()V

    :goto_1
    return-void
.end method
