.class public Lcom/dwdbsdk/Bean/DW/DWHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static headLength:I = 0x14


# instance fields
.field public a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(III)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/dwdbsdk/Bean/DW/DWHeader;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    const/4 v2, 0x2

    const/16 v4, -0x5b

    aput-byte v4, v0, v2

    const/4 v2, 0x3

    const/16 v4, 0x5a

    aput-byte v4, v0, v2

    .line 10
    invoke-static {p1}, Le/a;->a(I)[B

    move-result-object p1

    .line 11
    array-length v0, p1

    const/4 v2, 0x4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    aget-byte v5, p1, v4

    .line 12
    iget-object v6, p0, Lcom/dwdbsdk/Bean/DW/DWHeader;->a:[B

    aput-byte v5, v6, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p2}, Le/a;->a(I)[B

    move-result-object p1

    .line 16
    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-byte v4, p1, v0

    .line 17
    iget-object v5, p0, Lcom/dwdbsdk/Bean/DW/DWHeader;->a:[B

    aput-byte v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 21
    :cond_1
    invoke-static {p3}, Le/a;->a(I)[B

    move-result-object p1

    .line 22
    array-length p2, p1

    :goto_2
    if-ge v1, p2, :cond_2

    aget-byte p3, p1, v1

    .line 23
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/DWHeader;->a:[B

    aput-byte p3, v0, v2

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public getFooterMsg()[B
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x1t
        0x66t
        0x0t
        0x0t
    .end array-data
.end method

.method public getHeaderMsg()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Bean/DW/DWHeader;->a:[B

    return-object v0
.end method
