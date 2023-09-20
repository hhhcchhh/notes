.class public Lch/ethz/ssh2/packets/PacketKexDhGexInit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field e:Ljava/math/BigInteger;

.field payload:[B


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketKexDhGexInit;->e:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexInit;->payload:[B

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x20

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 5
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketKexDhGexInit;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 6
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexInit;->payload:[B

    .line 8
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketKexDhGexInit;->payload:[B

    return-object v0
.end method
