.class public Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;
.super Landroidx/fragment/app/Fragment;
.source "DWFragment.java"

# interfaces
.implements Lcom/dwdbsdk/Interface/DWBusinessListener;
.implements Lcom/simdo/dw_db_s/Ui/Fragment/SettingFragment$OnSettingFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$OnDWFragmentListener;
    }
.end annotation


# instance fields
.field private FreqScanCount:I

.field private StopFreqScanTime:J

.field private arfcn_first:Ljava/lang/String;

.field private arfcn_second:Ljava/lang/String;

.field private async_enable:I

.field private barChartUtil:Lcom/simdo/dw_db_s/Ui/BarChartUtil;

.field private barChartUtil1:Lcom/simdo/dw_db_s/Ui/BarChartUtil;

.field private batteryView:Lcom/simdo/dw_db_s/DrawBatteryView;

.field binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

.field blackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/UeidBean;",
            ">;"
        }
    .end annotation
.end field

.field blackList_second:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/UeidBean;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;

.field private dualCell:I

.field private dwDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private fileName:Ljava/lang/String;

.field private freqScanListAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;

.field private imsiAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;

.field private isArfcnNR:Z

.field private isCell1Sucssece:Z

.field private isFirstCell:Z

.field private isFirstNR:Z

.field private isGpsScan:Z

.field private isGps_sync:Z

.field private isSecondNR:Z

.field private isStart:Z

.field private isStopScan:Z

.field private isTraceNR:Z

.field private listener:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$OnDWFragmentListener;

.field mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDropImsiAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

.field private mDropImsiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImsiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ImsiBean;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private rebootCnt:I

.field private repeatCount:I

.field private report_level:I

.field private scanArfcnBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;",
            ">;"
        }
    .end annotation
.end field

