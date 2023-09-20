.class public Lcom/simdo/dw_db_s/Bean/ImsiBean;
.super Ljava/lang/Object;
.source "ImsiBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simdo/dw_db_s/Bean/ImsiBean$State;
    }
.end annotation


# instance fields
.field arfcn:Ljava/lang/String;

.field cellId:I

.field firstTime:J

.field imsi:Ljava/lang/String;

.field latestTime:J

.field lossCount:I

.field pci:Ljava/lang/String;

.field rsrp:I

.field state:I

.field upCount:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->state:I

    .line 41
    iput-object p2, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->imsi:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->arfcn:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->pci:Ljava/lang/String;

    .line 44
    iput-wide p6, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->firstTime:J

    .line 45
    iput-wide p6, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->latestTime:J

    .line 46
    iput p8, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->cellId:I

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->lossCount:I

    const/4 p1, 0x1

    .line 48
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->upCount:I

    .line 49
    iput p5, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->rsrp:I

    return-void
.end method


# virtual methods
.method public getArfcn()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->arfcn:Ljava/lang/String;

    return-object v0
.end method

.method public getCellId()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->cellId:I

    return v0
.end method

.method public getFirstTime()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->firstTime:J

    return-wide v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestTime()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->latestTime:J

    return-wide v0
.end method

.method public getLossCount()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->lossCount:I

    return v0
.end method

.method public getPci()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->pci:Ljava/lang/String;

    return-object v0
.end method

.method public getRsrp()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->rsrp:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->state:I

    return v0
.end method

.method public getUpCount()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->upCount:I

    return v0
.end method

.method public setArfcn(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->arfcn:Ljava/lang/String;

    return-void
.end method

.method public setCellId(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->cellId:I

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setLatestTime(J)V
    .locals 0

    .line 109
    iput-wide p1, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->latestTime:J

    return-void
.end method

.method public setLossCount(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->lossCount:I

    return-void
.end method

.method public setPci(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->pci:Ljava/lang/String;

    return-void
.end method

.method public setRsrp(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->rsrp:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->state:I

    return-void
.end method

.method public setUpCount(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/ImsiBean;->upCount:I

    return-void
.end method
