.class public Lch/ethz/ssh2/SFTPv3FileHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final client:Lch/ethz/ssh2/SFTPv3Client;

.field final fileHandle:[B

.field isClosed:Z


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/SFTPv3Client;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lch/ethz/ssh2/SFTPv3FileHandle;->isClosed:Z

    .line 8
    iput-object p1, p0, Lch/ethz/ssh2/SFTPv3FileHandle;->client:Lch/ethz/ssh2/SFTPv3Client;

    .line 9
    iput-object p2, p0, Lch/ethz/ssh2/SFTPv3FileHandle;->fileHandle:[B

    return-void
.end method


# virtual methods
.method public getClient()Lch/ethz/ssh2/SFTPv3Client;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/SFTPv3FileHandle;->client:Lch/ethz/ssh2/SFTPv3Client;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lch/ethz/ssh2/SFTPv3FileHandle;->isClosed:Z

    return v0
.end method
