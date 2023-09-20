.class public Lch/ethz/ssh2/packets/PacketChannelWindowAdjust;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field payload:[B

.field public recipientChannelID:I

.field public windowChange:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lch/ethz/ssh2/packets/PacketChannelWindowAdjust;->recipientChannelID:I

    .line 4
    iput p2, p0, Lch/ethz/ssh2/packets/PacketChannelWindowAdjust;->windowChange:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-array v0, p3, [B

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketChannelWindowAdjust;->payload:[B

    const/4 v1, 0x0

    .line 8
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    new-instance v0, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lch/ethz/ssh2/packets/TypesReader;-><init>([BII)V

    .line 12
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x5d

    if-ne p1, p2, :cond_1

    .line 19
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lch/ethz/ssh2/packets/PacketChannelWindowAdjust;->recipientChannelID:I

    .line 20
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lch/ethz/ssh2/packets/PacketChannelWindowAdjust;->windowChange:I

    .line 22
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Padding in SSH_MSG_CHANNEL_WINDOW_ADJUST packet!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    new-instance p2, Ljava/io/IOException;

    .line 25
    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "This is not a SSH_MSG_CHANNEL_WINDOW_ADJUST! ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 27
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
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketChannelWindowAdjust;->payload:[B

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x5d

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 5
    iget v1, p0, Lch/ethz/ssh2/packets/PacketChannelWindowAdjust;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 6
    iget v1, p0, Lch/ethz/ssh2/packets/PacketChannelWindowAdjust;->windowChange:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 7
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketChannelWindowAdjust;->payload:[B

    .line 9
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketChannelWindowAdjust;->payload:[B

    return-object v0
.end method
