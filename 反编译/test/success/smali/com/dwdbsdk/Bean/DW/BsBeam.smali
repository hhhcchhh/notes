.class public Lcom/dwdbsdk/Bean/DW/BsBeam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/BsBeam;->a:I

    .line 3
    iput p2, p0, Lcom/dwdbsdk/Bean/DW/BsBeam;->b:I

    .line 4
    iput p3, p0, Lcom/dwdbsdk/Bean/DW/BsBeam;->c:I

    return-void
.end method


# virtual methods
.method public getBeam_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/BsBeam;->a:I

    return v0
.end method

.method public getRsrp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/BsBeam;->c:I

    return v0
.end method

.method public getSsb_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/BsBeam;->b:I

    return v0
.end method

.method public setBeam_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/BsBeam;->a:I

    return-void
.end method

.method public setRsrp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/BsBeam;->c:I

    return-void
.end method

.method public setSsb_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/BsBeam;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "beam_num: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/BsBeam;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   ssb_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/BsBeam;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   rsrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/BsBeam;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
