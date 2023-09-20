.class public Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;
.super Landroidx/fragment/app/Fragment;
.source "DBFragment.java"

# interfaces
.implements Lcom/dwdbsdk/Interface/DBBusinessListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field Gpio1:I

.field Gpio2:I

.field Gpio3:I

.field Gpio4:I

.field Gpio5:I

.field Gpio6:I

.field private arfcnInsert:I

.field bandwidth:I

.field private deviceId:Ljava/lang/String;

.field private enable_vehicle:Z

.field fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

.field private gnbLogName:Ljava/lang/String;

.field private hostIP:Ljava/lang/String;

.field private isSetGnbTime:Z

.field isUl_Arfcn_Switch:Z

.field private lastMsgSn:I

.field private lastRxGain:I

.field private lengthFilter:Landroid/text/InputFilter;

.field mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mUpdateFilesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/File/FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private msgScanLatestRsp:Lcom/dwdbsdk/Response/DB/MsgScanRsp;

.field rev:Landroid/widget/TextView;

.field private rxGain:I

.field smooth_type:I

.field smooth_win_len:I

.field private timeOffsetDialog:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

.field private upgradeFileName:Ljava/lang/String;

.field private upgradeFilePath:Ljava/lang/String;

.field private workState:I

.field private zeroCount:I


