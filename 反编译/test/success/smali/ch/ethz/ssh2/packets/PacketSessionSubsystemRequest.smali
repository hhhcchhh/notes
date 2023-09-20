.class public Lch/ethz/ssh2/packets/PacketSessionSubsystemRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field payload:[B

.field public recipientChannelID:I

.field public subsystem:Ljava/lang/String;

.field public wantReply:Z


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lch/ethz/ssh2/packets/PacketSessionSubsystemRequest;->recipientChannelID:I

    .line 4
    iput-boolean p2, p0, Lch/ethz/ssh2/packets/PacketSessionSubsystemRequest;->wantReply:Z

    .line 5
    iput-object p3, p0, Lch/ethz/ssh2/packets/PacketSessionSubsystemRequest;->subsystem:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketSessionSubsystemRequest;->payload:[B

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x62

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 5
    iget v1, p0, Lch/ethz/ssh2/packets/PacketSessionSubsystemRequest;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const-string v1, "subsystem"

    .line 6
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Lch/ethz/ssh2/packets/PacketSessionSubsystemRequest;->wantReply:Z

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 8
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketSessionSubsystemRequest;->subsystem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lch/ethz/ssh2/packets/PacketSessionSubsystemRequest;->payload:[B

    .line 10
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes([B)V

    .line 12
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketSessionSubsystemRequest;->payload:[B

    return-object v0
.end method
