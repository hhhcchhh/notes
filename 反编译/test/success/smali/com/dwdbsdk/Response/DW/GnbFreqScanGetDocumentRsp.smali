.class public Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->a:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->b:I

    .line 4
    iput v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->c:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getReportLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->b:I

    return v0
.end method

.method public getReportStep()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->a:I

    return v0
.end method

.method public getScanResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->c:I

    return v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->d:Ljava/lang/String;

    return-void
.end method

.method public setReportLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->b:I

    return-void
.end method

.method public setReportStep(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->a:I

    return-void
.end method

.method public setScanResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnbFreqScanGetDocumentRsp{reportStep="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reportLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scanResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Response/DW/GnbFreqScanGetDocumentRsp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
