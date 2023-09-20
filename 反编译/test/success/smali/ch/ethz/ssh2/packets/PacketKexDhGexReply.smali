.class public Lch/ethz/ssh2/packets/PacketKexDhGexReply;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field f:Ljava/math/BigInteger;

.field hostKey:[B

.field payload:[B

.field signature:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array v0, p3, [B

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexReply;->payload:[B

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance v0, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lch/ethz/ssh2/packets/TypesReader;-><init>([BII)V

    .line 8
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x21

    if-ne p1, p2, :cond_1

    .line 13
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketKexDhGexReply;->hostKey:[B

    .line 14
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketKexDhGexReply;->f:Ljava/math/BigInteger;

    .line 15
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketKexDhGexReply;->signature:[B

    .line 17
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PADDING IN SSH_MSG_KEX_DH_GEX_REPLY!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "This is not a SSH_MSG_KEX_DH_GEX_REPLY! ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getF()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexReply;->f:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getHostKey()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexReply;->hostKey:[B

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexReply;->signature:[B

    return-object v0
.end method
