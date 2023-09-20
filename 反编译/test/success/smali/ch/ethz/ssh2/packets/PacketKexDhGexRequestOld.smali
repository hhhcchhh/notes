.class public Lch/ethz/ssh2/packets/PacketKexDhGexRequestOld;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field n:I

.field payload:[B


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/DHGexParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lch/ethz/ssh2/DHGexParameters;->getPref_group_len()I

    move-result p1

    iput p1, p0, Lch/ethz/ssh2/packets/PacketKexDhGexRequestOld;->n:I

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexRequestOld;->payload:[B

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x1e

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 5
    iget v1, p0, Lch/ethz/ssh2/packets/PacketKexDhGexRequestOld;->n:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 6
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexRequestOld;->payload:[B

    .line 8
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexRequestOld;->payload:[B

    return-object v0
.end method
