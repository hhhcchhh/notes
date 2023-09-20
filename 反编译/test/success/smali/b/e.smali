.class public Lb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/DWHeader;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/dwdbsdk/Bean/DW/DWHeader;->headLength:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lb/e;->a:I

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, Lb/e;->b:[B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lb/e;->c:I

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget v2, p0, Lb/e;->a:I

    if-ge v1, v2, :cond_0

    .line 9
    iget-object v2, p0, Lb/e;->b:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getHeaderMsg()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 13
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 14
    iget-object v3, p0, Lb/e;->b:[B

    aget-byte v4, v1, v2

    aput-byte v4, v3, v2

    .line 15
    iget v3, p0, Lb/e;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lb/e;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_1
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/PaBean;->getGpio1_en1()I

    move-result v1

    invoke-virtual {p0, v1}, Lb/e;->a(I)V

    .line 19
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/PaBean;->getGpio2_en2()I

    move-result v1

    invoke-virtual {p0, v1}, Lb/e;->a(I)V

    .line 20
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/PaBean;->getGpio3_bs3()I

    move-result v1

    invoke-virtual {p0, v1}, Lb/e;->a(I)V

    .line 21
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/PaBean;->getGpio4_tddSw1()I

    move-result v1

    invoke-virtual {p0, v1}, Lb/e;->a(I)V

    .line 22
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/PaBean;->getGpio5_bs1()I

    move-result v1

    invoke-virtual {p0, v1}, Lb/e;->a(I)V

    .line 23
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/PaBean;->getGpio6_bs2()I

    move-result v1

    invoke-virtual {p0, v1}, Lb/e;->a(I)V

    .line 24
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/PaBean;->getGpio7()I

    move-result v1

    invoke-virtual {p0, v1}, Lb/e;->a(I)V

    .line 25
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/PaBean;->getGpio8_tddSw2()I

    move-result v1

    invoke-virtual {p0, v1}, Lb/e;->a(I)V

    .line 27
    iget v1, p0, Lb/e;->a:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lb/e;->c:I

    .line 28
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getFooterMsg()[B

    move-result-object p1

    .line 29
    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_2

    aget-byte v2, p1, v0

    .line 30
    iget-object v3, p0, Lb/e;->b:[B

    iget v4, p0, Lb/e;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 31
    iput v4, p0, Lb/e;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    invoke-static {p1}, Le/a;->a(I)[B

    move-result-object p1

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 3
    iget-object v3, p0, Lb/e;->b:[B

    iget v4, p0, Lb/e;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iput v4, p0, Lb/e;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()[B
    .locals 1

    .line 5
    iget-object v0, p0, Lb/e;->b:[B

    return-object v0
.end method
