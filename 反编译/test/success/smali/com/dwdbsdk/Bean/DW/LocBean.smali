.class public Lcom/dwdbsdk/Bean/DW/LocBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/BsBeam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->c:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->d:Ljava/lang/String;

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->e:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/BsBeam;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->g:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->c:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->d:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->f:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->e:Ljava/lang/String;

    if-eqz p7, :cond_0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    invoke-interface {p7, p7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getArfcn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getBeamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/BsBeam;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->g:Ljava/util/List;

    return-object v0
.end method

.method public getEci()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPci()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRx()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setArfcn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->c:Ljava/lang/String;

    return-void
.end method

.method public setBeamList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/BsBeam;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->g:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setEci(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->b:Ljava/lang/String;

    return-void
.end method

.method public setPci(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->d:Ljava/lang/String;

    return-void
.end method

.method public setPri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->e:Ljava/lang/String;

    return-void
.end method

.method public setRx(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->f:Ljava/lang/String;

    return-void
.end method

.method public setTac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nLocBean{tac=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', eci=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', arfcn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', pci=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', rx=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Bean/DW/LocBean;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
