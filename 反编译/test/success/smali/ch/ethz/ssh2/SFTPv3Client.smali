.class public Lch/ethz/ssh2/SFTPv3Client;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field charsetName:Ljava/lang/String;

.field final conn:Lch/ethz/ssh2/Connection;

.field final debug:Ljava/io/PrintStream;

.field flag_closed:Z

.field is:Ljava/io/InputStream;

.field next_request_id:I

.field os:Ljava/io/OutputStream;

.field protocol_version:I

.field server_extensions:Ljava/util/HashMap;

.field final sess:Lch/ethz/ssh2/Session;


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lch/ethz/ssh2/SFTPv3Client;-><init>(Lch/ethz/ssh2/Connection;Ljava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Lch/ethz/ssh2/Connection;Ljava/io/PrintStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lch/ethz/ssh2/SFTPv3Client;->flag_closed:Z

    .line 7
    iput v0, p0, Lch/ethz/ssh2/SFTPv3Client;->protocol_version:I

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/ethz/ssh2/SFTPv3Client;->server_extensions:Ljava/util/HashMap;

    const/16 v0, 0x3e8

    .line 10
    iput v0, p0, Lch/ethz/ssh2/SFTPv3Client;->next_request_id:I

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 29
    iput-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->conn:Lch/ethz/ssh2/Connection;

    .line 30
    iput-object p2, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p2, :cond_0

    const-string v0, "Opening session and starting SFTP subsystem."

    .line 33
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-virtual {p1}, Lch/ethz/ssh2/Connection;->openSession()Lch/ethz/ssh2/Session;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->sess:Lch/ethz/ssh2/Session;

    const-string p2, "sftp"

    .line 36
    invoke-virtual {p1, p2}, Lch/ethz/ssh2/Session;->startSubSystem(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lch/ethz/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p0, Lch/ethz/ssh2/SFTPv3Client;->is:Ljava/io/InputStream;

    .line 39
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Lch/ethz/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object p1

    const/16 v0, 0x800

    invoke-direct {p2, p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object p2, p0, Lch/ethz/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    .line 41
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->is:Ljava/io/InputStream;

    if-eqz p1, :cond_1

    .line 44
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->init()V

    return-void

    .line 45
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "There is a problem with the streams of the underlying channel."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept null argument!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final checkHandleValidAndOpen(Lch/ethz/ssh2/SFTPv3FileHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lch/ethz/ssh2/SFTPv3FileHandle;->client:Lch/ethz/ssh2/SFTPv3Client;

    if-ne v0, p0, :cond_1

    .line 4
    iget-boolean p1, p1, Lch/ethz/ssh2/SFTPv3FileHandle;->isClosed:Z

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The file handle is closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The file handle was created with another SFTPv3FileHandle instance."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final closeHandle([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 3
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 6
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 8
    invoke-direct {p0, v0}, Lch/ethz/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method private createAttrs(Lch/ethz/ssh2/SFTPv3FileAttributes;)[B
    .locals 3

    .line 1
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, p1, Lch/ethz/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 14
    :cond_1
    iget-object v2, p1, Lch/ethz/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lch/ethz/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x2

    .line 17
    :cond_2
    iget-object v2, p1, Lch/ethz/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x4

    .line 20
    :cond_3
    iget-object v2, p1, Lch/ethz/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lch/ethz/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x8

    .line 23
    :cond_4
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 25
    iget-object v1, p1, Lch/ethz/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 26
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT64(J)V

    .line 28
    :cond_5
    iget-object v1, p1, Lch/ethz/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    iget-object v2, p1, Lch/ethz/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 31
    iget-object v1, p1, Lch/ethz/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 34
    :cond_6
    iget-object v1, p1, Lch/ethz/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 35
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 37
    :cond_7
    iget-object v1, p1, Lch/ethz/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    iget-object v2, p1, Lch/ethz/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 40
    iget-object p1, p1, Lch/ethz/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 44
    :cond_8
    :goto_0
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method private final expandString([BII)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p3, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int v2, p2, v1

    .line 18
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_1

    int-to-char v2, v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 26
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "{0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private expectStatusOKMessage(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x84d0

    .line 1
    invoke-direct {p0, v0}, Lch/ethz/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v0

    .line 3
    iget-object v1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v1, :cond_0

    const-string v2, "Got REPLY."

    .line 5
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 9
    :cond_0
    new-instance v1, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v1, v0}, Lch/ethz/ssh2/packets/TypesReader;-><init>([B)V

    .line 11
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result v0

    .line 13
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, p1, :cond_3

    const/16 p1, 0x65

    if-ne v0, p1, :cond_2

    .line 20
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 25
    :cond_1
    new-instance v0, Lch/ethz/ssh2/SFTPException;

    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lch/ethz/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 26
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final generateNextRequestID()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 3
    :try_start_0
    iget v0, p0, Lch/ethz/ssh2/SFTPv3Client;->next_request_id:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lch/ethz/ssh2/SFTPv3Client;->next_request_id:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    const-string v1, "Sending SSH_FXP_INIT (3)..."

    .line 2
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v0, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 6
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 10
    iget-object v0, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v0, :cond_1

    const-string v2, "Waiting for SSH_FXP_VERSION..."

    .line 11
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    :cond_1
    new-instance v0, Lch/ethz/ssh2/packets/TypesReader;

    const v2, 0x84d0

    invoke-direct {p0, v2}, Lch/ethz/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lch/ethz/ssh2/packets/TypesReader;-><init>([B)V

    .line 15
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 22
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    iput v2, p0, Lch/ethz/ssh2/SFTPv3Client;->protocol_version:I

    .line 24
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_2

    .line 25
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "SSH_FXP_VERSION: protocol_version = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lch/ethz/ssh2/SFTPv3Client;->protocol_version:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    :cond_2
    iget v2, p0, Lch/ethz/ssh2/SFTPv3Client;->protocol_version:I

    if-ne v2, v1, :cond_5

    .line 32
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->remain()I

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 34
    :cond_4
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v0}, Lch/ethz/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v2

    .line 36
    iget-object v4, p0, Lch/ethz/ssh2/SFTPv3Client;->server_extensions:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v4, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v4, :cond_3

    .line 39
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "SSH_FXP_VERSION: extension: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, " = \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    array-length v5, v2

    invoke-direct {p0, v2, v3, v5}, Lch/ethz/ssh2/SFTPv3Client;->expandString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Server version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lch/ethz/ssh2/SFTPv3Client;->protocol_version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is currently not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "The server did not send a SSH_FXP_VERSION packet (got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final openDirectory(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 3
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string v2, "Sending SSH_FXP_OPENDIR..."

    .line 8
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 12
    :cond_0
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 14
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 16
    new-instance v1, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lch/ethz/ssh2/packets/TypesReader;-><init>([B)V

    .line 18
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 20
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, v0, :cond_4

    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    .line 26
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_1

    const-string v0, "Got SSH_FXP_HANDLE."

    .line 28
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 32
    :cond_1
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x65

    if-eq p1, v0, :cond_3

    .line 37
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_3
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 40
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Lch/ethz/ssh2/SFTPException;

    invoke-direct {v1, v0, p1}, Lch/ethz/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 43
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private openFile(Ljava/lang/String;ILch/ethz/ssh2/SFTPv3FileAttributes;)Lch/ethz/ssh2/SFTPv3FileHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 3
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p2}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 6
    invoke-direct {p0, p3}, Lch/ethz/ssh2/SFTPv3Client;->createAttrs(Lch/ethz/ssh2/SFTPv3FileAttributes;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lch/ethz/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 8
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string p2, "Sending SSH_FXP_OPEN..."

    .line 10
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 14
    :cond_0
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x3

    invoke-direct {p0, p2, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 16
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 18
    new-instance p2, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {p2, p1}, Lch/ethz/ssh2/packets/TypesReader;-><init>([B)V

    .line 20
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 22
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p3

    if-ne p3, v0, :cond_4

    const/16 p3, 0x66

    if-ne p1, p3, :cond_2

    .line 28
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_1

    const-string p3, "Got SSH_FXP_HANDLE."

    .line 30
    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 34
    :cond_1
    new-instance p1, Lch/ethz/ssh2/SFTPv3FileHandle;

    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lch/ethz/ssh2/SFTPv3FileHandle;-><init>(Lch/ethz/ssh2/SFTPv3Client;[B)V

    return-object p1

    :cond_2
    const/16 p3, 0x65

    if-eq p1, p3, :cond_3

    .line 38
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "The SFTP server sent an unexpected packet type ("

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

    .line 40
    :cond_3
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 41
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 43
    new-instance p3, Lch/ethz/ssh2/SFTPException;

    invoke-direct {p3, p2, p1}, Lch/ethz/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw p3

    .line 44
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid id field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readAttrs(Lch/ethz/ssh2/packets/TypesReader;)Lch/ethz/ssh2/SFTPv3FileAttributes;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lch/ethz/ssh2/SFTPv3FileAttributes;

    invoke-direct {v0}, Lch/ethz/ssh2/SFTPv3FileAttributes;-><init>()V

    .line 3
    invoke-virtual {p1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_0

    const-string v3, "SSH_FILEXFER_ATTR_SIZE"

    .line 8
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9
    :cond_0
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT64()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput-object v2, v0, Lch/ethz/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    :cond_1
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_3

    .line 14
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_2

    const-string v3, "SSH_FILEXFER_ATTR_V3_UIDGID"

    .line 15
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    :cond_2
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v0, Lch/ethz/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    .line 17
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v0, Lch/ethz/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    :cond_3
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_5

    .line 22
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_4

    const-string v3, "SSH_FILEXFER_ATTR_PERMISSIONS"

    .line 23
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    :cond_4
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v0, Lch/ethz/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    :cond_5
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_7

    .line 29
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_6

    const-string v3, "SSH_FILEXFER_ATTR_V3_ACMODTIME"

    .line 30
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    :cond_6
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v0, Lch/ethz/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Integer;

    .line 32
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v0, Lch/ethz/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Integer;

    :cond_7
    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    .line 38
    invoke-virtual {p1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 40
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_8

    .line 41
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "SSH_FILEXFER_ATTR_EXTENDED ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    :goto_0
    if-gtz v1, :cond_9

    goto :goto_1

    .line 47
    :cond_9
    invoke-virtual {p1}, Lch/ethz/ssh2/packets/TypesReader;->readByteString()[B

    .line 48
    invoke-virtual {p1}, Lch/ethz/ssh2/packets/TypesReader;->readByteString()[B

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_a
    :goto_1
    return-object v0
.end method

.method private final readBytes([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-gtz p3, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lch/ethz/ssh2/SFTPv3Client;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_2

    if-eqz v0, :cond_1

    if-gt v0, p3, :cond_1

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Underlying stream implementation is bogus!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected end of sftp stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final receiveMessage(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v1, v2, v0}, Lch/ethz/ssh2/SFTPv3Client;->readBytes([BII)V

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    const/4 v3, 0x3

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    if-gt v0, p1, :cond_0

    if-lez v0, :cond_0

    .line 10
    new-array p1, v0, [B

    .line 12
    invoke-direct {p0, p1, v2, v0}, Lch/ethz/ssh2/SFTPv3Client;->readBytes([BII)V

    return-object p1

    .line 13
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Illegal sftp packet len: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final scanDirectory([B)Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 5
    :goto_0
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v1

    .line 7
    new-instance v2, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v2}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 8
    array-length v3, p1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 10
    iget-object v3, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v3, :cond_0

    const-string v4, "Sending SSH_FXP_READDIR..."

    .line 12
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    iget-object v3, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 16
    :cond_0
    invoke-virtual {v2}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct {p0, v3, v1, v2}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const v2, 0x84d0

    .line 18
    invoke-direct {p0, v2}, Lch/ethz/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v2

    .line 20
    iget-object v3, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v3, :cond_1

    const-string v4, "Got REPLY."

    .line 22
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    iget-object v3, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 26
    :cond_1
    new-instance v3, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v3, v2}, Lch/ethz/ssh2/packets/TypesReader;-><init>([B)V

    .line 28
    invoke-virtual {v3}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result v2

    .line 30
    invoke-virtual {v3}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v4

    if-ne v4, v1, :cond_8

    const/16 v1, 0x68

    if-ne v2, v1, :cond_5

    .line 36
    invoke-virtual {v3}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 38
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_2

    .line 39
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Parsing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " name entries..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-gtz v1, :cond_3

    goto :goto_0

    .line 43
    :cond_3
    new-instance v2, Lch/ethz/ssh2/SFTPv3DirectoryEntry;

    invoke-direct {v2}, Lch/ethz/ssh2/SFTPv3DirectoryEntry;-><init>()V

    .line 45
    iget-object v4, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lch/ethz/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lch/ethz/ssh2/SFTPv3DirectoryEntry;->filename:Ljava/lang/String;

    .line 46
    iget-object v4, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lch/ethz/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lch/ethz/ssh2/SFTPv3DirectoryEntry;->longEntry:Ljava/lang/String;

    .line 48
    invoke-direct {p0, v3}, Lch/ethz/ssh2/SFTPv3Client;->readAttrs(Lch/ethz/ssh2/packets/TypesReader;)Lch/ethz/ssh2/SFTPv3FileAttributes;

    move-result-object v4

    iput-object v4, v2, Lch/ethz/ssh2/SFTPv3DirectoryEntry;->attributes:Lch/ethz/ssh2/SFTPv3FileAttributes;

    .line 49
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 51
    iget-object v4, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v4, :cond_4

    .line 52
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "File: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lch/ethz/ssh2/SFTPv3DirectoryEntry;->filename:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    const/16 p1, 0x65

    if-ne v2, p1, :cond_7

    .line 61
    invoke-virtual {v3}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    return-object v0

    .line 66
    :cond_6
    new-instance v0, Lch/ethz/ssh2/SFTPException;

    invoke-virtual {v3}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lch/ethz/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 67
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "The SFTP server sent an unexpected packet type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final sendMessage(II[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    array-length v5, p3

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[BII)V

    return-void
.end method

.method private final sendMessage(II[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p5, 0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 1
    :cond_0
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v3, v0, 0x18

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v3, v0, 0x10

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 3
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v3, v0, 0x8

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 4
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 5
    iget-object v0, p0, Lch/ethz/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    if-eq p1, v1, :cond_1

    .line 9
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v0, p2, 0x18

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 10
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v0, p2, 0x10

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 11
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v0, p2, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 12
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 15
    :cond_1
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/OutputStream;->write([BII)V

    .line 16
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private statBoth(Ljava/lang/String;I)Lch/ethz/ssh2/SFTPv3FileAttributes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 3
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string v2, "Sending SSH_FXP_STAT/SSH_FXP_LSTAT..."

    .line 8
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 12
    :cond_0
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 14
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 16
    iget-object p2, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p2, :cond_1

    const-string v1, "Got REPLY."

    .line 18
    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/io/PrintStream;->flush()V

    .line 22
    :cond_1
    new-instance p2, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {p2, p1}, Lch/ethz/ssh2/packets/TypesReader;-><init>([B)V

    .line 24
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 26
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    if-ne v1, v0, :cond_4

    const/16 v0, 0x69

    if-ne p1, v0, :cond_2

    .line 32
    invoke-direct {p0, p2}, Lch/ethz/ssh2/SFTPv3Client;->readAttrs(Lch/ethz/ssh2/packets/TypesReader;)Lch/ethz/ssh2/SFTPv3FileAttributes;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x65

    if-eq p1, v0, :cond_3

    .line 36
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "The SFTP server sent an unexpected packet type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 38
    :cond_3
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 40
    new-instance v0, Lch/ethz/ssh2/SFTPException;

    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lch/ethz/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 41
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid id field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 3
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string v2, "Sending SSH_FXP_REALPATH..."

    .line 8
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 12
    :cond_0
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 14
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 16
    iget-object v1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v1, :cond_1

    const-string v2, "Got REPLY."

    .line 18
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 22
    :cond_1
    new-instance v1, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lch/ethz/ssh2/packets/TypesReader;-><init>([B)V

    .line 24
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 26
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, v0, :cond_5

    const/16 v0, 0x68

    if-ne p1, v0, :cond_3

    .line 32
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 37
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lch/ethz/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 38
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid SSH_FXP_NAME packet."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v0, 0x65

    if-eq p1, v0, :cond_4

    .line 44
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_4
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 48
    new-instance v0, Lch/ethz/ssh2/SFTPException;

    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lch/ethz/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 49
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/SFTPv3Client;->sess:Lch/ethz/ssh2/Session;

    invoke-virtual {v0}, Lch/ethz/ssh2/Session;->close()V

    return-void
.end method

.method public closeFile(Lch/ethz/ssh2/SFTPv3FileHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-boolean v1, p1, Lch/ethz/ssh2/SFTPv3FileHandle;->isClosed:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p1, Lch/ethz/ssh2/SFTPv3FileHandle;->fileHandle:[B

    invoke-direct {p0, v1}, Lch/ethz/ssh2/SFTPv3Client;->closeHandle([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    iput-boolean v0, p1, Lch/ethz/ssh2/SFTPv3FileHandle;->isClosed:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p1, Lch/ethz/ssh2/SFTPv3FileHandle;->isClosed:Z

    .line 9
    throw v1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the handle argument may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFile(Ljava/lang/String;)Lch/ethz/ssh2/SFTPv3FileHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lch/ethz/ssh2/SFTPv3Client;->createFile(Ljava/lang/String;Lch/ethz/ssh2/SFTPv3FileAttributes;)Lch/ethz/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createFile(Ljava/lang/String;Lch/ethz/ssh2/SFTPv3FileAttributes;)Lch/ethz/ssh2/SFTPv3FileHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lch/ethz/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILch/ethz/ssh2/SFTPv3FileAttributes;)Lch/ethz/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createFileTruncate(Ljava/lang/String;)Lch/ethz/ssh2/SFTPv3FileHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lch/ethz/ssh2/SFTPv3Client;->createFileTruncate(Ljava/lang/String;Lch/ethz/ssh2/SFTPv3FileAttributes;)Lch/ethz/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createFileTruncate(Ljava/lang/String;Lch/ethz/ssh2/SFTPv3FileAttributes;)Lch/ethz/ssh2/SFTPv3FileHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1b

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lch/ethz/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILch/ethz/ssh2/SFTPv3FileAttributes;)Lch/ethz/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createSymlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 7
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 8
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string p2, "Sending SSH_FXP_SYMLINK..."

    .line 13
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 17
    :cond_0
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 p2, 0x14

    invoke-direct {p0, p2, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 19
    invoke-direct {p0, v0}, Lch/ethz/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public fsetstat(Lch/ethz/ssh2/SFTPv3FileHandle;Lch/ethz/ssh2/SFTPv3FileAttributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lch/ethz/ssh2/SFTPv3FileHandle;)V

    .line 3
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 5
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 6
    iget-object p1, p1, Lch/ethz/ssh2/SFTPv3FileHandle;->fileHandle:[B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 7
    invoke-direct {p0, p2}, Lch/ethz/ssh2/SFTPv3Client;->createAttrs(Lch/ethz/ssh2/SFTPv3FileAttributes;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lch/ethz/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 9
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string p2, "Sending SSH_FXP_FSETSTAT..."

    .line 11
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 15
    :cond_0
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 p2, 0xa

    invoke-direct {p0, p2, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 17
    invoke-direct {p0, v0}, Lch/ethz/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public fstat(Lch/ethz/ssh2/SFTPv3FileHandle;)Lch/ethz/ssh2/SFTPv3FileAttributes;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lch/ethz/ssh2/SFTPv3FileHandle;)V

    .line 3
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 5
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 6
    iget-object p1, p1, Lch/ethz/ssh2/SFTPv3FileHandle;->fileHandle:[B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 8
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string v2, "Sending SSH_FXP_FSTAT..."

    .line 10
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 14
    :cond_0
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 16
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 18
    iget-object v1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v1, :cond_1

    const-string v2, "Got REPLY."

    .line 20
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 24
    :cond_1
    new-instance v1, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lch/ethz/ssh2/packets/TypesReader;-><init>([B)V

    .line 26
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 28
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, v0, :cond_4

    const/16 v0, 0x69

    if-ne p1, v0, :cond_2

    .line 34
    invoke-direct {p0, v1}, Lch/ethz/ssh2/SFTPv3Client;->readAttrs(Lch/ethz/ssh2/packets/TypesReader;)Lch/ethz/ssh2/SFTPv3FileAttributes;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x65

    if-eq p1, v0, :cond_3

    .line 38
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_3
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 42
    new-instance v0, Lch/ethz/ssh2/SFTPException;

    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lch/ethz/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 43
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lch/ethz/ssh2/SFTPv3Client;->protocol_version:I

    return v0
.end method

.method public ls(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SFTPv3Client;->openDirectory(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SFTPv3Client;->scanDirectory([B)Ljava/util/Vector;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SFTPv3Client;->closeHandle([B)V

    return-object v0
.end method

.method public lstat(Ljava/lang/String;)Lch/ethz/ssh2/SFTPv3FileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 1
    invoke-direct {p0, p1, v0}, Lch/ethz/ssh2/SFTPv3Client;->statBoth(Ljava/lang/String;I)Lch/ethz/ssh2/SFTPv3FileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public mkdir(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 3
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 5
    invoke-virtual {v1, p1}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 6
    invoke-virtual {v1, p2}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 8
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 p2, 0xe

    invoke-direct {p0, p2, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 10
    invoke-direct {p0, v0}, Lch/ethz/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public mv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 3
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p2, p1}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 p2, 0x12

    invoke-direct {p0, p2, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 9
    invoke-direct {p0, v0}, Lch/ethz/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public openFileRO(Ljava/lang/String;)Lch/ethz/ssh2/SFTPv3FileHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lch/ethz/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILch/ethz/ssh2/SFTPv3FileAttributes;)Lch/ethz/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public openFileRW(Ljava/lang/String;)Lch/ethz/ssh2/SFTPv3FileHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lch/ethz/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILch/ethz/ssh2/SFTPv3FileAttributes;)Lch/ethz/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public read(Lch/ethz/ssh2/SFTPv3FileHandle;J[BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lch/ethz/ssh2/SFTPv3FileHandle;)V

    const v0, 0x8000

    if-gt p6, v0, :cond_8

    if-lez p6, :cond_8

    .line 6
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 8
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 9
    iget-object p1, p1, Lch/ethz/ssh2/SFTPv3FileHandle;->fileHandle:[B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 10
    invoke-virtual {v1, p2, p3}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT64(J)V

    .line 11
    invoke-virtual {v1, p6}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 13
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string p2, "Sending SSH_FXP_READ..."

    .line 15
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 19
    :cond_0
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x5

    invoke-direct {p0, p2, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 21
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 23
    new-instance p2, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {p2, p1}, Lch/ethz/ssh2/packets/TypesReader;-><init>([B)V

    .line 25
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 27
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p3

    if-ne p3, v0, :cond_7

    const/16 p3, 0x67

    if-ne p1, p3, :cond_3

    .line 33
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_1

    const-string p3, "Got SSH_FXP_DATA..."

    .line 35
    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 39
    :cond_1
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    if-ltz p1, :cond_2

    if-gt p1, p6, :cond_2

    .line 44
    invoke-virtual {p2, p4, p5, p1}, Lch/ethz/ssh2/packets/TypesReader;->readBytes([BII)V

    return p1

    .line 45
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid length field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 p3, 0x65

    if-ne p1, p3, :cond_6

    .line 55
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_5

    .line 59
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_4

    const-string p2, "Got SSH_FX_EOF."

    .line 61
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_4
    const/4 p1, -0x1

    return p1

    .line 68
    :cond_5
    invoke-virtual {p2}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 70
    new-instance p3, Lch/ethz/ssh2/SFTPException;

    invoke-direct {p3, p2, p1}, Lch/ethz/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw p3

    .line 71
    :cond_6
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "The SFTP server sent an unexpected packet type ("

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 72
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid id field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid len argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 3
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string v2, "Sending SSH_FXP_READLINK..."

    .line 8
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 12
    :cond_0
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 v1, 0x13

    invoke-direct {p0, v1, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 14
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 16
    iget-object v1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v1, :cond_1

    const-string v2, "Got REPLY."

    .line 18
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 22
    :cond_1
    new-instance v1, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lch/ethz/ssh2/packets/TypesReader;-><init>([B)V

    .line 24
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 26
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, v0, :cond_5

    const/16 v0, 0x68

    if-ne p1, v0, :cond_3

    .line 32
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 37
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lch/ethz/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 38
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid SSH_FXP_NAME packet."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v0, 0x65

    if-eq p1, v0, :cond_4

    .line 44
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_4
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 48
    new-instance v0, Lch/ethz/ssh2/SFTPException;

    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lch/ethz/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 49
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rm(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 3
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 8
    invoke-direct {p0, v0}, Lch/ethz/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public rmdir(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 3
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 8
    invoke-direct {p0, v0}, Lch/ethz/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iput-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iput-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This charset is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method public setstat(Ljava/lang/String;Lch/ethz/ssh2/SFTPv3FileAttributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 3
    new-instance v1, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    iget-object v2, p0, Lch/ethz/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lch/ethz/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p2}, Lch/ethz/ssh2/SFTPv3Client;->createAttrs(Lch/ethz/ssh2/SFTPv3FileAttributes;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lch/ethz/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 7
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string p2, "Sending SSH_FXP_SETSTAT..."

    .line 9
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 13
    :cond_0
    invoke-virtual {v1}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 p2, 0x9

    invoke-direct {p0, p2, v0, p1}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 15
    invoke-direct {p0, v0}, Lch/ethz/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public stat(Ljava/lang/String;)Lch/ethz/ssh2/SFTPv3FileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x11

    .line 1
    invoke-direct {p0, p1, v0}, Lch/ethz/ssh2/SFTPv3Client;->statBoth(Ljava/lang/String;I)Lch/ethz/ssh2/SFTPv3FileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public write(Lch/ethz/ssh2/SFTPv3FileHandle;J[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lch/ethz/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lch/ethz/ssh2/SFTPv3FileHandle;)V

    if-gez p6, :cond_6

    :goto_0
    if-gtz p6, :cond_0

    goto/16 :goto_2

    :cond_0
    const v0, 0x8000

    if-le p6, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, p6

    .line 12
    :goto_1
    invoke-direct {p0}, Lch/ethz/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v1

    .line 14
    new-instance v2, Lch/ethz/ssh2/packets/TypesWriter;

    invoke-direct {v2}, Lch/ethz/ssh2/packets/TypesWriter;-><init>()V

    .line 15
    iget-object v3, p1, Lch/ethz/ssh2/SFTPv3FileHandle;->fileHandle:[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 16
    invoke-virtual {v2, p2, p3}, Lch/ethz/ssh2/packets/TypesWriter;->writeUINT64(J)V

    .line 17
    invoke-virtual {v2, p4, p5, v0}, Lch/ethz/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 19
    iget-object v3, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v3, :cond_2

    const-string v4, "Sending SSH_FXP_WRITE..."

    .line 21
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    iget-object v3, p0, Lch/ethz/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 25
    :cond_2
    invoke-virtual {v2}, Lch/ethz/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {p0, v3, v1, v2}, Lch/ethz/ssh2/SFTPv3Client;->sendMessage(II[B)V

    int-to-long v2, v0

    add-long/2addr p2, v2

    add-int/2addr p5, v0

    sub-int/2addr p6, v0

    const v0, 0x84d0

    .line 32
    invoke-direct {p0, v0}, Lch/ethz/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v0

    .line 34
    new-instance v2, Lch/ethz/ssh2/packets/TypesReader;

    invoke-direct {v2, v0}, Lch/ethz/ssh2/packets/TypesReader;-><init>([B)V

    .line 36
    invoke-virtual {v2}, Lch/ethz/ssh2/packets/TypesReader;->readByte()I

    move-result v0

    .line 38
    invoke-virtual {v2}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    if-ne v3, v1, :cond_5

    const/16 v1, 0x65

    if-ne v0, v1, :cond_4

    .line 45
    invoke-virtual {v2}, Lch/ethz/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v2}, Lch/ethz/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 52
    new-instance p2, Lch/ethz/ssh2/SFTPException;

    invoke-direct {p2, p1, v0}, Lch/ethz/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 53
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "The SFTP server sent an unexpected packet type ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid id field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    return-void
.end method
