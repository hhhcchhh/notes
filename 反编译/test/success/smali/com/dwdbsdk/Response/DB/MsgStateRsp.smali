.class public Lcom/dwdbsdk/Response/DB/MsgStateRsp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IDLE:I = 0x0

.field public static final JAMMING:I = 0x1

.field public static final PWR_DETECT:I = 0x2

.field public static final SFLAG_AUTO_CFG_FAIL:I = 0x2

.field public static final SFLAG_AUTO_CFG_OK:I = 0x1

.field public static final SFLAG_IN_AUTO_CFG:I = 0x3

.field public static final SFLAG_NULL:I


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

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->a:I

    .line 19
    iput p2, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->b:I

    .line 20
    iput p3, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->c:I

    .line 21
    iput p4, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->o:I

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->a:I

    .line 3
    iput p2, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->b:I

    .line 4
    iput p3, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->c:I

    .line 5
    iput p4, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->d:I

    .line 6
    iput p5, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->e:I

    .line 7
    iput p6, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->f:I

    .line 8
    iput p7, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->g:I

    .line 9
    iput p8, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->h:I

    .line 10
    iput p9, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->i:I

    .line 11
    iput p11, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->j:I

    .line 12
    iput p10, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->k:I

    .line 13
    iput-object p12, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->l:Ljava/lang/String;

    .line 14
    iput-object p13, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->m:Ljava/lang/String;

    .line 15
    iput-object p14, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->n:Ljava/lang/String;

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->o:I

    return-void
.end method


# virtual methods
.method public getAirSyncState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->i:I

    return v0
.end method

.method public getAutoCfgState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->j:I

    return v0
.end method

.method public getBattery()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->f:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->h:I

    return v0
.end method

.method public getMsgLen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->b:I

    return v0
.end method

.method public getMsgSn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->a:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->c:I

    return v0
.end method

.method public getParam()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->d:I

    return v0
.end method

.method public getPci()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->k:I

    return v0
.end method

.method public getRspValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->o:I

    return v0
.end method

.method public getTemp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->g:I

    return v0
.end method

.method public getWifiIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->e:I

    return v0
.end method

.method public setAirSyncState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->i:I

    return-void
.end method

.method public setAutoCfgState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->j:I

    return-void
.end method

.method public setBattery(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->f:I

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->n:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->m:Ljava/lang/String;

    return-void
.end method

.method public setGpsState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->h:I

    return-void
.end method

.method public setPci(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->k:I

    return-void
.end method

.method public setWifiIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->l:Ljava/lang/String;

    return-void
.end method

.method public toCmdString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MsgStateRsp{msgSn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rspValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MsgStateRsp{msgSn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", workMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", battery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", temp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", airSyncState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", autoCfgState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wifiIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DB/MsgStateRsp;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
