.class public Lch/ethz/ssh2/packets/PacketOpenSessionChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field channelID:I

.field initialWindowSize:I

.field maxPacketSize:I

.field payload:[B


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;->channelID:I

    .line 5
    iput p2, p0, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;->initialWindowSize:I

    .line 6
    iput p3, p0, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;->maxPacketSize:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-array v0, p3, [B

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;->payload:[B

    const/4 v1, 0x0

    .line 10
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    new-instance p2, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {p2, p1}, Lch/ethz/ssh2/packets/TypesReader;-><init>([B)V

    .line 14
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p3, 0x5a

    if-ne p1, p3, :cond_1

    .line 20
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;->channelID:I

    .line 21
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;->initialWindowSize:I

    .line 22
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;->maxPacketSize:I

    .line 24
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Padding in SSH_MSG_CHANNEL_OPEN packet!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "This is not a SSH_MSG_CHANNEL_OPEN! ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;->payload:[B

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x5a

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    const-string v1, "session"

    .line 5
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;->channelID:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 7
    iget v1, p0, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;->initialWindowSize:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 8
    iget v1, p0, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;->maxPacketSize:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 9
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;->payload:[B

    .line 11
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketOpenSessionChannel;->payload:[B

    return-object v0
.end method
