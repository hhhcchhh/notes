.class public Lcom/dwdbsdk/Bean/DW/SupportArfcn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 1
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/dwdbsdk/Bean/DW/SupportArfcn;->a:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7b49e
        0x0
        -0x2
        -0x5
    .end array-data

    :array_1
    .array-data 4
        0x7d38e
        0x0
        -0x2
        -0x5
    .end array-data

    :array_2
    .array-data 4
        0x7e37e
        0x0
        -0x2
        -0x5
    .end array-data

    :array_3
    .array-data 4
        0x7bd0e
        0x0
        -0x2
        -0x5
    .end array-data

    :array_4
    .array-data 4
        0x8053e
        0x0
        -0x2
        -0x5
    .end array-data

    :array_5
    .array-data 4
        0xb09a0
        0x0
        -0x2
        -0x5
    .end array-data

    :array_6
    .array-data 4
        0x9ac80
        -0x4
        -0x7
        -0xb
    .end array-data

    :array_7
    .array-data 4
        0x99240
        -0x2
        -0x5
        -0x9
    .end array-data

    :array_8
    .array-data 4
        0x684f2
        -0x2
        -0x5
        -0x9
    .end array-data

    :array_9
    .array-data 4
        0x25cba
        -0x2
        -0x5
        -0x9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static support(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    sget-object v2, Lcom/dwdbsdk/Bean/DW/SupportArfcn;->a:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, v2, v1

    aget v2, v2, v0

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
