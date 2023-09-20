.class Lcom/simdo/dw_db_s/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/MainActivity;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/MainActivity;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/MainActivity;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/simdo/dw_db_s/MainActivity$5;->this$0:Lcom/simdo/dw_db_s/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 412
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity$5;->this$0:Lcom/simdo/dw_db_s/MainActivity;

    invoke-static {p1}, Lcom/simdo/dw_db_s/MainActivity;->-$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/MainActivity;)V

    return-void
.end method
