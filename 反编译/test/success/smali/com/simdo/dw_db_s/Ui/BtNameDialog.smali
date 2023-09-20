.class public Lcom/simdo/dw_db_s/Ui/BtNameDialog;
.super Landroid/app/Dialog;
.source "BtNameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private contentView:Landroid/widget/LinearLayout;

.field private deviceId:Ljava/lang/String;

.field private ed_name:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/String;)V
    .locals 0

    const p2, 0x7f110400

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->mContext:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->deviceId:Ljava/lang/String;

    const p2, 0x7f0c003a

    const/4 p3, 0x0

    .line 27
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->contentView:Landroid/widget/LinearLayout;

    .line 28
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->setCanceledOnTouchOutside(Z)V

    .line 32
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x50

    .line 33
    invoke-virtual {p2, p3}, Landroid/view/Window;->setGravity(I)V

    .line 34
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 35
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 p3, -0x1

    .line 36
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 37
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 38
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 40
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->contentView:Landroid/widget/LinearLayout;

    const v1, 0x7f090084

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->contentView:Landroid/widget/LinearLayout;

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->contentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->ed_name:Landroid/widget/EditText;

    .line 48
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PrefUtil;->build()Lcom/simdo/dw_db_s/Util/PrefUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Util/PrefUtil;->getBtName()Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bt_name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09007c

    if-eq p1, v0, :cond_2

    const v0, 0x7f090084

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->ed_name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_1
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PrefUtil;->build()Lcom/simdo/dw_db_s/Util/PrefUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Util/PrefUtil;->setBtName(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDBBtName(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->dismiss()V

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->dismiss()V

    :goto_0
    return-void
.end method
