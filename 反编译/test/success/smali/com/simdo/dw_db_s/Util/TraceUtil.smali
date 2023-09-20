.class public Lcom/simdo/dw_db_s/Util/TraceUtil;
.super Ljava/lang/Object;
.source "TraceUtil.java"


# instance fields
.field private firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

.field private fourthCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

.field private secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

.field private thirdCell:Lcom/simdo/dw_db_s/Bean/TraceBean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/simdo/dw_db_s/Bean/TraceBean;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/simdo/dw_db_s/Bean/TraceBean;-><init>(I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    .line 14
    new-instance v0, Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-direct {v0, v1}, Lcom/simdo/dw_db_s/Bean/TraceBean;-><init>(I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    .line 15
    new-instance v0, Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-direct {v0, v1}, Lcom/simdo/dw_db_s/Bean/TraceBean;-><init>(I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->thirdCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    .line 16
    new-instance v0, Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-direct {v0, v1}, Lcom/simdo/dw_db_s/Bean/TraceBean;-><init>(I)V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->fourthCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    return-void
.end method


# virtual methods
.method public getAirSync(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getAirSync()I

    move-result p1

    return p1

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getAirSync()I

    move-result p1

    return p1
.end method

.method public getArfcn(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getArfcn()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 141
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getArfcn()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 143
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->thirdCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getArfcn()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 145
    :cond_2
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->fourthCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getArfcn()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAtCmdTimeOut(I)J
    .locals 2

    if-nez p1, :cond_0

    .line 358
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getAtCmdTimeOut()J

    move-result-wide v0

    return-wide v0

    .line 360
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getAtCmdTimeOut()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBandWidth(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getBandWidth()I

    move-result p1

    return p1

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getBandWidth()I

    move-result p1

    return p1
.end method

.method public getCfr(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getCfr()I

    move-result p1

    return p1

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getCfr()I

    move-result p1

    return p1
.end method

.method public getCid(I)J
    .locals 2

    if-nez p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getCid()J

    move-result-wide v0

    return-wide v0

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getCid()J

    move-result-wide v0

    return-wide v0
.end method

.method public getImsi(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getImsi()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 85
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getImsi()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 87
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getImsi()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getImsi()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastRsrp(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getLastRsrp()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 200
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getLastRsrp()I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 202
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->thirdCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getLastRsrp()I

    move-result p1

    return p1

    .line 204
    :cond_2
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->fourthCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getLastRsrp()I

    move-result p1

    return p1
.end method

.method public getMobRejectCode(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 402
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getMobRejectCode()I

    move-result p1

    return p1

    .line 404
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getMobRejectCode()I

    move-result p1

    return p1
.end method

.method public getPci(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getPci()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 165
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getPci()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 167
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getPci()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getPci()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPlmn(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getPlmn()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getPlmn()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRsrp(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getTraceRsrp(I)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getTraceRsrp(I)I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->thirdCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getTraceRsrp(I)I

    move-result p1

    return p1

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->fourthCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {v0, p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getTraceRsrp(I)I

    move-result p1

    return p1
.end method

.method public getSplit_arfcn_dl(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getSplitArfcnDl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 388
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getSplitArfcnDl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSsbBitmap(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 278
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getSsbBitmap()I

    move-result p1

    return p1

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getSsbBitmap()I

    move-result p1

    return p1
.end method

.method public getSubPlmn(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getSubPlmn()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getSubPlmn()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSwap_rf(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 373
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getSwap_rf()I

    move-result p1

    return p1

    .line 375
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getSwap_rf()I

    move-result p1

    return p1
.end method

.method public getTimingOffset(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getTimingOffset()I

    move-result p1

    return p1

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getTimingOffset()I

    move-result p1

    return p1
.end method

.method public getTxPwr(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getTxPwr()I

    move-result p1

    return p1

    .line 296
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getTxPwr()I

    move-result p1

    return p1
.end method

.method public getUeMaxTxpwr(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getUeMaxTxpwr()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getUeMaxTxpwr()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWorkState(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 342
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getWorkState()I

    move-result p1

    return p1

    .line 344
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->getWorkState()I

    move-result p1

    return p1
.end method

.method public isEnable(I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->isEnable()Z

    move-result p1

    return p1

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->isEnable()Z

    move-result p1

    return p1
.end method

.method public isSaveOpLog(I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->isSaveOpLog()Z

    move-result p1

    return p1

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->isSaveOpLog()Z

    move-result p1

    return p1
.end method

.method public isTacChange(I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->isTacChange()Z

    move-result p1

    return p1

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1}, Lcom/simdo/dw_db_s/Bean/TraceBean;->isTacChange()Z

    move-result p1

    return p1
.end method

.method public setAirSync(II)V
    .locals 0

    if-nez p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setAirSync(I)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setAirSync(I)V

    :goto_0
    return-void
.end method

.method public setArfcn(ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setArfcn(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 153
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setArfcn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 155
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->thirdCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setArfcn(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->fourthCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setArfcn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAtCmdTimeOut(IJ)V
    .locals 0

    if-nez p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2, p3}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setAtCmdTimeOut(J)V

    goto :goto_0

    .line 368
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2, p3}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setAtCmdTimeOut(J)V

    :goto_0
    return-void
.end method

.method public setBandWidth(II)V
    .locals 0

    if-nez p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setBandWidth(I)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setBandWidth(I)V

    :goto_0
    return-void
.end method

.method public setCfr(II)V
    .locals 0

    if-nez p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setCfr(I)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setCfr(I)V

    :goto_0
    return-void
.end method

.method public setCid(IJ)V
    .locals 0

    if-nez p1, :cond_0

    .line 334
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2, p3}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setCid(J)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2, p3}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setCid(J)V

    :goto_0
    return-void
.end method

.method public setEnable(IZ)V
    .locals 0

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setEnable(Z)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setEnable(Z)V

    :goto_0
    return-void
.end method

.method public setImsi(ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setImsi(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 97
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setImsi(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 99
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setImsi(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 101
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setImsi(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setLastRsrp(II)V
    .locals 1

    if-nez p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setLastRsrp(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 212
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setLastRsrp(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 214
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->thirdCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setLastRsrp(I)V

    goto :goto_0

    .line 216
    :cond_2
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->fourthCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setLastRsrp(I)V

    :goto_0
    return-void
.end method

.method public setMobRejectCode(II)V
    .locals 0

    if-nez p1, :cond_0

    .line 409
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setMobRejectCode(I)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setMobRejectCode(I)V

    :goto_0
    return-void
.end method

.method public setPci(ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setPci(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setPci(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setPlmn(ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setPlmn(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setPlmn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setRsrp(II)V
    .locals 1

    if-nez p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setTraceRsrp(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 236
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setTraceRsrp(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 238
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->thirdCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setTraceRsrp(I)V

    goto :goto_0

    .line 240
    :cond_2
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->fourthCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setTraceRsrp(I)V

    :goto_0
    return-void
.end method

.method public setSaveOpLog(IZ)V
    .locals 0

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setSaveOpLog(Z)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setSaveOpLog(Z)V

    :goto_0
    return-void
.end method

.method public setSplit_arfcn_dl(ILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setSplitArfcnDl(Ljava/lang/String;)V

    goto :goto_1

    .line 395
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setSplitArfcnDl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setSsbBitmap(II)V
    .locals 0

    if-nez p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setSsbBitmap(I)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setSsbBitmap(I)V

    :goto_0
    return-void
.end method

.method public setSubPlmn(ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setSubPlmn(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setSubPlmn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSwap_rf(II)V
    .locals 0

    if-nez p1, :cond_0

    .line 381
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setSwap_rf(I)V

    goto :goto_0

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setSwap_rf(I)V

    :goto_0
    return-void
.end method

.method public setTacChange(IZ)V
    .locals 0

    if-nez p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setTacChange(Z)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setTacChange(Z)V

    :goto_0
    return-void
.end method

.method public setTimingOffset(II)V
    .locals 0

    if-nez p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setTimingOffset(I)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setTimingOffset(I)V

    :goto_0
    return-void
.end method

.method public setTxPwr(II)V
    .locals 0

    if-nez p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setTxPwr(I)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setTxPwr(I)V

    :goto_0
    return-void
.end method

.method public setUeMaxTxpwr(ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 318
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setUeMaxTxpwr(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setUeMaxTxpwr(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setWorkState(II)V
    .locals 0

    if-nez p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->firstCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setWorkState(I)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object p1, p0, Lcom/simdo/dw_db_s/Util/TraceUtil;->secondCell:Lcom/simdo/dw_db_s/Bean/TraceBean;

    invoke-virtual {p1, p2}, Lcom/simdo/dw_db_s/Bean/TraceBean;->setWorkState(I)V

    :goto_0
    return-void
.end method
