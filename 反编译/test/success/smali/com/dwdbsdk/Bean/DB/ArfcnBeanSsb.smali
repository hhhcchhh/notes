.class public Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:J

.field public f:Z


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->a:I

    .line 3
    iput p2, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->b:I

    .line 4
    iput p3, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->c:I

    .line 5
    iput p4, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->d:I

    .line 6
    iput-wide p5, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->e:J

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->f:Z

    return-void
.end method


# virtual methods
.method public getArfcn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->a:I

    return v0
.end method

.method public getFreqCarrier()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->e:J

    return-wide v0
.end method

.method public getPa()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->d:I

    return v0
.end method

.method public getPk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->c:I

    return v0
.end method

.method public getTimeOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->b:I

    return v0
.end method

.method public isLock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->f:Z

    return v0
.end method

.method public setArfcn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->a:I

    return-void
.end method

.method public setFreqCarrier(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->e:J

    return-void
.end method

.method public setLock(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->f:Z

    return-void
.end method

.method public setPa(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->d:I

    return-void
.end method

.method public setPk(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->c:I

    return-void
.end method

.method public setTimeOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ArfcnBean{arfcn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freqCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DB/ArfcnBeanSsb;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
