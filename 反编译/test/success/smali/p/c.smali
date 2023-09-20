.class public Lp/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/d;


# static fields
.field public static final A:I = 0x0

.field public static final B:I = 0x0

.field public static final C:I = 0x3

.field public static final D:I = 0x0

.field public static final E:I = 0x6

.field public static final F:I = 0x1

.field public static final G:I = 0x2

.field public static final H:I = 0x3

.field public static final I:I = 0x4

.field public static final J:I = 0x8

.field public static final K:I = 0xc

.field public static final L:I = 0x10

.field public static final M:I = 0x18

.field public static final N:I = 0x20

.field public static final O:I = 0x28

.field public static final z:I


# instance fields
.field public final x:[B

.field public volatile y:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lp/c;->x:[B

    return-void
.end method

.method public static final a(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static final b(B)J
    .locals 2

    and-int/lit16 p0, p0, 0xff

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Lp/c;->g(I)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lp/c;->x:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xc7

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public final a(ILp/f;)V
    .locals 6

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lp/f;->f()J

    move-result-wide v0

    :goto_0
    const/4 p2, 0x7

    :goto_1
    if-ltz p2, :cond_1

    .line 9
    iget-object v2, p0, Lp/c;->x:[B

    add-int v3, p1, p2

    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v2, v3

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Ljava/net/DatagramPacket;)V
    .locals 3

    .line 10
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    .line 12
    iget-object v1, p0, Lp/c;->x:[B

    array-length v2, v1

    if-le p1, v2, :cond_0

    .line 13
    array-length p1, v1

    :cond_0
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public a(Lp/f;)V
    .locals 1

    const/16 v0, 0x20

    .line 4
    invoke-virtual {p0, v0, p1}, Lp/c;->a(ILp/f;)V

    return-void
.end method

.method public b()I
    .locals 2

    .line 3
    iget-object v0, p0, Lp/c;->x:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    return v0
.end method

.method public b(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lp/c;->x:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x3f

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public b(Lp/f;)V
    .locals 1

    const/16 v0, 0x18

    .line 4
    invoke-virtual {p0, v0, p1}, Lp/c;->a(ILp/f;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lp/c;->m()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lp/c;->f()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_2

    :cond_0
    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 10
    invoke-virtual {p0}, Lp/c;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x2

    if-lt v1, v0, :cond_3

    .line 17
    invoke-virtual {p0}, Lp/c;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19
    :cond_3
    invoke-virtual {p0}, Lp/c;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lp/c;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp/c;->x:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    return-void
.end method

.method public c(Lp/f;)V
    .locals 1

    const/16 v0, 0x28

    .line 21
    invoke-virtual {p0, v0, p1}, Lp/c;->a(ILp/f;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp/c;->n()I

    move-result v0

    invoke-static {v0}, Lp/b;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lp/c;->x:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xf8

    and-int/lit8 p1, p1, 0x7

    or-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public d(Lp/f;)V
    .locals 1

    const/16 v0, 0x10

    .line 3
    invoke-virtual {p0, v0, p1}, Lp/c;->a(ILp/f;)V

    return-void
.end method

.method public declared-synchronized e()Ljava/net/DatagramPacket;
    .locals 3

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lp/c;->y:Ljava/net/DatagramPacket;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lp/c;->x:[B

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lp/c;->y:Ljava/net/DatagramPacket;

    .line 4
    iget-object v0, p0, Lp/c;->y:Ljava/net/DatagramPacket;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lp/c;->y:Ljava/net/DatagramPacket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp/c;->x:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    return-void
.end method

.method public f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lp/c;->x:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    invoke-static {v0}, Lp/c;->a(B)I

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 4

    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lp/c;->x:[B

    add-int/lit8 v2, v0, 0xc

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    ushr-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(I)I
    .locals 3

    .line 2
    iget-object v0, p0, Lp/c;->x:[B

    aget-byte v0, v0, p1

    invoke-static {v0}, Lp/c;->a(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lp/c;->x:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    invoke-static {v1}, Lp/c;->a(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lp/c;->x:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    invoke-static {v1}, Lp/c;->a(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lp/c;->x:[B

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v1, p1

    invoke-static {p1}, Lp/c;->a(B)I

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "NTP"

    return-object v0
.end method

.method public h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lp/c;->x:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lp/c;->a(B)I

    move-result v0

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final h(I)J
    .locals 5

    .line 2
    iget-object v0, p0, Lp/c;->x:[B

    aget-byte v0, v0, p1

    invoke-static {v0}, Lp/c;->b(B)J

    move-result-wide v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lp/c;->x:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v2, v2, v3

    invoke-static {v2}, Lp/c;->b(B)J

    move-result-wide v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lp/c;->x:[B

    add-int/lit8 v3, p1, 0x2

    aget-byte v2, v2, v3

    invoke-static {v2}, Lp/c;->b(B)J

    move-result-wide v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lp/c;->x:[B

    add-int/lit8 v3, p1, 0x3

    aget-byte v2, v2, v3

    invoke-static {v2}, Lp/c;->b(B)J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lp/c;->x:[B

    add-int/lit8 v3, p1, 0x4

    aget-byte v2, v2, v3

    invoke-static {v2}, Lp/c;->b(B)J

    move-result-wide v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lp/c;->x:[B

    add-int/lit8 v3, p1, 0x5

    aget-byte v2, v2, v3

    invoke-static {v2}, Lp/c;->b(B)J

    move-result-wide v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lp/c;->x:[B

    add-int/lit8 v3, p1, 0x6

    aget-byte v2, v2, v3

    invoke-static {v2}, Lp/c;->b(B)J

    move-result-wide v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lp/c;->x:[B

    add-int/lit8 p1, p1, 0x7

    aget-byte p1, v2, p1

    invoke-static {p1}, Lp/c;->b(B)J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public i()Lp/f;
    .locals 1

    const/16 v0, 0x18

    .line 1
    invoke-virtual {p0, v0}, Lp/c;->i(I)Lp/f;

    move-result-object v0

    return-object v0
.end method

.method public final i(I)Lp/f;
    .locals 3

    .line 2
    new-instance v0, Lp/f;

    invoke-virtual {p0, p1}, Lp/c;->h(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lp/f;-><init>(J)V

    return-object v0
.end method

.method public j()Lp/f;
    .locals 1

    const/16 v0, 0x28

    .line 2
    invoke-virtual {p0, v0}, Lp/c;->i(I)Lp/f;

    move-result-object v0

    return-object v0
.end method

.method public j(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp/c;->x:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    return-void
.end method

.method public k()I
    .locals 2

    .line 1
    iget-object v0, p0, Lp/c;->x:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public l()I
    .locals 1

    const/16 v0, 0xc

    .line 1
    invoke-virtual {p0, v0}, Lp/c;->g(I)I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    .line 1
    iget-object v0, p0, Lp/c;->x:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lp/c;->a(B)I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public n()I
    .locals 2

    .line 1
    iget-object v0, p0, Lp/c;->x:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lp/c;->a(B)I

    move-result v0

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public o()Lp/f;
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lp/c;->i(I)Lp/f;

    move-result-object v0

    return-object v0
.end method

.method public p()D
    .locals 4

    .line 1
    invoke-virtual {p0}, Lp/c;->t()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x4050624dd2f1a9fcL    # 65.536

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public q()D
    .locals 4

    .line 1
    invoke-virtual {p0}, Lp/c;->a()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x4050624dd2f1a9fcL    # 65.536

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public r()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lp/c;->t()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const-wide/32 v2, 0x10000

    .line 2
    div-long/2addr v0, v2

    return-wide v0
.end method

.method public s()Lp/f;
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0}, Lp/c;->i(I)Lp/f;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lp/c;->g(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[version:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lp/c;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", poll:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dispersion(ms):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->p()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", xmitTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp/c;->j()Lp/f;

    move-result-object v1

    invoke-virtual {v1}, Lp/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp/c;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lp/c;->x:[B

    const/16 v2, 0xc

    aget-byte v1, v1, v2

    invoke-static {v1}, Lp/c;->a(B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lp/c;->x:[B

    const/16 v3, 0xd

    aget-byte v2, v2, v3

    invoke-static {v2}, Lp/c;->a(B)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lp/c;->x:[B

    const/16 v3, 0xe

    aget-byte v2, v2, v3

    invoke-static {v2}, Lp/c;->a(B)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp/c;->x:[B

    const/16 v2, 0xf

    aget-byte v1, v1, v2

    invoke-static {v1}, Lp/c;->a(B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lp/c;->x:[B

    add-int/lit8 v3, v1, 0xc

    aget-byte v2, v2, v3

    int-to-char v2, v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
