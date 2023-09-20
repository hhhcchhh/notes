.class public Lcom/simdo/dw_db_s/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/dwdbsdk/Interface/SocketStateListener;
.implements Lcom/dwdbsdk/Interface/FtpListener;
.implements Lcom/dwdbsdk/SCP/ScpUtil$OnScpListener;


# static fields
.field private static instance:Lcom/simdo/dw_db_s/MainActivity;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDBFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

.field private mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

.field private mDialog:Landroid/app/Dialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSettingFragment:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

.field permissionsResult:Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;


# direct methods
.method static bridge synthetic -$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/simdo/dw_db_s/MainActivity;->closeCustomDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseSDK(Lcom/simdo/dw_db_s/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/simdo/dw_db_s/MainActivity;->releaseSDK()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartActivity(Lcom/simdo/dw_db_s/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/simdo/dw_db_s/MainActivity;->startActivity()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 190
    new-instance v0, Lcom/simdo/dw_db_s/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/simdo/dw_db_s/MainActivity$2;-><init>(Lcom/simdo/dw_db_s/MainActivity;)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->permissionsResult:Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;

    return-void
.end method

.method private closeCustomDialog()V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private createCustomDialog()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 451
    iput-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mDialog:Landroid/app/Dialog;

    .line 453
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110400

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 454
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 455
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 456
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method private exitAppDialog()V
    .locals 3

    .line 234
    invoke-static {p0}, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->getInstance(Landroid/content/Context;)Lcom/simdo/dw_db_s/Util/CustomDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->createCustomDialog()V

    .line 235
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09029d

    .line 236
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100186

    .line 237
    invoke-virtual {p0, v2}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090290

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1000a2

    .line 239
    invoke-virtual {p0, v2}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090084

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 241
    new-instance v2, Lcom/simdo/dw_db_s/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/MainActivity$3;-><init>(Lcom/simdo/dw_db_s/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09007c

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 251
    new-instance v2, Lcom/simdo/dw_db_s/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/MainActivity$4;-><init>(Lcom/simdo/dw_db_s/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-static {p0}, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->getInstance(Landroid/content/Context;)Lcom/simdo/dw_db_s/Util/CustomDialogUtil;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/simdo/dw_db_s/Util/CustomDialogUtil;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method public static getInstance()Lcom/simdo/dw_db_s/MainActivity;
    .locals 1

    .line 68
    sget-object v0, Lcom/simdo/dw_db_s/MainActivity;->instance:Lcom/simdo/dw_db_s/MainActivity;

    return-object v0
.end method

.method private initObject()V
    .locals 1

    .line 219
    invoke-static {}, Lcom/simdo/dw_db_s/Util/GnbCity;->build()Lcom/simdo/dw_db_s/Util/GnbCity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Util/GnbCity;->init()V

    return-void
.end method

.method private initSDK()V
    .locals 2

    .line 212
    invoke-static {}, Lcom/dwdbsdk/DwDbSdk;->build()Lcom/dwdbsdk/DwDbSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/DwDbSdk;->init(Landroid/content/Context;)V

    .line 213
    invoke-static {}, Lcom/dwdbsdk/DwDbSdk;->build()Lcom/dwdbsdk/DwDbSdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dwdbsdk/DwDbSdk;->addConnectListener(Lcom/dwdbsdk/Interface/SocketStateListener;)V

    .line 214
    invoke-static {}, Lcom/dwdbsdk/DwDbSdk;->build()Lcom/dwdbsdk/DwDbSdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dwdbsdk/DwDbSdk;->setFtpListener(Lcom/dwdbsdk/Interface/FtpListener;)V

    .line 215
    invoke-static {}, Lcom/dwdbsdk/SCP/ScpUtil;->build()Lcom/dwdbsdk/SCP/ScpUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dwdbsdk/SCP/ScpUtil;->setOnScpListener(Lcom/dwdbsdk/SCP/ScpUtil$OnScpListener;)V

    return-void
.end method

.method private initView()V
    .locals 10

    .line 91
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f090274

    .line 92
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f0902bd

    .line 93
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v3, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-direct {v3, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    .line 97
    new-instance v3, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-direct {v3, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/simdo/dw_db_s/MainActivity;->mDBFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    .line 98
    new-instance v3, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-direct {v3, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/simdo/dw_db_s/MainActivity;->mSettingFragment:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    .line 99
    iget-object v3, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v3, p0, Lcom/simdo/dw_db_s/MainActivity;->mDBFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v3, p0, Lcom/simdo/dw_db_s/MainActivity;->mSettingFragment:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    .line 102
    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 103
    new-instance v4, Lcom/simdo/dw_db_s/Ui/Adapter/FragmentAdapter;

    invoke-virtual {p0}, Lcom/simdo/dw_db_s/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/simdo/dw_db_s/MainActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2}, Lcom/simdo/dw_db_s/Ui/Adapter/FragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const-string v2, "\u6d4b\u5411"

    const-string v4, "\u8bbe\u7f6e"

    const-string v5, "\u5b9a\u4f4d"

    .line 105
    filled-new-array {v5, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [I

    .line 106
    fill-array-data v3, :array_0

    const/4 v4, 0x2

    new-array v5, v4, [I

    const-string v6, "#07c062"

    .line 107
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const-string v6, "#8F9399"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    aput v6, v5, v8

    new-array v4, v4, [[I

    new-array v6, v8, [I

    const v9, 0x10100a1

    aput v9, v6, v7

    aput-object v6, v4, v7

    new-array v6, v7, [I

    aput-object v6, v4, v8

    .line 112
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 115
    new-instance v4, Lcom/google/android/material/tabs/TabLayoutMediator;

    new-instance v5, Lcom/simdo/dw_db_s/MainActivity$1;

    invoke-direct {v5, p0, v2, v6, v3}, Lcom/simdo/dw_db_s/MainActivity$1;-><init>(Lcom/simdo/dw_db_s/MainActivity;[Ljava/lang/String;Landroid/content/res/ColorStateList;[I)V

    invoke-direct {v4, v0, v1, v5}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 129
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f08008a
        0x7f080070
        0x7f0800b9
    .end array-data
.end method

.method private releaseObject()V
    .locals 0

    return-void
.end method

.method private releaseSDK()V
    .locals 1

    .line 298
    invoke-static {}, Lcom/dwdbsdk/DwDbSdk;->build()Lcom/dwdbsdk/DwDbSdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dwdbsdk/DwDbSdk;->removeConnectListener(Lcom/dwdbsdk/Interface/SocketStateListener;)V

    .line 299
    invoke-static {}, Lcom/dwdbsdk/DwDbSdk;->build()Lcom/dwdbsdk/DwDbSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/DwDbSdk;->release()V

    .line 300
    invoke-static {}, Lcom/dwdbsdk/DwDbSdk;->build()Lcom/dwdbsdk/DwDbSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/DwDbSdk;->removeFtpListener()V

    return-void
.end method

.method private requestPermissions()V
    .locals 5

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.INTERNET"

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    .line 157
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 163
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-lt v1, v2, :cond_0

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    .line 165
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 166
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 167
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    .line 168
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v0, v3, [Ljava/lang/String;

    .line 170
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 173
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 175
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v0, v3, [Ljava/lang/String;

    .line 176
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 178
    :goto_0
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->getInstance()Lcom/simdo/dw_db_s/Util/PermissionsUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/simdo/dw_db_s/MainActivity;->permissionsResult:Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;

    invoke-virtual {v1, p0, v0, v2}, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/simdo/dw_db_s/Util/PermissionsUtil$IPermissionsResult;)V

    goto :goto_1

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/simdo/dw_db_s/MainActivity;->startActivity()V

    :goto_1
    return-void
.end method

.method private showCustomDialog(Landroid/view/View;Z)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 421
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    if-eqz p2, :cond_0

    .line 423
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x50

    .line 424
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 425
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 426
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    .line 427
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 428
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 429
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    .line 432
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 433
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 435
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x7

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 436
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 437
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 400
    invoke-direct {p0}, Lcom/simdo/dw_db_s/MainActivity;->createCustomDialog()V

    .line 401
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09026f

    .line 402
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090294

    .line 403
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 405
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090087

    .line 408
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 409
    new-instance p2, Lcom/simdo/dw_db_s/MainActivity$5;

    invoke-direct {p2, p0}, Lcom/simdo/dw_db_s/MainActivity$5;-><init>(Lcom/simdo/dw_db_s/MainActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 416
    invoke-direct {p0, v0, p1}, Lcom/simdo/dw_db_s/MainActivity;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private startActivity()V
    .locals 1

    const-string v0, "+++ ON CREATE +++"

    .line 206
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->createLogFile(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lcom/simdo/dw_db_s/MainActivity;->initSDK()V

    .line 208
    invoke-direct {p0}, Lcom/simdo/dw_db_s/MainActivity;->initObject()V

    return-void
.end method


# virtual methods
.method public OnScpConnectFail()V
    .locals 0

    return-void
.end method

.method public OnScpGetLogRsp(Z)V
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnScpGetLogRsp(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    const v0, 0x7f100041

    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1000ae

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/simdo/dw_db_s/MainActivity;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDBFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->setWorkState(I)V

    .line 375
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDBFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const v0, 0x7f10014e

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1000ad

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/simdo/dw_db_s/MainActivity;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public OnScpUpgradeFileRsp(Z)V
    .locals 4

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnScpUpgradeFileRsp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 385
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDBFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->setWorkState(I)V

    .line 386
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDBFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mDBFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDBFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getUpgradeFileName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/simdo/dw_db_s/MainActivity;->mDBFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getUpgradeFilePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/dwdbsdk/MessageControl/MessageController;->setDBUpgrade(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDwDeviceList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 390
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const v0, 0x7f10014b

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    const p1, 0x7f100043

    .line 391
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f100167

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/simdo/dw_db_s/MainActivity;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance p1, Lcom/simdo/dw_db_s/Bean/EventMessageBean;

    invoke-direct {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;-><init>()V

    const-string v0, "dismissProgressDialog"

    .line 393
    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setMsg(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 394
    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setWhat(I)V

    .line 395
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public OnSocketStateChange(Ljava/lang/String;II)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->OnSocketStateChange(Ljava/lang/String;II)V

    .line 310
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mDBFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->OnSocketStateChange(Ljava/lang/String;II)V

    return-void
.end method

.method public getStr(I)Ljava/lang/String;
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 74
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/MainActivity;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    .line 77
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x1

    .line 79
    invoke-static {p0, p1}, Lcom/simdo/dw_db_s/Util/StatusBarUtil;->setLightStatusBar(Landroid/app/Activity;Z)V

    .line 81
    sput-object p0, Lcom/simdo/dw_db_s/MainActivity;->instance:Lcom/simdo/dw_db_s/MainActivity;

    .line 82
    iput-object p0, p0, Lcom/simdo/dw_db_s/MainActivity;->mContext:Landroid/content/Context;

    .line 83
    iput-object p0, p0, Lcom/simdo/dw_db_s/MainActivity;->mActivity:Landroid/app/Activity;

    .line 84
    invoke-direct {p0}, Lcom/simdo/dw_db_s/MainActivity;->initView()V

    .line 87
    invoke-direct {p0}, Lcom/simdo/dw_db_s/MainActivity;->requestPermissions()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 291
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 292
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 293
    invoke-direct {p0}, Lcom/simdo/dw_db_s/MainActivity;->releaseSDK()V

    .line 294
    invoke-direct {p0}, Lcom/simdo/dw_db_s/MainActivity;->releaseObject()V

    return-void
.end method

.method public onEvent(Lcom/simdo/dw_db_s/Bean/EventMessageBean;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 134
    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "refreshDWWorkState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dismissProgressDialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mSettingFragment:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->getWhat()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->dismissProgressDialog(I)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->getWhat()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    :goto_0
    return-void
.end method

.method public onEventBackground(Lcom/simdo/dw_db_s/Bean/EventMessageBean;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 143
    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "onGetLog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "onGetOpLog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "DB_device_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "DW_device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "refreshWorkState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "dw_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "db_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->onGetLog(Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->onGetOpLog(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :pswitch_2
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mSettingFragment:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->setDB_device_id(Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :pswitch_3
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mSettingFragment:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->getDwDeviceInfoBean()Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->setDwDevice(Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V

    goto :goto_1

    .line 151
    :pswitch_4
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mSettingFragment:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->getWhat()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->refreshDeviceWorkState(I)V

    goto :goto_1

    .line 144
    :pswitch_5
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mSettingFragment:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->setVersion_dw(Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :pswitch_6
    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mSettingFragment:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->setVersion_db(Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2f988de9 -> :sswitch_6
        -0x5fb72d4 -> :sswitch_5
        -0x3519c9b -> :sswitch_4
        0x18ed782 -> :sswitch_3
        0x16e7a923 -> :sswitch_2
        0x1a080eec -> :sswitch_1
        0x447d2acd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFtpConnectState(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onFtpGetFileProcess(Ljava/lang/String;J)V
    .locals 1

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":\u62f7\u8d1dLOG\u6587\u4ef6\u5f53\u524d\u8fdb\u5ea6 : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    return-void
.end method

.method public onFtpGetFileRsp(Ljava/lang/String;Z)V
    .locals 3

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFtpGetFileRsp(): id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    const v0, 0x7f1000ae

    const v1, 0x7f100041

    if-eqz p2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/simdo/dw_db_s/MainActivity;->mDBFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/MainActivity;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDBFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->setWorkState(I)V

    .line 324
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDBFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;

    const p2, 0x7f10014e

    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 325
    iget-object p2, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 326
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDwDeviceList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result p1

    const/16 v2, 0xe

    if-ne p1, v2, :cond_1

    .line 327
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1000af

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/simdo/dw_db_s/MainActivity;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/simdo/dw_db_s/MainActivity;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDwDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 332
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const p2, 0x7f10014b

    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_1

    .line 334
    :cond_2
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f1000ad

    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/MainActivity;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onFtpPutFileRsp(Ljava/lang/String;Z)V
    .locals 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFtpPutFileRsp(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 343
    iget-object p2, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 344
    iget-object p2, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-virtual {p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDwDeviceList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 345
    iget-object p2, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p2

    iget-object v0, p0, Lcom/simdo/dw_db_s/MainActivity;->mSettingFragment:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getUpgradeFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/MainActivity;->mSettingFragment:Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment;->getUpgradeFilePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p2, p1, v2, v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWGnbUpgrade(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDwDeviceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 350
    iget-object p1, p0, Lcom/simdo/dw_db_s/MainActivity;->mDWFragment:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;

    const p2, 0x7f10014b

    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    const p1, 0x7f100043

    .line 351
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f100167

    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/MainActivity;->getStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/MainActivity;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance p1, Lcom/simdo/dw_db_s/Bean/EventMessageBean;

    invoke-direct {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;-><init>()V

    const-string p2, "dismissProgressDialog"

    .line 353
    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setMsg(Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 354
    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setWhat(I)V

    .line 355
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/simdo/dw_db_s/MainActivity;->exitAppDialog()V

    const/4 p1, 0x1

    return p1

    .line 227
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 186
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->getInstance()Lcom/simdo/dw_db_s/Util/PermissionsUtil;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/simdo/dw_db_s/Util/PermissionsUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 187
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 283
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 284
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 265
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 266
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 268
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 269
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0800b8

    .line 270
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 p1, -0x1

    .line 271
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    .line 272
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 273
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x18

    const/16 v0, 0xe

    .line 274
    invoke-virtual {v2, p1, v0, p1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 275
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/16 p1, 0xc8

    const/16 v0, 0x50

    const/4 v2, 0x0

    .line 276
    invoke-virtual {v1, v0, v2, p1}, Landroid/widget/Toast;->setGravity(III)V

    .line 277
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 278
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
