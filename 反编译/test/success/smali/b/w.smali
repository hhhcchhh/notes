.class public Lb/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:I


# instance fields
.field public final a:[B

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/dwdbsdk/Bean/DW/DWHeader;->headLength:I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit16 v0, v0, 0x100

    sput v0, Lb/w;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lb/w;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lb/w;->a:[B

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lb/w;->b:I

    const/4 v1, 0x0

    .line 7
    :goto_0
    sget v2, Lb/w;->c:I

    if-ge v1, v2, :cond_0

    .line 8
    iget-object v2, p0, Lb/w;->a:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getHeaderMsg()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 12
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 13
    iget-object v3, p0, Lb/w;->a:[B

    aget-byte v4, v1, v2

    aput-byte v4, v3, v2

    .line 14
    iget v3, p0, Lb/w;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lb/w;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0, p2}, Lb/w;->a(I)V

    .line 18
    invoke-virtual {p0, p3}, Lb/w;->a(I)V

    .line 19
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 20
    invoke-virtual {p0, p4}, Lb/w;->a(Ljava/lang/String;)V

    .line 23
    :cond_2
    sget p2, Lb/w;->c:I

    add-int/lit8 p2, p2, -0x4

    iput p2, p0, Lb/w;->b:I

    .line 24
    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getFooterMsg()[B

    move-result-object p1

    .line 25
    array-length p2, p1

    :goto_2
    if-ge v0, p2, :cond_3

    aget-byte p3, p1, v0

    .line 26
    iget-object p4, p0, Lb/w;->a:[B

    iget v1, p0, Lb/w;->b:I

    aput-byte p3, p4, v1

    add-int/lit8 v1, v1, 0x1

    .line 27
    iput v1, p0, Lb/w;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
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
    iget-object v3, p0, Lb/w;->a:[B

    iget v4, p0, Lb/w;->b:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iput v4, p0, Lb/w;->b:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 7
    iget-object v3, p0, Lb/w;->a:[B

    iget v4, p0, Lb/w;->b:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 8
    iput v4, p0, Lb/w;->b:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    array-length v0, p1

    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 11
    array-length p1, p1

    sub-int/2addr v1, p1

    .line 12
    iget p1, p0, Lb/w;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Lb/w;->b:I

    :cond_1
    return-void
.end method

.method public a()[B
    .locals 1

    .line 13
    iget-object v0, p0, Lb/w;->a:[B

    return-object v0
.end method
