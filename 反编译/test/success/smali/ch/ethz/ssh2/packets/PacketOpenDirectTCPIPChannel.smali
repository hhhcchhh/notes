.class public Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field channelID:I

.field host_to_connect:Ljava/lang/String;

.field initialWindowSize:I

.field maxPacketSize:I

.field originator_IP_address:Ljava/lang/String;

.field originator_port:I

.field payload:[B

.field port_to_connect:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->channelID:I

    .line 6
    iput p2, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->initialWindowSize:I

    .line 7
    iput p3, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->maxPacketSize:I

    .line 8
    iput-object p4, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->host_to_connect:Ljava/lang/String;

    .line 9
    iput p5, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->port_to_connect:I

    .line 10
    iput-object p6, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->originator_IP_address:Ljava/lang/String;

    .line 11
    iput p7, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->originator_port:I

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->payload:[B

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x5a

    .line 5
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    const-string v1, "direct-tcpip"

    .line 6
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->channelID:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 8
    iget v1, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->initialWindowSize:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 9
    iget v1, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->maxPacketSize:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 10
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->host_to_connect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 11
    iget v1, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->port_to_connect:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 12
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->originator_IP_address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 13
    iget v1, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->originator_port:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 15
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->payload:[B

    .line 17
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketOpenDirectTCPIPChannel;->payload:[B

    return-object v0
.end method
