.class public Lcom/dwdbsdk/Bean/DB/OrxBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IJIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->a:I

    .line 3
    iput-wide p2, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->b:J

    .line 4
    iput p4, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->c:I

    .line 5
    iput p5, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->d:I

    .line 6
    iput p6, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->e:I

    return-void
.end method


# virtual methods
.method public getArfcn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->a:I

    return v0
.end method

.method public getFreqCarrier()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->b:J

    return-wide v0
.end method

.method public getPa()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->d:I

    return v0
.end method

.method public getPk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->c:I

    return v0
.end method

.method public getTimeOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->e:I

    return v0
.end method

.method public setArfcn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->a:I

    return-void
.end method

.method public setFreqCarrier(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->b:J

    return-void
.end method

.method public setPa(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->d:I

    return-void
.end method

.method public setPk(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->c:I

    return-void
.end method

.method public setTimeOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->e:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OrxBean{arfcn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freqCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DB/OrxBean;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
