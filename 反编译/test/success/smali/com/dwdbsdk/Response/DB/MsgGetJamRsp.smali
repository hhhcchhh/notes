.class public Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTO:I = 0x1

.field public static final NORMAL:I


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/dwdbsdk/Bean/DB/TxBean;

.field public d:Lcom/dwdbsdk/Bean/DB/TxBean;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/OrxBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->a:I

    .line 3
    iput v0, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->c:Lcom/dwdbsdk/Bean/DB/TxBean;

    .line 5
    iput-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->d:Lcom/dwdbsdk/Bean/DB/TxBean;

    .line 6
    iput-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAutoStartJam()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->b:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->a:I

    return v0
.end method

.method public getOrxList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/OrxBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->e:Ljava/util/List;

    return-object v0
.end method

.method public getTx1()Lcom/dwdbsdk/Bean/DB/TxBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->c:Lcom/dwdbsdk/Bean/DB/TxBean;

    return-object v0
.end method

.method public getTx2()Lcom/dwdbsdk/Bean/DB/TxBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->d:Lcom/dwdbsdk/Bean/DB/TxBean;

    return-object v0
.end method

.method public setAutoStartJam(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->b:I

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->a:I

    return-void
.end method

.method public setOrxList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/OrxBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->e:Ljava/util/List;

    return-void
.end method

.method public setTx1(Lcom/dwdbsdk/Bean/DB/TxBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->c:Lcom/dwdbsdk/Bean/DB/TxBean;

    return-void
.end method

.method public setTx2(Lcom/dwdbsdk/Bean/DB/TxBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->d:Lcom/dwdbsdk/Bean/DB/TxBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MsgGetJamRsp{msgType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", autoStartJam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \ntx1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->c:Lcom/dwdbsdk/Bean/DB/TxBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \ntx2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->d:Lcom/dwdbsdk/Bean/DB/TxBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \norxList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DB/MsgGetJamRsp;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
