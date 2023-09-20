.class public Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field password:Ljava/lang/String;

.field payload:[B

.field pk:[B

.field pkAlgoName:Ljava/lang/String;

.field serviceName:Ljava/lang/String;

.field sig:[B

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->serviceName:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->userName:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->pkAlgoName:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->pk:[B

    .line 8
    iput-object p5, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->sig:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array v0, p3, [B

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

    const/4 v1, 0x0

    .line 12
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    new-instance v0, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lch/ethz/ssh2/packets/TypesReader;-><init>([BII)V

    .line 16
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x32

    if-eq p1, p2, :cond_0

    .line 19
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "This is not a SSH_MSG_USERAUTH_REQUEST! ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 24
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getPayload()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x32

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 5
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const-string v1, "publickey"

    .line 7
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 9
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->pkAlgoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->pk:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 11
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->sig:[B

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 12
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

    .line 14
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

    return-object v0
.end method
