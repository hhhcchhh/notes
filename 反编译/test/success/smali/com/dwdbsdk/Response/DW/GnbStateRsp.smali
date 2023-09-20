.class public Lcom/dwdbsdk/Response/DW/GnbStateRsp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dwdbsdk/Response/DW/GnbStateRsp$gnbState;,
        Lcom/dwdbsdk/Response/DW/GnbStateRsp$gnssSelect;,
        Lcom/dwdbsdk/Response/DW/GnbStateRsp$devState;,
        Lcom/dwdbsdk/Response/DW/GnbStateRsp$Gps;,
        Lcom/dwdbsdk/Response/DW/GnbStateRsp$Air;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:[I

.field public m:Ljava/lang/Double;

.field public n:Ljava/lang/Double;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->j:I

    .line 3
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->k:I

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->t:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->u:Ljava/util/List;

    .line 18
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->a:I

    .line 19
    iput p2, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->b:I

    .line 20
    iput p3, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->c:I

    .line 21
    iput p4, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->f:I

    .line 22
    iput p5, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->d:I

    .line 23
    iput p6, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->e:I

    const-wide/16 p1, 0x0

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->m:Ljava/lang/Double;

    .line 25
    iput-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->n:Ljava/lang/Double;

    const/4 p1, 0x1

    .line 26
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->h:I

    .line 27
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->g:I

    const/4 p1, 0x2

    .line 28
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->i:I

    .line 29
    iput-object p7, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->p:Ljava/lang/String;

    .line 30
    iput-object p8, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->o:Ljava/lang/String;

    .line 31
    iput-object p9, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->r:Ljava/lang/String;

    .line 32
    iput-object p10, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->q:Ljava/lang/String;

    const-string p1, ""

    .line 33
    iput-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->s:Ljava/lang/String;

    .line 35
    iget-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 36
    iget-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->u:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public addTemp(I)V
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->u:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVol(I)V
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->t:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBtName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getDevState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->h:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getDualCell()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->i:I

    return v0
.end method

.method public getFanSpeed()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->l:[I

    return-object v0
.end method

.method public getFirstAirState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->d:I

    return v0
.end method

.method public getFirstState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->a:I

    return v0
.end method

.method public getGnss_select()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->j:I

    return v0
.end method

.method public getGpsSyncState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->c:I

    return v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->n:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->m:Ljava/lang/Double;

    return-object v0
.end method

.method public getSecondAirState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->e:I

    return v0
.end method

.method public getSecondState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->b:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getSysKickOff()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->k:I

    return v0
.end method

.method public getTempList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->u:Ljava/util/List;

    return-object v0
.end method

.method public getTimeSetState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->f:I

    return v0
.end method

.method public getVoltageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->t:Ljava/util/List;

    return-object v0
.end method

.method public getWifiIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->g:I

    return v0
.end method

.method public setDevName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->s:Ljava/lang/String;

    return-void
.end method

.method public setDevState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->h:I

    return-void
.end method

.method public setDualCell(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->i:I

    return-void
.end method

.method public setFanSpeed([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->l:[I

    return-void
.end method

.method public setFirstAirState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->d:I

    return-void
.end method

.method public setGnss_select(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->j:I

    return-void
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->n:Ljava/lang/Double;

    return-void
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->m:Ljava/lang/Double;

    return-void
.end method

.method public setSecondAirState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->e:I

    return-void
.end method

.method public setSysKickOff(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->k:I

    return-void
.end method

.method public setWorkMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->g:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnbStateRsp{firstState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpsSyncState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstAirState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondAirState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSetState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dualCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", workMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", devState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gnss_select="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sysKickOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fanSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->l:[I

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ssid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', wifiIp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', btName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', devName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->m:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->n:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", voltageList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tempList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbStateRsp;->u:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
