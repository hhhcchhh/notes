.class public Lch/ethz/ssh2/KnownHosts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;
    }
.end annotation


# static fields
.field public static final HOSTKEY_HAS_CHANGED:I = 0x2

.field public static final HOSTKEY_IS_NEW:I = 0x1

.field public static final HOSTKEY_IS_OK:I


# instance fields
.field private publicKeys:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lch/ethz/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lch/ethz/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 27
    invoke-direct {p0, p1}, Lch/ethz/ssh2/KnownHosts;->initialize(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lch/ethz/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 12
    invoke-direct {p0, p1}, Lch/ethz/ssh2/KnownHosts;->initialize([C)V

    return-void
.end method

.method public static final addHostkeyToFile(Ljava/io/File;[Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 7
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_1

    const/16 p1, 0x20

    .line 16
    invoke-virtual {v0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 17
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 19
    invoke-static {p3}, Lch/ethz/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    const-string p1, "\n"

    .line 20
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p1

    .line 24
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string p3, "rw"

    invoke-direct {p2, p0, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 30
    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 31
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    const/16 p3, 0xa

    if-eq p0, p3, :cond_0

    .line 33
    invoke-virtual {p2, p3}, Ljava/io/RandomAccessFile;->write(I)V

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 37
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    const/16 v2, 0x2c

    .line 38
    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(I)V

    .line 39
    :cond_2
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 41
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need at least one hostname specification"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private final checkHashed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "|1|"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x7c

    const/4 v2, 0x3

    .line 4
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    return v1

    .line 9
    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lch/ethz/ssh2/crypto/Base64;->decode([C)[B

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lch/ethz/ssh2/crypto/Base64;->decode([C)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    new-instance v2, Lch/ethz/ssh2/crypto/digest/SHA1;

    invoke-direct {v2}, Lch/ethz/ssh2/crypto/digest/SHA1;-><init>()V

    .line 27
    array-length v4, v0

    invoke-virtual {v2}, Lch/ethz/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result v2

    if-eq v4, v2, :cond_2

    return v1

    .line 30
    :cond_2
    invoke-static {v0, p2}, Lch/ethz/ssh2/KnownHosts;->hmacSha1Hash([BLjava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x0

    .line 32
    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_3

    return v3

    .line 33
    :cond_3
    aget-byte v2, p2, v0

    aget-byte v4, p1, v0

    if-eq v2, v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    return v1
.end method

.method private checkKey(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    monitor-exit v0

    return v2

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;

    .line 14
    iget-object v4, v3, Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;->patterns:[Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lch/ethz/ssh2/KnownHosts;->hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v2, v3, Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;->key:Ljava/lang/Object;

    invoke-direct {p0, v2, p2}, Lch/ethz/ssh2/KnownHosts;->matchKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static final createBubblebabbleFingerprint(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    const-string v0, "sha1"

    .line 1
    invoke-static {v0, p0, p1}, Lch/ethz/ssh2/KnownHosts;->rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    .line 2
    invoke-static {p0}, Lch/ethz/ssh2/KnownHosts;->rawToBubblebabbleFingerprint([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final createHashedHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lch/ethz/ssh2/crypto/digest/SHA1;

    invoke-direct {v0}, Lch/ethz/ssh2/crypto/digest/SHA1;-><init>()V

    .line 3
    invoke-virtual {v0}, Lch/ethz/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result v0

    new-array v0, v0, [B

    .line 5
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 7
    invoke-static {v0, p0}, Lch/ethz/ssh2/KnownHosts;->hmacSha1Hash([BLjava/lang/String;)[B

    move-result-object p0

    .line 9
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lch/ethz/ssh2/crypto/Base64;->encode([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 10
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lch/ethz/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 12
    new-instance p0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "|1|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static final createHexFingerprint(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    const-string v0, "md5"

    .line 1
    invoke-static {v0, p0, p1}, Lch/ethz/ssh2/KnownHosts;->rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    .line 2
    invoke-static {p0}, Lch/ethz/ssh2/KnownHosts;->rawToHexFingerprint([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAllKeys(Ljava/lang/String;)Ljava/util/Vector;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 3
    iget-object v1, p0, Lch/ethz/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lch/ethz/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    monitor-exit v1

    return-object v0

    .line 14
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;

    .line 16
    iget-object v4, v3, Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;->patterns:[Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lch/ethz/ssh2/KnownHosts;->hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    iget-object v3, v3, Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static final hmacSha1Hash([BLjava/lang/String;)[B
    .locals 3

    .line 1
    new-instance v0, Lch/ethz/ssh2/crypto/digest/SHA1;

    invoke-direct {v0}, Lch/ethz/ssh2/crypto/digest/SHA1;-><init>()V

    .line 3
    array-length v1, p0

    invoke-virtual {v0}, Lch/ethz/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 6
    new-instance v1, Lch/ethz/ssh2/crypto/digest/HMAC;

    array-length v2, p0

    invoke-direct {v1, v0, p0, v2}, Lch/ethz/ssh2/crypto/digest/HMAC;-><init>(Lch/ethz/ssh2/crypto/digest/Digest;[BI)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lch/ethz/ssh2/crypto/digest/HMAC;->update([B)V

    .line 10
    invoke-virtual {v1}, Lch/ethz/ssh2/crypto/digest/HMAC;->getDigestLength()I

    move-result p0

    new-array p0, p0, [B

    .line 12
    invoke-virtual {v1, p0}, Lch/ethz/ssh2/crypto/digest/HMAC;->digest([B)V

    return-object p0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Salt has wrong length ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_0

    return v2

    .line 5
    :cond_0
    aget-object v3, p1, v1

    if-nez v3, :cond_1

    goto :goto_3

    .line 14
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_2

    aget-object v3, p1, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x21

    if-ne v3, v5, :cond_2

    .line 16
    aget-object v3, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    goto :goto_1

    .line 21
    :cond_2
    aget-object v3, p1, v1

    const/4 v5, 0x0

    :goto_1
    if-eqz v2, :cond_3

    if-nez v5, :cond_3

    goto :goto_3

    .line 32
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7c

    if-ne v6, v7, :cond_4

    .line 34
    invoke-direct {p0, v3, p2}, Lch/ethz/ssh2/KnownHosts;->checkHashed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v5, :cond_7

    return v0

    .line 43
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x3f

    .line 45
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    const/16 v6, 0x2a

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v7, :cond_5

    goto :goto_2

    .line 54
    :cond_5
    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    if-eqz v5, :cond_7

    return v0

    .line 55
    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-direct {p0, v3, v0, v6, v0}, Lch/ethz/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v5, :cond_7

    return v0

    :cond_7
    const/4 v2, 0x1

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initialize(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    new-array v0, v0, [C

    .line 28
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 32
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 36
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result p1

    if-gez p1, :cond_0

    .line 42
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 44
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1}, Lch/ethz/ssh2/KnownHosts;->initialize([C)V

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v1, v0, v3, p1}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0
.end method

.method private initialize([C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/CharArrayReader;

    invoke-direct {v1, p1}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "#"

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, " "

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 17
    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 19
    aget-object v2, p1, v1

    const-string v3, "ssh-rsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, p1, v1

    const-string v3, "ssh-dss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    const/4 v2, 0x0

    .line 21
    aget-object v2, p1, v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 23
    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3}, Lch/ethz/ssh2/crypto/Base64;->decode([C)[B

    move-result-object v3

    .line 25
    aget-object p1, p1, v1

    invoke-virtual {p0, v2, p1, v3}, Lch/ethz/ssh2/KnownHosts;->addHostkey([Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method private final matchKeys(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lch/ethz/ssh2/signature/RSAPublicKey;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p2, Lch/ethz/ssh2/signature/RSAPublicKey;

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Lch/ethz/ssh2/signature/RSAPublicKey;

    .line 4
    check-cast p2, Lch/ethz/ssh2/signature/RSAPublicKey;

    .line 6
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lch/ethz/ssh2/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 9
    :cond_0
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lch/ethz/ssh2/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v1

    .line 15
    :cond_2
    instance-of v0, p1, Lch/ethz/ssh2/signature/DSAPublicKey;

    if-eqz v0, :cond_7

    instance-of v0, p2, Lch/ethz/ssh2/signature/DSAPublicKey;

    if-eqz v0, :cond_7

    .line 17
    check-cast p1, Lch/ethz/ssh2/signature/DSAPublicKey;

    .line 18
    check-cast p2, Lch/ethz/ssh2/signature/DSAPublicKey;

    .line 20
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/DSAPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lch/ethz/ssh2/signature/DSAPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 23
    :cond_3
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/DSAPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lch/ethz/ssh2/signature/DSAPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    .line 26
    :cond_4
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/DSAPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lch/ethz/ssh2/signature/DSAPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 29
    :cond_5
    invoke-virtual {p1}, Lch/ethz/ssh2/signature/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lch/ethz/ssh2/signature/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    return v2
.end method

.method private final pseudoRegex([CI[CI)Z
    .locals 6

    .line 1
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_1

    .line 2
    array-length p1, p3

    if-ne p1, p4, :cond_0

    return v2

    :cond_0
    return v1

    .line 4
    :cond_1
    aget-char v0, p1, p2

    const/16 v3, 0x3f

    const/16 v4, 0x2a

    if-ne v0, v4, :cond_7

    add-int/lit8 v5, p2, 0x1

    .line 8
    array-length p2, p1

    if-ne p2, v5, :cond_2

    return v2

    .line 11
    :cond_2
    aget-char p2, p1, v5

    if-eq p2, v4, :cond_5

    if-eq p2, v3, :cond_5

    .line 15
    :cond_3
    aget-char p2, p1, v5

    aget-char v0, p3, p4

    if-ne p2, v0, :cond_4

    add-int/lit8 p2, v5, 0x1

    add-int/lit8 v0, p4, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lch/ethz/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result p2

    if-eqz p2, :cond_4

    return v2

    :cond_4
    add-int/lit8 p4, p4, 0x1

    .line 18
    array-length p2, p3

    if-ne p2, p4, :cond_3

    return v1

    .line 25
    :cond_5
    invoke-direct {p0, p1, v5, p3, p4}, Lch/ethz/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result p2

    if-eqz p2, :cond_6

    return v2

    :cond_6
    add-int/lit8 p4, p4, 0x1

    .line 28
    array-length p2, p3

    if-ne p2, p4, :cond_5

    return v1

    .line 33
    :cond_7
    array-length v2, p3

    if-ne v2, p4, :cond_8

    return v1

    :cond_8
    if-eq v0, v3, :cond_9

    .line 36
    aget-char v2, p3, p4

    if-eq v0, v2, :cond_9

    return v1

    :cond_9
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method

.method private static final rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1

    const-string v0, "md5"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p0, Lch/ethz/ssh2/crypto/digest/MD5;

    invoke-direct {p0}, Lch/ethz/ssh2/crypto/digest/MD5;-><init>()V

    goto :goto_0

    :cond_0
    const-string v0, "sha1"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    new-instance p0, Lch/ethz/ssh2/crypto/digest/SHA1;

    invoke-direct {p0}, Lch/ethz/ssh2/crypto/digest/SHA1;-><init>()V

    :goto_0
    const-string v0, "ssh-rsa"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ssh-dss"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Unknown key type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 24
    invoke-interface {p0, p2}, Lch/ethz/ssh2/crypto/digest/Digest;->update([B)V

    .line 25
    invoke-interface {p0}, Lch/ethz/ssh2/crypto/digest/Digest;->getDigestLength()I

    move-result p1

    new-array p1, p1, [B

    .line 26
    invoke-interface {p0, p1}, Lch/ethz/ssh2/crypto/digest/Digest;->digest([B)V

    return-object p1

    .line 27
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hostkey is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Unknown hash type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final rawToBubblebabbleFingerprint([B)Ljava/lang/String;
    .locals 9

    const-string v0, "aeiouy"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "bcdfghklmnprstvzx"

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 8
    array-length v3, p0

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x78

    if-lt v5, v3, :cond_0

    .line 37
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v7, v5, 0x1

    if-lt v7, v3, :cond_2

    .line 40
    array-length v8, p0

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    goto :goto_1

    .line 57
    :cond_1
    rem-int/lit8 v5, v4, 0x6

    aget-char v5, v0, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 59
    div-int/lit8 v5, v4, 0x6

    aget-char v5, v0, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    :goto_1
    mul-int/lit8 v5, v5, 0x2

    .line 60
    aget-byte v6, p0, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v4

    rem-int/lit8 v6, v6, 0x6

    aget-char v6, v0, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    aget-byte v6, p0, v5

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v1, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    aget-byte v6, p0, v5

    and-int/lit8 v6, v6, 0x3

    div-int/lit8 v8, v4, 0x6

    add-int/2addr v6, v8

    rem-int/lit8 v6, v6, 0x6

    aget-char v6, v0, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ge v7, v3, :cond_3

    add-int/lit8 v6, v5, 0x1

    .line 66
    aget-byte v8, p0, v6

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v1, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v8, 0x2d

    .line 67
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    aget-byte v8, p0, v6

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v1, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    mul-int/lit8 v4, v4, 0x5

    .line 70
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v5, v5, 0x7

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x24

    :cond_3
    :goto_2
    move v5, v7

    goto :goto_0
.end method

.method private static final rawToHexFingerprint([B)Ljava/lang/String;
    .locals 5

    const-string v0, "0123456789abcdef"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_0

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v2, :cond_1

    const/16 v3, 0x3a

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 16
    :cond_1
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v3, 0x4

    .line 17
    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v3, v3, 0xf

    .line 18
    aget-char v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lch/ethz/ssh2/KnownHosts;->getAllKeys(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lch/ethz/ssh2/signature/RSAPublicKey;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lch/ethz/ssh2/signature/DSAPublicKey;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addHostkey([Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string v0, "ssh-rsa"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p3}, Lch/ethz/ssh2/signature/RSASHA1Verify;->decodeSSHRSAPublicKey([B)Lch/ethz/ssh2/signature/RSAPublicKey;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lch/ethz/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p3, p0, Lch/ethz/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    new-instance v1, Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;

    invoke-direct {v1, p0, p1, p2}, Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;-><init>(Lch/ethz/ssh2/KnownHosts;[Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const-string v0, "ssh-dss"

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {p3}, Lch/ethz/ssh2/signature/DSASHA1Verify;->decodeSSHDSAPublicKey([B)Lch/ethz/ssh2/signature/DSAPublicKey;

    move-result-object p2

    .line 17
    iget-object p3, p0, Lch/ethz/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter p3

    .line 19
    :try_start_1
    iget-object v0, p0, Lch/ethz/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    new-instance v1, Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;

    invoke-direct {v1, p0, p1, p2}, Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;-><init>(Lch/ethz/ssh2/KnownHosts;[Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 20
    monitor-exit p3

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Unknwon host key type ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hostnames may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHostkeys(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lch/ethz/ssh2/KnownHosts;->initialize(Ljava/io/File;)V

    return-void
.end method

.method public addHostkeys([C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lch/ethz/ssh2/KnownHosts;->initialize([C)V

    return-void
.end method

.method public getPreferredServerHostkeyAlgorithmOrder(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lch/ethz/ssh2/KnownHosts;->recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 17
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_1

    return-object v0

    .line 19
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lch/ethz/ssh2/KnownHosts;->recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    return-object v0
.end method

.method public verifyHostkey(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ssh-rsa"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p3}, Lch/ethz/ssh2/signature/RSASHA1Verify;->decodeSSHRSAPublicKey([B)Lch/ethz/ssh2/signature/RSAPublicKey;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string v0, "ssh-dss"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    invoke-static {p3}, Lch/ethz/ssh2/signature/DSASHA1Verify;->decodeSSHDSAPublicKey([B)Lch/ethz/ssh2/signature/DSAPublicKey;

    move-result-object p2

    .line 12
    :goto_0
    invoke-direct {p0, p1, p2}, Lch/ethz/ssh2/KnownHosts;->checkKey(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p3

    if-nez p3, :cond_1

    return p3

    .line 21
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 28
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_2

    return p3

    .line 30
    :cond_2
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lch/ethz/ssh2/KnownHosts;->checkKey(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 p3, 0x2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    return p3

    .line 31
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Unknown hostkey type "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
