.class Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$7;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getOpLogDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 432
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$7;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$7;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 435
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
