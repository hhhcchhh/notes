.class public Lcom/simdo/dw_db_s/Bean/DialogBean;
.super Ljava/lang/Object;
.source "DialogBean.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/DialogBean;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/simdo/dw_db_s/Bean/DialogBean;->mDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public closeCustomDialog()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DialogBean;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/DialogBean;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public createCustomDialog()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DialogBean;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Bean/DialogBean;->mContext:Landroid/content/Context;

    const v2, 0x7f110400

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/DialogBean;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 31
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DialogBean;->mDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 32
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DialogBean;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public showCustomDialog(Landroid/view/View;Z)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DialogBean;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 45
    iget-object p1, p0, Lcom/simdo/dw_db_s/Bean/DialogBean;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x50

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 47
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 48
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    .line 49
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 50
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Bean/DialogBean;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 55
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 57
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DialogBean;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x7

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 58
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 61
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Bean/DialogBean;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
