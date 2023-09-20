.class public Lcom/dwdbsdk/Bean/DW/TracePara;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;IJIIIIIIIILjava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->D:Ljava/lang/String;

    move v1, p2

    .line 3
    iput-boolean v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->C:Z

    move v1, p3

    .line 4
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->g:I

    move-object v1, p5

    .line 5
    iput-object v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->a:Ljava/lang/String;

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->b:Ljava/lang/String;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->c:Ljava/lang/String;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->d:Ljava/lang/String;

    move v1, p9

    .line 9
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->h:I

    move v1, p10

    .line 10
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->i:I

    move v1, p11

    .line 11
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->j:I

    move v1, p12

    .line 12
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->k:I

    move/from16 v1, p13

    .line 13
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->l:I

    move-object/from16 v1, p14

    .line 14
    iput-object v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->e:Ljava/lang/String;

    move/from16 v1, p15

    .line 15
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->m:I

    move-wide/from16 v1, p16

    .line 16
    iput-wide v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->z:J

    move/from16 v1, p18

    .line 17
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->n:I

    move/from16 v1, p19

    .line 18
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->q:I

    move/from16 v1, p20

    .line 19
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->r:I

    move/from16 v1, p21

    .line 20
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->s:I

    move/from16 v1, p22

    .line 21
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->t:I

    move/from16 v1, p23

    .line 22
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->u:I

    const/4 v1, 0x0

    .line 23
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->w:I

    .line 24
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->v:I

    move/from16 v2, p24

    .line 25
    iput v2, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->y:I

    move/from16 v2, p25

    .line 26
    iput v2, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->x:I

    move-object/from16 v2, p26

    .line 27
    iput-object v2, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->E:Ljava/lang/String;

    .line 28
    iput-boolean v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->A:Z

    .line 29
    iput-boolean v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->B:Z

    move-object v2, p4

    .line 30
    iput-object v2, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->f:Ljava/lang/String;

    .line 31
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->o:I

    .line 32
    iput v1, v0, Lcom/dwdbsdk/Bean/DW/TracePara;->p:I

    return-void
.end method


# virtual methods
.method public getAirSync()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->l:I

    return v0
.end method

.method public getArfcn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getBandWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->q:I

    return v0
.end method

.method public getCellId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->g:I

    return v0
.end method

.method public getCfr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->r:I

    return v0
.end method

.method public getCid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->z:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxTac()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->i:I

    return v0
.end method

.method public getMobRejectCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->x:I

    return v0
.end method

.method public getPa()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->v:I

    return v0
.end method

.method public getPci()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->w:I

    return v0
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPlmn1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirect2LteArfcn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->y:I

    return v0
.end method

.method public getRejectCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->t:I

    return v0
.end method

.method public getRxLevMin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->u:I

    return v0
.end method

.method public getSplitArfcndl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->E:Ljava/lang/String;

    return-object v0
.end method

.method public getSsbBitmap()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->n:I

    return v0
.end method

.method public getStartTac()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->h:I

    return v0
.end method

.method public getStopCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->p:I

    return v0
.end method

.method public getSwapRf()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->s:I

    return v0
.end method

.method public getTimingOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->j:I

    return v0
.end method

.method public getTraceTacChangeDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->o:I

    return v0
.end method

.method public getUeMaxTxpwr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUlRbOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->m:I

    return v0
.end method

.method public getWorkMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->k:I

    return v0
.end method

.method public isEnableChangeTac()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->B:Z

    return v0
.end method

.method public isLte()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->C:Z

    return v0
.end method

.method public isTracing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->A:Z

    return v0
.end method

.method public setAirSync(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->l:I

    return-void
.end method

.method public setArfcn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->b:Ljava/lang/String;

    return-void
.end method

.method public setBandWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->q:I

    return-void
.end method

.method public setCellId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->g:I

    return-void
.end method

.method public setCfr(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->r:I

    return-void
.end method

.method public setCid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->z:J

    return-void
.end method

.method public setEnableChangeTac(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->B:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->D:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->f:Ljava/lang/String;

    return-void
.end method

.method public setLte(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->C:Z

    return-void
.end method

.method public setMaxTac(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->i:I

    return-void
.end method

.method public setMobRejectCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->x:I

    return-void
.end method

.method public setPa(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->v:I

    return-void
.end method

.method public setPci(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->c:Ljava/lang/String;

    return-void
.end method

.method public setPk(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->w:I

    return-void
.end method

.method public setPlmn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->a:Ljava/lang/String;

    return-void
.end method

.method public setPlmn1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->e:Ljava/lang/String;

    return-void
.end method

.method public setRedirect2LteArfcn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->y:I

    return-void
.end method

.method public setRejectCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->t:I

    return-void
.end method

.method public setRxLevMin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->u:I

    return-void
.end method

.method public setSplitArfcndl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->E:Ljava/lang/String;

    return-void
.end method

.method public setSsbBitmap(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->n:I

    return-void
.end method

.method public setStartTac(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->h:I

    return-void
.end method

.method public setStopCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->p:I

    return-void
.end method

.method public setSwapRf(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->s:I

    return-void
.end method

.method public setTimingOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->j:I

    return-void
.end method

.method public setTraceTacChangeDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->o:I

    return-void
.end method

.method public setTracing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->A:Z

    return-void
.end method

.method public setUeMaxTxpwr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->d:Ljava/lang/String;

    return-void
.end method

.method public setUlRbOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->m:I

    return-void
.end method

.method public setWorkMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->k:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TracePara{plmn=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', arfcn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', pci=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', ueMaxTxpwr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', plmn1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', imsi=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', cellId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startTac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxTac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timingOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", workMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", airSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ulRbOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ssbBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", traceTacChangeDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stopCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bandWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cfr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", swapRf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rejectCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rxLevMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mobRejectCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", redirect2LteArfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->z:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tracing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableChangeTac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', splitArfcndl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Bean/DW/TracePara;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
