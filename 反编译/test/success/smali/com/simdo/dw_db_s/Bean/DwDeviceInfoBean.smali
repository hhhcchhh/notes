.class public Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;
.super Ljava/lang/Object;
.source "DwDeviceInfoBean.java"


# instance fields
.field private fpgaVer:Ljava/lang/String;

.field private hwVer:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private license:Ljava/lang/String;

.field private rsp:Lcom/dwdbsdk/Response/DW/GnbStateRsp;

.field private softVer:Ljava/lang/String;

.field private traceUtil:Lcom/simdo/dw_db_s/Util/TraceUtil;

.field private workState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->rsp:Lcom/dwdbsdk/Response/DW/GnbStateRsp;

    .line 16
    new-instance v0, Lcom/simdo/dw_db_s/Util/TraceUtil;

    invoke-direct {v0}, Lcom/simdo/dw_db_s/Util/TraceUtil;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->traceUtil:Lcom/simdo/dw_db_s/Util/TraceUtil;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->workState:I

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->license:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->softVer:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->fpgaVer:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->hwVer:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 98
    :cond_0
    instance-of v0, p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 99
    :cond_1
    check-cast p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;

    .line 100
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFpgaVer()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->fpgaVer:Ljava/lang/String;

    return-object v0
.end method

.method public getHwVer()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->hwVer:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLicense()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->license:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxTemp()Ljava/lang/Double;
    .locals 8

    const-wide/16 v0, 0x0

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->rsp:Lcom/dwdbsdk/Response/DW/GnbStateRsp;

    invoke-virtual {v1}, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->getTempList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getRsp()Lcom/dwdbsdk/Response/DW/GnbStateRsp;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->rsp:Lcom/dwdbsdk/Response/DW/GnbStateRsp;

    return-object v0
.end method

.method public getSoftVer()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->softVer:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceUtil()Lcom/simdo/dw_db_s/Util/TraceUtil;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->traceUtil:Lcom/simdo/dw_db_s/Util/TraceUtil;

    return-object v0
.end method

.method public getWorkState()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->workState:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 105
    iget-object v2, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setFpgaVer(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->fpgaVer:Ljava/lang/String;

    return-void
.end method

.method public setHwVer(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->hwVer:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setLicense(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->license:Ljava/lang/String;

    return-void
.end method

.method public setRsp(Lcom/dwdbsdk/Response/DW/GnbStateRsp;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->rsp:Lcom/dwdbsdk/Response/DW/GnbStateRsp;

    return-void
.end method

.method public setSoftVer(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->softVer:Ljava/lang/String;

    return-void
.end method

.method public setTraceUtil(Lcom/simdo/dw_db_s/Util/TraceUtil;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->traceUtil:Lcom/simdo/dw_db_s/Util/TraceUtil;

    return-void
.end method

.method public setWorkState(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/DwDeviceInfoBean;->workState:I

    return-void
.end method
