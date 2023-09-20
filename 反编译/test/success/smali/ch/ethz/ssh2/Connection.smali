.class public Lch/ethz/ssh2/Connection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final identification:Ljava/lang/String; = "Ganymed Build_210"


# instance fields
.field private am:Lch/ethz/ssh2/auth/AuthenticationManager;

.field private authenticated:Z

.field private cm:Lch/ethz/ssh2/channel/ChannelManager;

.field private connectionMonitors:Ljava/util/Vector;

.field private cryptoWishList:Lch/ethz/ssh2/crypto/CryptoWishList;

.field private dhgexpara:Lch/ethz/ssh2/DHGexParameters;

.field private generator:Ljava/security/SecureRandom;

.field private final hostname:Ljava/lang/String;

.field private final port:I

.field private proxyData:Lch/ethz/ssh2/ProxyData;

.field private tcpNoDelay:Z

.field private tm:Lch/ethz/ssh2/transport/TransportManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x16

    .line 1
    invoke-direct {p0, p1, v0}, Lch/ethz/ssh2/Connection;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lch/ethz/ssh2/Connection;->authenticated:Z

    .line 6
    new-instance v1, Lch/ethz/ssh2/crypto/CryptoWishList;

    invoke-direct {v1}, Lch/ethz/ssh2/crypto/CryptoWishList;-><init>()V

    iput-object v1, p0, Lch/ethz/ssh2/Connection;->cryptoWishList:Lch/ethz/ssh2/crypto/CryptoWishList;

    .line 8
    new-instance v1, Lch/ethz/ssh2/DHGexParameters;

    invoke-direct {v1}, Lch/ethz/ssh2/DHGexParameters;-><init>()V

    iput-object v1, p0, Lch/ethz/ssh2/Connection;->dhgexpara:Lch/ethz/ssh2/DHGexParameters;

    .line 16
    iput-boolean v0, p0, Lch/ethz/ssh2/Connection;->tcpNoDelay:Z

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lch/ethz/ssh2/Connection;->proxyData:Lch/ethz/ssh2/ProxyData;

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lch/ethz/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    .line 46
    iput-object p1, p0, Lch/ethz/ssh2/Connection;->hostname:Ljava/lang/String;

    .line 47
    iput p2, p0, Lch/ethz/ssh2/Connection;->port:I

    return-void
.end method

.method public static synthetic access$0(Lch/ethz/ssh2/Connection;)Lch/ethz/ssh2/transport/TransportManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    return-object p0
.end method

