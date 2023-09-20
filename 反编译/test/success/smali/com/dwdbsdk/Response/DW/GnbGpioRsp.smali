.class public Lcom/dwdbsdk/Response/DW/GnbGpioRsp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGpio1_en1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->a:I

    return v0
.end method

.method public getGpio2_en2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->b:I

    return v0
.end method

.method public getGpio3_bs3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->c:I

    return v0
.end method

.method public getGpio4_tddSw1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->d:I

    return v0
.end method

.method public getGpio5_bs1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->e:I

    return v0
.end method

.method public getGpio6_bs2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->f:I

    return v0
.end method

.method public getGpio7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->g:I

    return v0
.end method

.method public getGpio8_tddSw2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->h:I

    return v0
.end method

.method public setGpio1_en1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->a:I

    return-void
.end method

.method public setGpio2_en2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->b:I

    return-void
.end method

.method public setGpio3_bs3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->c:I

    return-void
.end method

.method public setGpio4_tddSw1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->d:I

    return-void
.end method

.method public setGpio5_bs1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->e:I

    return-void
.end method

.method public setGpio6_bs2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->f:I

    return-void
.end method

.method public setGpio7(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->g:I

    return-void
.end method

.method public setGpio8_tddSw2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->h:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnbGpioRsp{gpio1_en1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpio2_en2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpio3_bs3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpio4_tddSw1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpio5_bs1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpio6_bs2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpio7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpio8_tddSw2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbGpioRsp;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
