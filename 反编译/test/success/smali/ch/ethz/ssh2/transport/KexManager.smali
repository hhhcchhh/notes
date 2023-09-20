.class public Lch/ethz/ssh2/transport/KexManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static synthetic class$0:Ljava/lang/Class;

.field private static final log:Lch/ethz/ssh2/log/Logger;


# instance fields
.field final accessLock:Ljava/lang/Object;

.field connectionClosed:Z

.field csh:Lch/ethz/ssh2/transport/ClientServerHello;

.field final hostname:Ljava/lang/String;

.field ignore_next_kex_packet:Z

.field kexCount:I

.field km:Lch/ethz/ssh2/crypto/KeyMaterial;

.field kxs:Lch/ethz/ssh2/transport/KexState;

.field lastConnInfo:Lch/ethz/ssh2/ConnectionInfo;

.field nextKEXcryptoWishList:Lch/ethz/ssh2/crypto/CryptoWishList;

.field nextKEXdhgexParameters:Lch/ethz/ssh2/DHGexParameters;

.field final port:I

.field final rnd:Ljava/security/SecureRandom;

.field sessionId:[B

.field final tm:Lch/ethz/ssh2/transport/TransportManager;

.field verifier:Lch/ethz/ssh2/ServerHostKeyVerifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lch/ethz/ssh2/transport/KexManager;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lch/ethz/ssh2/transport/KexManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lch/ethz/ssh2/transport/KexManager;->class$0:Ljava/lang/Class;

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

    sput-object v0, Lch/ethz/ssh2/transport/KexManager;->log:Lch/ethz/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>(Lch/ethz/ssh2/transport/TransportManager;Lch/ethz/ssh2/transport/ClientServerHello;Lch/ethz/ssh2/crypto/CryptoWishList;Ljava/lang/String;ILch/ethz/ssh2/ServerHostKeyVerifier;Ljava/security/SecureRandom;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lch/ethz/ssh2/transport/KexManager;->kexCount:I

    .line 7
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->lastConnInfo:Lch/ethz/ssh2/ConnectionInfo;

    .line 10
    iput-boolean v0, p0, Lch/ethz/ssh2/transport/KexManager;->connectionClosed:Z

    .line 12
    iput-boolean v0, p0, Lch/ethz/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    .line 27
    iput-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    .line 28
    iput-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->csh:Lch/ethz/ssh2/transport/ClientServerHello;

    .line 29
    iput-object p3, p0, Lch/ethz/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lch/ethz/ssh2/crypto/CryptoWishList;

    .line 30
    new-instance p1, Lch/ethz/ssh2/DHGexParameters;

    invoke-direct {p1}, Lch/ethz/ssh2/DHGexParameters;-><init>()V

    iput-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lch/ethz/ssh2/DHGexParameters;

    .line 31
    iput-object p4, p0, Lch/ethz/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    .line 32
    iput p5, p0, Lch/ethz/ssh2/transport/KexManager;->port:I

    .line 33
    iput-object p6, p0, Lch/ethz/ssh2/transport/KexManager;->verifier:Lch/ethz/ssh2/ServerHostKeyVerifier;

    .line 34
    iput-object p7, p0, Lch/ethz/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    return-void
.end method

.method public static final checkKexAlgorithmList([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    aget-object v1, p0, v0

    const-string v2, "diffie-hellman-group-exchange-sha1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    aget-object v1, p0, v0

    const-string v2, "diffie-hellman-group14-sha1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    aget-object v1, p0, v0

    const-string v2, "diffie-hellman-group1-sha1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Unknown kex algorithm \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object p0, p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public static final checkServerHostkeyAlgorithmsList([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    aget-object v1, p0, v0

    const-string v2, "ssh-rsa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p0, v0

    const-string v2, "ssh-dss"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Unknown server host key algorithm \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object p0, p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    array-length v0, p2

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    aget-object p1, p1, v1

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private establishKeyMaterial()Z
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lch/ethz/ssh2/crypto/digest/MAC;->getKeyLen(Ljava/lang/String;)I

    move-result v7

    .line 2
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->getKeySize(Ljava/lang/String;)I

    move-result v5

    .line 3
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->getBlockSize(Ljava/lang/String;)I

    move-result v6

    .line 5
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lch/ethz/ssh2/crypto/digest/MAC;->getKeyLen(Ljava/lang/String;)I

    move-result v10

    .line 6
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->getKeySize(Ljava/lang/String;)I

    move-result v8

    .line 7
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->getBlockSize(Ljava/lang/String;)I

    move-result v9

    const-string v1, "SHA1"

    .line 9
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v2, v0, Lch/ethz/ssh2/transport/KexState;->H:[B

    iget-object v3, v0, Lch/ethz/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    iget-object v4, p0, Lch/ethz/ssh2/transport/KexManager;->sessionId:[B

    .line 10
    invoke-static/range {v1 .. v10}, Lch/ethz/ssh2/crypto/KeyMaterial;->create(Ljava/lang/String;[BLjava/math/BigInteger;[BIIIIII)Lch/ethz/ssh2/crypto/KeyMaterial;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->km:Lch/ethz/ssh2/crypto/KeyMaterial;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private finishKex()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->sessionId:[B

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexState;->H:[B

    iput-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->sessionId:[B

    .line 4
    :cond_0
    invoke-direct {p0}, Lch/ethz/ssh2/transport/KexManager;->establishKeyMaterial()Z

    .line 8
    new-instance v0, Lch/ethz/ssh2/packets/PacketNewKeys;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/PacketNewKeys;-><init>()V

    .line 9
    iget-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketNewKeys;->getPayload()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/ethz/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 16
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    iget-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->km:Lch/ethz/ssh2/crypto/KeyMaterial;

    iget-object v2, v1, Lch/ethz/ssh2/crypto/KeyMaterial;->enc_key_client_to_server:[B

    .line 17
    iget-object v1, v1, Lch/ethz/ssh2/crypto/KeyMaterial;->initial_iv_client_to_server:[B

    const/4 v3, 0x1

    .line 18
    invoke-static {v0, v3, v2, v1}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->createCipher(Ljava/lang/String;Z[B[B)Lch/ethz/ssh2/crypto/cipher/BlockCipher;

    move-result-object v0

    .line 21
    new-instance v1, Lch/ethz/ssh2/crypto/digest/MAC;

    iget-object v2, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v2, v2, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v2, v2, Lch/ethz/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    iget-object v3, p0, Lch/ethz/ssh2/transport/KexManager;->km:Lch/ethz/ssh2/crypto/KeyMaterial;

    iget-object v3, v3, Lch/ethz/ssh2/crypto/KeyMaterial;->integrity_key_client_to_server:[B

    invoke-direct {v1, v2, v3}, Lch/ethz/ssh2/crypto/digest/MAC;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    iget-object v2, p0, Lch/ethz/ssh2/transport/KexManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v2, v0, v1}, Lch/ethz/ssh2/transport/TransportManager;->changeSendCipher(Lch/ethz/ssh2/crypto/cipher/BlockCipher;Lch/ethz/ssh2/crypto/digest/MAC;)V

    .line 30
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lch/ethz/ssh2/transport/TransportManager;->kexFinished()V

    return-void

    .line 31
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fatal error during MAC startup!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getDefaultKexAlgorithmList()[Ljava/lang/String;
    .locals 3

    const-string v0, "diffie-hellman-group14-sha1"

    const-string v1, "diffie-hellman-group1-sha1"

    const-string v2, "diffie-hellman-group-exchange-sha1"

    .line 2
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;
    .locals 2

    const-string v0, "ssh-rsa"

    const-string v1, "ssh-dss"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/ethz/ssh2/transport/NegotiateException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    .line 6
    :goto_1
    array-length v3, p2

    if-lt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    aget-object v3, p1, v1

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    aget-object p1, p1, v1

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_3
    new-instance p1, Lch/ethz/ssh2/transport/NegotiateException;

    invoke-direct {p1}, Lch/ethz/ssh2/transport/NegotiateException;-><init>()V

    throw p1

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private isGuessOK(Lch/ethz/ssh2/transport/KexParameters;Lch/ethz/ssh2/transport/KexParameters;)Z
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1
    iget-object v0, p1, Lch/ethz/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    iget-object v1, p2, Lch/ethz/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lch/ethz/ssh2/transport/KexManager;->compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    iget-object p1, p1, Lch/ethz/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    iget-object p2, p2, Lch/ethz/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lch/ethz/ssh2/transport/KexManager;->compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private mergeKexParameters(Lch/ethz/ssh2/transport/KexParameters;Lch/ethz/ssh2/transport/KexParameters;)Lch/ethz/ssh2/transport/NegotiatedParameters;
    .locals 6

    .line 1
    new-instance v0, Lch/ethz/ssh2/transport/NegotiatedParameters;

    invoke-direct {v0}, Lch/ethz/ssh2/transport/NegotiatedParameters;-><init>()V

    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p1, Lch/ethz/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    iget-object v3, p2, Lch/ethz/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lch/ethz/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    .line 7
    sget-object v2, Lch/ethz/ssh2/transport/KexManager;->log:Lch/ethz/ssh2/log/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "kex_algo="

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v3}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 9
    iget-object v3, p1, Lch/ethz/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    .line 10
    iget-object v5, p2, Lch/ethz/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lch/ethz/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    iput-object v3, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    .line 14
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "server_host_key_algo="

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 16
    iget-object v3, p1, Lch/ethz/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    .line 17
    iget-object v5, p2, Lch/ethz/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lch/ethz/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    iput-object v3, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    .line 20
    iget-object v3, p1, Lch/ethz/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    .line 21
    iget-object v5, p2, Lch/ethz/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lch/ethz/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    iput-object v3, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    .line 25
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "enc_algo_client_to_server="

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 26
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "enc_algo_server_to_client="

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 28
    iget-object v3, p1, Lch/ethz/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    .line 29
    iget-object v5, p2, Lch/ethz/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lch/ethz/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    iput-object v3, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    .line 32
    iget-object v3, p1, Lch/ethz/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    .line 33
    iget-object v5, p2, Lch/ethz/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lch/ethz/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    iput-object v3, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    .line 37
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "mac_algo_client_to_server="

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 38
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "mac_algo_server_to_client="

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 40
    iget-object v3, p1, Lch/ethz/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    .line 41
    iget-object v5, p2, Lch/ethz/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lch/ethz/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    iput-object v3, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    .line 44
    iget-object v3, p1, Lch/ethz/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    .line 45
    iget-object v5, p2, Lch/ethz/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lch/ethz/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    iput-object v3, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    .line 49
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "comp_algo_client_to_server="

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 50
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "comp_algo_server_to_client="

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V
    :try_end_0
    .catch Lch/ethz/ssh2/transport/NegotiateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 60
    :try_start_1
    iget-object v2, p1, Lch/ethz/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    .line 61
    iget-object v3, p2, Lch/ethz/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lch/ethz/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    iput-object v2, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->lang_client_to_server:Ljava/lang/String;
    :try_end_1
    .catch Lch/ethz/ssh2/transport/NegotiateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    iput-object v1, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->lang_client_to_server:Ljava/lang/String;

    .line 72
    :goto_0
    :try_start_2
    iget-object v2, p1, Lch/ethz/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    .line 73
    iget-object v3, p2, Lch/ethz/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lch/ethz/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    iput-object v2, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->lang_server_to_client:Ljava/lang/String;
    :try_end_2
    .catch Lch/ethz/ssh2/transport/NegotiateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 79
    :catch_1
    iput-object v1, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->lang_server_to_client:Ljava/lang/String;

    .line 82
    :goto_1
    invoke-direct {p0, p1, p2}, Lch/ethz/ssh2/transport/KexManager;->isGuessOK(Lch/ethz/ssh2/transport/KexParameters;Lch/ethz/ssh2/transport/KexParameters;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->guessOK:Z

    :cond_0
    return-object v0

    :catch_2
    return-object v1
.end method

.method private verifySignature([B[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    const-string v1, "ssh-rsa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x32

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lch/ethz/ssh2/signature/RSASHA1Verify;->decodeSSHRSASignature([B)Lch/ethz/ssh2/signature/RSASignature;

    move-result-object p1

    .line 4
    invoke-static {p2}, Lch/ethz/ssh2/signature/RSASHA1Verify;->decodeSSHRSAPublicKey([B)Lch/ethz/ssh2/signature/RSAPublicKey;

    move-result-object p2

    .line 6
    sget-object v0, Lch/ethz/ssh2/transport/KexManager;->log:Lch/ethz/ssh2/log/Logger;

    const-string v2, "Verifying ssh-rsa signature"

    invoke-virtual {v0, v1, v2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexState;->H:[B

    invoke-static {v0, p1, p2}, Lch/ethz/ssh2/signature/RSASHA1Verify;->verifySignature([BLch/ethz/ssh2/signature/RSASignature;Lch/ethz/ssh2/signature/RSAPublicKey;)Z

    move-result p1

    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    const-string v2, "ssh-dss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {p1}, Lch/ethz/ssh2/signature/DSASHA1Verify;->decodeSSHDSASignature([B)Lch/ethz/ssh2/signature/DSASignature;

    move-result-object p1

    .line 14
    invoke-static {p2}, Lch/ethz/ssh2/signature/DSASHA1Verify;->decodeSSHDSAPublicKey([B)Lch/ethz/ssh2/signature/DSAPublicKey;

    move-result-object p2

    .line 16
    sget-object v0, Lch/ethz/ssh2/transport/KexManager;->log:Lch/ethz/ssh2/log/Logger;

    const-string v2, "Verifying ssh-dss signature"

    invoke-virtual {v0, v1, v2}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 18
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexState;->H:[B

    invoke-static {v0, p1, p2}, Lch/ethz/ssh2/signature/DSASHA1Verify;->verifySignature([BLch/ethz/ssh2/signature/DSASignature;Lch/ethz/ssh2/signature/DSAPublicKey;)Z

    move-result p1

    return p1

    .line 21
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Unknown server host key algorithm \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getOrWaitForConnectionInfo(I)Lch/ethz/ssh2/ConnectionInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :catch_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->lastConnInfo:Lch/ethz/ssh2/ConnectionInfo;

    if-eqz v1, :cond_0

    iget v2, v1, Lch/ethz/ssh2/ConnectionInfo;->keyExchangeCounter:I

    if-lt v2, p1, :cond_0

    .line 6
    monitor-exit v0

    return-object v1

    .line 8
    :cond_0
    iget-boolean v1, p0, Lch/ethz/ssh2/transport/KexManager;->connectionClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 14
    :try_start_1
    iget-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Key exchange was not finished, connection is closed."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lch/ethz/ssh2/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 17
    check-cast p1, Ljava/io/IOException;

    throw p1

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized handleMessage([BI)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lch/ethz/ssh2/transport/KexManager;->connectionClosed:Z

    .line 4
    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p2

    .line 6
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2

    .line 14
    :cond_0
    iget-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    const/16 v2, 0x14

    const/4 v3, 0x0

    if-nez v1, :cond_2

    aget-byte v4, p1, v3

    if-ne v4, v2, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unexpected KEX message (type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lch/ethz/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    if-eqz v4, :cond_3

    .line 19
    iput-boolean v3, p0, Lch/ethz/ssh2/transport/KexManager;->ignore_next_kex_packet:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    .line 23
    :cond_3
    :try_start_4
    aget-byte v4, p1, v3

    if-ne v4, v2, :cond_e

    if-eqz v1, :cond_5

    .line 25
    iget v2, v1, Lch/ethz/ssh2/transport/KexState;->state:I

    if-nez v2, :cond_4

    goto :goto_1

    .line 26
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected SSH_MSG_KEXINIT message during on-going kex exchange!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 34
    new-instance v1, Lch/ethz/ssh2/transport/KexState;

    invoke-direct {v1}, Lch/ethz/ssh2/transport/KexState;-><init>()V

    iput-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    .line 35
    iget-object v2, p0, Lch/ethz/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lch/ethz/ssh2/DHGexParameters;

    iput-object v2, v1, Lch/ethz/ssh2/transport/KexState;->dhgexParameters:Lch/ethz/ssh2/DHGexParameters;

    .line 36
    new-instance v1, Lch/ethz/ssh2/packets/PacketKexInit;

    iget-object v2, p0, Lch/ethz/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lch/ethz/ssh2/crypto/CryptoWishList;

    iget-object v4, p0, Lch/ethz/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    invoke-direct {v1, v2, v4}, Lch/ethz/ssh2/packets/PacketKexInit;-><init>(Lch/ethz/ssh2/crypto/CryptoWishList;Ljava/security/SecureRandom;)V

    .line 37
    iget-object v2, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iput-object v1, v2, Lch/ethz/ssh2/transport/KexState;->localKEX:Lch/ethz/ssh2/packets/PacketKexInit;

    .line 38
    iget-object v2, p0, Lch/ethz/ssh2/transport/KexManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lch/ethz/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lch/ethz/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 41
    :cond_6
    new-instance v1, Lch/ethz/ssh2/packets/PacketKexInit;

    invoke-direct {v1, p1, v3, p2}, Lch/ethz/ssh2/packets/PacketKexInit;-><init>([BII)V

    .line 42
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iput-object v1, p1, Lch/ethz/ssh2/transport/KexState;->remoteKEX:Lch/ethz/ssh2/packets/PacketKexInit;

    .line 44
    iget-object p2, p1, Lch/ethz/ssh2/transport/KexState;->localKEX:Lch/ethz/ssh2/packets/PacketKexInit;

    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketKexInit;->getKexParameters()Lch/ethz/ssh2/transport/KexParameters;

    move-result-object p2

    iget-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v1, v1, Lch/ethz/ssh2/transport/KexState;->remoteKEX:Lch/ethz/ssh2/packets/PacketKexInit;

    invoke-virtual {v1}, Lch/ethz/ssh2/packets/PacketKexInit;->getKexParameters()Lch/ethz/ssh2/transport/KexParameters;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lch/ethz/ssh2/transport/KexManager;->mergeKexParameters(Lch/ethz/ssh2/transport/KexParameters;Lch/ethz/ssh2/transport/KexParameters;)Lch/ethz/ssh2/transport/NegotiatedParameters;

    move-result-object p2

    iput-object p2, p1, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    .line 46
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p2, p1, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    if-eqz p2, :cond_d

    .line 49
    iget-object p1, p1, Lch/ethz/ssh2/transport/KexState;->remoteKEX:Lch/ethz/ssh2/packets/PacketKexInit;

    invoke-virtual {p1}, Lch/ethz/ssh2/packets/PacketKexInit;->isFirst_kex_packet_follows()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p1, p1, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-boolean p1, p1, Lch/ethz/ssh2/transport/NegotiatedParameters;->guessOK:Z

    if-nez p1, :cond_7

    .line 55
    iput-boolean v0, p0, Lch/ethz/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    .line 58
    :cond_7
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p1, p1, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lch/ethz/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "diffie-hellman-group-exchange-sha1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 60
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p1, p1, Lch/ethz/ssh2/transport/KexState;->dhgexParameters:Lch/ethz/ssh2/DHGexParameters;

    invoke-virtual {p1}, Lch/ethz/ssh2/DHGexParameters;->getMin_group_len()I

    move-result p1

    if-nez p1, :cond_8

    .line 62
    new-instance p1, Lch/ethz/ssh2/packets/PacketKexDhGexRequestOld;

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p2, p2, Lch/ethz/ssh2/transport/KexState;->dhgexParameters:Lch/ethz/ssh2/DHGexParameters;

    invoke-direct {p1, p2}, Lch/ethz/ssh2/packets/PacketKexDhGexRequestOld;-><init>(Lch/ethz/ssh2/DHGexParameters;)V

    .line 63
    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p1}, Lch/ethz/ssh2/packets/PacketKexDhGexRequestOld;->getPayload()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lch/ethz/ssh2/transport/TransportManager;->sendKexMessage([B)V

    goto :goto_2

    .line 68
    :cond_8
    new-instance p1, Lch/ethz/ssh2/packets/PacketKexDhGexRequest;

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p2, p2, Lch/ethz/ssh2/transport/KexState;->dhgexParameters:Lch/ethz/ssh2/DHGexParameters;

    invoke-direct {p1, p2}, Lch/ethz/ssh2/packets/PacketKexDhGexRequest;-><init>(Lch/ethz/ssh2/DHGexParameters;)V

    .line 69
    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p1}, Lch/ethz/ssh2/packets/PacketKexDhGexRequest;->getPayload()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lch/ethz/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 71
    :goto_2
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iput v0, p1, Lch/ethz/ssh2/transport/KexState;->state:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    .line 75
    :cond_9
    :try_start_5
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p1, p1, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lch/ethz/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "diffie-hellman-group1-sha1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 76
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p1, p1, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lch/ethz/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "diffie-hellman-group14-sha1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_3

    .line 91
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unkown KEX method!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_b
    :goto_3
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    new-instance p2, Lch/ethz/ssh2/crypto/dh/DhExchange;

    invoke-direct {p2}, Lch/ethz/ssh2/crypto/dh/DhExchange;-><init>()V

    iput-object p2, p1, Lch/ethz/ssh2/transport/KexState;->dhx:Lch/ethz/ssh2/crypto/dh/DhExchange;

    .line 94
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p1, p1, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lch/ethz/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "diffie-hellman-group1-sha1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 95
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p1, p1, Lch/ethz/ssh2/transport/KexState;->dhx:Lch/ethz/ssh2/crypto/dh/DhExchange;

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {p1, v0, p2}, Lch/ethz/ssh2/crypto/dh/DhExchange;->init(ILjava/security/SecureRandom;)V

    goto :goto_4

    .line 97
    :cond_c
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p1, p1, Lch/ethz/ssh2/transport/KexState;->dhx:Lch/ethz/ssh2/crypto/dh/DhExchange;

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    const/16 v1, 0xe

    invoke-virtual {p1, v1, p2}, Lch/ethz/ssh2/crypto/dh/DhExchange;->init(ILjava/security/SecureRandom;)V

    .line 99
    :goto_4
    new-instance p1, Lch/ethz/ssh2/packets/PacketKexDHInit;

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p2, p2, Lch/ethz/ssh2/transport/KexState;->dhx:Lch/ethz/ssh2/crypto/dh/DhExchange;

    invoke-virtual {p2}, Lch/ethz/ssh2/crypto/dh/DhExchange;->getE()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p1, p2}, Lch/ethz/ssh2/packets/PacketKexDHInit;-><init>(Ljava/math/BigInteger;)V

    .line 100
    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p1}, Lch/ethz/ssh2/packets/PacketKexDHInit;->getPayload()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lch/ethz/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 101
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iput v0, p1, Lch/ethz/ssh2/transport/KexState;->state:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    .line 102
    :cond_d
    :try_start_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot negotiate, proposals do not match."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    const/16 v2, 0x15

    if-ne v4, v2, :cond_10

    .line 151
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->km:Lch/ethz/ssh2/crypto/KeyMaterial;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p1, :cond_f

    .line 159
    :try_start_7
    iget-object p2, v1, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object p2, p2, Lch/ethz/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    .line 160
    iget-object v1, p1, Lch/ethz/ssh2/crypto/KeyMaterial;->enc_key_server_to_client:[B

    iget-object p1, p1, Lch/ethz/ssh2/crypto/KeyMaterial;->initial_iv_server_to_client:[B

    .line 161
    invoke-static {p2, v3, v1, p1}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->createCipher(Ljava/lang/String;Z[B[B)Lch/ethz/ssh2/crypto/cipher/BlockCipher;

    move-result-object p1

    .line 164
    new-instance p2, Lch/ethz/ssh2/crypto/digest/MAC;

    iget-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v1, v1, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lch/ethz/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    iget-object v2, p0, Lch/ethz/ssh2/transport/KexManager;->km:Lch/ethz/ssh2/crypto/KeyMaterial;

    iget-object v2, v2, Lch/ethz/ssh2/crypto/KeyMaterial;->integrity_key_server_to_client:[B

    invoke-direct {p2, v1, v2}, Lch/ethz/ssh2/crypto/digest/MAC;-><init>(Ljava/lang/String;[B)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 172
    :try_start_8
    iget-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v1, p1, p2}, Lch/ethz/ssh2/transport/TransportManager;->changeRecvCipher(Lch/ethz/ssh2/crypto/cipher/BlockCipher;Lch/ethz/ssh2/crypto/digest/MAC;)V

    .line 174
    new-instance p1, Lch/ethz/ssh2/ConnectionInfo;

    invoke-direct {p1}, Lch/ethz/ssh2/ConnectionInfo;-><init>()V

    .line 176
    iget p2, p0, Lch/ethz/ssh2/transport/KexManager;->kexCount:I

    add-int/2addr p2, v0

    iput p2, p0, Lch/ethz/ssh2/transport/KexManager;->kexCount:I

    .line 178
    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v1, v0, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v2, v1, Lch/ethz/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    iput-object v2, p1, Lch/ethz/ssh2/ConnectionInfo;->keyExchangeAlgorithm:Ljava/lang/String;

    .line 179
    iput p2, p1, Lch/ethz/ssh2/ConnectionInfo;->keyExchangeCounter:I

    .line 180
    iget-object p2, v1, Lch/ethz/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    iput-object p2, p1, Lch/ethz/ssh2/ConnectionInfo;->clientToServerCryptoAlgorithm:Ljava/lang/String;

    .line 181
    iget-object p2, v1, Lch/ethz/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    iput-object p2, p1, Lch/ethz/ssh2/ConnectionInfo;->serverToClientCryptoAlgorithm:Ljava/lang/String;

    .line 182
    iget-object p2, v1, Lch/ethz/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    iput-object p2, p1, Lch/ethz/ssh2/ConnectionInfo;->clientToServerMACAlgorithm:Ljava/lang/String;

    .line 183
    iget-object p2, v1, Lch/ethz/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    iput-object p2, p1, Lch/ethz/ssh2/ConnectionInfo;->serverToClientMACAlgorithm:Ljava/lang/String;

    .line 184
    iget-object p2, v1, Lch/ethz/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    iput-object p2, p1, Lch/ethz/ssh2/ConnectionInfo;->serverHostKeyAlgorithm:Ljava/lang/String;

    .line 185
    iget-object p2, v0, Lch/ethz/ssh2/transport/KexState;->hostkey:[B

    iput-object p2, p1, Lch/ethz/ssh2/ConnectionInfo;->serverHostKey:[B

    .line 187
    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 189
    :try_start_9
    iput-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->lastConnInfo:Lch/ethz/ssh2/ConnectionInfo;

    .line 190
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 191
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 p1, 0x0

    .line 197
    :try_start_a
    iput-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 198
    :try_start_b
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw p1

    .line 199
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Fatal error during MAC startup!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Peer sent SSH_MSG_NEWKEYS, but I have no key material ready!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    if-eqz v1, :cond_1c

    .line 243
    iget v2, v1, Lch/ethz/ssh2/transport/KexState;->state:I

    if-eqz v2, :cond_1c

    .line 246
    iget-object v1, v1, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lch/ethz/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v2, "diffie-hellman-group-exchange-sha1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_16

    .line 248
    iget-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget v1, v1, Lch/ethz/ssh2/transport/KexState;->state:I

    const/4 v4, 0x2

    if-ne v1, v0, :cond_11

    .line 250
    new-instance v0, Lch/ethz/ssh2/packets/PacketKexDhGexGroup;

    invoke-direct {v0, p1, v3, p2}, Lch/ethz/ssh2/packets/PacketKexDhGexGroup;-><init>([BII)V

    .line 251
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    new-instance p2, Lch/ethz/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketKexDhGexGroup;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketKexDhGexGroup;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Lch/ethz/ssh2/crypto/dh/DhGroupExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p2, p1, Lch/ethz/ssh2/transport/KexState;->dhgx:Lch/ethz/ssh2/crypto/dh/DhGroupExchange;

    .line 252
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p1, p1, Lch/ethz/ssh2/transport/KexState;->dhgx:Lch/ethz/ssh2/crypto/dh/DhGroupExchange;

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {p1, p2}, Lch/ethz/ssh2/crypto/dh/DhGroupExchange;->init(Ljava/security/SecureRandom;)V

    .line 253
    new-instance p1, Lch/ethz/ssh2/packets/PacketKexDhGexInit;

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p2, p2, Lch/ethz/ssh2/transport/KexState;->dhgx:Lch/ethz/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {p2}, Lch/ethz/ssh2/crypto/dh/DhGroupExchange;->getE()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p1, p2}, Lch/ethz/ssh2/packets/PacketKexDhGexInit;-><init>(Ljava/math/BigInteger;)V

    .line 254
    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p1}, Lch/ethz/ssh2/packets/PacketKexDhGexInit;->getPayload()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lch/ethz/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 255
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iput v4, p1, Lch/ethz/ssh2/transport/KexState;->state:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    monitor-exit p0

    return-void

    :cond_11
    if-ne v1, v4, :cond_15

    .line 261
    :try_start_d
    new-instance v0, Lch/ethz/ssh2/packets/PacketKexDhGexReply;

    invoke-direct {v0, p1, v3, p2}, Lch/ethz/ssh2/packets/PacketKexDhGexReply;-><init>([BII)V

    .line 263
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketKexDhGexReply;->getHostKey()[B

    move-result-object p2

    iput-object p2, p1, Lch/ethz/ssh2/transport/KexState;->hostkey:[B

    .line 265
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->verifier:Lch/ethz/ssh2/ServerHostKeyVerifier;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz p1, :cond_13

    .line 271
    :try_start_e
    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    iget v1, p0, Lch/ethz/ssh2/transport/KexManager;->port:I

    iget-object v3, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v4, v3, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lch/ethz/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    iget-object v3, v3, Lch/ethz/ssh2/transport/KexState;->hostkey:[B

    invoke-interface {p1, p2, v1, v4, v3}, Lch/ethz/ssh2/ServerHostKeyVerifier;->verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz p1, :cond_12

    goto :goto_5

    .line 280
    :cond_12
    :try_start_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server hostkey was not accepted by the verifier callback"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 281
    new-instance p2, Ljava/io/IOException;

    const-string v0, "The server hostkey was not accepted by the verifier callback."

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 283
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 291
    :cond_13
    :goto_5
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p1, p1, Lch/ethz/ssh2/transport/KexState;->dhgx:Lch/ethz/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketKexDhGexReply;->getF()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lch/ethz/ssh2/crypto/dh/DhGroupExchange;->setF(Ljava/math/BigInteger;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 295
    :try_start_10
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v3, p1, Lch/ethz/ssh2/transport/KexState;->dhgx:Lch/ethz/ssh2/crypto/dh/DhGroupExchange;

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->csh:Lch/ethz/ssh2/transport/ClientServerHello;

    invoke-virtual {p2}, Lch/ethz/ssh2/transport/ClientServerHello;->getClientString()[B

    move-result-object v4

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->csh:Lch/ethz/ssh2/transport/ClientServerHello;

    invoke-virtual {p2}, Lch/ethz/ssh2/transport/ClientServerHello;->getServerString()[B

    move-result-object v5

    .line 296
    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p2, p2, Lch/ethz/ssh2/transport/KexState;->localKEX:Lch/ethz/ssh2/packets/PacketKexInit;

    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v6

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p2, p2, Lch/ethz/ssh2/transport/KexState;->remoteKEX:Lch/ethz/ssh2/packets/PacketKexInit;

    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v7

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketKexDhGexReply;->getHostKey()[B

    move-result-object v8

    .line 297
    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v9, p2, Lch/ethz/ssh2/transport/KexState;->dhgexParameters:Lch/ethz/ssh2/DHGexParameters;

    invoke-virtual/range {v3 .. v9}, Lch/ethz/ssh2/crypto/dh/DhGroupExchange;->calculateH([B[B[B[B[BLch/ethz/ssh2/DHGexParameters;)[B

    move-result-object p2

    .line 298
    iput-object p2, p1, Lch/ethz/ssh2/transport/KexState;->H:[B
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 307
    :try_start_11
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketKexDhGexReply;->getSignature()[B

    move-result-object p1

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p2, p2, Lch/ethz/ssh2/transport/KexState;->hostkey:[B

    invoke-direct {p0, p1, p2}, Lch/ethz/ssh2/transport/KexManager;->verifySignature([B[B)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 312
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p2, p1, Lch/ethz/ssh2/transport/KexState;->dhgx:Lch/ethz/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {p2}, Lch/ethz/ssh2/crypto/dh/DhGroupExchange;->getK()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p1, Lch/ethz/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    .line 314
    invoke-direct {p0}, Lch/ethz/ssh2/transport/KexManager;->finishKex()V

    .line 315
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iput v2, p1, Lch/ethz/ssh2/transport/KexState;->state:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    monitor-exit p0

    return-void

    .line 316
    :cond_14
    :try_start_12
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Hostkey signature sent by remote is wrong!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    .line 317
    new-instance p2, Ljava/io/IOException;

    const-string v0, "KEX error."

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 332
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Illegal State in KEX Exchange!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_16
    iget-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v1, v1, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lch/ethz/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group1-sha1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 336
    iget-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v1, v1, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lch/ethz/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group14-sha1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 338
    :cond_17
    iget-object v1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget v1, v1, Lch/ethz/ssh2/transport/KexState;->state:I

    if-ne v1, v0, :cond_1b

    .line 341
    new-instance v0, Lch/ethz/ssh2/packets/PacketKexDHReply;

    invoke-direct {v0, p1, v3, p2}, Lch/ethz/ssh2/packets/PacketKexDHReply;-><init>([BII)V

    .line 343
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketKexDHReply;->getHostKey()[B

    move-result-object p2

    iput-object p2, p1, Lch/ethz/ssh2/transport/KexState;->hostkey:[B

    .line 345
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->verifier:Lch/ethz/ssh2/ServerHostKeyVerifier;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz p1, :cond_19

    .line 351
    :try_start_13
    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    iget v1, p0, Lch/ethz/ssh2/transport/KexManager;->port:I

    iget-object v3, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v4, v3, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lch/ethz/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    iget-object v3, v3, Lch/ethz/ssh2/transport/KexState;->hostkey:[B

    invoke-interface {p1, p2, v1, v4, v3}, Lch/ethz/ssh2/ServerHostKeyVerifier;->verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z

    move-result p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz p1, :cond_18

    goto :goto_6

    .line 360
    :cond_18
    :try_start_14
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server hostkey was not accepted by the verifier callback"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p1

    .line 361
    new-instance p2, Ljava/io/IOException;

    const-string v0, "The server hostkey was not accepted by the verifier callback."

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 363
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 371
    :cond_19
    :goto_6
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p1, p1, Lch/ethz/ssh2/transport/KexState;->dhx:Lch/ethz/ssh2/crypto/dh/DhExchange;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketKexDHReply;->getF()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lch/ethz/ssh2/crypto/dh/DhExchange;->setF(Ljava/math/BigInteger;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 375
    :try_start_15
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v3, p1, Lch/ethz/ssh2/transport/KexState;->dhx:Lch/ethz/ssh2/crypto/dh/DhExchange;

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->csh:Lch/ethz/ssh2/transport/ClientServerHello;

    invoke-virtual {p2}, Lch/ethz/ssh2/transport/ClientServerHello;->getClientString()[B

    move-result-object v4

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->csh:Lch/ethz/ssh2/transport/ClientServerHello;

    invoke-virtual {p2}, Lch/ethz/ssh2/transport/ClientServerHello;->getServerString()[B

    move-result-object v5

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p2, p2, Lch/ethz/ssh2/transport/KexState;->localKEX:Lch/ethz/ssh2/packets/PacketKexInit;

    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v6

    .line 376
    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p2, p2, Lch/ethz/ssh2/transport/KexState;->remoteKEX:Lch/ethz/ssh2/packets/PacketKexInit;

    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v7

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketKexDHReply;->getHostKey()[B

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lch/ethz/ssh2/crypto/dh/DhExchange;->calculateH([B[B[B[B[B)[B

    move-result-object p2

    .line 377
    iput-object p2, p1, Lch/ethz/ssh2/transport/KexState;->H:[B
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 385
    :try_start_16
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketKexDHReply;->getSignature()[B

    move-result-object p1

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p2, p2, Lch/ethz/ssh2/transport/KexState;->hostkey:[B

    invoke-direct {p0, p1, p2}, Lch/ethz/ssh2/transport/KexManager;->verifySignature([B[B)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 390
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object p2, p1, Lch/ethz/ssh2/transport/KexState;->dhx:Lch/ethz/ssh2/crypto/dh/DhExchange;

    invoke-virtual {p2}, Lch/ethz/ssh2/crypto/dh/DhExchange;->getK()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p1, Lch/ethz/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    .line 392
    invoke-direct {p0}, Lch/ethz/ssh2/transport/KexManager;->finishKex()V

    .line 393
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iput v2, p1, Lch/ethz/ssh2/transport/KexState;->state:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    monitor-exit p0

    return-void

    .line 394
    :cond_1a
    :try_start_17
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Hostkey signature sent by remote is wrong!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_4
    move-exception p1

    .line 395
    new-instance p2, Ljava/io/IOException;

    const-string v0, "KEX error."

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 411
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Unkown KEX method! ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iget-object v0, v0, Lch/ethz/ssh2/transport/KexState;->np:Lch/ethz/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lch/ethz/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 412
    :cond_1c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected Kex submessage!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initiateKEX(Lch/ethz/ssh2/crypto/CryptoWishList;Lch/ethz/ssh2/DHGexParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lch/ethz/ssh2/crypto/CryptoWishList;

    .line 2
    iput-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lch/ethz/ssh2/DHGexParameters;

    .line 4
    iget-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lch/ethz/ssh2/transport/KexState;

    invoke-direct {p1}, Lch/ethz/ssh2/transport/KexState;-><init>()V

    iput-object p1, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    .line 8
    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lch/ethz/ssh2/DHGexParameters;

    iput-object p2, p1, Lch/ethz/ssh2/transport/KexState;->dhgexParameters:Lch/ethz/ssh2/DHGexParameters;

    .line 9
    new-instance p1, Lch/ethz/ssh2/packets/PacketKexInit;

    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lch/ethz/ssh2/crypto/CryptoWishList;

    iget-object v0, p0, Lch/ethz/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    invoke-direct {p1, p2, v0}, Lch/ethz/ssh2/packets/PacketKexInit;-><init>(Lch/ethz/ssh2/crypto/CryptoWishList;Ljava/security/SecureRandom;)V

    .line 10
    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->kxs:Lch/ethz/ssh2/transport/KexState;

    iput-object p1, p2, Lch/ethz/ssh2/transport/KexState;->localKEX:Lch/ethz/ssh2/packets/PacketKexInit;

    .line 11
    iget-object p2, p0, Lch/ethz/ssh2/transport/KexManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p1}, Lch/ethz/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lch/ethz/ssh2/transport/TransportManager;->sendKexMessage([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
