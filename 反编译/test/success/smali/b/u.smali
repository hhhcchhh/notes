.class public Lb/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/DWHeader;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/dwdbsdk/Bean/DW/DWHeader;->headLength:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lb/u;->a:I

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, Lb/u;->b:[B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lb/u;->c:I

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget v2, p0, Lb/u;->a:I

    if-ge v1, v2, :cond_0

    .line 9
    iget-object v2, p0, Lb/u;->b:[B

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
    iget-object v3, p0, Lb/u;->b:[B

    aget-byte v4, v1, v2

    aput-byte v4, v3, v2

    .line 15
    iget v3, p0, Lb/u;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lb/u;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0, p2}, Lb/u;->a(Ljava/lang/String;)V

    .line 20
    iget p2, p0, Lb/u;->a:I

    add-int/lit8 p2, p2, -0x4

    iput p2, p0, Lb/u;->c:I

    .line 21
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getFooterMsg()[B

    move-result-object p1

    .line 22
    array-length p2, p1

    :goto_2
    if-ge v0, p2, :cond_2

    aget-byte v1, p1, v0

    .line 23
    iget-object v2, p0, Lb/u;->b:[B

    iget v3, p0, Lb/u;->c:I

    aput-byte v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 24
    iput v3, p0, Lb/u;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_4

    .line 2
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_1
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "3"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :pswitch_0
    const-string v4, "3a"

    goto :goto_2

    :pswitch_1
    const-string v4, "2e"

    goto :goto_2

    :pswitch_2
    const-string v4, "2d"

    goto :goto_2

    :pswitch_3
    const-string v4, "20"

    .line 34
    :goto_2
    iget-object v5, p0, Lb/u;->b:[B

    iget v6, p0, Lb/u;->c:I

    const/16 v7, 0x10

    invoke-static {v4, v7}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v5, v6

    .line 35
    iget v4, p0, Lb/u;->c:I

    add-int/2addr v4, v1

    iput v4, p0, Lb/u;->c:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_4
    iget-object p1, p0, Lb/u;->b:[B

    iget v2, p0, Lb/u;->c:I

    aput-byte v0, p1, v2

    add-int/2addr v2, v1

    .line 40
    iput v2, p0, Lb/u;->c:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_3
        0x2d -> :sswitch_2
        0x2e -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()[B
    .locals 1

    .line 41
    iget-object v0, p0, Lb/u;->b:[B

    return-object v0
.end method
