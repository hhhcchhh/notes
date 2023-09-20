.class public Lcom/simdo/dw_db_s/Bean/EventMessageBean;
.super Ljava/lang/Object;
.source "EventMessageBean.java"


# instance fields
.field private airEnable:I

.field private arfcnList_N1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private arfcnList_N28:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private arfcnList_N41:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private arfcnList_N78:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private arfcnList_N79:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private chanelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

.field private enablelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private reportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;",
            ">;"
        }
    .end annotation
.end field

.field private string:Ljava/lang/String;

.field private what:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N1:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N28:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N41:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N78:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N79:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->chanelList:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->enablelList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->reportList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAirEnable()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->airEnable:I

    return v0
.end method

.method public getArfcnList_N1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N1:Ljava/util/List;

    return-object v0
.end method

.method public getArfcnList_N28()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N28:Ljava/util/List;

    return-object v0
.end method

.method public getArfcnList_N41()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N41:Ljava/util/List;

    return-object v0
.end method

.method public getArfcnList_N78()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N78:Ljava/util/List;

    return-object v0
.end method

.method public getArfcnList_N79()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N79:Ljava/util/List;

    return-object v0
.end method

.method public getChanelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->chanelList:Ljava/util/List;

    return-object v0
.end method

.method public getDwDeviceInfoBean()Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    return-object v0
.end method

.method public getEnablelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->enablelList:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getReportList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->reportList:Ljava/util/List;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getWhat()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->what:I

    return v0
.end method

.method public setAirEnable(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->airEnable:I

    return-void
.end method

.method public setArfcnList_N1(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N1:Ljava/util/List;

    return-void
.end method

.method public setArfcnList_N28(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N28:Ljava/util/List;

    return-void
.end method

.method public setArfcnList_N41(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N41:Ljava/util/List;

    return-void
.end method

.method public setArfcnList_N78(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N78:Ljava/util/List;

    return-void
.end method

.method public setArfcnList_N79(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->arfcnList_N79:Ljava/util/List;

    return-void
.end method

.method public setChanelList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->chanelList:Ljava/util/List;

    return-void
.end method

.method public setDwDeviceInfoBean(Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->dwDeviceInfoBean:Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    return-void
.end method

.method public setEnablelList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->enablelList:Ljava/util/List;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setReportList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/simdo/dw_db_s/Bean/ScanArfcnBean;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->reportList:Ljava/util/List;

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->string:Ljava/lang/String;

    return-void
.end method

.method public setWhat(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/EventMessageBean;->what:I

    return-void
.end method