.field scanBandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$XFB_9wyv2JHrToM-5xau8BxOU-k(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/AutoCompleteTextView;Landroid/widget/EditText;Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;Landroid/widget/EditText;Landroid/widget/AutoCompleteTextView;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->lambda$dialogTrace$0(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/AutoCompleteTextView;Landroid/widget/EditText;Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;Landroid/widget/EditText;Landroid/widget/AutoCompleteTextView;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I
    .locals 0

    iget p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdwDeviceList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisFirstNR(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isFirstNR:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisSecondNR(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isSecondNR:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetreport_level(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)I
    .locals 0

    iget p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscanArfcnBeanList(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanArfcnBeanList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputFreqScanCount(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;I)V
    .locals 0

    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputStopFreqScanTime(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;J)V
    .locals 0

    iput-wide p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->StopFreqScanTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputasync_enable(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;I)V
    .locals 0

    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisArfcnNR(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isArfcnNR:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisFirstCell(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isFirstCell:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisGpsScan(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isGpsScan:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisStopScan(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isStopScan:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprogressDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseCustomDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->closeCustomDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDeviceById(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Ljava/lang/String;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDeviceById(Ljava/lang/String;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefreshTraceValue(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshTraceValue(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanArfcnDialog(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanArfcnDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanB1(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB1(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanB3(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB3(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanB34(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB34(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanB39(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB39(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanB40(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB40(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanB41(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB41(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanB5(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB5(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanB8(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB8(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanN1(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN1(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanN28(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN28(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanN41(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN41(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanN78(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN78(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanN79(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN79(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 122
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isCell1Sucssece:Z

    .line 90
    iput-boolean v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isGps_sync:Z

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isStopScan:Z

    .line 92
    iput-boolean v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isGpsScan:Z

    .line 93
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isStart:Z

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    .line 98
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isArfcnNR:Z

    .line 99
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isTraceNR:Z

    .line 100
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isFirstNR:Z

    .line 101
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isSecondNR:Z

    .line 102
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    .line 103
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->repeatCount:I

    .line 104
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    .line 105
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanArfcnBeanList:Ljava/util/List;

    const-wide/16 v2, 0x0

    .line 112
    iput-wide v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->StopFreqScanTime:J

    .line 113
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dualCell:I

    const-string v0, ""

    .line 116
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->deviceId:Ljava/lang/String;

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    .line 382
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_first:Ljava/lang/String;

    .line 383
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_second:Ljava/lang/String;

    .line 384
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isFirstCell:Z

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList:Ljava/util/List;

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 118
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isCell1Sucssece:Z

    .line 90
    iput-boolean v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isGps_sync:Z

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isStopScan:Z

    .line 92
    iput-boolean v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isGpsScan:Z

    .line 93
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isStart:Z

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    .line 98
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isArfcnNR:Z

    .line 99
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isTraceNR:Z

    .line 100
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isFirstNR:Z

    .line 101
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isSecondNR:Z

    .line 102
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    .line 103
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->repeatCount:I

    .line 104
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    .line 105
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanArfcnBeanList:Ljava/util/List;

    const-wide/16 v2, 0x0

    .line 112
    iput-wide v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->StopFreqScanTime:J

    .line 113
    iput v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dualCell:I

    const-string v0, ""

    .line 116
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->deviceId:Ljava/lang/String;

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    .line 382
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_first:Ljava/lang/String;

    .line 383
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_second:Ljava/lang/String;

    .line 384
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isFirstCell:Z

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList:Ljava/util/List;

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    .line 119
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method private closeCustomDialog()V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 721
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private createCustomDialog()V
    .locals 3

    .line 709
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 712
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f110400

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 713
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 714
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 715
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method private getDeviceById(Ljava/lang/String;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;
    .locals 2

    const/4 v0, 0x0

    .line 833
    :goto_0
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 834
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f090069

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/DrawBatteryView;

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->batteryView:Lcom/simdo/dw_db_s/DrawBatteryView;

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/DrawBatteryView;->setElectricQuantity(I)V

    .line 150
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->battery:Landroid/widget/TextView;

    const-string v1, "..."

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;

    invoke-direct {v1, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$1;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnArfcn:Landroid/widget/Button;

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;

    invoke-direct {v1, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$2;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$3;

    invoke-direct {v1, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$3;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 255
    new-instance p1, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-direct {p1, v1, v2}, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->imsiAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;

    .line 256
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->imsiList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 257
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->imsiList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->imsiAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 258
    new-instance p1, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanArfcnBeanList:Ljava/util/List;

    invoke-direct {p1, v1, v2}, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->freqScanListAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;

    .line 259
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->arfcnList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 260
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->arfcnList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->freqScanListAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 264
    new-instance p1, Lcom/simdo/dw_db_s/Ui/BarChartUtil;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->barChart0:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p1, v1}, Lcom/simdo/dw_db_s/Ui/BarChartUtil;-><init>(Lcom/github/mikephil/charting/charts/BarChart;)V

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->barChartUtil:Lcom/simdo/dw_db_s/Ui/BarChartUtil;

    .line 265
    new-instance p1, Lcom/simdo/dw_db_s/Ui/BarChartUtil;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->barChart1:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p1, v1}, Lcom/simdo/dw_db_s/Ui/BarChartUtil;-><init>(Lcom/github/mikephil/charting/charts/BarChart;)V

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->barChartUtil1:Lcom/simdo/dw_db_s/Ui/BarChartUtil;

    .line 266
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->barChartUtil:Lcom/simdo/dw_db_s/Ui/BarChartUtil;

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {p1, v1, v2, v3}, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->setXYAxis(FFI)V

    .line 267
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->barChartUtil1:Lcom/simdo/dw_db_s/Ui/BarChartUtil;

    invoke-virtual {p1, v1, v2, v3}, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->setXYAxis(FFI)V

    .line 268
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->barChart0:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 269
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->barChart1:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 270
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->barChartUtil:Lcom/simdo/dw_db_s/Ui/BarChartUtil;

    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const-string v1, "\u5c0f\u533a\u4e00"

    invoke-virtual {p1, v1, v0}, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->addBarDataSet(Ljava/lang/String;I)V

    .line 271
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->barChartUtil1:Lcom/simdo/dw_db_s/Ui/BarChartUtil;

    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060256

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const-string v1, "\u5c0f\u533a\u4e8c"

    invoke-virtual {p1, v1, v0}, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->addBarDataSet(Ljava/lang/String;I)V

    .line 272
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->tabLayoutChart:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$4;

    invoke-direct {v0, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$4;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method private synthetic lambda$dialogTrace$0(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/AutoCompleteTextView;Landroid/widget/EditText;Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;Landroid/widget/EditText;Landroid/widget/AutoCompleteTextView;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_first:Ljava/lang/String;

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_second:Ljava/lang/String;

    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    const-string v2, "\u9891\u70b9\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 511
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x14

    const/16 v3, 0x4f

    const/16 v4, 0x4e

    const/16 v5, 0xff

    const/16 v6, 0x29

    const-string v7, "0"

    const v9, 0x7f100091

    const/16 v10, 0xf

    const v11, 0x7f100118

    const/16 v12, 0x3f0

    const/16 v13, 0xf0

    const/16 v14, 0x64

    const/4 v15, 0x5

    const/4 v8, 0x0

    if-nez v1, :cond_a

    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 513
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 516
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v12, :cond_2

    .line 518
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 523
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v10, :cond_9

    .line 524
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    invoke-virtual/range {p4 .. p4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/simdo/dw_db_s/Util/Util;->existSameData(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 525
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v14, :cond_3

    .line 526
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 528
    :cond_3
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    invoke-virtual/range {p4 .. p4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PrefUtil;->build()Lcom/simdo/dw_db_s/Util/PrefUtil;

    move-result-object v1

    iget-object v10, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    invoke-virtual {v1, v10}, Lcom/simdo/dw_db_s/Util/PrefUtil;->setBlackList(Ljava/util/List;)V

    .line 530
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

    iget-object v10, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    invoke-virtual {v1, v10}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->setList(Ljava/util/List;)V

    .line 537
    :cond_4
    invoke-virtual/range {p5 .. p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 538
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v8, v7}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setSplit_arfcn_dl(ILjava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_5
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v8, v10}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setSplit_arfcn_dl(ILjava/lang/String;)V

    .line 544
    :goto_0
    iget-boolean v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isFirstNR:Z

    if-eqz v1, :cond_8

    .line 545
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v1

    if-eq v1, v6, :cond_7

    if-eq v1, v4, :cond_7

    if-ne v1, v3, :cond_6

    goto :goto_1

    .line 550
    :cond_6
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v8, v13}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setSsbBitmap(II)V

    .line 551
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v8, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setBandWidth(II)V

    goto :goto_2

    .line 547
    :cond_7
    :goto_1
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v8, v5}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setSsbBitmap(II)V

    .line 548
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v8, v14}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setBandWidth(II)V

    goto :goto_2

    .line 554
    :cond_8
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v8, v13}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setSsbBitmap(II)V

    .line 555
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v8, v15}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setBandWidth(II)V

    .line 557
    :goto_2
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v8, v10}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setArfcn(ILjava/lang/String;)V

    .line 558
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v8, v10}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setPci(ILjava/lang/String;)V

    .line 559
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v8, v10}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setImsi(ILjava/lang/String;)V

    .line 560
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    const-wide/32 v2, 0xffff

    invoke-virtual {v1, v8, v2, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setCid(IJ)V

    goto :goto_3

    .line 533
    :cond_9
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f100089

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 563
    :cond_a
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_14

    .line 564
    invoke-virtual/range {p7 .. p7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 565
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 568
    :cond_b
    invoke-virtual/range {p7 .. p7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v12, :cond_c

    .line 570
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 574
    :cond_c
    invoke-virtual/range {p8 .. p8}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xf

    if-ne v1, v3, :cond_13

    .line 575
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    invoke-virtual/range {p8 .. p8}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/simdo/dw_db_s/Util/Util;->existSameData(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 576
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v14, :cond_d

    .line 577
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 579
    :cond_d
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    invoke-virtual/range {p8 .. p8}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PrefUtil;->build()Lcom/simdo/dw_db_s/Util/PrefUtil;

    move-result-object v1

    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/simdo/dw_db_s/Util/PrefUtil;->setBlackList(Ljava/util/List;)V

    .line 581
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;->setList(Ljava/util/List;)V

    .line 587
    :cond_e
    invoke-virtual/range {p9 .. p9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 588
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v2, v7}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setSplit_arfcn_dl(ILjava/lang/String;)V

    goto :goto_4

    .line 590
    :cond_f
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual/range {p9 .. p9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setSplit_arfcn_dl(ILjava/lang/String;)V

    .line 592
    :goto_4
    iget-boolean v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isSecondNR:Z

    if-eqz v1, :cond_12

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v1

    if-eq v1, v6, :cond_11

    if-eq v1, v4, :cond_11

    const/16 v3, 0x4f

    if-ne v1, v3, :cond_10

    goto :goto_5

    .line 598
    :cond_10
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v2, v13}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setSsbBitmap(II)V

    .line 599
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setBandWidth(II)V

    goto :goto_6

    .line 595
    :cond_11
    :goto_5
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setSsbBitmap(II)V

    .line 596
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v2, v14}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setBandWidth(II)V

    goto :goto_6

    .line 602
    :cond_12
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v2, v13}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setSsbBitmap(II)V

    .line 603
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v2, v15}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setBandWidth(II)V

    .line 605
    :goto_6
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setArfcn(ILjava/lang/String;)V

    .line 606
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual/range {p7 .. p7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setPci(ILjava/lang/String;)V

    .line 607
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual/range {p8 .. p8}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setImsi(ILjava/lang/String;)V

    .line 608
    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    const-wide/32 v3, 0x1270f

    invoke-virtual {v1, v2, v3, v4}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setCid(IJ)V

    goto :goto_7

    .line 584
    :cond_13
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f100089

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 610
    :cond_14
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_second:Ljava/lang/String;

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v3, 0x7f100053

    const-string v4, ""

    const v5, 0x7f10016f

    if-nez v1, :cond_16

    .line 614
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList:Ljava/util/List;

    new-instance v6, Lcom/dwdbsdk/Bean/UeidBean;

    invoke-virtual/range {p4 .. p4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/dwdbsdk/Bean/UeidBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    .line 616
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v8, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setWorkState(II)V

    .line 617
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_first:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v15, :cond_15

    .line 618
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v6, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList:Ljava/util/List;

    invoke-virtual {v1, v2, v8, v4, v6}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWNrBlackList(Ljava/lang/String;IILjava/util/List;)V

    .line 619
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 621
    :cond_15
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v6, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList:Ljava/util/List;

    invoke-virtual {v1, v2, v8, v4, v6}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWLteBlackList(Ljava/lang/String;IILjava/util/List;)V

    .line 622
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 624
    :goto_8
    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 625
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 627
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    new-instance v6, Lcom/dwdbsdk/Bean/UeidBean;

    invoke-virtual/range {p8 .. p8}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/dwdbsdk/Bean/UeidBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    .line 629
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setWorkState(II)V

    .line 630
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_second:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v15, :cond_17

    .line 631
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-virtual {v1, v4, v2, v6, v7}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWNrBlackList(Ljava/lang/String;IILjava/util/List;)V

    .line 632
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 634
    :cond_17
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-virtual {v1, v4, v2, v6, v7}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWLteBlackList(Ljava/lang/String;IILjava/util/List;)V

    .line 635
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 637
    :goto_9
    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 640
    :cond_18
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->closeCustomDialog()V

    return-void
.end method

.method static synthetic lambda$onDWHeartStateRsp$1(Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V
    .locals 1

    .line 1334
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/dwdbsdk/MessageControl/MessageController;->getDWVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDWHeartStateRsp$2(Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V
    .locals 1

    .line 1349
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/dwdbsdk/MessageControl/MessageController;->getDWVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDWHeartStateRsp$3(Ljava/lang/String;)V
    .locals 1

    .line 1397
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dwdbsdk/MessageControl/MessageController;->getDWVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDWHeartStateRsp$4(Ljava/lang/String;)V
    .locals 1

    .line 1418
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWReboot(Ljava/lang/String;)V

    return-void
.end method

.method private refreshTraceInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refreshTraceInfo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " imsi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " arfcn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pci = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 885
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->imsiFirst:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->arfcnFirst:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->pciFirst:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 889
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->imsiSecond:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->arfcnSecond:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->pciSecond:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private refreshTraceValue(ILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 878
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->tvValueSecond:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 876
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->tvValueFirst:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private scanArfcnDialog()V
    .locals 22

    move-object/from16 v15, p0

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->createCustomDialog()V

    .line 300
    iget-object v0, v15, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    const v0, 0x7f090084

    .line 301
    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Button;

    const v0, 0x7f09007c

    .line 302
    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    const v0, 0x7f0901e9

    .line 303
    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f09019e

    .line 304
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/CheckBox;

    const v1, 0x7f09019f

    .line 305
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/CheckBox;

    const v1, 0x7f0901a0

    .line 306
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/CheckBox;

    const v1, 0x7f0901a1

    .line 307
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/CheckBox;

    const v1, 0x7f0901a2

    .line 308
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/CheckBox;

    const v1, 0x7f09005b

    .line 309
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/CheckBox;

    const v1, 0x7f09005c

    .line 310
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/CheckBox;

    const v1, 0x7f090061

    .line 311
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/CheckBox;

    const v1, 0x7f090062

    .line 312
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/CheckBox;

    const v1, 0x7f09005d

    .line 313
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/CheckBox;

    const v1, 0x7f09005e

    .line 314
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/CheckBox;

    const v1, 0x7f09005f

    .line 315
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/widget/CheckBox;

    const v1, 0x7f090060

    .line 316
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/widget/CheckBox;

    .line 317
    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$5;

    invoke-direct {v1, v15}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$5;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 330
    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;

    move-object v0, v1

    move-object v15, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v12

    move-object/from16 v12, v16

    move-object/from16 v20, v13

    move-object/from16 v13, v17

    move-object/from16 v21, v14

    move-object/from16 v14, v18

    invoke-direct/range {v0 .. v14}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$6;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    new-instance v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$7;

    invoke-direct {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$7;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V

    move-object/from16 v2, v19

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    move-object/from16 v2, v21

    .line 378
    invoke-direct {v1, v2, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method private scanB1(II)V
    .locals 10

    const-string v0, "\u626b\u9891  B1"

    .line 1118
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1119
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 1120
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    .line 1121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$22;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scanB3(II)V
    .locals 10

    const-string v0, "\u626b\u9891  B3"

    .line 1145
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1146
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 1147
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    .line 1148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$23;

    invoke-direct {v1, p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$23;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scanB34(II)V
    .locals 10

    const-string v0, "\u626b\u9891  B34"

    .line 1219
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1220
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual/range {v1 .. v9}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 1221
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    .line 1222
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$26;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scanB39(II)V
    .locals 10

    const-string v0, "\u626b\u9891  B39"

    .line 1237
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1238
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x2

    invoke-virtual/range {v1 .. v9}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 1239
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    .line 1240
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$27;

    invoke-direct {v1, p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$27;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scanB40(II)V
    .locals 10

    const-string v0, "\u626b\u9891  B40"

    .line 1258
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1259
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual/range {v1 .. v9}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 1260
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    .line 1261
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$28;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scanB41(II)V
    .locals 10

    const-string v0, "\u626b\u9891  B41"

    .line 1280
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1281
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x2

    invoke-virtual/range {v1 .. v9}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 1282
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    .line 1283
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$29;

    invoke-direct {v1, p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$29;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scanB5(II)V
    .locals 10

    const-string v0, "\u626b\u9891  B5"

    .line 1171
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1172
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 1173
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    .line 1174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$24;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scanB8(II)V
    .locals 10

    const-string v0, "\u626b\u9891  B8"

    .line 1189
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1190
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 1191
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    .line 1192
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$25;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scanN1(II)V
    .locals 10

    const-string v0, "\u626b\u9891  N1"

    .line 980
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 983
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    invoke-virtual/range {v1 .. v9}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 984
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    .line 985
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$17;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scanN28(II)V
    .locals 10

    const-string v0, "\u626b\u9891  N28"

    .line 1012
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    invoke-virtual/range {v1 .. v9}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 1015
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    .line 1016
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$18;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scanN41(II)V
    .locals 10

    const-string v0, "\u626b\u9891  N41"

    .line 1049
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1051
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 1052
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    .line 1053
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$19;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scanN78(II)V
    .locals 10

    const-string v0, "\u626b\u9891  N78"

    .line 1077
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1079
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual/range {v1 .. v9}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 1080
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    .line 1081
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$20;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scanN79(II)V
    .locals 10

    const-string v0, "\u626b\u9891  N79"

    .line 1099
    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual/range {v1 .. v9}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 1102
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    .line 1103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$21;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;II)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setBsVersionInfo(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbVersionRsp;)V
    .locals 3

    const/4 v0, 0x0

    .line 766
    :goto_0
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 767
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbVersionRsp;->getHwVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setHwVer(Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbVersionRsp;->getFpgaVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setFpgaVer(Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbVersionRsp;->getSwVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setSoftVer(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setImsiArfcnPci(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 777
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->imsiFirst:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->arfcnFirst:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->pciFirst:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 781
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->imsiSecond:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->arfcnFirst:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->pciFirst:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setInfoByHeart(Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V
    .locals 6

    .line 788
    invoke-static {}, Lcom/dwdbsdk/Util/Battery;->build()Lcom/dwdbsdk/Util/Battery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Util/Battery;->getPercent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/DataUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->battery:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/dwdbsdk/Util/Battery;->build()Lcom/dwdbsdk/Util/Battery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dwdbsdk/Util/Battery;->getPercent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->batteryView:Lcom/simdo/dw_db_s/DrawBatteryView;

    invoke-static {}, Lcom/dwdbsdk/Util/Battery;->build()Lcom/dwdbsdk/Util/Battery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dwdbsdk/Util/Battery;->getPercent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/DrawBatteryView;->setElectricQuantity(I)V

    goto :goto_0

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->battery:Landroid/widget/TextView;

    const-string v2, "..."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->batteryView:Lcom/simdo/dw_db_s/DrawBatteryView;

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/DrawBatteryView;->setElectricQuantity(I)V

    .line 795
    :goto_0
    invoke-virtual {p1}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getTempList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->tvTemp:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getTempList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    :cond_1
    invoke-virtual {p1}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getGpsSyncState()I

    move-result v0

    const-string v2, "\u540c\u6b65"

    const-string v3, "\u5931\u6b65"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 799
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->tvGps:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iput-boolean v4, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isGps_sync:Z

    goto :goto_1

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->tvGps:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isGps_sync:Z

    .line 804
    iget-boolean v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isStopScan:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isGpsScan:Z

    if-eqz v0, :cond_3

    .line 805
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f100087

    invoke-virtual {p0, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f10014b

    .line 806
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 807
    iput-boolean v4, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isStopScan:Z

    .line 808
    invoke-virtual {p1}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDeviceById(Ljava/lang/String;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 809
    invoke-virtual {p1}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDeviceById(Ljava/lang/String;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 810
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnArfcn:Landroid/widget/Button;

    const-string v1, "\u5f00\u59cb\u626b\u9891"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 815
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getFirstAirState()I

    move-result v0

    const-string v1, "\u7a7a\u95f2"

    if-ne v0, v4, :cond_4

    .line 816
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->tvAirSync:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 817
    :cond_4
    invoke-virtual {p1}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getFirstAirState()I

    move-result v0

    if-nez v0, :cond_5

    .line 818
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->tvAirSync:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 820
    :cond_5
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->tvAirSync:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    :goto_2
    invoke-virtual {p1}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getSecondAirState()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 823
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->tvAirSync1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 824
    :cond_6
    invoke-virtual {p1}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getFirstAirState()I

    move-result p1

    if-nez p1, :cond_7

    .line 825
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->tvAirSync1:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 827
    :cond_7
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->tvAirSync1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method private setTraceState(Lcom/simdo/dw_db_s/Util/TraceUtil;IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 853
    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getWorkState(I)I

    move-result v1

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->arfcnSecond:Landroid/widget/TextView;

    .line 854
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 858
    :cond_0
    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getWorkState(I)I

    move-result v1

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v1, v1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->arfcnFirst:Landroid/widget/TextView;

    .line 859
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 864
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setWorkState["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p1, p2, p3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setWorkState(II)V

    if-ne p2, v0, :cond_2

    .line 867
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->arfcnSecond:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 869
    :cond_2
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->arfcnFirst:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private showCustomDialog(Landroid/view/View;Z)V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 728
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x50

    .line 729
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 730
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 731
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    .line 732
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 733
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 734
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 736
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    .line 737
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 738
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 740
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x7

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 741
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 742
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 744
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showErrorResult(II)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "\u5c0f\u533a\u4e8c"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "\u5c0f\u533a\u4e00"

    :goto_1
    const v1, 0x7f100126

    if-ne p2, v0, :cond_2

    .line 965
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f100005

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 967
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f100002

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 969
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f100007

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x5

    if-ne p2, v0, :cond_5

    .line 971
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f100006

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    if-ne p2, v0, :cond_6

    .line 973
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f100004

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 975
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p1, 0x7f100000

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 748
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->createCustomDialog()V

    .line 749
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09026f

    .line 750
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090294

    .line 751
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 752
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090087

    .line 754
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 755
    new-instance p2, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$16;

    invoke-direct {p2, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$16;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 762
    invoke-direct {p0, v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public OnSocketStateChange(Ljava/lang/String;II)V
    .locals 2

    .line 2319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnSocketStateChange  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  lastState = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    return-void
.end method

.method public dialogStopTrace(Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V
    .locals 4

    .line 654
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->createCustomDialog()V

    .line 655
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 656
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f110111

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0c0044

    const/4 v3, 0x0

    .line 657
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 658
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f090084

    .line 660
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f09007c

    .line 661
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 662
    new-instance v3, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;

    invoke-direct {v3, p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$14;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    new-instance p1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$15;

    invoke-direct {p1, p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$15;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 702
    invoke-direct {p0, v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method public dialogTrace(Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V
    .locals 25

    move-object/from16 v11, p0

    move-object/from16 v7, p1

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->createCustomDialog()V

    .line 391
    iget-object v0, v11, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 392
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, v11, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f110111

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0c004e

    const/4 v3, 0x0

    .line 393
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 394
    invoke-virtual {v1, v12}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f0901da

    .line 396
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RadioGroup;

    const v0, 0x7f0901df

    .line 397
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/RadioButton;

    const v0, 0x7f0901e4

    .line 398
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RadioButton;

    const v0, 0x7f090084

    .line 399
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Button;

    const v0, 0x7f09007c

    .line 400
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Button;

    const v0, 0x7f090097

    .line 401
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    const v0, 0x7f0900f2

    .line 402
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/EditText;

    const v0, 0x7f0900fc

    .line 403
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/EditText;

    const v0, 0x7f090103

    .line 404
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/EditText;

    const v0, 0x7f0900f6

    .line 405
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f090245

    .line 406
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ToggleButton;

    const v0, 0x7f090098

    .line 407
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout;

    const v0, 0x7f0900f3

    .line 408
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    move-object/from16 v16, v14

    const v14, 0x7f0900fd

    .line 409
    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v17, v13

    const v13, 0x7f090104

    .line 410
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    const v7, 0x7f0900f7

    .line 411
    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    move-object/from16 v18, v6

    const v6, 0x7f090246

    .line 412
    invoke-virtual {v12, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ToggleButton;

    move-object/from16 v19, v12

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v12

    move-object/from16 v20, v8

    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 415
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getPci(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 417
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 418
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getPci(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 419
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v12

    const/4 v8, 0x1

    invoke-virtual {v12, v8}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getUeMaxTxpwr(I)Ljava/lang/String;

    move-result-object v12

    const-string v8, "20"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v12

    move-object/from16 v21, v3

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getImsi(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v3

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 423
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getPci(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 424
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getUeMaxTxpwr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 426
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getImsi(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v3, v11, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 430
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PrefUtil;->build()Lcom/simdo/dw_db_s/Util/PrefUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/simdo/dw_db_s/Util/PrefUtil;->getBlackList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v11, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    .line 431
    new-instance v3, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

    iget-object v12, v11, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    iget-object v0, v11, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiList:Ljava/util/List;

    invoke-direct {v3, v12, v0}, Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, v11, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

    .line 432
    invoke-virtual {v4, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 433
    iget-object v0, v11, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mDropImsiAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/AutoSearchAdpter;

    invoke-virtual {v7, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 434
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getImsi(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getImsi(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget v0, v11, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dualCell:I

    if-ne v0, v3, :cond_0

    const/16 v0, 0x8

    .line 439
    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 440
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 442
    :cond_0
    new-instance v12, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;

    move-object v0, v12

    move-object v3, v1

    move-object/from16 v1, p0

    move-object/from16 v23, v7

    move-object/from16 v7, v21

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    move-object/from16 v24, v4

    move-object/from16 v4, v21

    invoke-direct/range {v0 .. v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$8;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RadioButton;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 456
    new-instance v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$9;

    invoke-direct {v0, v11}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$9;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    new-instance v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$10;

    invoke-direct {v0, v11}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$10;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getUeMaxTxpwr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "10"

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 471
    invoke-virtual {v7, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getUeMaxTxpwr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    invoke-virtual {v7, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 475
    :cond_2
    :goto_0
    new-instance v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$11;

    move-object/from16 v12, p1

    invoke-direct {v0, v11, v7, v12}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$11;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Landroid/widget/ToggleButton;Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V

    invoke-virtual {v7, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getUeMaxTxpwr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 487
    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1

    .line 488
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getUeMaxTxpwr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 489
    invoke-virtual {v6, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 491
    :cond_4
    :goto_1
    new-instance v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$12;

    invoke-direct {v0, v11, v6, v12}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$12;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Landroid/widget/ToggleButton;Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V

    invoke-virtual {v6, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    new-instance v8, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, v22

    move-object v4, v10

    move-object/from16 v5, v24

    move-object v6, v15

    move-object/from16 v9, v23

    const/4 v10, 0x1

    move-object/from16 v7, p1

    move-object v12, v8

    const/4 v15, 0x1

    move-object v8, v14

    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$$ExternalSyntheticLambda0;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/AutoCompleteTextView;Landroid/widget/EditText;Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;Landroid/widget/EditText;Landroid/widget/AutoCompleteTextView;Landroid/widget/EditText;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    new-instance v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$13;

    invoke-direct {v0, v11}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$13;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v19

    .line 650
    invoke-direct {v11, v0, v15}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showCustomDialog(Landroid/view/View;Z)V

    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 2337
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDwDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;",
            ">;"
        }
    .end annotation

    .line 2329
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    return-object v0
.end method

.method public getStr(I)Ljava/lang/String;
    .locals 1

    .line 954
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 128
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 133
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "DWFragment onCreateView run"

    .line 138
    invoke-static {p3}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    const p3, 0x7f0c004a

    const/4 v0, 0x0

    .line 139
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    .line 140
    invoke-virtual {p1}, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->initView(Landroid/view/View;)V

    .line 142
    invoke-static {}, Lcom/dwdbsdk/DwDbSdk;->build()Lcom/dwdbsdk/DwDbSdk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/dwdbsdk/DwDbSdk;->setDWBusinessListener(Lcom/dwdbsdk/Interface/DWBusinessListener;)V

    .line 143
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDWDeleteOpLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 2141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDeleteOpLogRsp(): id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result p1

    const/4 p2, 0x0

    const v0, 0x7f100126

    if-nez p1, :cond_0

    .line 2143
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u9ed1\u5323\u5b50\u6587\u4ef6\u5220\u9664\u6210\u529f"

    invoke-direct {p0, p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    goto :goto_0

    .line 2146
    :cond_0
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u9ed1\u5323\u5b50\u6587\u4ef6\u5220\u9664\u5931\u8d25"

    invoke-direct {p0, p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDWFreqScanGetDocumentRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;)V
    .locals 0

    return-void
.end method

.method public onDWFreqScanRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p2, :cond_23

    .line 1961
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDWFreqScanRsp "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 1962
    iget-boolean v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isStopScan:Z

    const/4 v3, 0x2

    if-nez v2, :cond_1b

    .line 1963
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1964
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getReportStep()I

    move-result v1

    const-string v2, "B41"

    const-string v6, "B40"

    const-string v7, "B39"

    const-string v8, "B34"

    const-string v9, "B8"

    const-string v10, "B5"

    const-string v11, "B3"

    const-string v12, "B1"

    const-string v13, "N79"

    const-string v14, "N78"

    const-string v15, "N41"

    const-string v5, "N28"

    const-string v4, "N1"

    if-ne v1, v3, :cond_d

    .line 1965
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1966
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN1(II)V

    goto/16 :goto_0

    .line 1967
    :cond_0
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1968
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN28(II)V

    goto/16 :goto_0

    .line 1969
    :cond_1
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1970
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN41(II)V

    goto/16 :goto_0

    .line 1971
    :cond_2
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1972
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN78(II)V

    goto/16 :goto_0

    .line 1973
    :cond_3
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1974
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN79(II)V

    goto/16 :goto_0

    .line 1975
    :cond_4
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1976
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB1(II)V

    goto/16 :goto_0

    .line 1977
    :cond_5
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1978
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB3(II)V

    goto/16 :goto_0

    .line 1979
    :cond_6
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1980
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB5(II)V

    goto/16 :goto_0

    .line 1981
    :cond_7
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1982
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB8(II)V

    goto :goto_0

    .line 1983
    :cond_8
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1984
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB34(II)V

    goto :goto_0

    .line 1985
    :cond_9
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1986
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB39(II)V

    goto :goto_0

    .line 1987
    :cond_a
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1988
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB40(II)V

    goto :goto_0

    .line 1989
    :cond_b
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1990
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB41(II)V

    .line 1991
    :cond_c
    :goto_0
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    .line 1993
    :cond_d
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_1d

    .line 1994
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getReportStep()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1d

    .line 1995
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1996
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN1(II)V

    goto/16 :goto_1

    .line 1997
    :cond_e
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1998
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN28(II)V

    goto/16 :goto_1

    .line 1999
    :cond_f
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2000
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN41(II)V

    goto/16 :goto_1

    .line 2001
    :cond_10
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2002
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN78(II)V

    goto/16 :goto_1

    .line 2003
    :cond_11
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2004
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanN79(II)V

    goto/16 :goto_1

    .line 2005
    :cond_12
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2006
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB1(II)V

    goto/16 :goto_1

    .line 2007
    :cond_13
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2008
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB3(II)V

    goto/16 :goto_1

    .line 2009
    :cond_14
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2010
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB5(II)V

    goto :goto_1

    .line 2011
    :cond_15
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2012
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB8(II)V

    goto :goto_1

    .line 2013
    :cond_16
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2014
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB34(II)V

    goto :goto_1

    .line 2015
    :cond_17
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2016
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB39(II)V

    goto :goto_1

    .line 2017
    :cond_18
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2018
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB40(II)V

    goto :goto_1

    .line 2019
    :cond_19
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2020
    iget v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->report_level:I

    iget v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->async_enable:I

    invoke-direct {v0, v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanB41(II)V

    .line 2021
    :cond_1a
    :goto_1
    iput v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->FreqScanCount:I

    goto :goto_2

    .line 2026
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getReportStep()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    .line 2027
    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1c

    .line 2028
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2030
    :cond_1c
    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v2, v2, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnArfcn:Landroid/widget/Button;

    const-string v3, "\u5f00\u59cb\u626b\u9891"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2031
    iget-object v2, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    .line 2032
    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    const v2, 0x7f10014b

    .line 2033
    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 2034
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PaCtl;->build()Lcom/simdo/dw_db_s/Util/PaCtl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/simdo/dw_db_s/Util/PaCtl;->closePA(Ljava/lang/String;)V

    goto :goto_2

    :cond_1d
    const/4 v3, 0x0

    .line 2039
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getScanResult()I

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getReportStep()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 2040
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanArfcnBeanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1f

    .line 2041
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanArfcnBeanList:Ljava/util/List;

    new-instance v15, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getTac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getEci()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getUl_arfcn()I

    move-result v5

    .line 2042
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getDl_arfcn()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getPci()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getRsrp()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getPrio()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getPa()I

    move-result v10

    .line 2043
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getPk()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getMCC1()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getMCC2()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getMNC1()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getMNC2()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getBandwidth()I

    move-result v17

    move-object v2, v15

    move-object v0, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v2 .. v16}, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIII)V

    .line 2041
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_3
    move-object/from16 v0, p0

    goto/16 :goto_6

    :cond_1f
    const/4 v0, 0x0

    move-object/from16 v1, p0

    .line 2046
    :goto_4
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanArfcnBeanList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_21

    .line 2047
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanArfcnBeanList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->getUl_arfcn()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getUl_arfcn()I

    move-result v5

    if-ne v4, v5, :cond_20

    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanArfcnBeanList:Ljava/util/List;

    .line 2048
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;->getPci()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getPci()I

    move-result v5

    if-ne v4, v5, :cond_20

    .line 2050
    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanArfcnBeanList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2051
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanArfcnBeanList:Ljava/util/List;

    new-instance v2, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getTac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getEci()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getUl_arfcn()I

    move-result v7

    .line 2052
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getDl_arfcn()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getPci()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getRsrp()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getPrio()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getPa()I

    move-result v12

    .line 2053
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getPk()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getMCC1()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getMCC2()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getMNC1()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getMNC2()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getBandwidth()I

    move-result v18

    move-object v4, v2

    invoke-direct/range {v4 .. v18}, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIII)V

    .line 2051
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_5

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_21
    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_1e

    .line 2058
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanArfcnBeanList:Ljava/util/List;

    new-instance v15, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getTac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getEci()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getUl_arfcn()I

    move-result v5

    .line 2059
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getDl_arfcn()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getPci()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getRsrp()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getPrio()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getPa()I

    move-result v10

    .line 2060
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getPk()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getMCC1()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getMCC2()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getMNC1()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getMNC2()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getBandwidth()I

    move-result v17

    move-object v2, v15

    move-object v1, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v2 .. v16}, Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIII)V

    .line 2058
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2063
    :goto_6
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->freqScanListAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Ui/Adapter/FreqScanListAdapter;->notifyDataSetChanged()V

    .line 2066
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rsp.getScanResult"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->getScanResult()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public onDWGetCatchCfg(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCatchCfgRsp;)V
    .locals 0

    return-void
.end method

.method public onDWGetFtpRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbFtpRsp;)V
    .locals 0

    return-void
.end method

.method public onDWGetGpsInOut(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbGpsInOutRsp;)V
    .locals 0

    return-void
.end method

.method public onDWGetGpsRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbGpsRsp;)V
    .locals 0

    return-void
.end method

.method public onDWGetLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 2101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDWGetLogRsp():  id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 2102
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x9

    .line 2103
    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    const-string p2, "\u8bbe\u5907\u6b63\u5728\u51c6\u5907LOG\u6587\u4ef6"

    .line 2104
    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 2105
    invoke-static {}, Lcom/dwdbsdk/FTP/FTPUtil;->build()Lcom/dwdbsdk/FTP/FTPUtil;

    move-result-object p2

    sget-object v0, Lcom/simdo/dw_db_s/File/FileProtocol;->FILE_BS_LOG:Ljava/lang/String;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->fileName:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1}, Lcom/dwdbsdk/FTP/FTPUtil;->startGetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2107
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    const-string p1, "\u8bfb\u53d6\u65e5\u5fd7\u5931\u8d25"

    .line 2108
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDWGetMethIpRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbMethIpRsp;)V
    .locals 0

    return-void
.end method

.method public onDWGetOpLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetOpLogRsp(): id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 2117
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0xe

    .line 2118
    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    const-string p2, "\u6b63\u5728\u8bfb\u53d6\u9ed1\u5323\u5b50\u6587\u4ef6"

    .line 2119
    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 2120
    invoke-static {}, Lcom/dwdbsdk/FTP/FTPUtil;->build()Lcom/dwdbsdk/FTP/FTPUtil;

    move-result-object p2

    sget-object v0, Lcom/simdo/dw_db_s/File/FileProtocol;->FILE_OP_LOG:Ljava/lang/String;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->fileName:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1}, Lcom/dwdbsdk/FTP/FTPUtil;->startGetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2122
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    const-string p1, "\u9ed1\u5323\u5b50\u6587\u4ef6\u8bfb\u53d6\u5931\u8d25"

    .line 2123
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDWGetPaGpioRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbGpioRsp;)V
    .locals 0

    return-void
.end method

.method public onDWGetSysInfoRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbGetSysInfoRsp;)V
    .locals 0

    return-void
.end method

.method public onDWGetSysLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWGetUserData(Lcom/dwdbsdk/Response/DW/GnbUserDataRsp;)V
    .locals 0

    return-void
.end method

.method public onDWHeartStateRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V
    .locals 12

    if-eqz p2, :cond_c

    .line 1305
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->deviceId:Ljava/lang/String;

    .line 1306
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDualCell()I

    move-result v0

    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dualCell:I

    .line 1307
    new-instance v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-direct {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;-><init>()V

    .line 1308
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setId(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v0, p2}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setRsp(Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V

    .line 1310
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    goto :goto_0

    .line 1311
    :cond_0
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    :goto_0
    const-string v1, ""

    .line 1312
    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setLicense(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setHwVer(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setFpgaVer(Ljava/lang/String;)V

    .line 1315
    new-instance v1, Lcom/simdo/dw_db_s/Util/TraceUtil;

    invoke-direct {v1}, Lcom/simdo/dw_db_s/Util/TraceUtil;-><init>()V

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setTraceUtil(Lcom/simdo/dw_db_s/Util/TraceUtil;)V

    .line 1318
    new-instance v1, Lcom/simdo/dw_db_s/Bean/EventMessageBean;

    invoke-direct {v1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;-><init>()V

    const-string v3, "DW_device"

    .line 1319
    invoke-virtual {v1, v3}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setMsg(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {v1, v0}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setDwDeviceInfoBean(Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V

    .line 1321
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1323
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onDWHeartStateRsp()\uff1a id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 1324
    iget-object v3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x1

    if-nez v3, :cond_1

    const-string v3, "DW_device_id"

    .line 1326
    invoke-virtual {v1, v3}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setMsg(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v1, p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setString(Ljava/lang/String;)V

    .line 1328
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1330
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWTime(Ljava/lang/String;)V

    .line 1333
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$$ExternalSyntheticLambda1;-><init>(Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    .line 1337
    :goto_1
    iget-object v3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1339
    iget-object v3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v3}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_4

    .line 1345
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWTime(Ljava/lang/String;)V

    .line 1348
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$$ExternalSyntheticLambda2;-><init>(Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1352
    :cond_4
    :goto_3
    iget-boolean v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isStart:Z

    const v1, 0x7f10014b

    if-eqz v0, :cond_6

    .line 1353
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PaCtl;->build()Lcom/simdo/dw_db_s/Util/PaCtl;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Util/PaCtl;->closePA(Ljava/lang/String;)V

    .line 1354
    iput-boolean v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isStart:Z

    .line 1355
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getFirstState()I

    move-result v0

    const/4 v3, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-ne v0, v8, :cond_5

    .line 1357
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDeviceById(Ljava/lang/String;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getWorkState(I)I

    move-result v0

    if-eq v0, v7, :cond_5

    .line 1358
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDeviceById(Ljava/lang/String;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getWorkState(I)I

    move-result v0

    if-eq v0, v8, :cond_5

    .line 1359
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDeviceById(Ljava/lang/String;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getWorkState(I)I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 1361
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$30;

    invoke-direct {v9, p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$30;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1371
    :cond_5
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getSecondState()I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 1372
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDeviceById(Ljava/lang/String;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getWorkState(I)I

    move-result v0

    if-eq v0, v7, :cond_6

    .line 1373
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDeviceById(Ljava/lang/String;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getWorkState(I)I

    move-result v0

    if-eq v0, v8, :cond_6

    .line 1374
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDeviceById(Ljava/lang/String;)Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getWorkState(I)I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 1376
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$31;

    invoke-direct {v3, p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$31;-><init>(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V

    const-wide/16 v7, 0x190

    invoke-virtual {v0, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1389
    :cond_6
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_8

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "onHeartStateRsp(): rebootCnt = "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->rebootCnt:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 1391
    iget v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->rebootCnt:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->rebootCnt:I

    const/4 v6, 0x2

    if-le v0, v6, :cond_7

    .line 1392
    iput v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->rebootCnt:I

    .line 1393
    invoke-virtual {p0, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    .line 1394
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 1396
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 1399
    :cond_7
    invoke-virtual {p0, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    const v0, 0x7f10014f

    .line 1400
    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 1404
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->state:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f10014c

    invoke-virtual {p0, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1405
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getFirstState()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getSecondState()I

    move-result v0

    if-nez v0, :cond_9

    .line 1406
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->state:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1410
    :cond_9
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 1411
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1412
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dwdbsdk/MessageControl/MessageController;->stopDWFreqScan(Ljava/lang/String;)V

    .line 1415
    :cond_a
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->state:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 1416
    invoke-virtual {p0, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    .line 1417
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1420
    :cond_b
    invoke-direct {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->setInfoByHeart(Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V

    :cond_c
    return-void
.end method

.method public onDWQueryVersionRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbVersionRsp;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDWQueryVersionRsp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbVersionRsp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 1434
    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->setBsVersionInfo(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbVersionRsp;)V

    .line 1436
    new-instance p1, Lcom/simdo/dw_db_s/Bean/EventMessageBean;

    invoke-direct {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;-><init>()V

    const-string v0, "dw_version"

    .line 1437
    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setMsg(Ljava/lang/String;)V

    .line 1438
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbVersionRsp;->getSwVer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setString(Ljava/lang/String;)V

    .line 1439
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDWRebootRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 2287
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDWRebootRsp(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCmdType()I

    move-result p1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    .line 2289
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2290
    iput p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->rebootCnt:I

    const p1, 0x7f10014f

    .line 2291
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    .line 2293
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    const p1, 0x7f100150

    .line 2294
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDWSetBlackListRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    if-eqz v11, :cond_8

    .line 1446
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onDWSetBlackListRsp "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 1447
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x5

    const/4 v14, 0x1

    if-le v1, v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isTraceNR:Z

    .line 1448
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x2

    .line 1449
    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    .line 1450
    iget-object v3, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v3}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v6

    invoke-virtual {v3, v6, v1}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setWorkState(II)V

    const v1, 0x7f100054

    .line 1451
    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 1452
    new-instance v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-direct {v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;-><init>()V

    const/4 v3, 0x0

    .line 1453
    :goto_1
    iget-object v6, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 1454
    iget-object v6, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1455
    iget-object v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    move-object/from16 v24, v1

    .line 1459
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v1

    if-ne v1, v14, :cond_5

    .line 1460
    :cond_3
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PrefUtil;->build()Lcom/simdo/dw_db_s/Util/PrefUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/simdo/dw_db_s/Util/PrefUtil;->getTac()I

    move-result v25

    .line 1462
    iget-boolean v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isGps_sync:Z

    xor-int/lit8 v26, v1, 0x1

    .line 1465
    iget-boolean v1, v0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isTraceNR:Z

    if-eqz v1, :cond_4

    .line 1466
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v1

    .line 1467
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v3

    .line 1469
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getImsi(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1470
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v6

    .line 1471
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getPci(I)Ljava/lang/String;

    move-result-object v7

    .line 1472
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getUeMaxTxpwr(I)Ljava/lang/String;

    move-result-object v8

    .line 1473
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getTimingOffset(I)I

    move-result v9

    const/4 v10, 0x0

    const-string v12, "0"

    const/16 v13, 0x9

    .line 1478
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v15

    invoke-virtual {v4, v15}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getCid(I)J

    move-result-wide v15

    const/4 v4, 0x1

    move-wide v14, v15

    .line 1479
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSsbBitmap(I)I

    move-result v16

    .line 1480
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getBandWidth(I)I

    move-result v17

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0xf

    const/16 v21, -0x46

    const/16 v22, 0x0

    .line 1486
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v2, p1

    const/4 v10, 0x1

    move/from16 v4, v25

    move/from16 v11, v26

    const/4 v0, 0x1

    const/4 v10, 0x0

    .line 1466
    invoke-virtual/range {v1 .. v23}, Lcom/dwdbsdk/MessageControl/MessageController;->initDWNrTrace(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IJIIIIIIILjava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const/4 v0, 0x1

    .line 1488
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v1

    .line 1489
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v3

    .line 1491
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getImsi(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1492
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v6

    .line 1493
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getPci(I)Ljava/lang/String;

    move-result-object v7

    .line 1494
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getUeMaxTxpwr(I)Ljava/lang/String;

    move-result-object v8

    .line 1495
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getTimingOffset(I)I

    move-result v9

    const/4 v10, 0x0

    const-string v12, "0"

    const/16 v13, 0x9

    .line 1500
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getCid(I)J

    move-result-wide v14

    .line 1501
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSsbBitmap(I)I

    move-result v16

    .line 1502
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getBandWidth(I)I

    move-result v17

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0xf

    const/16 v21, -0x46

    const/16 v22, 0x0

    .line 1508
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v2, p1

    move/from16 v4, v25

    move/from16 v11, v26

    .line 1488
    invoke-virtual/range {v1 .. v23}, Lcom/dwdbsdk/MessageControl/MessageController;->initDWLteTrace(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IJIIIIIIILjava/lang/String;)V

    .line 1509
    :goto_3
    invoke-virtual/range {v24 .. v24}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setTacChange(IZ)V

    :cond_5
    move-object/from16 v2, p0

    goto :goto_4

    .line 1512
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result v1

    move-object/from16 v2, p0

    invoke-direct {v2, v0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showErrorResult(II)V

    .line 1513
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v0

    if-nez v0, :cond_7

    .line 1514
    iget-object v0, v2, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    const v1, 0x7f100176

    invoke-virtual {v2, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1515
    iget-object v0, v2, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0, v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 1517
    :cond_7
    iget-object v0, v2, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->state:Landroid/widget/TextView;

    const-string v1, "\u914d\u7f6e\u9ed1\u540d\u5355\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1518
    invoke-virtual {v2, v4}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    goto :goto_4

    :cond_8
    move-object v2, v0

    :goto_4
    return-void
.end method

.method public onDWSetBtNameRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWSetDevNameRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWSetDualCellRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 2155
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDWSetDualCellRsp(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 2156
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCmdType()I

    move-result p1

    const/16 v0, 0xd4

    if-ne p1, v0, :cond_1

    .line 2157
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 2158
    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    const p1, 0x7f10014b

    .line 2159
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    const p1, 0x7f100126

    .line 2160
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f100158

    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2166
    :cond_0
    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    const p1, 0x7f100157

    .line 2167
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 2170
    :cond_1
    :goto_0
    new-instance p1, Lcom/simdo/dw_db_s/Bean/EventMessageBean;

    invoke-direct {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;-><init>()V

    const-string p2, "dismissProgressDialog"

    .line 2171
    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setMsg(Ljava/lang/String;)V

    .line 2172
    iget p2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dualCell:I

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setWhat(I)V

    .line 2173
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onDWSetFanAutoSpeedRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWSetFanSpeedRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWSetForwardUdpMsg(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWSetFtpRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWSetGnbRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 7

    if-eqz p2, :cond_a

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDWSetGnbRsp  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 1527
    new-instance v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-direct {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1528
    :goto_0
    iget-object v3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1529
    iget-object v3, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v3}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1534
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-le v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isTraceNR:Z

    .line 1535
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result v2

    if-nez v2, :cond_4

    .line 1536
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/dwdbsdk/MessageControl/MessageController;->isTracing(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1538
    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->isTacChange(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f100057

    .line 1539
    invoke-virtual {p0, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 1540
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v3

    .line 1541
    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v5

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1540
    invoke-virtual {v2, p1, v3, v5, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWTxPwrOffset(Ljava/lang/String;III)V

    const-wide/16 v1, 0x1f4

    .line 1543
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1547
    invoke-static {}, Lcom/simdo/dw_db_s/Util/PaCtl;->build()Lcom/simdo/dw_db_s/Util/PaCtl;

    move-result-object v3

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v5

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Lcom/simdo/dw_db_s/Util/PaCtl;->openPA(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    const v1, 0x7f100055

    .line 1553
    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 1554
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCmdType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 1555
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v1

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v2

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getImsi(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, v2, v4, p2}, Lcom/dwdbsdk/MessageControl/MessageController;->startDWNrTrace(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_5

    .line 1556
    :cond_3
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCmdType()I

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_a

    .line 1557
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v1

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v2

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getImsi(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, v2, v4, p2}, Lcom/dwdbsdk/MessageControl/MessageController;->startDWLteTrace(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_5

    :catch_0
    move-exception p1

    .line 1551
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1545
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1562
    :cond_4
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/dwdbsdk/MessageControl/MessageController;->isTracing(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1564
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getWorkState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    const-string p1, "\u914d\u7f6e\u9891\u70b9\u5931\u8d25"

    .line 1565
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "\u5c0f\u533a\u4e00"

    goto :goto_3

    :cond_5
    const-string p1, "\u5c0f\u533a\u4e8c"

    .line 1572
    :goto_3
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result v0

    const/4 v2, 0x6

    const v3, 0x7f100126

    if-ne v0, v2, :cond_6

    .line 1573
    invoke-virtual {p0, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f100001

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1574
    :cond_6
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_7

    .line 1575
    invoke-virtual {p0, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f100003

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showRemindDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1577
    :cond_7
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result p1

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showErrorResult(II)V

    .line 1581
    :cond_8
    :goto_4
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result p1

    const v0, 0x7f100176

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_second:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1582
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1583
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1, v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 1586
    :cond_9
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result p1

    if-ne p1, v4, :cond_a

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_second:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isCell1Sucssece:Z

    if-nez p1, :cond_a

    .line 1588
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1589
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1, v1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    :cond_a
    :goto_5
    return-void
.end method

.method public onDWSetGpioTxRx(Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWSetGpsInOut(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWSetGpsRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWSetJamArfcn(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWSetMethIpRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWSetNvTxPwrOffsetRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDWSetNvTxPwrOffsetRsp  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDWSetPaGpioRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDWSetPaGpioRsp  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDWSetRxGainRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWSetTimeRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 2

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDWSetTimeRsp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    return-void
.end method

.method public onDWSetTxPwrOffsetRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDWSetTxPwrOffsetRsp(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  TraceType= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/dwdbsdk/MessageControl/MessageController;->getTraceType(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDWSetUserData(Lcom/dwdbsdk/Response/DW/GnbUserDataRsp;)V
    .locals 0

    return-void
.end method

.method public onDWSetWifiInfoRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWStartBandScan(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWStartCatchRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbTraceRsp;)V
    .locals 0

    return-void
.end method

.method public onDWStartControlRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbTraceRsp;)V
    .locals 0

    return-void
.end method

.method public onDWStartLteTraceRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbTraceRsp;)V
    .locals 21

    move-object/from16 v1, p0

    if-eqz p2, :cond_13

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onDWStartLteTraceRsp  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 1793
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1794
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 1795
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setWorkState(II)V

    .line 1796
    invoke-virtual {v1, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    const v0, 0x7f100056

    .line 1797
    invoke-virtual {v1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 1798
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v0

    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getImsi(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    .line 1799
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v5}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getPci(I)Ljava/lang/String;

    move-result-object v6

    .line 1798
    invoke-direct {v1, v0, v4, v5, v6}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshTraceInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v0

    if-nez v0, :cond_13

    .line 1801
    iput-boolean v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isCell1Sucssece:Z

    .line 1802
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_second:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1803
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v3}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWLteBlackList(Ljava/lang/String;IILjava/util/List;)V

    goto/16 :goto_b

    .line 1807
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showErrorResult(II)V

    .line 1808
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    const v2, 0x7f100176

    invoke-virtual {v1, v2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1809
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->state:Landroid/widget/TextView;

    const-string v2, "\u5b9a\u4f4d\u5f00\u542f\u5931\u8d25"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1810
    invoke-virtual {v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    goto/16 :goto_b

    .line 1813
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_13

    .line 1817
    :try_start_0
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    .line 1818
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v0, v4, :cond_2

    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    .line 1819
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1820
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    .line 1821
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v5}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setArfcn(ILjava/lang/String;)V

    .line 1822
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setSplit_arfcn_dl(ILjava/lang/String;)V

    .line 1824
    :cond_2
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1825
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    .line 1826
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v0, v4, :cond_3

    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    .line 1827
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1828
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    .line 1829
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v5}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setArfcn(ILjava/lang/String;)V

    .line 1830
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setSplit_arfcn_dl(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1835
    :goto_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1837
    :cond_3
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v0

    const/4 v4, 0x2

    if-nez v0, :cond_4

    .line 1839
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v5, 0x0

    goto :goto_4

    .line 1840
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 1842
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    .line 1843
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 1845
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1846
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_7

    .line 1848
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const-string v0, "0"

    goto :goto_2

    .line 1850
    :goto_4
    iget-object v6, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getImsi(I)Ljava/lang/String;

    move-result-object v14

    .line 1851
    iget-object v6, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getPci(I)Ljava/lang/String;

    move-result-object v15

    .line 1852
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getImsiList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_10

    .line 1853
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10

    const/4 v11, 0x0

    .line 1854
    :goto_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-ge v11, v5, :cond_10

    .line 1855
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    .line 1856
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1857
    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v5}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getRsrp()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setRsrp(II)V

    .line 1860
    :cond_8
    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_a

    .line 1861
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1862
    iget-object v10, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    new-instance v9, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    const/4 v6, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getRsrp()I

    move-result v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v19

    move-object v5, v9

    move-object v7, v12

    move-object v8, v0

    move-object v2, v9

    move-object v9, v15

    move-object v4, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move-object/from16 v20, v12

    move-wide/from16 v11, v17

    move-object/from16 v17, v13

    move/from16 v13, v19

    invoke-direct/range {v5 .. v13}, Lcom/simdo/dw_db_s/Bean/ImsiBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-interface {v4, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_9
    move/from16 v16, v11

    move-object/from16 v20, v12

    move-object/from16 v17, v13

    .line 1864
    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    new-instance v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getRsrp()I

    move-result v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v13

    move-object v5, v4

    move-object/from16 v7, v20

    move-object v8, v0

    move-object v9, v15

    invoke-direct/range {v5 .. v13}, Lcom/simdo/dw_db_s/Bean/ImsiBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    move/from16 v16, v11

    move-object/from16 v20, v12

    move-object/from16 v17, v13

    :goto_6
    const/4 v2, 0x0

    .line 1867
    :goto_7
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_d

    .line 1868
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->getImsi()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, v20

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1870
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual {v4, v0}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->setArfcn(Ljava/lang/String;)V

    .line 1871
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual {v4, v15}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->setPci(Ljava/lang/String;)V

    .line 1872
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getRsrp()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->setRsrp(I)V

    .line 1873
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->setLatestTime(J)V

    .line 1874
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1875
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_b

    .line 1876
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual {v4, v5}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->setState(I)V

    .line 1877
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    .line 1878
    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1879
    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_b
    const/4 v2, 0x0

    goto :goto_8

    :cond_c
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v20, v7

    goto/16 :goto_7

    :cond_d
    move-object/from16 v7, v20

    const/4 v2, 0x1

    :goto_8
    if-eqz v2, :cond_f

    .line 1887
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1888
    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    new-instance v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    const/4 v6, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getRsrp()I

    move-result v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v13

    move-object v5, v4

    move-object v8, v0

    move-object v9, v15

    invoke-direct/range {v5 .. v13}, Lcom/simdo/dw_db_s/Bean/ImsiBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_9

    .line 1891
    :cond_e
    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    new-instance v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getRsrp()I

    move-result v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v13

    move-object v5, v4

    move-object v8, v0

    move-object v9, v15

    invoke-direct/range {v5 .. v13}, Lcom/simdo/dw_db_s/Bean/ImsiBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1895
    :cond_f
    :goto_9
    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->imsiAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->notifyDataSetChanged()V

    add-int/lit8 v11, v16, 0x1

    move-object/from16 v13, v17

    const/4 v2, 0x1

    const/4 v4, 0x2

    goto/16 :goto_5

    .line 1898
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    goto :goto_a

    .line 1902
    :cond_11
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getRsrp(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshTraceValue(ILjava/lang/String;)V

    .line 1903
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->barChartUtil1:Lcom/simdo/dw_db_s/Ui/BarChartUtil;

    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getRsrp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->addEntry(IF)V

    goto :goto_b

    .line 1899
    :cond_12
    :goto_a
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getRsrp(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshTraceValue(ILjava/lang/String;)V

    .line 1900
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->barChartUtil:Lcom/simdo/dw_db_s/Ui/BarChartUtil;

    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getRsrp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->addEntry(IF)V

    :cond_13
    :goto_b
    return-void
.end method

.method public onDWStartNrTraceRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbTraceRsp;)V
    .locals 21

    move-object/from16 v1, p0

    if-eqz p2, :cond_17

    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onDWStartNrTraceRsp  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 1628
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 1629
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result v0

    const/4 v4, 0x5

    if-nez v0, :cond_1

    .line 1630
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setWorkState(II)V

    .line 1631
    invoke-virtual {v1, v6}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    const v0, 0x7f100056

    .line 1632
    invoke-virtual {v1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 1633
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v0

    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v5}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getImsi(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    .line 1634
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v7}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getPci(I)Ljava/lang/String;

    move-result-object v7

    .line 1633
    invoke-direct {v1, v0, v5, v6, v7}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshTraceInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v0

    if-nez v0, :cond_17

    .line 1636
    iput-boolean v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isCell1Sucssece:Z

    .line 1637
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_second:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1638
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 1639
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v3}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWNrBlackList(Ljava/lang/String;IILjava/util/List;)V

    goto/16 :goto_c

    .line 1641
    :cond_0
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v3}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWLteBlackList(Ljava/lang/String;IILjava/util/List;)V

    goto/16 :goto_c

    .line 1645
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result v5

    invoke-direct {v1, v0, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->showErrorResult(II)V

    .line 1646
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v0

    if-nez v0, :cond_3

    .line 1647
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_second:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1648
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 1649
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWNrBlackList(Ljava/lang/String;IILjava/util/List;)V

    goto :goto_0

    .line 1651
    :cond_2
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->blackList_second:Ljava/util/List;

    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWLteBlackList(Ljava/lang/String;IILjava/util/List;)V

    .line 1654
    :cond_3
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v0

    const-string v4, "\u5b9a\u4f4d\u5f00\u542f\u5931\u8d25"

    const v5, 0x7f100176

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_second:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1655
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1656
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->state:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1657
    invoke-virtual {v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    .line 1659
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCmdRsp()Lcom/dwdbsdk/Response/DW/GnbCmdRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v0

    if-ne v0, v2, :cond_17

    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->arfcn_second:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1660
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1661
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->state:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1662
    invoke-virtual {v1, v3}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    goto/16 :goto_c

    .line 1667
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_17

    .line 1671
    :try_start_0
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    .line 1672
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v0, v4, :cond_6

    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    .line 1673
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 1674
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    .line 1675
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v5}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setArfcn(ILjava/lang/String;)V

    .line 1676
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setSplit_arfcn_dl(ILjava/lang/String;)V

    .line 1678
    :cond_6
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1679
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    .line 1680
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v0, v4, :cond_7

    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    .line 1681
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 1682
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    .line 1683
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v5}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setArfcn(ILjava/lang/String;)V

    .line 1684
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setSplit_arfcn_dl(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1689
    :goto_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1691
    :cond_7
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v0

    const/4 v4, 0x2

    if-nez v0, :cond_8

    .line 1693
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/4 v5, 0x0

    goto :goto_5

    .line 1694
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 1696
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getArfcn(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/4 v5, 0x1

    goto :goto_5

    .line 1697
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 1699
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1700
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_b

    .line 1702
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getSplit_arfcn_dl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_b
    const-string v0, "0"

    goto :goto_3

    .line 1704
    :goto_5
    iget-object v6, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getImsi(I)Ljava/lang/String;

    move-result-object v14

    .line 1705
    iget-object v6, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v6}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getPci(I)Ljava/lang/String;

    move-result-object v15

    .line 1706
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getImsiList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_14

    .line 1707
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_14

    const/4 v11, 0x0

    .line 1708
    :goto_6
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-ge v11, v5, :cond_14

    .line 1709
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    .line 1710
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1711
    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v5}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getRsrp()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setRsrp(II)V

    .line 1714
    :cond_c
    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_e

    .line 1715
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1716
    iget-object v10, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    new-instance v9, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    const/4 v6, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getRsrp()I

    move-result v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v19

    move-object v5, v9

    move-object v7, v12

    move-object v8, v0

    move-object v2, v9

    move-object v9, v15

    move-object v4, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move-object/from16 v20, v12

    move-wide/from16 v11, v17

    move-object/from16 v17, v13

    move/from16 v13, v19

    invoke-direct/range {v5 .. v13}, Lcom/simdo/dw_db_s/Bean/ImsiBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-interface {v4, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_d
    move/from16 v16, v11

    move-object/from16 v20, v12

    move-object/from16 v17, v13

    .line 1718
    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    new-instance v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getRsrp()I

    move-result v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v13

    move-object v5, v4

    move-object/from16 v7, v20

    move-object v8, v0

    move-object v9, v15

    invoke-direct/range {v5 .. v13}, Lcom/simdo/dw_db_s/Bean/ImsiBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    move/from16 v16, v11

    move-object/from16 v20, v12

    move-object/from16 v17, v13

    :goto_7
    const/4 v2, 0x0

    .line 1721
    :goto_8
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_11

    .line 1722
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->getImsi()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, v20

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1724
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual {v4, v0}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->setArfcn(Ljava/lang/String;)V

    .line 1725
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual {v4, v15}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->setPci(Ljava/lang/String;)V

    .line 1726
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getRsrp()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->setRsrp(I)V

    .line 1727
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->setLatestTime(J)V

    .line 1728
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1729
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual {v4}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_f

    .line 1730
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    invoke-virtual {v4, v5}, Lcom/simdo/dw_db_s/Bean/ImsiBean;->setState(I)V

    .line 1731
    iget-object v4, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    .line 1732
    iget-object v5, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1733
    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_f
    const/4 v2, 0x0

    goto :goto_9

    :cond_10
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v20, v7

    goto/16 :goto_8

    :cond_11
    move-object/from16 v7, v20

    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_13

    .line 1742
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1743
    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    new-instance v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    const/4 v6, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getRsrp()I

    move-result v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v13

    move-object v5, v4

    move-object v8, v0

    move-object v9, v15

    invoke-direct/range {v5 .. v13}, Lcom/simdo/dw_db_s/Bean/ImsiBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_a

    .line 1746
    :cond_12
    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    new-instance v4, Lcom/simdo/dw_db_s/Bean/ImsiBean;

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getRsrp()I

    move-result v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v13

    move-object v5, v4

    move-object v8, v0

    move-object v9, v15

    invoke-direct/range {v5 .. v13}, Lcom/simdo/dw_db_s/Bean/ImsiBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1750
    :cond_13
    :goto_a
    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->imsiAdapter:Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Ui/Adapter/MyImsiAdapter;->notifyDataSetChanged()V

    add-int/lit8 v11, v16, 0x1

    move-object/from16 v13, v17

    const/4 v2, 0x1

    const/4 v4, 0x2

    goto/16 :goto_6

    .line 1753
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onStartTraceRsp "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/util/List;

    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mImsiList:Ljava/util/List;

    aput-object v2, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 1754
    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    goto :goto_b

    .line 1758
    :cond_15
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getRsrp(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshTraceValue(ILjava/lang/String;)V

    .line 1759
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->barChartUtil1:Lcom/simdo/dw_db_s/Ui/BarChartUtil;

    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getRsrp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->addEntry(IF)V

    goto :goto_c

    .line 1755
    :cond_16
    :goto_b
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getRsrp(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshTraceValue(ILjava/lang/String;)V

    .line 1756
    iget-object v0, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->barChartUtil:Lcom/simdo/dw_db_s/Ui/BarChartUtil;

    iget-object v2, v1, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v2}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/dwdbsdk/Response/DW/GnbTraceRsp;->getCellId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getRsrp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->addEntry(IF)V

    :cond_17
    :goto_c
    return-void
.end method

.method public onDWStartTdMeasure(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWStopCatchRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWStopControlRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDWStopFreqScanRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 2080
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onDWStopFreqScanRsp success"

    .line 2081
    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2082
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    .line 2083
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnArfcn:Landroid/widget/Button;

    const-string p2, "\u5f00\u59cb\u626b\u9891"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2084
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->scanBandList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2085
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p1, "onDWStopFreqScanRsp fail"

    .line 2087
    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 2088
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->mContext:Landroid/content/Context;

    const-string p2, "\u7ed3\u675f\u626b\u9891\u5931\u8d25"

    invoke-static {p1, p2}, Lcom/simdo/dw_db_s/Util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDWStopLteTraceRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 1914
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1915
    iput-boolean v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isCell1Sucssece:Z

    .line 1916
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    const v1, 0x7f100176

    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1917
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object p1

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setTacChange(IZ)V

    .line 1918
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result p1

    const-string v1, ""

    invoke-direct {p0, p1, v1, v1, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshTraceInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f10014c

    .line 1919
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    .line 1921
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    const v1, 0x7f10016f

    invoke-virtual {p0, v1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1922
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->state:Landroid/widget/TextView;

    const-string v1, "\u5b9a\u4f4d\u7ed3\u675f\u5931\u8d25"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1925
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object p1

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setWorkState(II)V

    .line 1926
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getWorkState(I)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    .line 1927
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getWorkState(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 1928
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(ILjava/lang/Boolean;)V

    :cond_2
    return-void
.end method

.method public onDWStopNrTraceRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 1769
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDWStopNrTraceRsp  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 1770
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result p1

    const v0, 0x7f100176

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1771
    iput-boolean v1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->isCell1Sucssece:Z

    .line 1772
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1773
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object p1

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setTacChange(IZ)V

    .line 1774
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result p1

    const-string v0, ""

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshTraceInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f10014c

    .line 1775
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    .line 1777
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->btnTrace:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1778
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object p1, p1, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->state:Landroid/widget/TextView;

    const-string v0, "\u5b9a\u4f4d\u7ed3\u675f\u5931\u8d25"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1781
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object p1

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getCellId()I

    move-result p2

    invoke-virtual {p1, p2, v1}, Lcom/simdo/dw_db_s/Util/TraceUtil;->setWorkState(II)V

    .line 1782
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getWorkState(I)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    .line 1783
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/simdo/dw_db_s/Util/TraceUtil;->getWorkState(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 1784
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(ILjava/lang/Boolean;)V

    :cond_2
    return-void
.end method

.method public onDWUpgradeRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 2303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDWUpgradeRsp  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {p2}, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->getRspValue()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const p1, 0x7f10016a

    .line 2305
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 2306
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    goto :goto_0

    .line 2308
    :cond_0
    invoke-virtual {p0, p2}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshDeviceWorkState(I)V

    const p1, 0x7f100168

    .line 2309
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    .line 2311
    :goto_0
    new-instance p1, Lcom/simdo/dw_db_s/Bean/EventMessageBean;

    invoke-direct {p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;-><init>()V

    const-string v0, "dismissProgressDialog"

    .line 2312
    invoke-virtual {p1, v0}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setMsg(Ljava/lang/String;)V

    .line 2313
    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setWhat(I)V

    .line 2314
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onDWWriteOpLogRsp(Ljava/lang/String;Lcom/dwdbsdk/Response/DW/GnbCmdRsp;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 2324
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2325
    invoke-static {}, Lcom/dwdbsdk/DwDbSdk;->build()Lcom/dwdbsdk/DwDbSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/DwDbSdk;->removeDWBusinessListener()V

    return-void
.end method

.method public onGetBsLog(Ljava/lang/String;)V
    .locals 0

    .line 2356
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->fileName:Ljava/lang/String;

    return-void
.end method

.method public onGetLog(Ljava/lang/String;)V
    .locals 0

    .line 2346
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->fileName:Ljava/lang/String;

    return-void
.end method

.method public onGetOpLog(Ljava/lang/String;)V
    .locals 0

    .line 2351
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->fileName:Ljava/lang/String;

    return-void
.end method

.method public onUpgrade()V
    .locals 0

    return-void
.end method

.method public refreshDeviceWorkState(I)V
    .locals 2

    .line 897
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDwDeviceList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refreshWorkState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 900
    new-instance v0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;

    invoke-direct {v0}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;-><init>()V

    const-string v1, "refreshWorkState"

    .line 901
    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setMsg(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setWhat(I)V

    .line 903
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "\u8bbe\u5907\u672a\u8fde\u63a5"

    .line 905
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "\u8bbe\u5907\u51c6\u5907\u5c31\u7eea"

    .line 906
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string p1, "\u914d\u7f6e\u9ed1\u540d\u5355"

    .line 907
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const-string p1, "\u5b9a\u4f4d\u53c2\u6570\u914d\u7f6e"

    .line 908
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    const-string p1, "\u5b9a\u4f4d\u51c6\u5907\u5c31\u7eea"

    .line 909
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const-string p1, "\u5b9a\u4f4d\u4e2d"

    .line 910
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    const-string p1, "\u6b63\u5728\u4fa6\u7801\u4e2d"

    .line 911
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    const-string p1, "\u6b63\u5728\u7ba1\u63a7\u4e2d"

    .line 912
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    const-string p1, "\u6b63\u5728\u7ed3\u675f\u4e2d"

    .line 913
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    const-string p1, "\u6b63\u5728\u5347\u7ea7\u4e2d"

    .line 914
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const/16 v0, 0x9

    if-ne p1, v0, :cond_a

    const-string p1, "\u6b63\u5728\u8bfb\u53d6LOG"

    .line 915
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const/16 v0, 0xa

    if-ne p1, v0, :cond_b

    const-string p1, "\u8bbe\u5907\u91cd\u542f\u4e2d"

    .line 916
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const/16 v0, 0xb

    if-ne p1, v0, :cond_c

    const-string p1, "\u57fa\u5e26\u5f02\u5e38"

    .line 917
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const/16 v0, 0xc

    if-ne p1, v0, :cond_d

    const-string p1, "\u5207\u6362\u5de5\u4f5c\u6a21\u5f0f\uff1a\u5355\u53cc\u901a\u9053"

    .line 919
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const/16 v0, 0xd

    if-ne p1, v0, :cond_e

    const-string p1, "\u626b\u9891\u4e2d"

    .line 920
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    const/16 v0, 0xe

    if-ne p1, v0, :cond_f

    const-string p1, "\u83b7\u53d6\u9ed1\u5323\u5b50LOG\u4e2d"

    .line 921
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    :cond_f
    :goto_0
    return-void
.end method

.method public refreshDeviceWorkState(ILjava/lang/Boolean;)V
    .locals 2

    .line 925
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->getDwDeviceList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->setWorkState(I)V

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refreshWorkState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->I(Ljava/lang/String;)V

    .line 928
    new-instance v0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;

    invoke-direct {v0}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;-><init>()V

    const-string v1, "refreshWorkState"

    .line 929
    invoke-virtual {v0, v1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setMsg(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->setWhat(I)V

    .line 931
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 933
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const-string p1, "\u8bbe\u5907\u672a\u8fde\u63a5"

    .line 934
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "\u8bbe\u5907\u51c6\u5907\u5c31\u7eea"

    .line 935
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    const-string p1, "\u914d\u7f6e\u9ed1\u540d\u5355"

    .line 936
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    const-string p1, "\u5b9a\u4f4d\u53c2\u6570\u914d\u7f6e"

    .line 937
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    const-string p1, "\u5b9a\u4f4d\u51c6\u5907\u5c31\u7eea"

    .line 938
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    const-string p1, "\u5b9a\u4f4d\u4e2d"

    .line 939
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 p2, 0x5

    if-ne p1, p2, :cond_7

    const-string p1, "\u6b63\u5728\u4fa6\u7801\u4e2d"

    .line 940
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 p2, 0x6

    if-ne p1, p2, :cond_8

    const-string p1, "\u6b63\u5728\u7ba1\u63a7\u4e2d"

    .line 941
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/4 p2, 0x7

    if-ne p1, p2, :cond_9

    const-string p1, "\u6b63\u5728\u7ed3\u675f\u4e2d"

    .line 942
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const/16 p2, 0x8

    if-ne p1, p2, :cond_a

    const-string p1, "\u6b63\u5728\u5347\u7ea7\u4e2d"

    .line 943
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const/16 p2, 0x9

    if-ne p1, p2, :cond_b

    const-string p1, "\u6b63\u5728\u8bfb\u53d6LOG"

    .line 944
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const/16 p2, 0xa

    if-ne p1, p2, :cond_c

    const-string p1, "\u8bbe\u5907\u91cd\u542f\u4e2d"

    .line 945
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const/16 p2, 0xb

    if-ne p1, p2, :cond_d

    const-string p1, "\u57fa\u5e26\u5f02\u5e38"

    .line 946
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const/16 p2, 0xc

    if-ne p1, p2, :cond_e

    const-string p1, "\u5207\u6362\u5de5\u4f5c\u6a21\u5f0f\uff1a\u5355\u53cc\u901a\u9053"

    .line 948
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    const/16 p2, 0xd

    if-ne p1, p2, :cond_f

    const-string p1, "\u626b\u9891\u4e2d"

    .line 949
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    goto :goto_0

    :cond_f
    const/16 p2, 0xe

    if-ne p1, p2, :cond_10

    const-string p1, "\u83b7\u53d6\u9ed1\u5323\u5b50LOG\u4e2d"

    .line 950
    invoke-virtual {p0, p1}, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->refreshStateView(Ljava/lang/String;)V

    :cond_10
    :goto_0
    return-void
.end method

.method public refreshStateView(Ljava/lang/String;)V
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->binding:Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;

    iget-object v0, v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;->state:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public removeDWFragmentListener()V
    .locals 1

    const/4 v0, 0x0

    .line 2371
    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->listener:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$OnDWFragmentListener;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 2341
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDwDeviceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 2333
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->dwDeviceList:Ljava/util/List;

    return-void
.end method

.method public setOnDWFragmentListener(Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$OnDWFragmentListener;)V
    .locals 0

    .line 2367
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment;->listener:Lcom/simdo/dw_db_s/Ui/Fragment/DWFragment$OnDWFragmentListener;

    return-void
.end method
