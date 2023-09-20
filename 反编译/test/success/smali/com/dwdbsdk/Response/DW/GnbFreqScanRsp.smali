.class public Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;
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

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->a:I

    .line 3
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->b:I

    .line 4
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->c:I

    .line 5
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->d:I

    .line 6
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->e:I

    .line 7
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->f:I

    .line 8
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->g:I

    .line 9
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->h:I

    const-string v1, "0"

    .line 10
    iput-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->i:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->j:Ljava/lang/String;

    .line 12
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->k:I

    .line 13
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->l:I

    .line 14
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->m:I

    .line 15
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->o:I

    .line 16
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->n:I

    .line 17
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->p:I

    .line 18
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->q:I

    return-void
.end method


# virtual methods
.method public getBandwidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->q:I

    return v0
.end method

.method public getDl_arfcn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->e:I

    return v0
.end method

.method public getEci()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getMCC1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->m:I

    return v0
.end method

.method public getMCC2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->n:I

    return v0
.end method

.method public getMNC1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->o:I

    return v0
.end method

.method public getMNC2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->p:I

    return v0
.end method

.method public getPa()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->l:I

    return v0
.end method

.method public getPci()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->f:I

    return v0
.end method

.method public getPk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->k:I

    return v0
.end method

.method public getPrio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->h:I

    return v0
.end method

.method public getReportLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->b:I

    return v0
.end method

.method public getReportStep()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->a:I

    return v0
.end method

.method public getRsrp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->g:I

    return v0
.end method

.method public getScanResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->c:I

    return v0
.end method

.method public getTac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getUl_arfcn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->d:I

    return v0
.end method

.method public setBandwidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->q:I

    return-void
.end method

.method public setDl_arfcn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->e:I

    return-void
.end method

.method public setEci(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->j:Ljava/lang/String;

    return-void
.end method

.method public setMCC1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->m:I

    return-void
.end method

.method public setMCC2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->n:I

    return-void
.end method

.method public setMNC1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->o:I

    return-void
.end method

.method public setMNC2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->p:I

    return-void
.end method

.method public setPa(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->l:I

    return-void
.end method

.method public setPci(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->f:I

    return-void
.end method

.method public setPk(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->k:I

    return-void
.end method

.method public setPrio(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->h:I

    return-void
.end method

.method public setReportLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->b:I

    return-void
.end method

.method public setReportStep(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->a:I

    return-void
.end method

.method public setRsrp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->g:I

    return-void
.end method

.method public setScanResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->c:I

    return-void
.end method

.method public setTac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->i:Ljava/lang/String;

    return-void
.end method

.method public setUl_arfcn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnbFreqScanRsp{ReportStep=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'tac=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', eci=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', ul_arfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dl_arfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mcc/mnc[1]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mcc/mnc[2]:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bandwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanRsp;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
