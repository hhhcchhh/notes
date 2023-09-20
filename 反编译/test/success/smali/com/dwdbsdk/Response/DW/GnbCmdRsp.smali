.class public Lcom/dwdbsdk/Response/DW/GnbCmdRsp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->a:I

    .line 3
    iput p2, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->b:I

    .line 4
    iput p3, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->c:I

    .line 5
    iput p4, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->d:I

    return-void
.end method


# virtual methods
.method public getCellId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->a:I

    return v0
.end method

.method public getCmdType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->c:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->b:I

    return v0
.end method

.method public getRspValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->d:I

    return v0
.end method

.method public setCellId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->a:I

    return-void
.end method

.method public setCmdType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->c:I

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->b:I

    return-void
.end method

.method public setRspValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnbCmdRsp{cellId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rspValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbCmdRsp;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
