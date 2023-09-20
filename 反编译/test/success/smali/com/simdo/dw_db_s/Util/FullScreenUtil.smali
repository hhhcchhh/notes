.class public Lcom/simdo/dw_db_s/Util/FullScreenUtil;
.super Ljava/lang/Object;
.source "FullScreenUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simdo/dw_db_s/Util/FullScreenUtil$FullScreenUtilBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/simdo/dw_db_s/Util/FullScreenUtil-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/simdo/dw_db_s/Util/FullScreenUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/simdo/dw_db_s/Util/FullScreenUtil;
    .locals 1

    .line 18
    invoke-static {}, Lcom/simdo/dw_db_s/Util/FullScreenUtil$FullScreenUtilBuilder;->-$$Nest$sfgetinstance()Lcom/simdo/dw_db_s/Util/FullScreenUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fullScreen(Landroid/app/Activity;Z)V
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    const/16 p2, 0x2500

    goto :goto_0

    :cond_0
    const/high16 p2, -0x1000000

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    const/16 p2, 0x500

    .line 46
    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 p2, -0x80000000

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/high16 v0, 0x4000000

    .line 55
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_1
    return-void
.end method
