.class public Lcom/dwdbsdk/Bean/DB/DBHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static headLength:I = 0x14


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFooter()[B
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x33t
        0x33t
        -0x5bt
        0x5at
    .end array-data
.end method

.method public static getHeader(II)[B
    .locals 8

    const/16 v0, 0x10

    new-array v0, v0, [B

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

    .line 7
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/MsgSn;->build()Lcom/dwdbsdk/Bean/DB/MsgSn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DB/MsgSn;->getMsgSn()I

    move-result v2

    invoke-static {v2}, Le/a;->a(I)[B

    move-result-object v2

    .line 8
    array-length v4, v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-byte v7, v2, v6

    .line 9
    aput-byte v7, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Le/a;->a(I)[B

    move-result-object p0

    .line 13
    array-length v2, p0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-byte v6, p0, v4

    .line 14
    aput-byte v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {p1}, Le/a;->a(I)[B

    move-result-object p0

    .line 18
    array-length p1, p0

    :goto_2
    if-ge v1, p1, :cond_2

    aget-byte v2, p0, v1

    .line 19
    aput-byte v2, v0, v5

    add-int/2addr v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method
