.class public Lcom/dwdbsdk/Response/DW/GnbGpsInOutRsp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbGpsInOutRsp;->a:I

    .line 3
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbGpsInOutRsp;->b:I

    return-void
.end method


# virtual methods
.method public getInGpioIdx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbGpsInOutRsp;->b:I

    return v0
.end method

.method public getOutGpioIdx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbGpsInOutRsp;->a:I

    return v0
.end method

.method public setInGpioIdx(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbGpsInOutRsp;->b:I

    return-void
.end method

.method public setOutGpioIdx(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbGpsInOutRsp;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnbGpsInOutRsp{outGpioIdx="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbGpsInOutRsp;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inGpioIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbGpsInOutRsp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
