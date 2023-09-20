.class public Lch/ethz/ssh2/packets/PacketSessionX11Request;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field payload:[B

.field public recipientChannelID:I

.field public singleConnection:Z

.field public wantReply:Z

.field x11AuthenticationCookie:Ljava/lang/String;

.field x11AuthenticationProtocol:Ljava/lang/String;

.field x11ScreenNumber:I


# direct methods
.method public constructor <init>(IZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->recipientChannelID:I

    .line 5
    iput-boolean p2, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->wantReply:Z

    .line 7
    iput-boolean p3, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->singleConnection:Z

    .line 8
    iput-object p4, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->x11AuthenticationProtocol:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->x11AuthenticationCookie:Ljava/lang/String;

    .line 10
    iput p6, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->x11ScreenNumber:I

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->payload:[B

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x62

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 5
    iget v1, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const-string v1, "x11-req"

    .line 6
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->wantReply:Z

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 9
    iget-boolean v1, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->singleConnection:Z

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 10
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->x11AuthenticationProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->x11AuthenticationCookie:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 12
    iget v1, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->x11ScreenNumber:I

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 14
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->payload:[B

    .line 16
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketSessionX11Request;->payload:[B

    return-object v0
.end method
