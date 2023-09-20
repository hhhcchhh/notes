.class public Lcom/simdo/dw_db_s/File/FileItem;
.super Ljava/lang/Object;
.source "FileItem.java"


# instance fields
.field private fileIcon:I

.field private fileName:Ljava/lang/String;

.field private fileSize:D

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/simdo/dw_db_s/File/FileItem;->fileName:Ljava/lang/String;

    .line 13
    iput-wide p3, p0, Lcom/simdo/dw_db_s/File/FileItem;->fileSize:D

    .line 14
    iput-object p1, p0, Lcom/simdo/dw_db_s/File/FileItem;->path:Ljava/lang/String;

    .line 15
    iput p5, p0, Lcom/simdo/dw_db_s/File/FileItem;->fileIcon:I

    return-void
.end method


# virtual methods
.method public getFileIcon()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/simdo/dw_db_s/File/FileItem;->fileIcon:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/simdo/dw_db_s/File/FileItem;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()D
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/simdo/dw_db_s/File/FileItem;->fileSize:D

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/simdo/dw_db_s/File/FileItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setFileIcon(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/simdo/dw_db_s/File/FileItem;->fileIcon:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/simdo/dw_db_s/File/FileItem;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(D)V
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/simdo/dw_db_s/File/FileItem;->fileSize:D

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/simdo/dw_db_s/File/FileItem;->path:Ljava/lang/String;

    return-void
.end method
