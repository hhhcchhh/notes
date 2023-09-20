.class public Lch/ethz/ssh2/packets/PacketSessionPtyRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public character_height:I

.field public character_width:I

.field payload:[B

.field public pixel_height:I

.field public pixel_width:I

.field public recipientChannelID:I

.field public term:Ljava/lang/String;

.field public terminal_modes:[B

.field public wantReply:Z


# direct methods
.method public constructor <init>(IZLjava/lang/String;IIII[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->recipientChannelID:I

    .line 6
    iput-boolean p2, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->wantReply:Z

    .line 7
    iput-object p3, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->term:Ljava/lang/String;

    .line 8
    iput p4, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->character_width:I

    .line 9
    iput p5, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->character_height:I

    .line 10
    iput p6, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->pixel_width:I

    .line 11
    iput p7, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->pixel_height:I

    .line 12
    iput-object p8, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->terminal_modes:[B

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->payload:[B

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x62

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 5
    iget v1, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const-string v1, "pty-req"

    .line 6
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->wantReply:Z

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 8
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->term:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->character_width:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 10
    iget v1, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->character_height:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 11
    iget v1, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->pixel_width:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 12
    iget v1, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->pixel_height:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 13
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->terminal_modes:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 15
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->payload:[B

    .line 17
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketSessionPtyRequest;->payload:[B

    return-object v0
.end method
