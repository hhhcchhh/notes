.class public Lch/ethz/ssh2/packets/PacketKexDhGexRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field max:I

.field min:I

.field n:I

.field payload:[B


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/DHGexParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lch/ethz/ssh2/DHGexParameters;->getMin_group_len()I

    move-result v0

    iput v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexRequest;->min:I

    .line 4
    invoke-virtual {p1}, Lch/ethz/ssh2/DHGexParameters;->getPref_group_len()I

    move-result v0

    iput v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexRequest;->n:I

    .line 5
    invoke-virtual {p1}, Lch/ethz/ssh2/DHGexParameters;->getMax_group_len()I

    move-result p1

    iput p1, p0, Lch/ethz/ssh2/packets/PacketKexDhGexRequest;->max:I

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexRequest;->payload:[B

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x22

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 5
    iget v1, p0, Lch/ethz/ssh2/packets/PacketKexDhGexRequest;->min:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 6
    iget v1, p0, Lch/ethz/ssh2/packets/PacketKexDhGexRequest;->n:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 7
    iget v1, p0, Lch/ethz/ssh2/packets/PacketKexDhGexRequest;->max:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 8
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexRequest;->payload:[B

    .line 10
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexRequest;->payload:[B

    return-object v0
.end method
