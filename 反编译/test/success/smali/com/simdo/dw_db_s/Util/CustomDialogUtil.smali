.class public Lcom/simdo/dw_db_s/Util/CustomDialogUtil;
.super Ljava/lang/Object;
.source "CustomDialogUtil.java"


# static fields
.field private static mCustomDialogUtil:Lcom/simdo/dw_db_s/Util/CustomDialogUtil;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDialog:Landroid/app/Dialog;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/simdo/dw_db_s/Util/CustomDialogUtil;
    .locals 1

    .line 17
    sget-object v0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mCustomDialogUtil:Lcom/simdo/dw_db_s/Util/CustomDialogUtil;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;

    invoke-direct {v0, p0}, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mCustomDialogUtil:Lcom/simdo/dw_db_s/Util/CustomDialogUtil;

    .line 20
    :cond_0
    sget-object p0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mCustomDialogUtil:Lcom/simdo/dw_db_s/Util/CustomDialogUtil;

    return-object p0
.end method


# virtual methods
.method public closeCustomDialog()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public createCustomDialog()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mContext:Landroid/content/Context;

    const v2, 0x7f110400

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 35
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 36
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public showCustomDialog(Landroid/view/View;Z)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, -0x2

    if-eqz p2, :cond_0

    .line 47
    iget-object p2, p0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x50

    .line 48
    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 49
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 50
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 51
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p2, p0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x11

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 57
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x7

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 59
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 62
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
