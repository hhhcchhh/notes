.class public final Ln/l;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ln/l;->a:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 3
    iget v1, p0, Ln/l;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln/l;->a:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 3
    iput v1, p0, Ln/l;->a:I

    return v2

    .line 7
    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v4, 0x1

    const/16 v5, 0xd

    if-eq v0, v2, :cond_2

    if-eq v0, v5, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iput v4, p0, Ln/l;->a:I

    return v5

    .line 15
    :cond_2
    iget v2, p0, Ln/l;->a:I

    if-eq v2, v4, :cond_3

    .line 17
    iput v3, p0, Ln/l;->a:I

    return v5

    .line 22
    :cond_3
    :goto_0
    iput v1, p0, Ln/l;->a:I

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ln/l;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 24
    :cond_0
    invoke-virtual {p0}, Ln/l;->available()I

    move-result v1

    if-le p3, v1, :cond_1

    move p3, v1

    :cond_1
    if-ge p3, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p3

    .line 35
    :goto_0
    invoke-virtual {p0}, Ln/l;->read()I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_3

    return v1

    :cond_3
    move v2, p2

    :goto_1
    add-int/lit8 v3, v2, 0x1

    int-to-byte p3, p3

    .line 43
    aput-byte p3, p1, v2

    add-int/2addr v0, v1

    if-lez v0, :cond_5

    .line 45
    invoke-virtual {p0}, Ln/l;->read()I

    move-result p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    :goto_2
    sub-int/2addr v3, p2

    return v3
.end method
