.class public Ls/e;
.super Lorg/apache/commons/net/j;
.source "SourceFile"


# static fields
.field public static final A:[B

.field public static final j:Z = false

.field public static final k:Z = false

.field public static final l:[B

.field public static final m:[B

.field public static final n:[B

.field public static final o:[B

.field public static final p:[B

.field public static final q:[B

.field public static final r:I = 0x1

.field public static final s:I = 0x2

.field public static final t:I = 0x4

.field public static final u:I = 0x8

.field public static final v:I = 0x17

.field public static final w:I = 0x18

.field public static final x:I = 0x1

.field public static final y:I

.field public static final z:[B


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I

.field public d:Ljava/lang/String;

.field public final e:[Ls/l;

.field public final f:Ljava/lang/Object;

.field public volatile g:Z

.field public volatile h:Ljava/io/OutputStream;

.field public i:Ls/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Ls/e;->l:[B

    new-array v1, v0, [B

    .line 5
    fill-array-data v1, :array_1

    sput-object v1, Ls/e;->m:[B

    new-array v1, v0, [B

    .line 9
    fill-array-data v1, :array_2

    sput-object v1, Ls/e;->n:[B

    new-array v1, v0, [B

    .line 13
    fill-array-data v1, :array_3

    sput-object v1, Ls/e;->o:[B

    new-array v1, v0, [B

    .line 17
    fill-array-data v1, :array_4

    sput-object v1, Ls/e;->p:[B

    new-array v1, v0, [B

    .line 21
    fill-array-data v1, :array_5

    sput-object v1, Ls/e;->q:[B

    new-array v1, v0, [B

    .line 52
    fill-array-data v1, :array_6

    sput-object v1, Ls/e;->z:[B

    new-array v0, v0, [B

    .line 74
    fill-array-data v0, :array_7

    sput-object v0, Ls/e;->A:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x3t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x1t
        -0x5t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x1t
        -0x4t
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x1t
        -0x6t
    .end array-data

    nop

    :array_5
    .array-data 1
        -0x1t
        -0x10t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x18t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x1t
        -0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ls/e;->d:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ls/e;->f:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Ls/e;->g:Z

    .line 35
    iput-object v0, p0, Ls/e;->h:Ljava/io/OutputStream;

    .line 40
    iput-object v0, p0, Ls/e;->i:Ls/j;

    const/16 v0, 0x17

    .line 46
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->setDefaultPort(I)V

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 47
    iput-object v1, p0, Ls/e;->a:[I

    new-array v1, v0, [I

    .line 48
    iput-object v1, p0, Ls/e;->b:[I

    new-array v1, v0, [I

    .line 49
    iput-object v1, p0, Ls/e;->c:[I

    new-array v0, v0, [Ls/l;

    .line 50
    iput-object v0, p0, Ls/e;->e:[Ls/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lorg/apache/commons/net/j;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Ls/e;->d:Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ls/e;->f:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p0, Ls/e;->g:Z

    .line 85
    iput-object v0, p0, Ls/e;->h:Ljava/io/OutputStream;

    .line 90
    iput-object v0, p0, Ls/e;->i:Ls/j;

    const/16 v0, 0x17

    .line 112
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->setDefaultPort(I)V

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 113
    iput-object v1, p0, Ls/e;->a:[I

    new-array v1, v0, [I

    .line 114
    iput-object v1, p0, Ls/e;->b:[I

    new-array v1, v0, [I

    .line 115
    iput-object v1, p0, Ls/e;->c:[I

    .line 116
    iput-object p1, p0, Ls/e;->d:Ljava/lang/String;

    new-array p1, v0, [Ls/l;

    .line 117
    iput-object p1, p0, Ls/e;->e:[Ls/l;

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls/e;->h:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    .line 11
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Ls/e;->h:Ljava/io/OutputStream;

    :cond_1
    :goto_0
    return-void
.end method

.method public B(I)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ls/e;->C(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ls/e;->j(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Ls/e;->h:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 9
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 10
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Ls/e;->h:Ljava/io/OutputStream;

    :cond_1
    :goto_0
    return-void
.end method

.method public C(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls/e;->c:[I

    aget p1, v0, p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public D(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls/e;->C(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public E(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls/e;->c:[I

    aget p1, v0, p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls/e;->E(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public G(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls/b;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ls/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Ls/e;->e:[Ls/l;

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 11
    aput-object v2, v0, p1

    .line 13
    invoke-virtual {v1}, Ls/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Ls/e;->i(I)V

    .line 18
    :cond_0
    invoke-virtual {v1}, Ls/l;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p0, p1}, Ls/e;->g(I)V

    :cond_1
    return-void

    .line 21
    :cond_2
    new-instance v0, Ls/b;

    const-string v1, "Unregistered option"

    invoke-direct {v0, v1, p1}, Ls/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 42
    :cond_3
    new-instance v0, Ls/b;

    const-string v1, "Invalid Option Code"

    invoke-direct {v0, v1, p1}, Ls/b;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public _connectAction_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    .line 1
    iget-object v2, p0, Ls/e;->a:[I

    aput v0, v2, v1

    .line 2
    iget-object v2, p0, Ls/e;->b:[I

    aput v0, v2, v1

    .line 3
    iget-object v2, p0, Ls/e;->c:[I

    aput v0, v2, v1

    .line 4
    iget-object v2, p0, Ls/e;->e:[Ls/l;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2, v0}, Ls/l;->c(Z)V

    .line 7
    iget-object v2, p0, Ls/e;->e:[Ls/l;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ls/l;->f(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-super {p0}, Lorg/apache/commons/net/j;->_connectAction_()V

    .line 13
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    .line 14
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    :goto_1
    if-ge v0, v2, :cond_4

    .line 19
    iget-object v1, p0, Ls/e;->e:[Ls/l;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {v1}, Ls/l;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    iget-object v1, p0, Ls/e;->e:[Ls/l;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ls/l;->f()I

    move-result v1

    invoke-virtual {p0, v1}, Ls/e;->h(I)V

    .line 26
    :cond_2
    iget-object v1, p0, Ls/e;->e:[Ls/l;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ls/l;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 28
    iget-object v1, p0, Ls/e;->e:[Ls/l;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ls/l;->f()I

    move-result v1

    invoke-virtual {p0, v1}, Ls/e;->f(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-boolean v0, p0, Ls/e;->g:Z

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Ls/e;->f:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 48
    :try_start_1
    iput-boolean v1, p0, Ls/e;->g:Z

    .line 49
    iget-object v1, p0, Ls/e;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 50
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 42
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 43
    iget-object p1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls/e;->i:Ls/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 3
    invoke-interface {v0, v1, p1}, Ls/j;->a(II)V

    :cond_0
    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 0

    .line 110
    iput-object p1, p0, Ls/e;->h:Ljava/io/OutputStream;

    return-void
.end method

.method public a(Ls/j;)V
    .locals 0

    .line 111
    iput-object p1, p0, Ls/e;->i:Ls/j;

    return-void
.end method

.method public a(Ls/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls/b;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Ls/l;->f()I

    move-result v0

    .line 83
    invoke-static {v0}, Ls/k;->b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, p0, Ls/e;->e:[Ls/l;

    aget-object v2, v1, v0

    if-nez v2, :cond_2

    .line 87
    aput-object p1, v1, v0

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p1}, Ls/l;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Ls/e;->h(I)V

    .line 95
    :cond_0
    invoke-virtual {p1}, Ls/l;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p0, v0}, Ls/e;->f(I)V

    :cond_1
    return-void

    .line 103
    :cond_2
    new-instance p1, Ls/b;

    const-string v1, "Already registered option"

    invoke-direct {p1, v1, v0}, Ls/b;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 109
    :cond_3
    new-instance p1, Ls/b;

    const-string v1, "Invalid Option Code"

    invoke-direct {p1, v1, v0}, Ls/b;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public final declared-synchronized a([I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 27
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    sget-object v1, Ls/e;->p:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 29
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    int-to-byte v2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 33
    iget-object v3, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 35
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    sget-object v0, Ls/e;->q:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 40
    iget-object p1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public a([II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_1

    .line 4
    iget-object v0, p0, Ls/e;->e:[Ls/l;

    const/4 v1, 0x0

    aget v1, p1, v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Ls/l;->a([II)[I

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Ls/e;->a([I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    const/16 p2, 0x18

    if-ne v1, p2, :cond_1

    .line 23
    aget p1, p1, v0

    if-ne p1, v0, :cond_1

    .line 26
    invoke-virtual {p0}, Ls/e;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Ls/e;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 55
    :try_start_1
    iput-boolean v1, p0, Ls/e;->g:Z

    .line 56
    iget-object v2, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    sget-object v3, Ls/e;->A:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 57
    iget-object v2, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 58
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    iget-object v2, p0, Ls/e;->f:Ljava/lang/Object;

    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 60
    iget-boolean p1, p0, Ls/e;->g:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 63
    iput-boolean p2, p0, Ls/e;->g:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 69
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    :catchall_0
    move-exception p1

    .line 70
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 81
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Ls/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    sget-object v1, Ls/e;->p:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 85
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    sget-object v1, Ls/e;->z:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 86
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    iget-object v1, p0, Ls/e;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCharsetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 87
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    sget-object v1, Ls/e;->q:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 88
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls/e;->i:Ls/j;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v1, p1}, Ls/j;->a(II)V

    .line 12
    :cond_0
    iget-object v0, p0, Ls/e;->e:[Ls/l;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Ls/l;->a()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 22
    iget-object v0, p0, Ls/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v2, p0, Ls/e;->b:[I

    aget v3, v2, p1

    if-lez v3, :cond_3

    sub-int/2addr v3, v1

    .line 34
    aput v3, v2, p1

    if-lez v3, :cond_3

    .line 35
    invoke-virtual {p0, p1}, Ls/e;->E(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    iget-object v2, p0, Ls/e;->b:[I

    aget v3, v2, p1

    sub-int/2addr v3, v1

    aput v3, v2, p1

    .line 41
    :cond_3
    iget-object v2, p0, Ls/e;->b:[I

    aget v2, v2, p1

    if-nez v2, :cond_5

    .line 43
    invoke-virtual {p0, p1}, Ls/e;->m(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {p0, p1}, Ls/e;->w(I)V

    .line 58
    invoke-virtual {p0, p1}, Ls/e;->q(I)V

    goto :goto_1

    .line 62
    :cond_4
    iget-object v0, p0, Ls/e;->b:[I

    aget v2, v0, p1

    add-int/2addr v2, v1

    aput v2, v0, p1

    .line 63
    invoke-virtual {p0, p1}, Ls/e;->r(I)V

    .line 81
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Ls/e;->y(I)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Ls/e;->h:Ljava/io/OutputStream;

    return-void
.end method

.method public c(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls/e;->i:Ls/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3
    invoke-interface {v0, v1, p1}, Ls/j;->a(II)V

    .line 7
    :cond_0
    iget-object v0, p0, Ls/e;->b:[I

    aget v1, v0, p1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 9
    aput v1, v0, p1

    if-lez v1, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Ls/e;->F(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Ls/e;->b:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 16
    :cond_1
    iget-object v0, p0, Ls/e;->b:[I

    aget v0, v0, p1

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Ls/e;->l(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {p0, p1}, Ls/e;->E(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Ls/e;->l(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    :cond_2
    invoke-virtual {p0, p1}, Ls/e;->r(I)V

    .line 33
    :cond_3
    invoke-virtual {p0, p1}, Ls/e;->x(I)V

    .line 37
    :cond_4
    invoke-virtual {p0, p1}, Ls/e;->z(I)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Ls/e;->i:Ls/j;

    return-void
.end method

.method public d(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls/e;->i:Ls/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 3
    invoke-interface {v0, v1, p1}, Ls/j;->a(II)V

    .line 11
    :cond_0
    iget-object v0, p0, Ls/e;->e:[Ls/l;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Ls/l;->b()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Ls/e;->a:[I

    aget v2, v1, p1

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 19
    aput v2, v1, p1

    if-lez v2, :cond_2

    .line 20
    invoke-virtual {p0, p1}, Ls/e;->C(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    iget-object v1, p0, Ls/e;->a:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p1

    .line 26
    :cond_2
    iget-object v1, p0, Ls/e;->a:[I

    aget v1, v1, p1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Ls/e;->k(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {p0, p1}, Ls/e;->u(I)V

    .line 41
    invoke-virtual {p0, p1}, Ls/e;->o(I)V

    goto :goto_1

    .line 45
    :cond_3
    iget-object v0, p0, Ls/e;->a:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 46
    invoke-virtual {p0, p1}, Ls/e;->p(I)V

    .line 50
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Ls/e;->s(I)V

    return-void
.end method

.method public e(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls/e;->i:Ls/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 3
    invoke-interface {v0, v1, p1}, Ls/j;->a(II)V

    .line 8
    :cond_0
    iget-object v0, p0, Ls/e;->a:[I

    aget v1, v0, p1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 10
    aput v1, v0, p1

    if-lez v1, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Ls/e;->D(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Ls/e;->a:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 17
    :cond_1
    iget-object v0, p0, Ls/e;->a:[I

    aget v0, v0, p1

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Ls/e;->j(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {p0, p1}, Ls/e;->C(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Ls/e;->j(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    :cond_2
    invoke-virtual {p0, p1}, Ls/e;->p(I)V

    .line 34
    :cond_3
    invoke-virtual {p0, p1}, Ls/e;->v(I)V

    .line 38
    :cond_4
    invoke-virtual {p0, p1}, Ls/e;->t(I)V

    return-void
.end method

.method public final declared-synchronized f(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ls/e;->a:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ls/e;->C(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ls/e;->j(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    .line 6
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Ls/e;->u(I)V

    .line 7
    iget-object v0, p0, Ls/e;->a:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 8
    invoke-virtual {p0, p1}, Ls/e;->o(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ls/e;->a:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ls/e;->D(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ls/e;->k(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    .line 6
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Ls/e;->v(I)V

    .line 7
    iget-object v0, p0, Ls/e;->a:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 8
    invoke-virtual {p0, p1}, Ls/e;->p(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ls/e;->b:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ls/e;->E(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ls/e;->l(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    .line 6
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Ls/e;->w(I)V

    .line 7
    iget-object v0, p0, Ls/e;->a:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 8
    invoke-virtual {p0, p1}, Ls/e;->q(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ls/e;->b:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ls/e;->F(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ls/e;->m(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    .line 6
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Ls/e;->x(I)V

    .line 7
    iget-object v0, p0, Ls/e;->a:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 8
    invoke-virtual {p0, p1}, Ls/e;->r(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public j(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls/e;->c:[I

    aget p1, v0, p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls/e;->j(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public l(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls/e;->c:[I

    aget p1, v0, p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls/e;->l(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final declared-synchronized n(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 4
    invoke-virtual {p0, p1}, Ls/e;->B(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized o(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    sget-object v1, Ls/e;->l:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 5
    iget-object p1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized p(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    sget-object v1, Ls/e;->m:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 5
    iget-object p1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized q(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    sget-object v1, Ls/e;->n:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 5
    iget-object p1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized r(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    sget-object v1, Ls/e;->o:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 5
    iget-object p1, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public s(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls/e;->c:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    .line 4
    invoke-virtual {p0, p1}, Ls/e;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Ls/e;->e:[Ls/l;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ls/l;->c(Z)V

    .line 10
    iget-object v0, p0, Ls/e;->e:[Ls/l;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ls/l;->i()[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Ls/e;->a([I)V

    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls/e;->c:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x3

    aput v1, v0, p1

    .line 4
    iget-object v0, p0, Ls/e;->e:[Ls/l;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ls/l;->c(Z)V

    :cond_0
    return-void
.end method

.method public u(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls/e;->c:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x8

    aput v1, v0, p1

    return-void
.end method

.method public v(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls/e;->c:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x9

    aput v1, v0, p1

    return-void
.end method

.method public w(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls/e;->c:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x4

    aput v1, v0, p1

    return-void
.end method

.method public x(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls/e;->c:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x5

    aput v1, v0, p1

    return-void
.end method

.method public y(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls/e;->c:[I

    aget v1, v0, p1

    const/4 v2, 0x1

    or-int/2addr v1, v2

    aput v1, v0, p1

    .line 4
    invoke-virtual {p0, p1}, Ls/e;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Ls/e;->e:[Ls/l;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, v2}, Ls/l;->f(Z)V

    .line 10
    iget-object v0, p0, Ls/e;->e:[Ls/l;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ls/l;->h()[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Ls/e;->a([I)V

    :cond_0
    return-void
.end method

.method public z(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls/e;->c:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x2

    aput v1, v0, p1

    .line 4
    iget-object v0, p0, Ls/e;->e:[Ls/l;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ls/l;->f(Z)V

    :cond_0
    return-void
.end method
