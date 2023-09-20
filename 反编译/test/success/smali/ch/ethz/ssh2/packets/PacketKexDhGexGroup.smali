.class public Lch/ethz/ssh2/packets/PacketKexDhGexGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field g:Ljava/math/BigInteger;

.field p:Ljava/math/BigInteger;

.field payload:[B


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

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexGroup;->payload:[B

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance v0, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lch/ethz/ssh2/packets/TypesReader;-><init>([BII)V

    .line 8
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x1f

    if-ne p1, p2, :cond_1

    .line 15
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketKexDhGexGroup;->p:Ljava/math/BigInteger;

    .line 16
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketKexDhGexGroup;->g:Ljava/math/BigInteger;

    .line 18
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PADDING IN SSH_MSG_KEX_DH_GEX_GROUP!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 21
    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "This is not a SSH_MSG_KEX_DH_GEX_GROUP! ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, ")"

    .line 22
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexGroup;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexGroup;->p:Ljava/math/BigInteger;

    return-object v0
.end method
