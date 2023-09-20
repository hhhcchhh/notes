.class public Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field echo:[Z

.field instruction:Ljava/lang/String;

.field languageTag:Ljava/lang/String;

.field name:Ljava/lang/String;

.field numPrompts:I

.field payload:[B

.field prompt:[Ljava/lang/String;


# direct methods
.method public constructor <init>([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array v0, p3, [B

    iput-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->payload:[B

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance v0, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lch/ethz/ssh2/packets/TypesReader;-><init>([BII)V

    .line 8
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x3c

    if-ne p1, p2, :cond_2

    .line 13
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->name:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->instruction:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->languageTag:Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->numPrompts:I

    .line 19
    new-array p2, p1, [Ljava/lang/String;

    iput-object p2, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->prompt:[Ljava/lang/String;

    .line 20
    new-array p1, p1, [Z

    iput-object p1, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->echo:[Z

    .line 22
    :goto_0
    iget p1, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->numPrompts:I

    if-lt v1, p1, :cond_1

    .line 28
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Padding in SSH_MSG_USERAUTH_INFO_REQUEST packet!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_1
    iget-object p1, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->prompt:[Ljava/lang/String;

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 31
    iget-object p1, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->echo:[Z

    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readBoolean()Z

    move-result p2

    aput-boolean p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "This is not a SSH_MSG_USERAUTH_INFO_REQUEST! ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public getEcho()[Z
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->echo:[Z

    return-object v0
.end method

.method public getInstruction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->instruction:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->languageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumPrompts()I
    .locals 1

    .line 1
    iget v0, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->numPrompts:I

    return v0
.end method

.method public getPrompt()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/packets/PacketUserauthInfoRequest;->prompt:[Ljava/lang/String;

    return-object v0
.end method
