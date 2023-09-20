.class public Lb/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/DWHeader;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/dwdbsdk/Bean/DW/DWHeader;->headLength:I

    iput v0, p0, Lb/h;->a:I

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, Lb/h;->b:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget v2, p0, Lb/h;->a:I

    if-ge v1, v2, :cond_0

    .line 8
    iget-object v2, p0, Lb/h;->b:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getHeaderMsg()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 12
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 13
    iget-object v4, p0, Lb/h;->b:[B

    aget-byte v5, v1, v2

    aput-byte v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getFooterMsg()[B

    move-result-object p1

    .line 18
    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_2

    aget-byte v2, p1, v0

    .line 19
    iget-object v4, p0, Lb/h;->b:[B

    aput-byte v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h;->b:[B

    return-object v0
.end method
