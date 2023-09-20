.class public Lch/ethz/ssh2/transport/TransportConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static synthetic class$0:Ljava/lang/Class;

.field private static final log:Lch/ethz/ssh2/log/Logger;


# instance fields
.field cis:Lch/ethz/ssh2/crypto/cipher/CipherInputStream;

.field cos:Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;

.field csh:Lch/ethz/ssh2/transport/ClientServerHello;

.field recv_mac:Lch/ethz/ssh2/crypto/digest/MAC;

.field recv_mac_buffer:[B

.field recv_mac_buffer_cmp:[B

.field final recv_packet_header_buffer:[B

.field recv_packet_header_present:Z

.field recv_padd_blocksize:I

.field final recv_padding_buffer:[B

.field recv_seq_number:I

.field final rnd:Ljava/security/SecureRandom;

.field send_mac:Lch/ethz/ssh2/crypto/digest/MAC;

.field send_mac_buffer:[B

.field final send_packet_header_buffer:[B

.field send_padd_blocksize:I

.field final send_padding_buffer:[B

.field send_seq_number:I

.field useRandomPadding:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lch/ethz/ssh2/transport/TransportConnection;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lch/ethz/ssh2/transport/TransportConnection;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lch/ethz/ssh2/transport/TransportConnection;->class$0:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    invoke-static {v0}, Lch/ethz/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lch/ethz/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lch/ethz/ssh2/transport/TransportConnection;->log:Lch/ethz/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_seq_number:I

    .line 4
    iput v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_seq_number:I

    .line 10
    iput-boolean v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->useRandomPadding:Z

    const/16 v1, 0x8

    .line 18
    iput v1, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    .line 26
    iput v1, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    const/16 v1, 0x100

    new-array v2, v1, [B

    .line 30
    iput-object v2, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    const/4 v2, 0x5

    new-array v3, v2, [B

    .line 32
    iput-object v3, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    new-array v1, v1, [B

    .line 34
    iput-object v1, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    new-array v1, v2, [B

    .line 36
    iput-object v1, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    .line 38
    iput-boolean v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    .line 46
    new-instance v0, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;

    new-instance v1, Lch/ethz/ssh2/crypto/cipher/NullCipher;

    invoke-direct {v1}, Lch/ethz/ssh2/crypto/cipher/NullCipher;-><init>()V

    invoke-direct {v0, v1, p1}, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;-><init>(Lch/ethz/ssh2/crypto/cipher/BlockCipher;Ljava/io/InputStream;)V

    iput-object v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->cis:Lch/ethz/ssh2/crypto/cipher/CipherInputStream;

    .line 47
    new-instance p1, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;

    new-instance v0, Lch/ethz/ssh2/crypto/cipher/NullCipher;

    invoke-direct {v0}, Lch/ethz/ssh2/crypto/cipher/NullCipher;-><init>()V

    invoke-direct {p1, v0, p2}, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;-><init>(Lch/ethz/ssh2/crypto/cipher/BlockCipher;Ljava/io/OutputStream;)V

    iput-object p1, p0, Lch/ethz/ssh2/transport/TransportConnection;->cos:Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;

    .line 48
    iput-object p3, p0, Lch/ethz/ssh2/transport/TransportConnection;->rnd:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public changeRecvCipher(Lch/ethz/ssh2/crypto/cipher/BlockCipher;Lch/ethz/ssh2/crypto/digest/MAC;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->cis:Lch/ethz/ssh2/crypto/cipher/CipherInputStream;

    invoke-virtual {v0, p1}, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->changeCipher(Lch/ethz/ssh2/crypto/cipher/BlockCipher;)V

    .line 2
    iput-object p2, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_mac:Lch/ethz/ssh2/crypto/digest/MAC;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lch/ethz/ssh2/crypto/digest/MAC;->size()I

    move-result v1

    new-array v1, v1, [B

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Lch/ethz/ssh2/crypto/digest/MAC;->size()I

    move-result p2

    new-array v0, p2, [B

    :cond_1
    iput-object v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    .line 5
    invoke-interface {p1}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    const/16 p2, 0x8

    if-ge p1, p2, :cond_2

    .line 7
    iput p2, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    :cond_2
    return-void
.end method

.method public changeSendCipher(Lch/ethz/ssh2/crypto/cipher/BlockCipher;Lch/ethz/ssh2/crypto/digest/MAC;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lch/ethz/ssh2/crypto/cipher/NullCipher;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->useRandomPadding:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->cos:Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {v0, p1}, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->changeCipher(Lch/ethz/ssh2/crypto/cipher/BlockCipher;)V

    .line 9
    iput-object p2, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_mac:Lch/ethz/ssh2/crypto/digest/MAC;

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p2}, Lch/ethz/ssh2/crypto/digest/MAC;->size()I

    move-result p2

    new-array p2, p2, [B

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    .line 11
    invoke-interface {p1}, Lch/ethz/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    const/16 p2, 0x8

    if-ge p1, p2, :cond_2

    .line 13
    iput p2, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    :cond_2
    return-void
.end method

.method public getPacketOverheadEstimate()I
    .locals 2

    .line 1
    iget v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x9

    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public peekNextMessageLength()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->cis:Lch/ethz/ssh2/crypto/cipher/CipherInputStream;

    iget-object v3, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v1, v4}, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 4
    iput-boolean v2, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 8
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x3

    .line 9
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    const/4 v3, 0x4

    .line 11
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const v3, 0x88b8

    const-string v4, ")"

    if-gt v1, v3, :cond_2

    const/16 v3, 0xc

    if-lt v1, v3, :cond_2

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    if-ltz v1, :cond_1

    return v1

    .line 19
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Illegal padding_length in packet from remote ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Illegal packet size! ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receiveMessage([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->cis:Lch/ethz/ssh2/crypto/cipher/CipherInputStream;

    iget-object v3, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-virtual {v0, v3, v2, v1}, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean v2, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    .line 8
    :goto_0
    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    .line 9
    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    const/4 v5, 0x3

    .line 10
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    const/4 v5, 0x4

    .line 12
    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    const v5, 0x88b8

    const-string v6, ")"

    if-gt v3, v5, :cond_7

    const/16 v5, 0xc

    if-lt v3, v5, :cond_7

    sub-int/2addr v3, v0

    sub-int/2addr v3, v4

    if-ltz v3, :cond_6

    if-ge v3, p3, :cond_5

    .line 25
    iget-object p3, p0, Lch/ethz/ssh2/transport/TransportConnection;->cis:Lch/ethz/ssh2/crypto/cipher/CipherInputStream;

    invoke-virtual {p3, p1, p2, v3}, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 26
    iget-object p3, p0, Lch/ethz/ssh2/transport/TransportConnection;->cis:Lch/ethz/ssh2/crypto/cipher/CipherInputStream;

    iget-object v5, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    invoke-virtual {p3, v5, v2, v0}, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 28
    iget-object p3, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_mac:Lch/ethz/ssh2/crypto/digest/MAC;

    if-eqz p3, :cond_3

    .line 30
    iget-object p3, p0, Lch/ethz/ssh2/transport/TransportConnection;->cis:Lch/ethz/ssh2/crypto/cipher/CipherInputStream;

    iget-object v5, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    array-length v6, v5

    invoke-virtual {p3, v5, v2, v6}, Lch/ethz/ssh2/crypto/cipher/CipherInputStream;->readPlain([BII)I

    .line 32
    iget-object p3, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_mac:Lch/ethz/ssh2/crypto/digest/MAC;

    iget v5, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_seq_number:I

    invoke-virtual {p3, v5}, Lch/ethz/ssh2/crypto/digest/MAC;->initMac(I)V

    .line 33
    iget-object p3, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_mac:Lch/ethz/ssh2/crypto/digest/MAC;

    iget-object v5, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-virtual {p3, v5, v2, v1}, Lch/ethz/ssh2/crypto/digest/MAC;->update([BII)V

    .line 34
    iget-object p3, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_mac:Lch/ethz/ssh2/crypto/digest/MAC;

    invoke-virtual {p3, p1, p2, v3}, Lch/ethz/ssh2/crypto/digest/MAC;->update([BII)V

    .line 35
    iget-object p3, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_mac:Lch/ethz/ssh2/crypto/digest/MAC;

    iget-object v1, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    invoke-virtual {p3, v1, v2, v0}, Lch/ethz/ssh2/crypto/digest/MAC;->update([BII)V

    .line 36
    iget-object p3, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_mac:Lch/ethz/ssh2/crypto/digest/MAC;

    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    invoke-virtual {p3, v0, v2}, Lch/ethz/ssh2/crypto/digest/MAC;->getMac([BI)V

    .line 38
    :goto_1
    iget-object p3, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    array-length v0, p3

    if-lt v2, v0, :cond_1

    goto :goto_2

    .line 40
    :cond_1
    aget-byte p3, p3, v2

    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    aget-byte v0, v0, v2

    if-ne p3, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote sent corrupt MAC."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_3
    :goto_2
    iget p3, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_seq_number:I

    add-int/2addr p3, v4

    iput p3, p0, Lch/ethz/ssh2/transport/TransportConnection;->recv_seq_number:I

    .line 47
    sget-object p3, Lch/ethz/ssh2/transport/TransportConnection;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p3}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Received "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lch/ethz/ssh2/packets/Packets;->getMessageName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, " bytes payload"

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x5a

    .line 51
    invoke-virtual {p3, p2, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_4
    return v3

    .line 52
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Receive buffer too small ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, ", need "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "Illegal padding_length in packet from remote ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "Illegal packet size! ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public sendMessage([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lch/ethz/ssh2/transport/TransportConnection;->sendMessage([BIII)V

    return-void
.end method

.method public sendMessage([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lch/ethz/ssh2/transport/TransportConnection;->sendMessage([BIII)V

    return-void
.end method

.method public sendMessage([BIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p4, v0, :cond_0

    const/4 p4, 0x4

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    if-le p4, v1, :cond_1

    const/16 p4, 0x40

    :cond_1
    :goto_0
    add-int/lit8 v1, p3, 0x5

    add-int/2addr p4, v1

    .line 3
    iget v2, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    rem-int v3, p4, v2

    if-eqz v3, :cond_2

    sub-int/2addr v2, v3

    add-int/2addr p4, v2

    :cond_2
    const/16 v2, 0x10

    if-ge p4, v2, :cond_3

    const/16 p4, 0x10

    :cond_3
    sub-int v1, p4, v1

    .line 15
    iget-boolean v2, p0, Lch/ethz/ssh2/transport/TransportConnection;->useRandomPadding:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_4

    goto :goto_3

    .line 27
    :cond_4
    iget-object v4, p0, Lch/ethz/ssh2/transport/TransportConnection;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 28
    iget-object v5, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    int-to-byte v6, v4

    aput-byte v6, v5, v2

    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    .line 29
    aput-byte v7, v5, v6

    add-int/lit8 v6, v2, 0x2

    shr-int/lit8 v7, v4, 0x10

    int-to-byte v7, v7

    .line 30
    aput-byte v7, v5, v6

    add-int/lit8 v6, v2, 0x3

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    .line 31
    aput-byte v4, v5, v6

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v1, :cond_8

    .line 45
    :goto_3
    iget-object v2, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    sub-int/2addr p4, v0

    shr-int/lit8 v4, p4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    shr-int/lit8 v4, p4, 0x10

    int-to-byte v4, v4

    const/4 v5, 0x1

    .line 46
    aput-byte v4, v2, v5

    shr-int/lit8 v4, p4, 0x8

    int-to-byte v4, v4

    const/4 v6, 0x2

    .line 47
    aput-byte v4, v2, v6

    int-to-byte p4, p4

    const/4 v4, 0x3

    .line 48
    aput-byte p4, v2, v4

    int-to-byte p4, v1

    .line 49
    aput-byte p4, v2, v0

    .line 51
    iget-object p4, p0, Lch/ethz/ssh2/transport/TransportConnection;->cos:Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;

    const/4 v0, 0x5

    invoke-virtual {p4, v2, v3, v0}, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 52
    iget-object p4, p0, Lch/ethz/ssh2/transport/TransportConnection;->cos:Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {p4, p1, p2, p3}, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 53
    iget-object p4, p0, Lch/ethz/ssh2/transport/TransportConnection;->cos:Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v2, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    invoke-virtual {p4, v2, v3, v1}, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 55
    iget-object p4, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_mac:Lch/ethz/ssh2/crypto/digest/MAC;

    if-eqz p4, :cond_6

    .line 57
    iget v2, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_seq_number:I

    invoke-virtual {p4, v2}, Lch/ethz/ssh2/crypto/digest/MAC;->initMac(I)V

    .line 58
    iget-object p4, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_mac:Lch/ethz/ssh2/crypto/digest/MAC;

    iget-object v2, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    invoke-virtual {p4, v2, v3, v0}, Lch/ethz/ssh2/crypto/digest/MAC;->update([BII)V

    .line 59
    iget-object p4, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_mac:Lch/ethz/ssh2/crypto/digest/MAC;

    invoke-virtual {p4, p1, p2, p3}, Lch/ethz/ssh2/crypto/digest/MAC;->update([BII)V

    .line 60
    iget-object p4, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_mac:Lch/ethz/ssh2/crypto/digest/MAC;

    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    invoke-virtual {p4, v0, v3, v1}, Lch/ethz/ssh2/crypto/digest/MAC;->update([BII)V

    .line 62
    iget-object p4, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_mac:Lch/ethz/ssh2/crypto/digest/MAC;

    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    invoke-virtual {p4, v0, v3}, Lch/ethz/ssh2/crypto/digest/MAC;->getMac([BI)V

    .line 63
    iget-object p4, p0, Lch/ethz/ssh2/transport/TransportConnection;->cos:Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v0, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    array-length v1, v0

    invoke-virtual {p4, v0, v3, v1}, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->writePlain([BII)V

    .line 66
    :cond_6
    iget-object p4, p0, Lch/ethz/ssh2/transport/TransportConnection;->cos:Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {p4}, Lch/ethz/ssh2/crypto/cipher/CipherOutputStream;->flush()V

    .line 68
    sget-object p4, Lch/ethz/ssh2/transport/TransportConnection;->log:Lch/ethz/ssh2/log/Logger;

    invoke-virtual {p4}, Lch/ethz/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Sent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lch/ethz/ssh2/packets/Packets;->getMessageName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, " bytes payload"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x5a

    invoke-virtual {p4, p2, p1}, Lch/ethz/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 73
    :cond_7
    iget p1, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_seq_number:I

    add-int/2addr p1, v5

    iput p1, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_seq_number:I

    return-void

    .line 74
    :cond_8
    iget-object v4, p0, Lch/ethz/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method
