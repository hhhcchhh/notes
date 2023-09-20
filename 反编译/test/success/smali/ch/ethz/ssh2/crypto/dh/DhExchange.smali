.class public Lch/ethz/ssh2/crypto/dh/DhExchange;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static synthetic class$0:Ljava/lang/Class;

.field static final g:Ljava/math/BigInteger;

.field private static final log:Lch/ethz/ssh2/log/Logger;

.field static final p1:Ljava/math/BigInteger;

.field static final p14:Ljava/math/BigInteger;


# instance fields
.field e:Ljava/math/BigInteger;

.field f:Ljava/math/BigInteger;

.field k:Ljava/math/BigInteger;

.field p:Ljava/math/BigInteger;

.field x:Ljava/math/BigInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lch/ethz/ssh2/crypto/dh/DhExchange;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lch/ethz/ssh2/crypto/dh/DhExchange;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lch/ethz/ssh2/crypto/dh/DhExchange;->class$0:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    invoke-static {v0}, Lch/ethz/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lch/ethz/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lch/ethz/ssh2/crypto/dh/DhExchange;->log:Lch/ethz/ssh2/log/Logger;

    .line 40
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "179769313486231590770839156793787453197860296048756011706444423684197180216158519368947833795864925541502180565485980503646440548199239100050792877003355816639229553136239076508735759914822574862575007425302077447712589550957937778424442426617334727629299387668709205606050270810842907692932019128194467627007"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lch/ethz/ssh2/crypto/dh/DhExchange;->p1:Ljava/math/BigInteger;

    .line 41
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AACAA68FFFFFFFFFFFFFFFF"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/ethz/ssh2/crypto/dh/DhExchange;->p14:Ljava/math/BigInteger;

    .line 42
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "2"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lch/ethz/ssh2/crypto/dh/DhExchange;->g:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateH([B[B[B[B[B)[B
    .locals 6

    .line 1
    new-instance v0, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;

    const-string v1, "SHA1"

    invoke-direct {v0, v1}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lch/ethz/ssh2/crypto/dh/DhExchange;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {v1}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Client: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x5a

    invoke-virtual {v1, v4, v2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "Server: \'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 10
    invoke-virtual {v0, p2}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 11
    invoke-virtual {v0, p3}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 12
    invoke-virtual {v0, p4}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 13
    invoke-virtual {v0, p5}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 14
    iget-object p1, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 15
    iget-object p1, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->f:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 16
    iget-object p1, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 18
    invoke-virtual {v0}, Lch/ethz/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    move-result-object p1

    return-object p1
.end method

.method public getE()Ljava/math/BigInteger;
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DhDsaExchange not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getK()Ljava/math/BigInteger;
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shared secret not yet known, need f first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ILjava/security/SecureRandom;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    sget-object p1, Lch/ethz/ssh2/crypto/dh/DhExchange;->p1:Ljava/math/BigInteger;

    iput-object p1, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    if-ne p1, v1, :cond_1

    .line 6
    sget-object p1, Lch/ethz/ssh2/crypto/dh/DhExchange;->p14:Ljava/math/BigInteger;

    iput-object p1, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    .line 10
    :goto_0
    new-instance p1, Ljava/math/BigInteger;

    iget-object v1, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-direct {p1, v1, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iput-object p1, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->x:Ljava/math/BigInteger;

    .line 12
    sget-object p2, Lch/ethz/ssh2/crypto/dh/DhExchange;->g:Ljava/math/BigInteger;

    iget-object v0, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p2, p1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    return-void

    .line 13
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown DH group "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setF(Ljava/math/BigInteger;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    iput-object p1, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->f:Ljava/math/BigInteger;

    .line 10
    iget-object v0, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->x:Ljava/math/BigInteger;

    iget-object v1, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid f specified!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DhDsaExchange not initialized!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
