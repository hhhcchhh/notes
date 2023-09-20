.class public Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field password:Ljava/lang/String;

.field payload:[B

.field serviceName:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;->serviceName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;->userName:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-array v0, p3, [B

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;->payload:[B

    const/4 v1, 0x0

    .line 9
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    new-instance v0, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lch/ethz/ssh2/packets/TypesReader;-><init>([BII)V

    .line 13
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x32

    if-ne p1, p2, :cond_2

    .line 18
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;->userName:Ljava/lang/String;

    .line 19
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;->serviceName:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "password"

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Padding in SSH_MSG_USERAUTH_REQUEST packet!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This is not a SSH_MSG_USERAUTH_REQUEST with type password!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "This is not a SSH_MSG_USERAUTH_REQUEST! ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;->payload:[B

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x32

    .line 4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 5
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const-string v1, "password"

    .line 7
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 9
    iget-object v1, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;->payload:[B

    .line 12
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthRequestPassword;->payload:[B

    return-object v0
.end method
