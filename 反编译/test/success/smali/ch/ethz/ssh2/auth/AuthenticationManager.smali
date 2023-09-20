.class public Lch/ethz/ssh2/auth/AuthenticationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch/ethz/ssh2/transport/MessageHandler;


# instance fields
.field authenticated:Z

.field banner:Ljava/lang/String;

.field connectionClosed:Z

.field initDone:Z

.field isPartialSuccess:Z

.field packets:Ljava/util/Vector;

.field remainingMethods:[Ljava/lang/String;

.field tm:Lch/ethz/ssh2/transport/TransportManager;


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/transport/TransportManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 8
    iput-boolean v0, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 10
    iput-boolean v0, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 11
    iput-boolean v0, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->initDone:Z

    .line 15
    iput-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    return-void
.end method

.method private initialize(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->initDone:Z

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lch/ethz/ssh2/transport/TransportManager;->registerMessageHandler(Lch/ethz/ssh2/transport/MessageHandler;II)V

    .line 5
    new-instance v0, Lch/ethz/ssh2/packets/PacketServiceRequest;

    const-string v1, "ssh-userauth"

    invoke-direct {v0, v1}, Lch/ethz/ssh2/packets/PacketServiceRequest;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketServiceRequest;->getPayload()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 8
    new-instance v0, Lch/ethz/ssh2/packets/PacketUserauthRequestNone;

    const-string v1, "ssh-connection"

    invoke-direct {v0, v1, p1}, Lch/ethz/ssh2/packets/PacketUserauthRequestNone;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketUserauthRequestNone;->getPayload()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 11
    invoke-virtual {p0}, Lch/ethz/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 12
    new-instance v0, Lch/ethz/ssh2/packets/PacketServiceAccept;

    array-length v1, p1

    invoke-direct {v0, p1, v2, v1}, Lch/ethz/ssh2/packets/PacketServiceAccept;-><init>([BII)V

    .line 13
    invoke-virtual {p0}, Lch/ethz/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->initDone:Z

    .line 17
    aget-byte v1, p1, v2

    const/16 v3, 0x34

    if-ne v1, v3, :cond_0

    .line 19
    iput-boolean v0, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->authenticated:Z

    return v0

    :cond_0
    const/16 v0, 0x33

    if-ne v1, v0, :cond_1

    .line 25
    new-instance v0, Lch/ethz/ssh2/packets/PacketUserauthFailure;

    array-length v1, p1

    invoke-direct {v0, p1, v2, v1}, Lch/ethz/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 27
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v2

    .line 32
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "Unexpected SSH message (type "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_2
    iget-boolean p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->authenticated:Z

    return p1
.end method


# virtual methods
.method public authenticateInteractive(Ljava/lang/String;[Ljava/lang/String;Lch/ethz/ssh2/InteractiveCallback;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lch/ethz/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    const-string v1, "keyboard-interactive"

    .line 3
    invoke-virtual {p0, v1}, Lch/ethz/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_0

    new-array p2, v0, [Ljava/lang/String;

    .line 10
    :cond_0
    new-instance v1, Lch/ethz/ssh2/packets/PacketUserauthRequestInteractive;

    const-string v2, "ssh-connection"

    invoke-direct {v1, v2, p1, p2}, Lch/ethz/ssh2/packets/PacketUserauthRequestInteractive;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lch/ethz/ssh2/packets/PacketUserauthRequestInteractive;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 17
    :goto_0
    invoke-virtual {p0}, Lch/ethz/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 19
    aget-byte p2, p1, v0

    const/16 v1, 0x34

    if-ne p2, v1, :cond_1

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 22
    iget-object p2, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    const/16 p3, 0xff

    invoke-virtual {p2, p0, v0, p3}, Lch/ethz/ssh2/transport/TransportManager;->removeMessageHandler(Lch/ethz/ssh2/transport/MessageHandler;II)V

    return p1

    :cond_1
    const/16 v1, 0x33

    if-ne p2, v1, :cond_2

    .line 28
    new-instance p2, Lch/ethz/ssh2/packets/PacketUserauthFailure;

    array-length p3, p1

    invoke-direct {p2, p1, v0, p3}, Lch/ethz/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 30
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 31
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v0

    :cond_2
    const/16 v1, 0x3c

    if-ne p2, v1, :cond_4

    .line 38
    new-instance p2, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;

    array-length v1, p1

    invoke-direct {p2, p1, v0, v1}, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :try_start_1
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->getInstruction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->getNumPrompts()I

    move-result v5

    .line 45
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->getPrompt()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->getEcho()[Z

    move-result-object v7

    move-object v2, p3

    .line 46
    invoke-interface/range {v2 .. v7}, Lch/ethz/ssh2/InteractiveCallback;->replyToChallenge(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_3

    .line 57
    :try_start_2
    new-instance p2, Lch/ethz/ssh2/packets/PacketUserauthInfoResponse;

    invoke-direct {p2, p1}, Lch/ethz/ssh2/packets/PacketUserauthInfoResponse;-><init>([Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketUserauthInfoResponse;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    goto :goto_0

    .line 59
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Your callback may not return NULL!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 60
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Exception in callback."

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 72
    :cond_4
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v1, "Unexpected SSH message (type "

    invoke-direct {p3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, v0

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 73
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Authentication method keyboard-interactive not supported by the server at this stage."

    .line 75
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 137
    iget-object p2, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p2, p1, v0}, Lch/ethz/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 138
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Keyboard-interactive authentication failed."

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public authenticatePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lch/ethz/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    const-string v1, "password"

    .line 3
    invoke-virtual {p0, v1}, Lch/ethz/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;

    const-string v2, "ssh-connection"

    invoke-direct {v1, v2, p1, p2}, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 9
    invoke-virtual {p0}, Lch/ethz/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 11
    aget-byte p2, p1, v0

    const/16 v1, 0x34

    if-ne p2, v1, :cond_0

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 14
    iget-object p2, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    const/16 v1, 0xff

    invoke-virtual {p2, p0, v0, v1}, Lch/ethz/ssh2/transport/TransportManager;->removeMessageHandler(Lch/ethz/ssh2/transport/MessageHandler;II)V

    return p1

    :cond_0
    const/16 v1, 0x33

    if-ne p2, v1, :cond_1

    .line 20
    new-instance p2, Lch/ethz/ssh2/packets/PacketUserauthFailure;

    array-length v1, p1

    invoke-direct {p2, p1, v0, v1}, Lch/ethz/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 22
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 23
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v0

    .line 28
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unexpected SSH message (type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 29
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Authentication method password not supported by the server at this stage."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 58
    iget-object p2, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p2, p1, v0}, Lch/ethz/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 59
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Password authentication failed."

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method public authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "publickey"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lch/ethz/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 3
    invoke-virtual {p0, v0}, Lch/ethz/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    invoke-static {p2, p3}, Lch/ethz/ssh2/crypto/PEMDecoder;->decode([CLjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    instance-of p3, p2, Lch/ethz/ssh2/signature/DSAPrivateKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "ssh-connection"

    const/16 v3, 0x32

    const/4 v4, 0x1

    if-eqz p3, :cond_0

    .line 10
    :try_start_1
    check-cast p2, Lch/ethz/ssh2/signature/DSAPrivateKey;

    .line 12
    invoke-virtual {p2}, Lch/ethz/ssh2/signature/DSAPrivateKey;->getPublicKey()Lch/ethz/ssh2/signature/DSAPublicKey;

    move-result-object p3

    invoke-static {p3}, Lch/ethz/ssh2/signature/DSASHA1Verify;->encodeSSHDSAPublicKey(Lch/ethz/ssh2/signature/DSAPublicKey;)[B

    move-result-object v9

    .line 14
    new-instance p3, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {p3}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 16
    iget-object v5, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v5}, Lch/ethz/ssh2/transport/TransportManager;->getSessionIdentifier()[B

    move-result-object v5

    .line 18
    array-length v6, v5

    invoke-virtual {p3, v5, v1, v6}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 19
    invoke-virtual {p3, v3}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 20
    invoke-virtual {p3, p1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p3, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p3, v0}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p3, v4}, Lch/ethz/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    const-string v0, "ssh-dss"

    .line 24
    invoke-virtual {p3, v0}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 25
    array-length v0, v9

    invoke-virtual {p3, v9, v1, v0}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 27
    invoke-virtual {p3}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p3

    .line 29
    invoke-static {p3, p2, p4}, Lch/ethz/ssh2/signature/DSASHA1Verify;->generateSignature([BLch/ethz/ssh2/signature/DSAPrivateKey;Ljava/security/SecureRandom;)Lch/ethz/ssh2/signature/DSASignature;

    move-result-object p2

    .line 31
    invoke-static {p2}, Lch/ethz/ssh2/signature/DSASHA1Verify;->encodeSSHDSASignature(Lch/ethz/ssh2/signature/DSASignature;)[B

    move-result-object v10

    .line 33
    new-instance p2, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;

    const-string v6, "ssh-connection"

    const-string v8, "ssh-dss"

    move-object v5, p2

    move-object v7, p1

    .line 35
    invoke-direct/range {v5 .. v10}, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 37
    iget-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    goto :goto_0

    .line 39
    :cond_0
    instance-of p3, p2, Lch/ethz/ssh2/signature/RSAPrivateKey;

    if-eqz p3, :cond_3

    .line 41
    check-cast p2, Lch/ethz/ssh2/signature/RSAPrivateKey;

    .line 43
    invoke-virtual {p2}, Lch/ethz/ssh2/signature/RSAPrivateKey;->getPublicKey()Lch/ethz/ssh2/signature/RSAPublicKey;

    move-result-object p3

    invoke-static {p3}, Lch/ethz/ssh2/signature/RSASHA1Verify;->encodeSSHRSAPublicKey(Lch/ethz/ssh2/signature/RSAPublicKey;)[B

    move-result-object v9

    .line 45
    new-instance p3, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {p3}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 47
    iget-object p4, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p4}, Lch/ethz/ssh2/transport/TransportManager;->getSessionIdentifier()[B

    move-result-object p4

    .line 49
    array-length v5, p4

    invoke-virtual {p3, p4, v1, v5}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 50
    invoke-virtual {p3, v3}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 51
    invoke-virtual {p3, p1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p3, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3, v0}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3, v4}, Lch/ethz/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    const-string p4, "ssh-rsa"

    .line 55
    invoke-virtual {p3, p4}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 56
    array-length p4, v9

    invoke-virtual {p3, v9, v1, p4}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 59
    invoke-virtual {p3}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p3

    .line 61
    invoke-static {p3, p2}, Lch/ethz/ssh2/signature/RSASHA1Verify;->generateSignature([BLch/ethz/ssh2/signature/RSAPrivateKey;)Lch/ethz/ssh2/signature/RSASignature;

    move-result-object p2

    .line 63
    invoke-static {p2}, Lch/ethz/ssh2/signature/RSASHA1Verify;->encodeSSHRSASignature(Lch/ethz/ssh2/signature/RSASignature;)[B

    move-result-object v10

    .line 65
    new-instance p2, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;

    const-string v6, "ssh-connection"

    const-string v8, "ssh-rsa"

    move-object v5, p2

    move-object v7, p1

    .line 67
    invoke-direct/range {v5 .. v10}, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 69
    iget-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lch/ethz/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 76
    :goto_0
    invoke-virtual {p0}, Lch/ethz/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 78
    aget-byte p2, p1, v1

    const/16 p3, 0x34

    if-ne p2, p3, :cond_1

    .line 80
    iput-boolean v4, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 81
    iget-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    const/16 p2, 0xff

    invoke-virtual {p1, p0, v1, p2}, Lch/ethz/ssh2/transport/TransportManager;->removeMessageHandler(Lch/ethz/ssh2/transport/MessageHandler;II)V

    return v4

    :cond_1
    const/16 p3, 0x33

    if-ne p2, p3, :cond_2

    .line 87
    new-instance p2, Lch/ethz/ssh2/packets/PacketUserauthFailure;

    array-length p3, p1

    invoke-direct {p2, p1, v1, p3}, Lch/ethz/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 89
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 90
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v1

    .line 95
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "Unexpected SSH message (type "

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, v1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 96
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unknown private key type returned by the PEM decoder."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Authentication method publickey not supported by the server at this stage."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 189
    iget-object p2, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {p2, p1, v1}, Lch/ethz/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 190
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Publickey authentication failed."

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method public deQueue()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    monitor-enter v0

    .line 3
    :catch_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    iget-object v1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 19
    iget-object v2, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 20
    monitor-exit v0

    return-object v1

    .line 21
    :cond_0
    iget-boolean v1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->connectionClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 27
    :try_start_1
    iget-object v1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 28
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The connection is closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    iget-object v2, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->tm:Lch/ethz/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lch/ethz/ssh2/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public getNextMessage()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lch/ethz/ssh2/auth/AuthenticationManager;->deQueue()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    aget-byte v2, v0, v1

    const/16 v3, 0x35

    if-eq v2, v3, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance v2, Lch/ethz/ssh2/packets/PacketUserauthBanner;

    array-length v3, v0

    invoke-direct {v2, v0, v1, v3}, Lch/ethz/ssh2/packets/PacketUserauthBanner;-><init>([BII)V

    .line 8
    invoke-virtual {v2}, Lch/ethz/ssh2/packets/PacketUserauthBanner;->getBanner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->banner:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPartialSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v0
.end method

.method public getRemainingMethods(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lch/ethz/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 2
    iget-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    return-object p1
.end method

.method public handleMessage([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    monitor-enter v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    goto :goto_0

    .line 9
    :cond_0
    new-array v2, p2, [B

    const/4 v3, 0x0

    .line 10
    invoke-static {p1, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 14
    :goto_0
    iget-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 16
    iget-object p1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    const/4 p2, 0x5

    if-gt p1, p2, :cond_1

    .line 17
    monitor-exit v0

    return-void

    .line 34
    :cond_1
    iput-boolean v1, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    .line 35
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error, peer is flooding us with authentication packets."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public methodPossible(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lch/ethz/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    array-length v3, v2

    if-lt v0, v3, :cond_1

    return v1

    .line 6
    :cond_1
    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