.method private close(Ljava/lang/Throwable;Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lch/ethz/ssh2/channel/ChannelManager;->closeAllChannels()V

    .line 6
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    xor-int/lit8 p2, p2, 0x1

    .line 8
    invoke-virtual {v0, p1, p2}, Lch/ethz/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 9
    iput-object v1, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    .line 11
    :cond_1
    iput-object v1, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    .line 12
    iput-object v1, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lch/ethz/ssh2/Connection;->authenticated:Z

    return-void
.end method

.method public static declared-synchronized getAvailableCiphers()[Ljava/lang/String;
    .locals 2

    const-class v0, Lch/ethz/ssh2/Connection;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->getDefaultCipherList()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAvailableMACs()[Ljava/lang/String;
    .locals 2

    const-class v0, Lch/ethz/ssh2/Connection;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lch/ethz/ssh2/crypto/digest/MAC;->getMacList()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAvailableServerHostKeyAlgorithms()[Ljava/lang/String;
    .locals 2

    const-class v0, Lch/ethz/ssh2/Connection;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lch/ethz/ssh2/transport/KexManager;->getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final getOrCreateSecureRND()Ljava/security/SecureRandom;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lch/ethz/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    .line 4
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    return-object v0
.end method

.method private removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_8

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_4

    .line 4
    :cond_0
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 8
    :goto_0
    array-length v5, p1

    if-lt v3, v5, :cond_2

    if-ne v4, v0, :cond_1

    return-object v1

    .line 32
    :cond_1
    new-array p1, v4, [Ljava/lang/String;

    .line 33
    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 34
    :cond_2
    aget-object v5, p1, v3

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v4, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    .line 38
    aget-object v7, v1, v6

    if-eqz v7, :cond_5

    :cond_4
    if-eqz v5, :cond_7

    aget-object v7, v1, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v4, 0x1

    .line 48
    aget-object v6, p1, v3

    aput-object v6, v1, v4

    move v4, v5

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    return-object p1
.end method


# virtual methods
.method public declared-synchronized addConnectionMonitor(Lch/ethz/ssh2/ConnectionMonitor;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lch/ethz/ssh2/transport/TransportManager;->setConnectionMonitors(Ljava/util/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cmon argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized authenticateWithDSA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz v0, :cond_5

    .line 4
    iget-boolean v1, p0, Lch/ethz/ssh2/Connection;->authenticated:Z

    if-nez v1, :cond_4

    .line 7
    iget-object v1, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lch/ethz/ssh2/auth/AuthenticationManager;

    invoke-direct {v1, v0}, Lch/ethz/ssh2/auth/AuthenticationManager;-><init>(Lch/ethz/ssh2/transport/TransportManager;)V

    iput-object v1, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    .line 10
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Lch/ethz/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lch/ethz/ssh2/channel/ChannelManager;-><init>(Lch/ethz/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 19
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {p0}, Lch/ethz/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lch/ethz/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z

    move-result p1

    iput-boolean p1, p0, Lch/ethz/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 20
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pem argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "user argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection is already authenticated!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection is not established!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized authenticateWithKeyboardInteractive(Ljava/lang/String;Lch/ethz/ssh2/InteractiveCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lch/ethz/ssh2/Connection;->authenticateWithKeyboardInteractive(Ljava/lang/String;[Ljava/lang/String;Lch/ethz/ssh2/InteractiveCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized authenticateWithKeyboardInteractive(Ljava/lang/String;[Ljava/lang/String;Lch/ethz/ssh2/InteractiveCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_5

    .line 2
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz v0, :cond_4

    .line 5
    iget-boolean v1, p0, Lch/ethz/ssh2/Connection;->authenticated:Z

    if-nez v1, :cond_3

    .line 8
    iget-object v1, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lch/ethz/ssh2/auth/AuthenticationManager;

    invoke-direct {v1, v0}, Lch/ethz/ssh2/auth/AuthenticationManager;-><init>(Lch/ethz/ssh2/transport/TransportManager;)V

    iput-object v1, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    .line 11
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    if-nez v0, :cond_1

    .line 12
    new-instance v0, Lch/ethz/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lch/ethz/ssh2/channel/ChannelManager;-><init>(Lch/ethz/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    :cond_1
    if-eqz p1, :cond_2

    .line 17
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1, p2, p3}, Lch/ethz/ssh2/auth/AuthenticationManager;->authenticateInteractive(Ljava/lang/String;[Ljava/lang/String;Lch/ethz/ssh2/InteractiveCallback;)Z

    move-result p1

    iput-boolean p1, p0, Lch/ethz/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 18
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "user argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection is already authenticated!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection is not established!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not ne NULL!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized authenticateWithPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz v0, :cond_5

    .line 4
    iget-boolean v1, p0, Lch/ethz/ssh2/Connection;->authenticated:Z

    if-nez v1, :cond_4

    .line 7
    iget-object v1, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lch/ethz/ssh2/auth/AuthenticationManager;

    invoke-direct {v1, v0}, Lch/ethz/ssh2/auth/AuthenticationManager;-><init>(Lch/ethz/ssh2/transport/TransportManager;)V

    iput-object v1, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    .line 10
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Lch/ethz/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lch/ethz/ssh2/channel/ChannelManager;-><init>(Lch/ethz/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 19
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1, p2}, Lch/ethz/ssh2/auth/AuthenticationManager;->authenticatePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lch/ethz/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 20
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "password argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "user argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection is already authenticated!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection is not established!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized authenticateWithPublicKey(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_1

    const/16 v0, 0x100

    :try_start_0
    new-array v0, v0, [C

    .line 26
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 28
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 32
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result p2

    if-gez p2, :cond_0

    .line 38
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 40
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lch/ethz/ssh2/Connection;->authenticateWithPublicKey(Ljava/lang/String;[CLjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 v3, 0x0

    .line 41
    :try_start_1
    invoke-virtual {v1, v0, v3, p2}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pemFile argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized authenticateWithPublicKey(Ljava/lang/String;[CLjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz v0, :cond_5

    .line 4
    iget-boolean v1, p0, Lch/ethz/ssh2/Connection;->authenticated:Z

    if-nez v1, :cond_4

    .line 7
    iget-object v1, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lch/ethz/ssh2/auth/AuthenticationManager;

    invoke-direct {v1, v0}, Lch/ethz/ssh2/auth/AuthenticationManager;-><init>(Lch/ethz/ssh2/transport/TransportManager;)V

    iput-object v1, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    .line 10
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Lch/ethz/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lch/ethz/ssh2/channel/ChannelManager;-><init>(Lch/ethz/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 19
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    invoke-direct {p0}, Lch/ethz/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lch/ethz/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z

    move-result p1

    iput-boolean p1, p0, Lch/ethz/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 20
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pemPrivateKey argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "user argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection is already authenticated!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection is not established!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancelRemotePortForwarding(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lch/ethz/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    invoke-virtual {v0, p1}, Lch/ethz/ssh2/channel/ChannelManager;->requestCancelGlobalForward(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The connection is not authenticated."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You need to establish a connection first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Closed due to user request."

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lch/ethz/ssh2/Connection;->close(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect()Lch/ethz/ssh2/ConnectionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, v1, v1}, Lch/ethz/ssh2/Connection;->connect(Lch/ethz/ssh2/ServerHostKeyVerifier;II)Lch/ethz/ssh2/ConnectionInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Lch/ethz/ssh2/ServerHostKeyVerifier;)Lch/ethz/ssh2/ConnectionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Lch/ethz/ssh2/Connection;->connect(Lch/ethz/ssh2/ServerHostKeyVerifier;II)Lch/ethz/ssh2/ConnectionInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized connect(Lch/ethz/ssh2/ServerHostKeyVerifier;II)Lch/ethz/ssh2/ConnectionInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-nez v0, :cond_7

    if-ltz p2, :cond_6

    if-ltz p3, :cond_5

    .line 12
    new-instance v0, Lch/ethz/ssh2/Connection$1$TimeoutState;

    invoke-direct {v0, p0}, Lch/ethz/ssh2/Connection$1$TimeoutState;-><init>(Lch/ethz/ssh2/Connection;)V

    .line 14
    new-instance v1, Lch/ethz/ssh2/transport/TransportManager;

    iget-object v2, p0, Lch/ethz/ssh2/Connection;->hostname:Ljava/lang/String;

    iget v3, p0, Lch/ethz/ssh2/Connection;->port:I

    invoke-direct {v1, v2, v3}, Lch/ethz/ssh2/transport/TransportManager;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    .line 16
    iget-object v2, p0, Lch/ethz/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Lch/ethz/ssh2/transport/TransportManager;->setConnectionMonitors(Ljava/util/Vector;)V

    .line 30
    iget-object v1, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    monitor-enter v1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-lez p3, :cond_0

    .line 41
    :try_start_1
    new-instance v1, Lch/ethz/ssh2/Connection$1;

    invoke-direct {v1, p0, v0}, Lch/ethz/ssh2/Connection$1;-><init>(Lch/ethz/ssh2/Connection;Lch/ethz/ssh2/Connection$1$TimeoutState;)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    .line 57
    invoke-static {v2, v3, v1}, Lch/ethz/ssh2/util/TimeoutService;->addTimeoutHandler(JLjava/lang/Runnable;)Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 62
    :goto_0
    :try_start_2
    iget-object v2, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    iget-object v3, p0, Lch/ethz/ssh2/Connection;->cryptoWishList:Lch/ethz/ssh2/crypto/CryptoWishList;

    iget-object v5, p0, Lch/ethz/ssh2/Connection;->dhgexpara:Lch/ethz/ssh2/DHGexParameters;

    invoke-direct {p0}, Lch/ethz/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v7

    iget-object v8, p0, Lch/ethz/ssh2/Connection;->proxyData:Lch/ethz/ssh2/ProxyData;

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v8}, Lch/ethz/ssh2/transport/TransportManager;->initialize(Lch/ethz/ssh2/crypto/CryptoWishList;Lch/ethz/ssh2/ServerHostKeyVerifier;Lch/ethz/ssh2/DHGexParameters;ILjava/security/SecureRandom;Lch/ethz/ssh2/ProxyData;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 70
    :try_start_3
    iget-object p1, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    iget-boolean p2, p0, Lch/ethz/ssh2/Connection;->tcpNoDelay:Z

    invoke-virtual {p1, p2}, Lch/ethz/ssh2/transport/TransportManager;->setTcpNoDelay(Z)V

    .line 74
    iget-object p1, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lch/ethz/ssh2/transport/TransportManager;->getConnectionInfo(I)Lch/ethz/ssh2/ConnectionInfo;

    move-result-object p1

    if-eqz v1, :cond_2

    .line 80
    invoke-static {v1}, Lch/ethz/ssh2/util/TimeoutService;->cancelTimeoutHandler(Lch/ethz/ssh2/util/TimeoutService$TimeoutToken;)V

    .line 84
    monitor-enter v0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 86
    :try_start_4
    iget-boolean v1, v0, Lch/ethz/ssh2/Connection$1$TimeoutState;->timeoutSocketClosed:Z

    if-nez v1, :cond_1

    .line 92
    iput-boolean p2, v0, Lch/ethz/ssh2/Connection$1$TimeoutState;->isCancelled:Z

    .line 93
    monitor-exit v0

    goto :goto_1

    .line 96
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This exception will be replaced by the one below =)"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 97
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    :goto_1
    monitor-exit p0

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 98
    :try_start_6
    new-instance p2, Ljava/net/SocketTimeoutException;

    const-string v1, "The connect() operation on the socket timed out."

    .line 100
    invoke-direct {p2, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 102
    check-cast p1, Ljava/net/SocketTimeoutException;

    throw p1
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 141
    :goto_2
    :try_start_7
    new-instance p2, Ljava/lang/Throwable;

    const-string v1, "There was a problem during connect."

    invoke-direct {p2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lch/ethz/ssh2/Connection;->close(Ljava/lang/Throwable;Z)V

    .line 143
    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 146
    :try_start_8
    iget-boolean p2, v0, Lch/ethz/ssh2/Connection$1$TimeoutState;->timeoutSocketClosed:Z

    if-nez p2, :cond_4

    .line 147
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 155
    :try_start_9
    instance-of p2, p1, Lch/ethz/ssh2/HTTPProxyException;

    if-eqz p2, :cond_3

    .line 156
    throw p1

    .line 158
    :cond_3
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "There was a problem while connecting to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lch/ethz/ssh2/Connection;->hostname:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    iget v0, p0, Lch/ethz/ssh2/Connection;->port:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 160
    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 161
    :cond_4
    :try_start_a
    new-instance p1, Ljava/net/SocketTimeoutException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "The kexTimeout ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, " ms) expired."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 162
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw p1

    .line 163
    :goto_3
    throw p1

    .line 164
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "kexTimeout must be non-negative!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "connectTimeout must be non-negative!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "Connection to "

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lch/ethz/ssh2/Connection;->hostname:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, " is already in connected state!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createLocalPortForwarder(ILjava/lang/String;I)Lch/ethz/ssh2/LocalPortForwarder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lch/ethz/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lch/ethz/ssh2/LocalPortForwarder;

    iget-object v1, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2, p3}, Lch/ethz/ssh2/LocalPortForwarder;-><init>(Lch/ethz/ssh2/channel/ChannelManager;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 8
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot forward ports, connection is not authenticated."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot forward ports, you need to establish a connection first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createLocalStreamForwarder(Ljava/lang/String;I)Lch/ethz/ssh2/LocalStreamForwarder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lch/ethz/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lch/ethz/ssh2/LocalStreamForwarder;

    iget-object v1, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2}, Lch/ethz/ssh2/LocalStreamForwarder;-><init>(Lch/ethz/ssh2/channel/ChannelManager;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 8
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot forward, connection is not authenticated."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot forward, you need to establish a connection first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSCPClient()Lch/ethz/ssh2/SCPClient;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lch/ethz/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lch/ethz/ssh2/SCPClient;

    invoke-direct {v0, p0}, Lch/ethz/ssh2/SCPClient;-><init>(Lch/ethz/ssh2/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create SCP client, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create SCP client, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forceKeyExchange()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lch/ethz/ssh2/Connection;->cryptoWishList:Lch/ethz/ssh2/crypto/CryptoWishList;

    iget-object v2, p0, Lch/ethz/ssh2/Connection;->dhgexpara:Lch/ethz/ssh2/DHGexParameters;

    invoke-virtual {v0, v1, v2}, Lch/ethz/ssh2/transport/TransportManager;->forceKeyExchange(Lch/ethz/ssh2/crypto/CryptoWishList;Lch/ethz/ssh2/DHGexParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectionInfo()Lch/ethz/ssh2/ConnectionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/transport/TransportManager;->getConnectionInfo(I)Lch/ethz/ssh2/ConnectionInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get details of connection, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHostname()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->hostname:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lch/ethz/ssh2/Connection;->port:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemainingAuthMethods(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_4

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz v0, :cond_3

    .line 4
    iget-boolean v1, p0, Lch/ethz/ssh2/Connection;->authenticated:Z

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lch/ethz/ssh2/auth/AuthenticationManager;

    invoke-direct {v1, v0}, Lch/ethz/ssh2/auth/AuthenticationManager;-><init>(Lch/ethz/ssh2/transport/TransportManager;)V

    iput-object v1, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    .line 10
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Lch/ethz/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lch/ethz/ssh2/channel/ChannelManager;-><init>(Lch/ethz/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    .line 13
    :cond_1
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1}, Lch/ethz/ssh2/auth/AuthenticationManager;->getRemainingMethods(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 14
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection is already authenticated!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection is not established!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "user argument may not be NULL!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lch/ethz/ssh2/Connection;->getRemainingAuthMethods(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    monitor-exit p0

    return v0

    .line 5
    :cond_0
    :try_start_1
    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method argument may not be NULL!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized isAuthenticationComplete()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lch/ethz/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAuthenticationPartialSuccess()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->am:Lch/ethz/ssh2/auth/AuthenticationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lch/ethz/ssh2/auth/AuthenticationManager;->getPartialSuccess()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openSession()Lch/ethz/ssh2/Session;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lch/ethz/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lch/ethz/ssh2/Session;

    iget-object v1, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    invoke-direct {p0}, Lch/ethz/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lch/ethz/ssh2/Session;-><init>(Lch/ethz/ssh2/channel/ChannelManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot open session, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot open session, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestRemotePortForwarding(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lch/ethz/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-lez p2, :cond_0

    if-lez p4, :cond_0

    .line 10
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->cm:Lch/ethz/ssh2/channel/ChannelManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lch/ethz/ssh2/channel/ChannelManager;->requestGlobalForward(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 11
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The connection is not authenticated."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You need to establish a connection first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setClient2ServerCiphers([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lch/ethz/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->checkCipherList([Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->cryptoWishList:Lch/ethz/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lch/ethz/ssh2/crypto/CryptoWishList;->c2s_enc_algos:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setClient2ServerMACs([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lch/ethz/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lch/ethz/ssh2/crypto/digest/MAC;->checkMacList([Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->cryptoWishList:Lch/ethz/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lch/ethz/ssh2/crypto/CryptoWishList;->c2s_mac_algos:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDHGexParameters(Lch/ethz/ssh2/DHGexParameters;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iput-object p1, p0, Lch/ethz/ssh2/Connection;->dhgexpara:Lch/ethz/ssh2/DHGexParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProxyData(Lch/ethz/ssh2/ProxyData;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lch/ethz/ssh2/Connection;->proxyData:Lch/ethz/ssh2/ProxyData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iput-object p1, p0, Lch/ethz/ssh2/Connection;->generator:Ljava/security/SecureRandom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setServer2ClientCiphers([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lch/ethz/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lch/ethz/ssh2/crypto/cipher/BlockCipherFactory;->checkCipherList([Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->cryptoWishList:Lch/ethz/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lch/ethz/ssh2/crypto/CryptoWishList;->s2c_enc_algos:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setServer2ClientMACs([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lch/ethz/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lch/ethz/ssh2/crypto/digest/MAC;->checkMacList([Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->cryptoWishList:Lch/ethz/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lch/ethz/ssh2/crypto/CryptoWishList;->s2c_mac_algos:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setServerHostKeyAlgorithms([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lch/ethz/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lch/ethz/ssh2/transport/KexManager;->checkServerHostkeyAlgorithmsList([Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->cryptoWishList:Lch/ethz/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lch/ethz/ssh2/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTCPNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lch/ethz/ssh2/Connection;->tcpNoDelay:Z

    .line 3
    iget-object v0, p0, Lch/ethz/ssh2/Connection;->tm:Lch/ethz/ssh2/transport/TransportManager;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lch/ethz/ssh2/transport/TransportManager;->setTcpNoDelay(Z)V
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
