.class Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->showVersionDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->-$$Nest$fgetdialogBean(Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;)Lcom/simdo/dw_db_s/Bean/DialogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DialogBean;->closeCustomDialog()V

    return-void
.end method
