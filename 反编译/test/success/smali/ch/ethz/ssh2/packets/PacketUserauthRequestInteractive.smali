.class public Lch/ethz/ssh2/packets/PacketUserauthRequestInteractive;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field payload:[B

.field serviceName:Ljava/lang/String;

.field submethods:[Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestInteractive;->serviceName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestInteractive;->userName:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestInteractive;->submethods:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestInteractive;->payload:[B

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x32

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 5
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestInteractive;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestInteractive;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const-string v1, "keyboard-interactive"

    .line 7
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const-string v1, ""

    .line 8
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestInteractive;->submethods:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestInteractive;->payload:[B

    .line 14
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestInteractive;->payload:[B

    return-object v0
.end method
