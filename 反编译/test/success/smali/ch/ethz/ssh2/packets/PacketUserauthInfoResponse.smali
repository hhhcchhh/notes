.class public Lch/ethz/ssh2/packets/PacketUserauthInfoResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field payload:[B

.field responses:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoResponse;->responses:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoResponse;->payload:[B

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x3d

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 5
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoResponse;->responses:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoResponse;->responses:[Ljava/lang/String;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 9
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoResponse;->payload:[B

    goto :goto_1

    .line 10
    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_1
    :goto_1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoResponse;->payload:[B

    return-object v0
.end method
