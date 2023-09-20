.class Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;
.super Ljava/lang/Object;
.source "DWFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 154
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetdwDeviceList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetdwDeviceList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result p1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    const-string v0, "\u8bf7\u5148\u7ed3\u675f\u626b\u9891"

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const v2, 0x7f100176

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 162
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetdwDeviceList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result p1

    if-nez p1, :cond_3

    .line 164
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->state:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const v2, 0x7f100164

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 165
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetdwDeviceList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dialogTrace(Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const v1, 0x7f100145

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_4
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const v2, 0x7f10016f

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 170
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;->this$0:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-static {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->-$$Nest$fgetdwDeviceList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dialogStopTrace(Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V

    :cond_5
    :goto_0
    return-void
.end method
