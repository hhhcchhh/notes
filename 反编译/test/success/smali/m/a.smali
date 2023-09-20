.class public Lm/a;
.super Lm/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "TLS"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lm/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lm/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lm/a;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lm/f;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0, p1}, Lm/a;-><init>(ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const-string v0, "TLS"

    .line 2
    invoke-direct {p0, v0, p1}, Lm/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 1

    const-string v0, "TLS"

    .line 6
    invoke-direct {p0, v0, p1, p2}, Lm/a;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/String;
    .locals 5

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xf

    if-gt v3, v4, :cond_0

    const-string v4, "0"

    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lm/a$b;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1
    sget-object v0, Lm/d;->h:Lm/d;

    invoke-virtual {p1}, Lm/a$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lm/b;->b(Lm/d;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lm/e;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    sget-object v0, Lm/a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    return v1

    .line 60
    :cond_1
    invoke-virtual {p0, p2}, Lm/b;->a(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 63
    sget-object p2, Lm/b$a;->c:Lm/b$a;

    invoke-virtual {p0, p2}, Lm/b;->a(Lm/b$a;)V

    :cond_2
    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 64
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCharsetName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lv/a;->i([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/b;->a(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_5

    return v1

    .line 69
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCharsetName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lv/a;->i([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/b;->a(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    .line 72
    sget-object p2, Lm/b$a;->c:Lm/b$a;

    invoke-virtual {p0, p2}, Lm/b;->a(Lm/b$a;)V

    :cond_6
    if-nez p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    .line 73
    :cond_8
    invoke-virtual {p0}, Lm/b;->getReplyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lv/a;->b(Ljava/lang/String;)[B

    move-result-object p1

    const-string v2, "HmacMD5"

    .line 75
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 76
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCharsetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {v4, p3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 78
    invoke-virtual {v3, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/a;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCharsetName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCharsetName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 81
    array-length p3, p2

    add-int/2addr p3, v0

    array-length v2, p1

    add-int/2addr p3, v2

    new-array p3, p3, [B

    .line 82
    array-length v2, p2

    invoke-static {p2, v1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    array-length v2, p2

    const/16 v3, 0x20

    aput-byte v3, p3, v2

    .line 84
    array-length p2, p2

    add-int/2addr p2, v0

    array-length v2, p1

    invoke-static {p1, v1, p3, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    invoke-static {p3}, Lv/a;->i([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/b;->a(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_9

    .line 89
    sget-object p2, Lm/b$a;->c:Lm/b$a;

    invoke-virtual {p0, p2}, Lm/b;->a(Lm/b$a;)V

    :cond_9
    if-nez p1, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    .line 90
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u0000"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getCharsetName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lv/a;->i([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/b;->a(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_c

    .line 95
    sget-object p2, Lm/b$a;->c:Lm/b$a;

    invoke-virtual {p0, p2}, Lm/b;->a(Lm/b$a;)V

    :cond_c
    if-nez p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public b(Lm/a$b;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lm/a;->a(Lm/a$b;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
