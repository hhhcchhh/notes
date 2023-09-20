.class public Lch/ethz/ssh2/SFTPv3FileAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public atime:Ljava/lang/Integer;

.field public gid:Ljava/lang/Integer;

.field public mtime:Ljava/lang/Integer;

.field public permissions:Ljava/lang/Integer;

.field public size:Ljava/lang/Long;

.field public uid:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lch/ethz/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    .line 11
    iput-object v0, p0, Lch/ethz/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    .line 16
    iput-object v0, p0, Lch/ethz/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    .line 51
    iput-object v0, p0, Lch/ethz/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    .line 57
    iput-object v0, p0, Lch/ethz/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Integer;

    .line 63
    iput-object v0, p0, Lch/ethz/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getOctalPermissions()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7

    :goto_0
    if-gtz v2, :cond_1

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v3, 0x30

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public isDirectory()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isRegularFile()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isSymlink()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v2, 0xa000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
