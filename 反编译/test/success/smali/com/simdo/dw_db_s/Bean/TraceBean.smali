.class public Lcom/simdo/dw_db_s/Bean/TraceBean;
.super Ljava/lang/Object;
.source "TraceBean.java"


# static fields
.field public static final RSRP_TIME_INTERVAL:I = 0x3e8


# instance fields
.field private airSync:I

.field private arfcn:Ljava/lang/String;

.field private atCmdTimeOut:J

.field private bandWidth:I

.field private cfr:I

.field private cid:J

.field private downTime:Ljava/lang/Long;

.field private enable:Z

.field private imsi:Ljava/lang/String;

.field private lastRsrp:I

.field private lostCount:I

.field private lostRsrpTime:J

.field private mobRejectCode:I

.field private pci:Ljava/lang/String;

.field private plmn:Ljava/lang/String;

.field private sameRsrpCnt:I

.field private saveOpLog:Z

.field private splitArfcnDl:Ljava/lang/String;

.field private ssbBitmap:I

.field private subPlmn:Ljava/lang/String;

.field private swap_rf:I

.field private tacChange:Z

.field private timingOffset:I

.field private traceRsrp:I

.field private txPwr:I

.field private ueMaxTxpwr:Ljava/lang/String;

.field private workState:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->lostCount:I

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->downTime:Ljava/lang/Long;

    .line 20
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->workState:I

    const-string p1, ""

    .line 21
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->arfcn:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->pci:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->imsi:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->plmn:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->subPlmn:Ljava/lang/String;

    const-string v1, "10"

    .line 26
    iput-object v1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->ueMaxTxpwr:Ljava/lang/String;

    .line 27
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->airSync:I

    const/16 v1, 0x14

    .line 28
    iput v1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->bandWidth:I

    const/16 v1, 0xff

    .line 29
    iput v1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->ssbBitmap:I

    .line 30
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->txPwr:I

    .line 31
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->traceRsrp:I

    const/4 v1, -0x1

    .line 32
    iput v1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->lastRsrp:I

    .line 33
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->sameRsrpCnt:I

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->atCmdTimeOut:J

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->lostRsrpTime:J

    .line 36
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->swap_rf:I

    const/4 v1, 0x1

    .line 37
    iput v1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->cfr:I

    .line 38
    iput-boolean v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->tacChange:Z

    .line 39
    iput-boolean v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->enable:Z

    .line 40
    iput-boolean v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->saveOpLog:Z

    .line 41
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->splitArfcnDl:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->mobRejectCode:I

    return-void
.end method


# virtual methods
.method public getAirSync()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->airSync:I

    return v0
.end method

.method public getArfcn()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->arfcn:Ljava/lang/String;

    return-object v0
.end method

.method public getAtCmdTimeOut()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->atCmdTimeOut:J

    return-wide v0
.end method

.method public getBandWidth()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->bandWidth:I

    return v0
.end method

.method public getCfr()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->cfr:I

    return v0
.end method

.method public getCid()J
    .locals 2

    .line 212
    iget-wide v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->cid:J

    return-wide v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getLastRsrp()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->lastRsrp:I

    return v0
.end method

.method public getMobRejectCode()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->mobRejectCode:I

    return v0
.end method

.method public getPci()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->pci:Ljava/lang/String;

    return-object v0
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->plmn:Ljava/lang/String;

    return-object v0
.end method

.method public getSplitArfcnDl()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->splitArfcnDl:Ljava/lang/String;

    return-object v0
.end method

.method public getSsbBitmap()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->ssbBitmap:I

    return v0
.end method

.method public getSubPlmn()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->subPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public getSwap_rf()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->swap_rf:I

    return v0
.end method

.method public getTimingOffset()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->timingOffset:I

    return v0
.end method

.method public getTraceRsrp(I)I
    .locals 5

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->downTime:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    const/4 p1, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 71
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->traceRsrp:I

    .line 73
    :cond_0
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->traceRsrp:I

    if-nez v0, :cond_2

    .line 74
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->lostCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->lostCount:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->lostCount:I

    .line 76
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->sameRsrpCnt:I

    .line 77
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->traceRsrp:I

    goto :goto_0

    .line 79
    :cond_1
    iget p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->lastRsrp:I

    return p1

    .line 82
    :cond_2
    :goto_0
    iget p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->traceRsrp:I

    return p1
.end method

.method public getTxPwr()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->txPwr:I

    return v0
.end method

.method public getUeMaxTxpwr()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->ueMaxTxpwr:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkState()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->workState:I

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->enable:Z

    return v0
.end method

.method public isSaveOpLog()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->saveOpLog:Z

    return v0
.end method

.method public isTacChange()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->tacChange:Z

    return v0
.end method

.method public setAirSync(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->airSync:I

    return-void
.end method

.method public setArfcn(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->arfcn:Ljava/lang/String;

    return-void
.end method

.method public setAtCmdTimeOut(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->atCmdTimeOut:J

    return-void
.end method

.method public setBandWidth(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->bandWidth:I

    return-void
.end method

.method public setCfr(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->cfr:I

    return-void
.end method

.method public setCid(J)V
    .locals 0

    .line 216
    iput-wide p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->cid:J

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->enable:Z

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setLastRsrp(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->lastRsrp:I

    return-void
.end method

.method public setMobRejectCode(I)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->mobRejectCode:I

    return-void
.end method

.method public setPci(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->pci:Ljava/lang/String;

    return-void
.end method

.method public setPlmn(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->plmn:Ljava/lang/String;

    return-void
.end method

.method public setSaveOpLog(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->saveOpLog:Z

    return-void
.end method

.method public setSplitArfcnDl(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->splitArfcnDl:Ljava/lang/String;

    return-void
.end method

.method public setSsbBitmap(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->ssbBitmap:I

    return-void
.end method

.method public setSubPlmn(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->subPlmn:Ljava/lang/String;

    return-void
.end method

.method public setSwap_rf(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->swap_rf:I

    return-void
.end method

.method public setTacChange(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->tacChange:Z

    return-void
.end method

.method public setTimingOffset(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->timingOffset:I

    return-void
.end method

.method public setTraceRsrp(I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 87
    iput v1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->sameRsrpCnt:I

    .line 88
    iput v1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->lostCount:I

    .line 89
    iput v1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->traceRsrp:I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->downTime:Ljava/lang/Long;

    .line 93
    iput v1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->sameRsrpCnt:I

    .line 94
    iput v1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->lostCount:I

    .line 96
    :cond_1
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->traceRsrp:I

    return-void
.end method

.method public setTxPwr(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->txPwr:I

    return-void
.end method

.method public setUeMaxTxpwr(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->ueMaxTxpwr:Ljava/lang/String;

    return-void
.end method

.method public setWorkState(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/TraceBean;->workState:I

    return-void
.end method