# direct methods
.method public static synthetic $r8$lambda$GX9Fe3_obxR74gEM9ghxaatkCLo(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->lambda$onDBHeartStateRsp$0(Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdeviceId(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetenable_vehicle(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->enable_vehicle:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgnbLogName(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->gnbLogName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethostIP(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->hostIP:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateFilesList(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mUpdateFilesList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmsgScanLatestRsp(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Lcom/dwdbsdk/Response/DB/MsgScanRsp;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->msgScanLatestRsp:Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrxGain(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)I
    .locals 0

    iget p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->rxGain:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetupgradeFilePath(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->upgradeFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetworkState(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)I
    .locals 0

    iget p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetzeroCount(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)I
    .locals 0

    iget p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->zeroCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputarfcnInsert(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V
    .locals 0

    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->arfcnInsert:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputenable_vehicle(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->enable_vehicle:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgnbLogName(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->gnbLogName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrxGain(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V
    .locals 0

    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->rxGain:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputupgradeFileName(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->upgradeFileName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputupgradeFilePath(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->upgradeFilePath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputworkState(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V
    .locals 0

    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputzeroCount(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;I)V
    .locals 0

    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->zeroCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->closeCustomDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUpgradeConfirmDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showUpgradeConfirmDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 110
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->msgScanLatestRsp:Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    const-string v0, ""

    .line 87
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->deviceId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 88
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->lastMsgSn:I

    const/4 v2, -0x1

    .line 89
    iput v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->rxGain:I

    iput v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->lastRxGain:I

    .line 93
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->gnbLogName:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->upgradeFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->upgradeFilePath:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mUpdateFilesList:Ljava/util/List;

    .line 99
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->arfcnInsert:I

    .line 603
    new-instance v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$2;

    invoke-direct {v0, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$2;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->lengthFilter:Landroid/text/InputFilter;

    const/4 v0, 0x5

    .line 626
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->bandwidth:I

    .line 627
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->smooth_type:I

    .line 628
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->smooth_win_len:I

    .line 629
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->isUl_Arfcn_Switch:Z

    const/4 v0, 0x1

    .line 1012
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio1:I

    .line 1013
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio2:I

    .line 1014
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio3:I

    .line 1015
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio4:I

    .line 1016
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio5:I

    .line 1017
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio6:I

    .line 1362
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->zeroCount:I

    .line 1363
    new-instance v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;

    invoke-direct {v0, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 106
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->msgScanLatestRsp:Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    const-string v0, ""

    .line 87
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->deviceId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 88
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->lastMsgSn:I

    const/4 v2, -0x1

    .line 89
    iput v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->rxGain:I

    iput v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->lastRxGain:I

    .line 93
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->gnbLogName:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->upgradeFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->upgradeFilePath:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mUpdateFilesList:Ljava/util/List;

    .line 99
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->arfcnInsert:I

    .line 603
    new-instance v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$2;

    invoke-direct {v0, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$2;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->lengthFilter:Landroid/text/InputFilter;

    const/4 v0, 0x5

    .line 626
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->bandwidth:I

    .line 627
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->smooth_type:I

    .line 628
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->smooth_win_len:I

    .line 629
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->isUl_Arfcn_Switch:Z

    const/4 v0, 0x1

    .line 1012
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio1:I

    .line 1013
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio2:I

    .line 1014
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio3:I

    .line 1015
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio4:I

    .line 1016
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio5:I

    .line 1017
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->Gpio6:I

    .line 1362
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->zeroCount:I

    .line 1363
    new-instance v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;

    invoke-direct {v0, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$31;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mHandler:Landroid/os/Handler;

    .line 107
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method private clickLogBtn()V
    .locals 2

    const-string v0, "clickLogBtn()"

    .line 1217
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1218
    iget v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1219
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showGetLogDialog()V

    goto :goto_0

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f100145

    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private clickRebootBtn()V
    .locals 2

    const-string v0, "clickRebootBtn()"

    .line 1264
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1265
    iget v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f100186

    .line 1266
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100124

    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showRebootDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f100145

    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private clickRxGainBtn()V
    .locals 6

    const-string v0, "clickRxGainBtn()"

    .line 959
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 964
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->createCustomDialog()V

    .line 965
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e8

    .line 966
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 967
    iget v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->rxGain:I

    const/4 v3, -0x1

    const v4, 0x7f0901de

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    .line 968
    iput v5, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->rxGain:I

    .line 969
    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const v2, 0x7f0901e1

    .line 972
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const v2, 0x7f0901e3

    .line 974
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 976
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    const v2, 0x7f090084

    .line 979
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 980
    new-instance v3, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$11;

    invoke-direct {v3, p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$11;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Landroid/widget/RadioGroup;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09007c

    .line 999
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1000
    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$12;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$12;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1006
    invoke-direct {p0, v0, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private clickSetGpioBtn()V
    .locals 8

    const-string v0, "clickRxGainBtn()"

    .line 1020
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1022
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->createCustomDialog()V

    .line 1023
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09012a

    .line 1025
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const v2, 0x7f09012b

    .line 1026
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    const v3, 0x7f09012c

    .line 1027
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    const v4, 0x7f09012d

    .line 1028
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    const v5, 0x7f09012e

    .line 1029
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    const v6, 0x7f09012f

    .line 1030
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 1032
    new-instance v7, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$13;

    invoke-direct {v7, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$13;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1047
    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$14;

    invoke-direct {v1, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$14;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1062
    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$15;

    invoke-direct {v1, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$15;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1077
    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$16;

    invoke-direct {v1, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$16;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1092
    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$17;

    invoke-direct {v1, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$17;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1107
    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$18;

    invoke-direct {v1, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$18;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v1, 0x7f090084

    .line 1122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1123
    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$19;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$19;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09007c

    .line 1130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1131
    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$20;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$20;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 1137
    invoke-direct {p0, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private clickStartPwrDetect()V
    .locals 2

    .line 587
    iget v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showStartPwrDetectDialog()V

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 592
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f10014f

    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 594
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f10014d

    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 596
    :cond_3
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f100145

    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 590
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showStopPwrDetectDialog()V

    :goto_1
    return-void
.end method

.method private clickUpgradeBtn()V
    .locals 2

    const-string v0, "clickUpgradeBtn()"

    .line 1141
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1142
    iget v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1143
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showUpgradeDialog()V

    goto :goto_0

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f100145

    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private closeCustomDialog()V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 556
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private createCustomDialog()V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 545
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mDialog:Landroid/app/Dialog;

    .line 547
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f110400

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 548
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 549
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 550
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method private dialigDataTransmission()V
    .locals 4

    .line 1302
    iget v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f100160

    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1306
    :cond_0
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->createCustomDialog()V

    .line 1307
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090101

    .line 1308
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f090295

    .line 1309
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->rev:Landroid/widget/TextView;

    const v2, 0x7f090084

    .line 1310
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1311
    new-instance v3, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$29;

    invoke-direct {v3, p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$29;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09007c

    .line 1321
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1322
    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$30;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$30;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 1328
    invoke-direct {p0, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private initPara()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->isSetGnbTime:Z

    .line 138
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const-string p1, "DBFragment initView run"

    .line 142
    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->batteryView:Lcom/simdo/dw_db_s/DrawBatteryView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/DrawBatteryView;->setElectricQuantity(I)V

    .line 144
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->battery:Landroid/widget/TextView;

    const-string v0, "..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnPwrDetect:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnRxGain:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnTimeOffset:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnVersion:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnUpgrade:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnLog:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnReboot:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnAddArfcn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnBtName:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnWifiCfg:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnSearchArfcn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnSetGpio:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnDataTransmission:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private synthetic lambda$onDBHeartStateRsp$0(Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 248
    invoke-direct {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshBoardState(Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    .line 249
    iget p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 250
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvState:Landroid/widget/TextView;

    const v0, 0x7f10014e

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private refreshBoardState(Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 5

    .line 499
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->battery:Landroid/widget/TextView;

    invoke-static {}, Lcom/dwdbsdk/Util/BatteryPredator;->build()Lcom/dwdbsdk/Util/BatteryPredator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Util/BatteryPredator;->getPercent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    invoke-static {}, Lcom/dwdbsdk/Util/Temperature;->build()Lcom/dwdbsdk/Util/Temperature;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/Util/Temperature;->getTemp(Ljava/lang/String;)D

    move-result-wide v0

    .line 501
    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object v2, v2, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvTemp:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    invoke-static {}, Lcom/dwdbsdk/Util/GpsState;->build()Lcom/dwdbsdk/Util/GpsState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/dwdbsdk/Util/GpsState;->isGpsSync(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "\u5931\u6b65"

    if-eqz p1, :cond_0

    .line 503
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvGps:Landroid/widget/TextView;

    const-string v1, "\u540c\u6b65"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvGps:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    :goto_0
    invoke-static {}, Lcom/dwdbsdk/Util/AirState;->build()Lcom/dwdbsdk/Util/AirState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dwdbsdk/Util/AirState;->getAirSyncState()I

    move-result p1

    .line 508
    invoke-static {}, Lcom/dwdbsdk/Util/AirState;->build()Lcom/dwdbsdk/Util/AirState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Util/AirState;->getPci()I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 510
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvAirSync:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u540c\u6b65[ "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 512
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvAirSync:Landroid/widget/TextView;

    const-string v0, "\u7a7a\u95f2"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 514
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvAirSync:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private showCustomDialog(Landroid/view/View;Z)V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 562
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    if-eqz p2, :cond_0

    .line 564
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x50

    .line 565
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 566
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 567
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    .line 568
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 569
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 570
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 572
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    .line 573
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 574
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 576
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x7

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 577
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 578
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private showGetLogDialog()V
    .locals 4

    .line 1226
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->createCustomDialog()V

    .line 1228
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900f5

    .line 1229
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f090084

    .line 1230
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1231
    new-instance v3, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;

    invoke-direct {v3, p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$25;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09007c

    .line 1250
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1251
    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$26;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$26;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 1257
    invoke-direct {p0, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private showRebootDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1273
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->createCustomDialog()V

    .line 1275
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09029d

    .line 1276
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1277
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090290

    .line 1278
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1279
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090084

    .line 1281
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 1282
    new-instance p2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$27;

    invoke-direct {p2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$27;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09007c

    .line 1289
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 1290
    new-instance p2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$28;

    invoke-direct {p2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$28;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 1296
    invoke-direct {p0, v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 523
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->createCustomDialog()V

    .line 524
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09026f

    .line 525
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090294

    .line 526
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 528
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090087

    .line 531
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 532
    new-instance p2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$1;

    invoke-direct {p2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$1;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 539
    invoke-direct {p0, v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private showStartPwrDetectDialog()V
    .locals 16

    move-object/from16 v10, p0

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->createCustomDialog()V

    .line 633
    iget-object v0, v10, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v0, 0x7f0900f2

    .line 634
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    const v0, 0x7f0900fc

    .line 635
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    const v0, 0x7f0900fe

    .line 636
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/EditText;

    const v0, 0x7f0900fb

    .line 637
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v12, 0x1

    new-array v1, v12, [Landroid/text/InputFilter;

    .line 638
    iget-object v4, v10, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->lengthFilter:Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const-string v1, "4"

    .line 639
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090107

    .line 640
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    const-string v0, "9"

    .line 641
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090108

    .line 642
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    const-string v1, "19"

    .line 643
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090109

    .line 644
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    const-string v1, "16"

    .line 645
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090102

    .line 646
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    const v1, 0x7f0900ff

    .line 647
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/EditText;

    .line 648
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902a1

    .line 649
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 650
    iput-boolean v5, v10, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->isUl_Arfcn_Switch:Z

    .line 651
    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$3;

    invoke-direct {v1, v10, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$3;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Landroid/widget/ToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090244

    .line 662
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 663
    invoke-virtual {v0, v12}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 665
    iput-boolean v5, v10, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->enable_vehicle:Z

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v14, "enable_vehicle = "

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v14, v10, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->enable_vehicle:Z

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 667
    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$4;

    invoke-direct {v1, v10, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$4;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Landroid/widget/ToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    iget-object v0, v10, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f030000

    const v14, 0x1090008

    invoke-static {v0, v1, v14}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v1, 0x7f090216

    .line 681
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const v15, 0x1090009

    .line 682
    invoke-virtual {v0, v15}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 683
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 684
    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 685
    new-instance v12, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$5;

    invoke-direct {v12, v10}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$5;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v1, v12}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 700
    iget-object v1, v10, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    const v12, 0x7f030002

    invoke-static {v1, v12, v14}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    const v12, 0x7f090217

    .line 701
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    .line 702
    invoke-virtual {v0, v15}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 703
    invoke-virtual {v12, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 704
    invoke-virtual {v12, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 705
    iput v5, v10, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->smooth_type:I

    .line 706
    new-instance v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$6;

    invoke-direct {v0, v10}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$6;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v12, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f09008b

    .line 723
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    .line 724
    new-instance v14, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v13

    invoke-direct/range {v0 .. v9}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$7;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09007c

    .line 916
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 917
    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$8;

    invoke-direct {v1, v10}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$8;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 924
    invoke-direct {v10, v11, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private showStopPwrDetectDialog()V
    .locals 4

    .line 928
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->createCustomDialog()V

    .line 930
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09029d

    .line 931
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090290

    .line 932
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f100173

    .line 933
    invoke-virtual {p0, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f10005b

    .line 934
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090084

    .line 936
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 937
    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$9;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$9;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09007c

    .line 947
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 948
    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$10;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$10;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 955
    invoke-direct {p0, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private showUpgradeConfirmDialog()V
    .locals 6

    .line 1187
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->createCustomDialog()V

    .line 1189
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09029d

    .line 1191
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090290

    .line 1192
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f100173

    .line 1193
    invoke-virtual {p0, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10005a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->upgradeFileName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090084

    .line 1196
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1197
    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$23;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$23;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09007c

    .line 1206
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1207
    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$24;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$24;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    invoke-direct {p0, v0, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private showUpgradeDialog()V
    .locals 6

    .line 1150
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->createCustomDialog()V

    .line 1151
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mUpdateFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1152
    invoke-static {}, Lcom/simdo/dw_db_s/File/FileUtil;->build()Lcom/simdo/dw_db_s/File/FileUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/File/FileUtil;->getUpdateFileList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mUpdateFilesList:Ljava/util/List;

    .line 1153
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090116

    .line 1155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090115

    .line 1156
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 1157
    new-instance v3, Lcom/simdo/dw_db_s/Ui/Adapter/FileAdapter;

    iget-object v4, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mUpdateFilesList:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/simdo/dw_db_s/Ui/Adapter/FileAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1158
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1160
    iget-object v3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mUpdateFilesList:Ljava/util/List;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1161
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1162
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 1164
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1165
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1167
    :goto_0
    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$21;

    invoke-direct {v1, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$21;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f09007c

    .line 1176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1177
    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$22;

    invoke-direct {v2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$22;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    invoke-direct {p0, v0, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public OnSocketStateChange(Ljava/lang/String;II)V
    .locals 1

    .line 492
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSocketStateChange() lastState = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", state = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1348
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStr(I)Ljava/lang/String;
    .locals 1

    .line 519
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUpgradeFileName()Ljava/lang/String;
    .locals 1

    .line 1340
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->upgradeFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpgradeFilePath()Ljava/lang/String;
    .locals 1

    .line 1344
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->upgradeFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkState()I
    .locals 1

    .line 1332
    iget v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 116
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 201
    :sswitch_0
    new-instance p1, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->deviceId:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Ui/ConfigWifiDialog;->show()V

    goto/16 :goto_0

    .line 193
    :sswitch_1
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p1

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->getDBVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :sswitch_2
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->clickUpgradeBtn()V

    goto/16 :goto_0

    .line 178
    :sswitch_3
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->timeOffsetDialog:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    if-eqz p1, :cond_0

    const-string p1, "timeOffsetDialog != null"

    .line 179
    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->timeOffsetDialog:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->show()V

    goto :goto_0

    :cond_0
    const-string p1, "timeOffsetDialog is null"

    .line 182
    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 183
    new-instance p1, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->timeOffsetDialog:Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;

    .line 184
    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Ui/TimeOffsetDialog;->show()V

    goto :goto_0

    .line 174
    :sswitch_4
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->clickSetGpioBtn()V

    goto :goto_0

    .line 216
    :sswitch_5
    new-instance p1, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->build()Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DB/DBSupportArfcn;->getList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Ui/ArfcnListDialog;->show()V

    goto :goto_0

    .line 171
    :sswitch_6
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->clickRxGainBtn()V

    goto :goto_0

    .line 213
    :sswitch_7
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->clickRebootBtn()V

    goto :goto_0

    .line 167
    :sswitch_8
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->clickStartPwrDetect()V

    goto :goto_0

    .line 209
    :sswitch_9
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->clickLogBtn()V

    goto :goto_0

    .line 219
    :sswitch_a
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->dialigDataTransmission()V

    goto :goto_0

    .line 197
    :sswitch_b
    new-instance p1, Lcom/simdo/dw_db_s/Ui/BtNameDialog;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->deviceId:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/BtNameDialog;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Ui/BtNameDialog;->show()V

    goto :goto_0

    .line 189
    :sswitch_c
    new-instance p1, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p1, v0, v1}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Ui/ArfcnCfgDialog;->show()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090077 -> :sswitch_c
        0x7f09007b -> :sswitch_b
        0x7f09007d -> :sswitch_a
        0x7f090083 -> :sswitch_9
        0x7f090085 -> :sswitch_8
        0x7f090086 -> :sswitch_7
        0x7f090088 -> :sswitch_6
        0x7f090089 -> :sswitch_5
        0x7f09008a -> :sswitch_4
        0x7f09008c -> :sswitch_3
        0x7f09008e -> :sswitch_2
        0x7f09008f -> :sswitch_1
        0x7f090090 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "DBFragment onCreateView run"

    .line 127
    invoke-static {p3}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    const p3, 0x7f0c0049

    const/4 v0, 0x0

    .line 128
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    .line 129
    invoke-virtual {p1}, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->initView(Landroid/view/View;)V

    .line 130
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->initPara()V

    .line 131
    invoke-static {}, Lcom/dwdbsdk/DwDbSdk;->build()Lcom/dwdbsdk/DwDbSdk;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Lcom/dwdbsdk/DwDbSdk;->setDBBusinessListener(ZLcom/dwdbsdk/Interface/DBBusinessListener;)V

    .line 133
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDBGetJamRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;)V
    .locals 0

    return-void
.end method

.method public onDBGetLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 296
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getMsgType()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDBGetLogRsp(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->toCmdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getRspValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 299
    invoke-static {}, Lcom/dwdbsdk/SCP/ScpUtil;->build()Lcom/dwdbsdk/SCP/ScpUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->hostIP:Ljava/lang/String;

    sget-object v0, Lcom/simdo/dw_db_s/File/FileProtocol;->FILE_BS_LOG:Ljava/lang/String;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->gnbLogName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/dwdbsdk/SCP/ScpUtil;->startGetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f10005c

    .line 300
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1000ad

    .line 302
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 303
    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onDBGetVersionRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgVersionRsp;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 275
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgVersionRsp;->getMsgType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDBGetVersionRsp(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgVersionRsp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgVersionRsp;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f100126

    .line 278
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgVersionRsp;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDBQueryVersionRsp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgVersionRsp;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 280
    new-instance p1, Lcom/simdo/dw_db_s/Bean/EventMessageBean;

    invoke-direct {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;-><init>()V

    const-string v0, "db_version"

    .line 281
    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setMsg(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgVersionRsp;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setString(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f10014a

    .line 285
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgVersionRsp;->getStateRsp()Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->onDBHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDBHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 227
    new-instance v0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;

    invoke-direct {v0}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;-><init>()V

    const-string v1, "DB_device_id"

    .line 228
    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setMsg(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setString(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getWifiIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->hostIP:Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDBHeartStateRsp(): id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->deviceId:Ljava/lang/String;

    .line 234
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getMsgType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 235
    iget-boolean v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->isSetGnbTime:Z

    if-nez v0, :cond_0

    .line 236
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDBTime(Ljava/lang/String;)V

    .line 237
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->isSetGnbTime:Z

    .line 239
    :cond_0
    iget p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    if-nez p1, :cond_1

    .line 240
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 242
    iget p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->lastMsgSn:I

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getMsgSn()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 243
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    .line 247
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment$$ExternalSyntheticLambda0;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public onDBRebootRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 454
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getMsgType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    .line 455
    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->isSetGnbTime:Z

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDBRebootRsp(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->toCmdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getRspValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x5

    .line 458
    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    .line 459
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getMsgSn()I

    move-result p1

    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->lastMsgSn:I

    .line 460
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvState:Landroid/widget/TextView;

    const p2, 0x7f10014f

    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 462
    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    .line 463
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvState:Landroid/widget/TextView;

    const p2, 0x7f100150

    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->onDBHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDBRxGainCfgRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 347
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getMsgType()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onRxGainCfgRsp(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->toCmdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getRspValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 350
    iget p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->rxGain:I

    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->lastRxGain:I

    goto :goto_0

    .line 352
    :cond_0
    iget p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->lastRxGain:I

    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->rxGain:I

    const p1, 0x7f100151

    .line 353
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->onDBHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDBSetBtNameRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 312
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getMsgType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSetBtNameRsp(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->toCmdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSetBtNameRsp(): new bt name: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/simdo/dw_db_s/Util/PrefUtil;->build()Lcom/simdo/dw_db_s/Util/PrefUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Util/PrefUtil;->getBtName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getRspValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const p1, 0x7f100156

    .line 316
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->onDBHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDBSetDevNameRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDBSetGpioCfgRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 442
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDBSetTimeRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 259
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getMsgType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSetTimeRsp(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->toCmdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getRspValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 262
    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->isSetGnbTime:Z

    goto :goto_0

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvState:Landroid/widget/TextView;

    const p2, 0x7f100159

    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->onDBHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDBStartJamRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 0

    return-void
.end method

.method public onDBStartPwrDetectRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgScanRsp;)V
    .locals 4

    if-eqz p2, :cond_3

    .line 394
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getMsgType()I

    move-result v0

    const/16 v1, 0x35

    const-string v2, "onStartPwrDetectRsp(): "

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    if-eq v0, v3, :cond_0

    .line 395
    iput-object p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->msgScanLatestRsp:Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    .line 396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->msgScanLatestRsp:Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 397
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "POWER_REPORT : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getRsrp()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getRsrp()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 398
    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getMsgType()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_2

    .line 400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getStateRsp()Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->toCmdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getStateRsp()Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getRspValue()I

    move-result p1

    if-ne p1, v3, :cond_1

    const p1, 0x7f10015f

    .line 402
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnPwrDetect:Landroid/widget/Button;

    const p2, 0x7f100140

    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iput v3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    goto :goto_0

    .line 406
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const p2, 0x7f100160

    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "[ \u5931\u9501 ][ \u5931\u9501 ][ \u6807\u51c6 ]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    .line 407
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getMsgType()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 410
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->getStateRsp()Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->onDBHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDBStartSGRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 0

    return-void
.end method

.method public onDBStartScanRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgScanRsp;)V
    .locals 0

    return-void
.end method

.method public onDBStopJamRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 0

    return-void
.end method

.method public onDBStopPwrDetectRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 3

    if-eqz p2, :cond_2

    .line 418
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getMsgType()I

    move-result v0

    const/16 v1, 0x33

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 419
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onStopPwrDetectRsp(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->toCmdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getRspValue()I

    move-result p1

    if-ne p1, v2, :cond_0

    const p1, 0x7f100163

    .line 421
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->btnPwrDetect:Landroid/widget/Button;

    const p2, 0x7f100140

    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iput v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    const p1, 0x7f10014e

    .line 425
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    .line 428
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->arfcn:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvValueFirst:Landroid/widget/TextView;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 430
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->msgScanLatestRsp:Lcom/dwdbsdk/Response/DB/MsgScanRsp;

    goto :goto_1

    .line 431
    :cond_1
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getMsgType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 432
    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->onDBHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    goto :goto_1

    :cond_2
    const-string p1, "onStopPwrDetectRsp(): rsp: null"

    .line 435
    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onDBStopSGRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 0

    return-void
.end method

.method public onDBUpgradeRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 474
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getMsgType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpgradeRsp(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->toCmdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getRspValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 477
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    .line 478
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getMsgSn()I

    move-result p2

    iput p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->lastMsgSn:I

    const p2, 0x7f10016a

    .line 479
    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDBReboot(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 482
    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    const p1, 0x7f100168

    .line 483
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->onDBHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDBWifiCfgRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 332
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getMsgType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onWifiCfgRsp(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->toCmdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onWifiCfgRsp(): new wifi info: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/simdo/dw_db_s/Util/PrefUtil;->build()Lcom/simdo/dw_db_s/Util/PrefUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Util/PrefUtil;->getWifiInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->getRspValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const p1, 0x7f10015a

    .line 336
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->onDBHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1357
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 1358
    invoke-static {}, Lcom/dwdbsdk/DwDbSdk;->build()Lcom/dwdbsdk/DwDbSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/DwDbSdk;->removeDBBusinessListener()V

    .line 1359
    invoke-static {}, Lcom/dwdbsdk/DwDbSdk;->build()Lcom/dwdbsdk/DwDbSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/DwDbSdk;->removeFtpListener()V

    return-void
.end method

.method public onReadDataFwdRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;)V
    .locals 0

    return-void
.end method

.method public refreshStateView(Ljava/lang/String;)V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->fragmentDbBinding:Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDbBinding;->tvState:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1352
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setWorkState(I)V
    .locals 0

    .line 1336
    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DBFragment;->workState:I

    return-void
.end method
