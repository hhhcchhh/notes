.class public Lcom/dwdbsdk/Bean/PaBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static i:Lcom/dwdbsdk/Bean/PaBean;


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

.method public static build()Lcom/dwdbsdk/Bean/PaBean;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/Bean/PaBean;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Bean/PaBean;->i:Lcom/dwdbsdk/Bean/PaBean;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/PaBean;

    invoke-direct {v1}, Lcom/dwdbsdk/Bean/PaBean;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Bean/PaBean;->i:Lcom/dwdbsdk/Bean/PaBean;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/Bean/PaBean;->i:Lcom/dwdbsdk/Bean/PaBean;

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getGpio1_en1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/PaBean;->a:I

    return v0
.end method

.method public getGpio2_en2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/PaBean;->b:I

    return v0
.end method

.method public getGpio3_bs3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/PaBean;->c:I

    return v0
.end method

.method public getGpio4_tddSw1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/PaBean;->d:I

    return v0
.end method

.method public getGpio5_bs1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/PaBean;->e:I

    return v0
.end method

.method public getGpio6_bs2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/PaBean;->f:I

    return v0
.end method

.method public getGpio7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/PaBean;->g:I

    return v0
.end method

.method public getGpio8_tddSw2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/PaBean;->h:I

    return v0
.end method

.method public setPaGpio(IIIIIIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Bean/PaBean;->a:I

    .line 2
    iput p2, p0, Lcom/dwdbsdk/Bean/PaBean;->b:I

    .line 3
    iput p3, p0, Lcom/dwdbsdk/Bean/PaBean;->c:I

    .line 4
    iput p4, p0, Lcom/dwdbsdk/Bean/PaBean;->d:I

    .line 5
    iput p5, p0, Lcom/dwdbsdk/Bean/PaBean;->e:I

    .line 6
    iput p6, p0, Lcom/dwdbsdk/Bean/PaBean;->f:I

    .line 7
    iput p7, p0, Lcom/dwdbsdk/Bean/PaBean;->g:I

    .line 8
    iput p8, p0, Lcom/dwdbsdk/Bean/PaBean;->h:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaBean{gpio1(en1)="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Bean/PaBean;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpio2(en2)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/PaBean;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpio3(bs3)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/PaBean;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpio4(tddSw1)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/PaBean;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpio5(bs1)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/PaBean;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpio6(bs2)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/PaBean;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpio7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/PaBean;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpio8(tddSw2)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Bean/PaBean;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
