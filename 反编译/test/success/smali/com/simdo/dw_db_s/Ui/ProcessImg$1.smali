.class Lcom/simdo/dw_db_s/Ui/ProcessImg$1;
.super Ljava/lang/Object;
.source "ProcessImg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/ProcessImg;->setClick(ILcom/simdo/dw_db_s/Ui/ProcessImg$Click;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/ProcessImg;

.field final synthetic val$click:Lcom/simdo/dw_db_s/Ui/ProcessImg$Click;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/ProcessImg;Lcom/simdo/dw_db_s/Ui/ProcessImg$Click;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg$1;->this$0:Lcom/simdo/dw_db_s/Ui/ProcessImg;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg$1;->val$click:Lcom/simdo/dw_db_s/Ui/ProcessImg$Click;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/ProcessImg$1;->val$click:Lcom/simdo/dw_db_s/Ui/ProcessImg$Click;

    invoke-interface {p1}, Lcom/simdo/dw_db_s/Ui/ProcessImg$Click;->click()V

    return-void
.end method
