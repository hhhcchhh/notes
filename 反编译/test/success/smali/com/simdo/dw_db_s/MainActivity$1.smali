.class Lcom/simdo/dw_db_s/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simdo/dw_db_s/MainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/MainActivity;

.field final synthetic val$colorList:Landroid/content/res/ColorStateList;

.field final synthetic val$icons:[I

.field final synthetic val$titles:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/simdo/dw_db_s/MainActivity;[Ljava/lang/String;Landroid/content/res/ColorStateList;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/simdo/dw_db_s/MainActivity$1;->this$0:Lcom/simdo/dw_db_s/MainActivity;

    iput-object p2, p0, Lcom/simdo/dw_db_s/MainActivity$1;->val$titles:[Ljava/lang/String;

    iput-object p3, p0, Lcom/simdo/dw_db_s/MainActivity$1;->val$colorList:Landroid/content/res/ColorStateList;

    iput-object p4, p0, Lcom/simdo/dw_db_s/MainActivity$1;->val$icons:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity$1;->this$0:Lcom/simdo/dw_db_s/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090299

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 121
    iget-object v2, p0, Lcom/simdo/dw_db_s/MainActivity$1;->val$titles:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lcom/simdo/dw_db_s/MainActivity$1;->val$colorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v1, 0x7f090151

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 125
    iget-object v2, p0, Lcom/simdo/dw_db_s/MainActivity$1;->val$icons:[I

    aget p2, v2, p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method
