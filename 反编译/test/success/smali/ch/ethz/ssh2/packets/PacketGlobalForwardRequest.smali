.class public Lch/ethz/ssh2/packets/PacketGlobalForwardRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bindAddress:Ljava/lang/String;

.field public bindPort:I

.field payload:[B

.field public wantReply:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lch/ethz/ssh2/packets/PacketGlobalForwardRequest;->wantReply:Z

    .line 4
    iput-object p2, p0, Lch/ethz/ssh2/packets/PacketGlobalForwardRequest;->bindAddress:Ljava/lang/String;

    .line 5
    iput p3, p0, Lch/ethz/ssh2/packets/PacketGlobalForwardRequest;->bindPort:I

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketGlobalForwardRequest;->payload:[B

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x50

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    const-string v1, "tcpip-forward"

    .line 6
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Lch/ethz/ssh2/packets/PacketGlobalForwardRequest;->wantReply:Z

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 8
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketGlobalForwardRequest;->bindAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lch/ethz/ssh2/packets/PacketGlobalForwardRequest;->bindPort:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 11
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketGlobalForwardRequest;->payload:[B

    .line 13
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketGlobalForwardRequest;->payload:[B

    return-object v0
.end method
