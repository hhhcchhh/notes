.class public abstract Lt/i;
.super Lt/f;
.source "SourceFile"


# static fields
.field public static final m:[Ljava/lang/String;

.field public static final n:[[B


# instance fields
.field public final k:I

.field public final l:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "netascii"

    const-string v1, "octet"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lt/i;->m:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x9

    new-array v1, v1, [B

    .line 8
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lt/i;->n:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6et
        0x65t
        0x74t
        0x61t
        0x73t
        0x63t
        0x69t
        0x69t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6ft
        0x63t
        0x74t
        0x65t
        0x74t
        0x0t
    .end array-data
.end method

.method public constructor <init>(ILjava/net/DatagramPacket;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt/g;
        }
    .end annotation

    .line 5
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lt/f;-><init>(ILjava/net/InetAddress;I)V

    .line 7
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lt/f;->c()I

    move-result v0

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    if-ne v0, v2, :cond_6

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getLength()I

    move-result p2

    const/4 v2, 0x2

    :goto_0
    if-ge v2, p2, :cond_0

    .line 18
    aget-byte v3, p1, v2

    if-eqz v3, :cond_0

    int-to-char v3, v3

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lt/i;->l:Ljava/lang/String;

    if-ge v2, p2, :cond_5

    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/2addr v2, v1

    :goto_1
    if-ge v2, p2, :cond_1

    .line 32
    aget-byte v1, p1, v2

    if-eqz v1, :cond_1

    int-to-char v1, v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 39
    sget-object p2, Lt/i;->m:[Ljava/lang/String;

    array-length p2, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_3

    .line 44
    sget-object v1, Lt/i;->m:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 51
    :cond_3
    :goto_3
    iput v3, p0, Lt/i;->k:I

    if-ge v0, p2, :cond_4

    return-void

    .line 55
    :cond_4
    new-instance p2, Lt/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized TFTP transfer mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt/g;-><init>(Ljava/lang/String;)V

    throw p2

    .line 56
    :cond_5
    new-instance p1, Lt/g;

    const-string p2, "Bad filename and mode format."

    invoke-direct {p1, p2}, Lt/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_6
    new-instance p1, Lt/g;

    const-string p2, "TFTP operator code does not match type."

    invoke-direct {p1, p2}, Lt/g;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public constructor <init>(Ljava/net/InetAddress;IILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1, p2}, Lt/f;-><init>(ILjava/net/InetAddress;I)V

    .line 3
    iput-object p4, p0, Lt/i;->l:Ljava/lang/String;

    .line 4
    iput p5, p0, Lt/i;->k:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .locals 6

    .line 1
    iget-object v0, p0, Lt/i;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    sget-object v1, Lt/i;->n:[[B

    iget v2, p0, Lt/i;->k:I

    aget-object v2, v1, v2

    array-length v2, v2

    const/4 v3, 0x0

    .line 4
    aput-byte v3, p2, v3

    .line 5
    iget v4, p0, Lt/f;->a:I

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, p2, v5

    .line 6
    iget-object v4, p0, Lt/i;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v3, p2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v0, 0x2

    .line 7
    aput-byte v3, p2, v4

    .line 8
    iget v4, p0, Lt/i;->k:I

    aget-object v1, v1, v4

    add-int/lit8 v4, v0, 0x3

    invoke-static {v1, v3, p2, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v1, p0, Lt/f;->c:Ljava/net/InetAddress;

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 12
    iget v1, p0, Lt/f;->b:I

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 13
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x3

    .line 14
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    return-object p1
.end method

.method public final d()Ljava/net/DatagramPacket;
    .locals 8

    .line 1
    iget-object v0, p0, Lt/i;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    sget-object v1, Lt/i;->n:[[B

    iget v2, p0, Lt/i;->k:I

    aget-object v2, v1, v2

    array-length v2, v2

    add-int v3, v0, v2

    add-int/lit8 v3, v3, 0x4

    .line 4
    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 5
    aput-byte v5, v4, v5

    .line 6
    iget v6, p0, Lt/f;->a:I

    int-to-byte v6, v6

    const/4 v7, 0x1

    aput-byte v6, v4, v7

    .line 7
    iget-object v6, p0, Lt/i;->l:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v5, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v0, 0x2

    .line 8
    aput-byte v5, v4, v6

    .line 9
    iget v6, p0, Lt/i;->k:I

    aget-object v1, v1, v6

    add-int/lit8 v0, v0, 0x3

    invoke-static {v1, v5, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lt/f;->c:Ljava/net/InetAddress;

    iget v2, p0, Lt/f;->b:I

    invoke-direct {v0, v4, v3, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lt/i;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lt/i;->k:I

    return v0
.end method
