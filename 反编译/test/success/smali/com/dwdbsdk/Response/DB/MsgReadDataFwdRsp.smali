.class public Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lcom/dwdbsdk/Response/DB/MsgStateRsp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->d:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->e:Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->a:I

    .line 6
    iput p2, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->b:I

    .line 7
    iput p3, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->c:I

    .line 8
    iput-object p4, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->e:Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgLen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->b:I

    return v0
.end method

.method public getMsgSn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->a:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->c:I

    return v0
.end method

.method public getStateRsp()Lcom/dwdbsdk/Response/DB/MsgStateRsp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->e:Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->d:Ljava/lang/String;

    return-void
.end method

.method public setStateRsp(Lcom/dwdbsdk/Response/DB/MsgStateRsp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->e:Lcom/dwdbsdk/Response/DB/MsgStateRsp;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MsgReadDataFwdRsp{msgSn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DB/MsgReadDataFwdRsp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
