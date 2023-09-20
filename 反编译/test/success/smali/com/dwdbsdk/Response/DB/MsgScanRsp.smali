.class public Lcom/dwdbsdk/Response/DB/MsgScanRsp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FAIL_BOTH:I = 0x0

.field public static final SUCC_BOTH:I = 0x3

.field public static final SUCC_CELL_0:I = 0x1

.field public static final SUCC_CELL_1:I = 0x2


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

.field public k:Lcom/dwdbsdk/Response/DB/MsgStateRsp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->h:I

    .line 3
    iput v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->d:I

    .line 4
    iput v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->e:I

    .line 5
    iput v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->i:I

    .line 6
    iput v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->j:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->k:Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    return-void
.end method

.method public constructor <init>(Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->h:I

    .line 11
    iput v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->d:I

    .line 12
    iput v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->e:I

    .line 13
    iput v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->i:I

    .line 14
    iput v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->j:I

    .line 16
    iput-object p1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->k:Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    return-void
.end method


# virtual methods
.method public getBestPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->j:I

    return v0
.end method

.method public getLockState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->d:I

    return v0
.end method

.method public getMinNoisePower()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->i:I

    return v0
.end method

.method public getMsgLen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->b:I

    return v0
.end method

.method public getMsgSn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->a:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->c:I

    return v0
.end method

.method public getRsrp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->e:I

    return v0
.end method

.method public getRsrp_first()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->f:I

    return v0
.end method

.method public getRsrp_second()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->g:I

    return v0
.end method

.method public getScanResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->h:I

    return v0
.end method

.method public getStateRsp()Lcom/dwdbsdk/Response/DB/MsgStateRsp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->k:Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    return-object v0
.end method

.method public setBestPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->j:I

    return-void
.end method

.method public setLockState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->d:I

    return-void
.end method

.method public setMinNoisePower(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->i:I

    return-void
.end method

.method public setMsgLen(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->b:I

    return-void
.end method

.method public setMsgSn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->a:I

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->c:I

    return-void
.end method

.method public setRsrp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->e:I

    return-void
.end method

.method public setRsrp_first(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->f:I

    return-void
.end method

.method public setRsrp_second(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->g:I

    return-void
.end method

.method public setScanResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->h:I

    return-void
.end method

.method public setStateRsp(Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->k:Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MsgScanRsp{msgSn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rsrp_first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rsrp_second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scanResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minNoisePower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bestPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgScanRsp;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
