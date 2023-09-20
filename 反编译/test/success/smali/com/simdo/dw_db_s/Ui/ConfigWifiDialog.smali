.class public Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;
.super Landroid/app/Dialog;
.source "ConfigWifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private contentView:Landroid/widget/LinearLayout;

.field private deviceId:Ljava/lang/String;

.field private ed_psw:Landroid/widget/EditText;

.field private ed_ssid:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/String;)V
    .locals 0

    const p2, 0x7f110400

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->mContext:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->deviceId:Ljava/lang/String;

    const p2, 0x7f0c0034

    const/4 p3, 0x0

    .line 27
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->contentView:Landroid/widget/LinearLayout;

    .line 28
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->setCanceledOnTouchOutside(Z)V

    .line 32
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->getWindow()Landroid/view/Window;

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
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->initView()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->contentView:Landroid/widget/LinearLayout;

    const v1, 0x7f090084

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->contentView:Landroid/widget/LinearLayout;

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PrefUtil;->build()Lcom/simdo/dw_db_s/Util/PrefUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Util/PrefUtil;->getWifiInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, ";"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 51
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 52
    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 54
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ssid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", psw = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->contentView:Landroid/widget/LinearLayout;

    const v3, 0x7f090105

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->ed_ssid:Landroid/widget/EditText;

    .line 56
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->contentView:Landroid/widget/LinearLayout;

    const v2, 0x7f090100

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->ed_psw:Landroid/widget/EditText;

    .line 58
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09007c

    if-eq p1, v0, :cond_3

    const v0, 0x7f090084

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->ed_ssid:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->ed_psw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 72
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_2
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PrefUtil;->build()Lcom/simdo/dw_db_s/Util/PrefUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/Util/PrefUtil;->configWifi(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v1

    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->setDBWifiInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->dismiss()V

    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->dismiss()V

    :goto_0
    return-void
.end method
