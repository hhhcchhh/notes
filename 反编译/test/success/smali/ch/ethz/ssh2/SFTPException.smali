.class public Lch/ethz/ssh2/SFTPException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x807cb554481eb33L


# instance fields
.field private final sftpErrorCode:I

.field private final sftpErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lch/ethz/ssh2/SFTPException;->constructMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lch/ethz/ssh2/SFTPException;->sftpErrorMessage:Ljava/lang/String;

    .line 3
    iput p2, p0, Lch/ethz/ssh2/SFTPException;->sftpErrorCode:I

    return-void
.end method

.method private static constructMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lch/ethz/ssh2/sftp/ErrorCodes;->getDescription(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p0, " (UNKNOW SFTP ERROR CODE)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getServerErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lch/ethz/ssh2/SFTPException;->sftpErrorCode:I

    return v0
.end method

.method public getServerErrorCodeSymbol()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lch/ethz/ssh2/SFTPException;->sftpErrorCode:I

    invoke-static {v0}, Lch/ethz/ssh2/sftp/ErrorCodes;->getDescription(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "UNKNOW SFTP ERROR CODE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lch/ethz/ssh2/SFTPException;->sftpErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getServerErrorCodeVerbose()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lch/ethz/ssh2/SFTPException;->sftpErrorCode:I

    invoke-static {v0}, Lch/ethz/ssh2/sftp/ErrorCodes;->getDescription(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "The error code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lch/ethz/ssh2/SFTPException;->sftpErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " is unknown."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 6
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getServerErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lch/ethz/ssh2/SFTPException;->sftpErrorMessage:Ljava/lang/String;

    return-object v0
.end method
