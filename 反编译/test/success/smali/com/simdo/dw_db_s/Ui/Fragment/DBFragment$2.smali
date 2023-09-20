.class Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$2;
.super Ljava/lang/Object;
.source "DBFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$2;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 612
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "0."

    return-object p1

    .line 615
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\."

    .line 616
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 617
    array-length p2, p1

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    .line 618
    aget-object p1, p1, p3

    .line 619
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
