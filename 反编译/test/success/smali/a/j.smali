.class public La/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:I = 0x54

.field public static e:I = 0x18


# instance fields
.field public final a:I

.field public final b:[B

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILcom/dwdbsdk/Bean/DB/TxBean;Lcom/dwdbsdk/Bean/DB/TxBean;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/dwdbsdk/Bean/DB/TxBean;",
            "Lcom/dwdbsdk/Bean/DB/TxBean;",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/OrxBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/dwdbsdk/Bean/DB/DBHeader;->headLength:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    sget v2, La/j;->d:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, La/j;->e:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    iput v0, p0, La/j;->a:I

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, La/j;->b:[B

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    iget v3, p0, La/j;->a:I

    if-ge v2, v3, :cond_0

    .line 8
    iget-object v3, p0, La/j;->b:[B

    aput-byte v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iput v0, p0, La/j;->c:I

    .line 11
    invoke-static {v3, p1}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getHeader(II)[B

    move-result-object p1

    .line 12
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-byte v4, p1, v3

    .line 13
    iget-object v5, p0, La/j;->b:[B

    iget v6, p0, La/j;->c:I

    aput-byte v4, v5, v6

    add-int/lit8 v6, v6, 0x1

    .line 14
    iput v6, p0, La/j;->c:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0, v0}, La/j;->a(I)V

    if-eqz p3, :cond_5

    .line 19
    invoke-virtual {p3}, Lcom/dwdbsdk/Bean/DB/TxBean;->getLoFreq()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, La/j;->a(J)V

    .line 20
    invoke-virtual {p3}, Lcom/dwdbsdk/Bean/DB/TxBean;->getTimeOffset()I

    move-result p1

    invoke-virtual {p0, p1}, La/j;->a(I)V

    .line 21
    invoke-virtual {p3}, Lcom/dwdbsdk/Bean/DB/TxBean;->getScsType()I

    move-result p1

    invoke-virtual {p0, p1}, La/j;->a(I)V

    .line 22
    invoke-virtual {p3}, Lcom/dwdbsdk/Bean/DB/TxBean;->getSsbNum()I

    move-result p1

    invoke-virtual {p0, p1}, La/j;->a(I)V

    .line 23
    invoke-virtual {p3}, Lcom/dwdbsdk/Bean/DB/TxBean;->getDdsList()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    .line 25
    invoke-virtual {p3}, Lcom/dwdbsdk/Bean/DB/TxBean;->getSsbNum()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 26
    invoke-virtual {p0, v0}, La/j;->a(I)V

    goto :goto_3

    .line 28
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, La/j;->a(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 31
    :cond_3
    invoke-virtual {p3}, Lcom/dwdbsdk/Bean/DB/TxBean;->getArfcnList()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_5

    .line 33
    invoke-virtual {p3}, Lcom/dwdbsdk/Bean/DB/TxBean;->getSsbNum()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 34
    invoke-virtual {p0, v0}, La/j;->a(I)V

    goto :goto_5

    .line 36
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, La/j;->a(I)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 40
    :cond_5
    sget p1, La/j;->d:I

    add-int/lit8 p1, p1, 0x14

    iput p1, p0, La/j;->c:I

    if-eqz p4, :cond_9

    .line 42
    invoke-virtual {p4}, Lcom/dwdbsdk/Bean/DB/TxBean;->getLoFreq()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, La/j;->a(J)V

    .line 43
    invoke-virtual {p4}, Lcom/dwdbsdk/Bean/DB/TxBean;->getTimeOffset()I

    move-result p1

    invoke-virtual {p0, p1}, La/j;->a(I)V

    .line 44
    invoke-virtual {p4}, Lcom/dwdbsdk/Bean/DB/TxBean;->getScsType()I

    move-result p1

    invoke-virtual {p0, p1}, La/j;->a(I)V

    .line 45
    invoke-virtual {p4}, Lcom/dwdbsdk/Bean/DB/TxBean;->getSsbNum()I

    move-result p1

    invoke-virtual {p0, p1}, La/j;->a(I)V

    .line 46
    invoke-virtual {p4}, Lcom/dwdbsdk/Bean/DB/TxBean;->getDdsList()Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    :goto_6
    if-ge p3, v1, :cond_7

    .line 48
    invoke-virtual {p4}, Lcom/dwdbsdk/Bean/DB/TxBean;->getSsbNum()I

    move-result v2

    if-lt p3, v2, :cond_6

    .line 49
    invoke-virtual {p0, v0}, La/j;->a(I)V

    goto :goto_7

    .line 51
    :cond_6
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, La/j;->a(I)V

    :goto_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    .line 54
    :cond_7
    invoke-virtual {p4}, Lcom/dwdbsdk/Bean/DB/TxBean;->getArfcnList()Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    :goto_8
    if-ge p3, v1, :cond_9

    .line 56
    invoke-virtual {p4}, Lcom/dwdbsdk/Bean/DB/TxBean;->getSsbNum()I

    move-result v2

    if-lt p3, v2, :cond_8

    .line 57
    invoke-virtual {p0, v0}, La/j;->a(I)V

    goto :goto_9

    .line 59
    :cond_8
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, La/j;->a(I)V

    :goto_9
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    .line 63
    :cond_9
    sget p1, La/j;->d:I

    add-int/lit8 p3, p1, 0x14

    add-int/2addr p3, p1

    iput p3, p0, La/j;->c:I

    const/4 p1, 0x0

    .line 64
    :goto_a
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_a

    .line 65
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dwdbsdk/Bean/DB/OrxBean;

    invoke-virtual {p3}, Lcom/dwdbsdk/Bean/DB/OrxBean;->getArfcn()I

    move-result p3

    invoke-virtual {p0, p3}, La/j;->a(I)V

    .line 66
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dwdbsdk/Bean/DB/OrxBean;

    invoke-virtual {p3}, Lcom/dwdbsdk/Bean/DB/OrxBean;->getFreqCarrier()J

    move-result-wide p3

    invoke-virtual {p0, p3, p4}, La/j;->a(J)V

    .line 67
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dwdbsdk/Bean/DB/OrxBean;

    invoke-virtual {p3}, Lcom/dwdbsdk/Bean/DB/OrxBean;->getPk()I

    move-result p3

    invoke-virtual {p0, p3}, La/j;->a(I)V

    .line 68
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dwdbsdk/Bean/DB/OrxBean;

    invoke-virtual {p3}, Lcom/dwdbsdk/Bean/DB/OrxBean;->getPa()I

    move-result p3

    invoke-virtual {p0, p3}, La/j;->a(I)V

    .line 69
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dwdbsdk/Bean/DB/OrxBean;

    invoke-virtual {p3}, Lcom/dwdbsdk/Bean/DB/OrxBean;->getTimeOffset()I

    move-result p3

    invoke-virtual {p0, p3}, La/j;->a(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 71
    :cond_a
    iget p1, p0, La/j;->a:I

    sub-int/2addr p1, v1

    iput p1, p0, La/j;->c:I

    .line 72
    invoke-virtual {p0, p2}, La/j;->a(I)V

    .line 73
    iget p1, p0, La/j;->a:I

    add-int/lit8 p1, p1, -0x4

    iput p1, p0, La/j;->c:I

    .line 74
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getFooter()[B

    move-result-object p1

    .line 75
    array-length p2, p1

    :goto_b
    if-ge v0, p2, :cond_b

    aget-byte p3, p1, v0

    .line 76
    iget-object p4, p0, La/j;->b:[B

    iget p5, p0, La/j;->c:I

    aput-byte p3, p4, p5

    add-int/lit8 p5, p5, 0x1

    .line 77
    iput p5, p0, La/j;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_b
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
    iget-object v3, p0, La/j;->b:[B

    iget v4, p0, La/j;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iput v4, p0, La/j;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 5
    invoke-static {p1, p2}, Le/a;->a(J)[B

    move-result-object p1

    .line 6
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p1, v0

    .line 7
    iget-object v2, p0, La/j;->b:[B

    iget v3, p0, La/j;->c:I

    aput-byte v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 8
    iput v3, p0, La/j;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()[B
    .locals 1

    .line 9
    iget-object v0, p0, La/j;->b:[B

    return-object v0
.end method
