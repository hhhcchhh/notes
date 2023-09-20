.class public Lcom/dwdbsdk/Bean/DB/SsbBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->d:Ljava/util/List;

    .line 5
    iput-wide p1, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->a:J

    .line 6
    iput p3, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->b:I

    .line 7
    iput p4, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->c:I

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object p1, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->d:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getDdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->d:Ljava/util/List;

    return-object v0
.end method

.method public getLoFreq()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->a:J

    return-wide v0
.end method

.method public getScsType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->c:I

    return v0
.end method

.method public getTimeOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->b:I

    return v0
.end method

.method public setDdsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->d:Ljava/util/List;

    return-void
.end method

.method public setLoFreq(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->a:J

    return-void
.end method

.method public setScsType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->c:I

    return-void
.end method

.method public setTimeOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SsbBean{loFreq="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ddsList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Bean/DB/SsbBean;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
