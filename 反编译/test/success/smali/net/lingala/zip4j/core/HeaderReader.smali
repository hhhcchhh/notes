.class public Lnet/lingala/zip4j/core/HeaderReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zip4jRaf:Ljava/io/RandomAccessFile;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    return-void
.end method

.method private getLongByteFromIntByte([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 5
    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    aput-byte p1, v0, v1

    return-object v0

    .line 6
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid byte length, cannot expand to 8 bytes"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input parameter is null, cannot expand to 8 bytes"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readAESExtraDataRecord(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/ExtraDataRecord;

    if-nez v3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v4

    const-wide/32 v6, 0x9901

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    .line 9
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    new-instance p1, Lnet/lingala/zip4j/model/AESExtraDataRecord;

    invoke-direct {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;-><init>()V

    .line 15
    invoke-virtual {p1, v6, v7}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setSignature(J)V

    .line 16
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setDataSize(I)V

    .line 18
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v0

    .line 19
    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v2

    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVersionNumber(I)V

    const/4 v2, 0x2

    new-array v3, v2, [B

    .line 21
    invoke-static {v0, v2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVendorID(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 23
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesStrength(I)V

    const/4 v1, 0x5

    .line 24
    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setCompressionMethod(I)V

    return-object p1

    .line 25
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "corrput AES extra data records"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private readAndSaveAESExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderReader;->readAESExtraDataRecord(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    const/16 v0, 0x63

    .line 8
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->setEncryptionMethod(I)V

    :cond_1
    :goto_0
    return-void

    .line 9
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readAndSaveAESExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderReader;->readAESExtraDataRecord(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    const/16 v0, 0x63

    .line 17
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V

    :cond_1
    :goto_0
    return-void

    .line 18
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readAndSaveExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraFieldLength()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderReader;->readExtraDataRecords(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->setExtraDataRecords(Ljava/util/ArrayList;)V

    return-void

    .line 15
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid file handler when trying to read extra data record"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readAndSaveExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraFieldLength()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderReader;->readExtraDataRecords(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->setExtraDataRecords(Ljava/util/ArrayList;)V

    return-void

    .line 31
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid file handler when trying to read extra data record"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readAndSaveZip64ExtendedInfo(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v3

    .line 8
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v5

    .line 9
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v7

    .line 10
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v9

    move-object v1, p0

    .line 11
    invoke-direct/range {v1 .. v9}, Lnet/lingala/zip4j/core/HeaderReader;->readZip64ExtendedInfo(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 20
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 21
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 23
    :cond_1
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 24
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 26
    :cond_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 27
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 29
    :cond_3
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 30
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    :cond_4
    :goto_0
    return-void

    .line 31
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readAndSaveZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 32
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v3

    .line 39
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const/4 v9, -0x1

    move-object v1, p0

    .line 40
    invoke-direct/range {v1 .. v9}, Lnet/lingala/zip4j/core/HeaderReader;->readZip64ExtendedInfo(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 49
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 50
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 52
    :cond_1
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 53
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    :cond_2
    :goto_0
    return-void

    .line 54
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "file.separator"

    const-string v2, ":"

    .line 1
    iget-object v3, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_f

    .line 5
    iget-object v3, v1, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 10
    :try_start_0
    new-instance v3, Lnet/lingala/zip4j/model/CentralDirectory;

    invoke-direct {v3}, Lnet/lingala/zip4j/model/CentralDirectory;-><init>()V

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v5, v1, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v6

    .line 15
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()I

    move-result v5

    .line 17
    iget-object v8, v1, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 18
    iget-object v5, v1, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v6

    .line 19
    iget-object v5, v1, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()J

    move-result-wide v8

    long-to-int v5, v8

    .line 22
    :cond_0
    iget-object v8, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v6, 0x4

    new-array v6, v6, [B

    const/4 v7, 0x2

    new-array v8, v7, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v5, :cond_3

    .line 182
    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/CentralDirectory;->setFileHeaders(Ljava/util/ArrayList;)V

    .line 185
    new-instance v0, Lnet/lingala/zip4j/model/DigitalSignature;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/DigitalSignature;-><init>()V

    .line 186
    iget-object v2, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v2, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 187
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/32 v6, 0x5054b50

    cmp-long v10, v4, v6

    if-eqz v10, :cond_1

    return-object v3

    .line 192
    :cond_1
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/DigitalSignature;->setHeaderSignature(I)V

    .line 195
    iget-object v2, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v2, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 196
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v2

    .line 197
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/DigitalSignature;->setSizeOfData(I)V

    if-lez v2, :cond_2

    .line 200
    new-array v2, v2, [B

    .line 201
    iget-object v4, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v4, v2}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 202
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/DigitalSignature;->setSignatureData(Ljava/lang/String;)V

    :cond_2
    return-object v3

    .line 203
    :cond_3
    new-instance v11, Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {v11}, Lnet/lingala/zip4j/model/FileHeader;-><init>()V

    .line 206
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 207
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v12

    int-to-long v13, v12

    const-wide/32 v15, 0x2014b50    # 1.6619997E-316

    const/4 v7, 0x1

    cmp-long v17, v13, v15

    if-nez v17, :cond_d

    .line 211
    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->setSignature(I)V

    .line 214
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 215
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->setVersionMadeBy(I)V

    .line 218
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 219
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->setVersionNeededToExtract(I)V

    .line 222
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 223
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v12

    and-int/lit16 v12, v12, 0x800

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameUTF8Encoded(Z)V

    aget-byte v12, v8, v9

    and-int/lit8 v13, v12, 0x1

    if-eqz v13, :cond_5

    .line 227
    invoke-virtual {v11, v7}, Lnet/lingala/zip4j/model/FileHeader;->setEncrypted(Z)V

    .line 229
    :cond_5
    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-virtual {v11, v13}, Lnet/lingala/zip4j/model/FileHeader;->setGeneralPurposeFlag([B)V

    shr-int/lit8 v12, v12, 0x3

    if-ne v12, v7, :cond_6

    const/4 v12, 0x1

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    .line 232
    :goto_2
    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->setDataDescriptorExists(Z)V

    .line 235
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 236
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->setCompressionMethod(I)V

    .line 239
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 240
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->setLastModFileTime(I)V

    .line 243
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 244
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/model/FileHeader;->setCrc32(J)V

    .line 245
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->setCrcBuff([B)V

    .line 248
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 249
    invoke-direct {v1, v6}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v12

    .line 250
    invoke-static {v12, v9}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 253
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 254
    invoke-direct {v1, v6}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v12

    .line 255
    invoke-static {v12, v9}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 258
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 259
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v12

    .line 260
    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameLength(I)V

    .line 263
    iget-object v13, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v13, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 264
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v13

    .line 265
    invoke-virtual {v11, v13}, Lnet/lingala/zip4j/model/FileHeader;->setExtraFieldLength(I)V

    .line 268
    iget-object v13, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v13, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 269
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v13

    .line 270
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v14}, Lnet/lingala/zip4j/model/FileHeader;->setFileComment(Ljava/lang/String;)V

    .line 273
    iget-object v14, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 274
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v14

    invoke-virtual {v11, v14}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    .line 277
    iget-object v14, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v8}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 278
    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    invoke-virtual {v11, v14}, Lnet/lingala/zip4j/model/FileHeader;->setInternalFileAttr([B)V

    .line 281
    iget-object v14, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 282
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    invoke-virtual {v11, v14}, Lnet/lingala/zip4j/model/FileHeader;->setExternalFileAttr([B)V

    .line 285
    iget-object v14, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v6}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 288
    invoke-direct {v1, v6}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v14

    .line 289
    invoke-static {v14, v9}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v14

    const-wide v17, 0xffffffffL

    and-long v14, v14, v17

    invoke-virtual {v11, v14, v15}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    if-lez v12, :cond_b

    .line 292
    new-array v12, v12, [B

    .line 293
    iget-object v14, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v12}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 301
    iget-object v14, v1, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 302
    new-instance v14, Ljava/lang/String;

    iget-object v15, v1, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v15}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v12, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_3

    .line 304
    :cond_7
    invoke-virtual {v11}, Lnet/lingala/zip4j/model/FileHeader;->isFileNameUTF8Encoded()Z

    move-result v14

    invoke-static {v12, v14}, Lnet/lingala/zip4j/util/Zip4jUtil;->decodeFileName([BZ)Ljava/lang/String;

    move-result-object v14

    :goto_3
    if-eqz v14, :cond_a

    .line 311
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_8

    .line 312
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v15, 0x2

    add-int/2addr v12, v15

    invoke-virtual {v14, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_8
    const/4 v15, 0x2

    .line 315
    :goto_4
    invoke-virtual {v11, v14}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    const-string v12, "/"

    .line 316
    invoke-virtual {v14, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, "\\"

    invoke-virtual {v14, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    const/4 v7, 0x0

    :cond_9
    invoke-virtual {v11, v7}, Lnet/lingala/zip4j/model/FileHeader;->setDirectory(Z)V

    goto :goto_5

    .line 317
    :cond_a
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "fileName is null when reading central directory"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v15, 0x2

    const/4 v7, 0x0

    .line 328
    invoke-virtual {v11, v7}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    .line 332
    :goto_5
    invoke-direct {v1, v11}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 335
    invoke-direct {v1, v11}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveZip64ExtendedInfo(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 338
    invoke-direct {v1, v11}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveAESExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;)V

    if-lez v13, :cond_c

    .line 358
    new-array v7, v13, [B

    .line 359
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 360
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->setFileComment(Ljava/lang/String;)V

    .line 363
    :cond_c
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x2

    goto/16 :goto_0

    .line 364
    :cond_d
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected central directory entry not found (#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr v10, v7

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 536
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 537
    :cond_e
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "EndCentralRecord was null, maybe a corrupt zip file"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "random access file was null"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private readEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_5

    const/4 v1, 0x4

    :try_start_0
    new-array v2, v1, [B

    .line 7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x16

    sub-long/2addr v3, v5

    .line 9
    new-instance v0, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 12
    :goto_0
    iget-object v7, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    const-wide/16 v8, 0x1

    sub-long v8, v3, v8

    invoke-virtual {v7, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v3, 0x1

    add-int/2addr v6, v3

    .line 14
    iget-object v4, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-static {v4, v2}, Lnet/lingala/zip4j/util/Raw;->readLeInt(Ljava/io/DataInput;[B)I

    move-result v4

    int-to-long v10, v4

    const-wide/32 v12, 0x6054b50

    cmp-long v4, v10, v12

    if-eqz v4, :cond_1

    const/16 v4, 0xbb8

    if-le v6, v4, :cond_0

    goto :goto_1

    :cond_0
    move-wide v3, v8

    goto :goto_0

    .line 16
    :cond_1
    :goto_1
    invoke-static {v2, v5}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v6, v12

    if-nez v2, :cond_4

    new-array v2, v1, [B

    const/4 v4, 0x2

    new-array v4, v4, [B

    .line 23
    invoke-virtual {v0, v12, v13}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setSignature(J)V

    .line 26
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 27
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 30
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 31
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    .line 34
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 35
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V

    .line 38
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 39
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    .line 42
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v2}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 43
    invoke-static {v2, v5}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setSizeOfCentralDir(I)V

    .line 46
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v2}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 47
    invoke-direct {p0, v2}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v2

    .line 48
    invoke-static {v2, v5}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 51
    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v4}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 52
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v2

    .line 53
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setCommentLength(I)V

    if-lez v2, :cond_2

    .line 57
    new-array v2, v2, [B

    .line 58
    iget-object v4, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4, v2}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 59
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setComment(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setCommentBytes([B)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setComment(Ljava/lang/String;)V

    .line 65
    :goto_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v2

    if-lez v2, :cond_3

    .line 67
    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    goto :goto_3

    .line 69
    :cond_3
    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2, v5}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    :goto_3
    return-object v0

    .line 70
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "zip headers not found. probably not a zip file"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 127
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Probably not a zip file or a corrupted zip file"

    invoke-direct {v2, v3, v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 128
    :cond_5
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "random access file was null"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private readExtraDataRecords(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-array v1, p1, [B

    .line 2
    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, p1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v5, Lnet/lingala/zip4j/model/ExtraDataRecord;

    invoke-direct {v5}, Lnet/lingala/zip4j/model/ExtraDataRecord;-><init>()V

    .line 8
    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v6

    int-to-long v6, v6

    .line 9
    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setHeader(J)V

    add-int/lit8 v4, v4, 0x2

    .line 11
    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v6

    add-int/lit8 v7, v6, 0x2

    if-le v7, p1, :cond_3

    .line 14
    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/Raw;->readShortBigEndian([BI)S

    move-result v6

    add-int/lit8 v7, v6, 0x2

    if-le v7, p1, :cond_3

    .line 33
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    return-object v2

    :cond_2
    return-object v0

    .line 34
    :cond_3
    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setSizeOfData(I)V

    add-int/lit8 v4, v4, 0x2

    if-lez v6, :cond_4

    .line 38
    new-array v7, v6, [B

    .line 39
    invoke-static {v1, v4, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setData([B)V

    :cond_4
    add-int/2addr v4, v6

    .line 43
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private readIntoBuff(Ljava/io/RandomAccessFile;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-object p2

    .line 4
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "unexpected end of file when reading short buff"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "IOException when reading short buff"

    invoke-direct {p2, v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private readZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 6
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    .line 8
    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->setFilePointerToReadZip64EndCentralDirLoc()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 13
    iget-object v3, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v3, v1}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x7064b50

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 16
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 17
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setSignature(J)V

    .line 23
    iget-object v4, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4, v1}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 25
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v4

    .line 26
    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    .line 29
    iget-object v4, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4, v2}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 31
    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v4

    .line 32
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setOffsetZip64EndOfCentralDirRec(J)V

    .line 35
    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v1}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 36
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V

    return-object v0

    .line 37
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 56
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid file handler when trying to read Zip64EndCentralDirLocator"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readZip64EndCentralDirRec()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->getOffsetZip64EndOfCentralDirRec()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 13
    :try_start_0
    iget-object v4, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 15
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/16 v5, 0x8

    new-array v5, v5, [B

    .line 22
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v6, 0x0

    .line 23
    invoke-static {v4, v6}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v7

    int-to-long v7, v7

    const-wide/32 v9, 0x6064b50

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    .line 27
    invoke-virtual {v0, v7, v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setSignature(J)V

    .line 30
    iget-object v7, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v7, v5}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 32
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v7

    .line 33
    invoke-virtual {v0, v7, v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setSizeOfZip64EndCentralDirRec(J)V

    .line 37
    iget-object v7, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v7, v1}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 38
    invoke-static {v1, v6}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v7

    invoke-virtual {v0, v7}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setVersionMadeBy(I)V

    .line 41
    iget-object v7, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v7, v1}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 42
    invoke-static {v1, v6}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setVersionNeededToExtract(I)V

    .line 45
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v4}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 46
    invoke-static {v4, v6}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 49
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v4}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 51
    invoke-static {v4, v6}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    .line 56
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v5}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 58
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v7

    .line 59
    invoke-virtual {v0, v7, v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(J)V

    .line 63
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v5}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 65
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v7

    .line 66
    invoke-virtual {v0, v7, v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(J)V

    .line 70
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v5}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 71
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setSizeOfCentralDir(J)V

    .line 74
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v5}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 76
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v4

    .line 77
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setOffsetStartCenDirWRTStartDiskNo(J)V

    .line 82
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getSizeOfZip64EndCentralDirRec()J

    move-result-wide v4

    const-wide/16 v6, 0x2c

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    long-to-int v1, v4

    .line 84
    new-array v1, v1, [B

    .line 85
    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v1}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 86
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setExtensibleDataSector([B)V

    :cond_0
    return-object v0

    .line 87
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid signature for zip64 end of central directory record"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 145
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid offset for start of end of central directory record"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid zip64 end of central directory locator"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readZip64ExtendedInfo(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    move-object/from16 v2, p1

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/ExtraDataRecord;

    if-nez v3, :cond_1

    goto/16 :goto_4

    .line 7
    :cond_1
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_8

    .line 9
    new-instance v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;-><init>()V

    .line 11
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v2

    .line 13
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v4

    if-gtz v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v4, 0x8

    new-array v5, v4, [B

    const/4 v6, 0x4

    new-array v7, v6, [B

    const-wide/32 v8, 0xffff

    and-long v10, p2, v8

    const/4 v12, 0x1

    cmp-long v13, v10, v8

    if-nez v13, :cond_3

    .line 21
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v10

    if-lez v10, :cond_3

    .line 22
    invoke-static {v2, v0, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-static {v5, v0}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v10

    .line 24
    invoke-virtual {v1, v10, v11}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setUnCompressedSize(J)V

    const/16 v10, 0x8

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    and-long v13, p4, v8

    cmp-long v15, v13, v8

    if-nez v15, :cond_4

    .line 29
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v13

    if-ge v10, v13, :cond_4

    .line 30
    invoke-static {v2, v10, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    invoke-static {v5, v0}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v13

    .line 32
    invoke-virtual {v1, v13, v14}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setCompressedSize(J)V

    add-int/lit8 v10, v10, 0x8

    const/4 v11, 0x1

    :cond_4
    and-long v13, p6, v8

    cmp-long v15, v13, v8

    if-nez v15, :cond_5

    .line 37
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v8

    if-ge v10, v8, :cond_5

    .line 38
    invoke-static {v2, v10, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    invoke-static {v5, v0}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v4

    .line 40
    invoke-virtual {v1, v4, v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setOffsetLocalHeader(J)V

    add-int/lit8 v10, v10, 0x8

    const/4 v11, 0x1

    :cond_5
    const v4, 0xffff

    and-int v5, p8, v4

    if-ne v5, v4, :cond_6

    .line 45
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v3

    if-ge v10, v3, :cond_6

    .line 46
    invoke-static {v2, v10, v7, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    invoke-static {v7, v0}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v0

    .line 48
    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setDiskNumberStart(I)V

    goto :goto_2

    :cond_6
    move v12, v11

    :goto_2
    if-eqz v12, :cond_7

    return-object v1

    :cond_7
    :goto_3
    const/4 v0, 0x0

    return-object v0

    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private setFilePointerToReadZip64EndCentralDirLoc()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x16

    sub-long/2addr v1, v3

    .line 5
    :goto_0
    iget-object v3, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x1

    sub-long v4, v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-static {v1, v0}, Lnet/lingala/zip4j/util/Raw;->readLeInt(Ljava/io/DataInput;[B)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v6, 0x6054b50

    cmp-long v3, v1, v6

    if-nez v3, :cond_0

    .line 17
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    sub-long/2addr v1, v3

    sub-long/2addr v1, v3

    const-wide/16 v5, 0x8

    sub-long/2addr v1, v5

    sub-long/2addr v1, v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    move-wide v1, v4

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public readAllHeaders()Lnet/lingala/zip4j/model/ZipModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/core/HeaderReader;->readAllHeaders(Ljava/lang/String;)Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v0

    return-object v0
.end method

.method public readAllHeaders(Ljava/lang/String;)Lnet/lingala/zip4j/model/ZipModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 3
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/ZipModel;->setFileNameCharset(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->readEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setEndCentralDirRecord(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V

    .line 8
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->readZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V

    .line 10
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->readZip64EndCentralDirRec()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirRecord(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V

    .line 12
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getNoOfThisDisk()I

    move-result p1

    if-lez p1, :cond_0

    .line 14
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 20
    :cond_1
    :goto_0
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->readCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V

    .line 22
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object p1
.end method

.method public readLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "file.separator"

    const-string v2, ":"

    if-eqz p1, :cond_f

    .line 1
    iget-object v3, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_f

    .line 5
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v3

    .line 7
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-lez v5, :cond_0

    .line 10
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v3

    :cond_0
    cmp-long v5, v3, v6

    if-ltz v5, :cond_e

    .line 19
    :try_start_0
    iget-object v5, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 22
    new-instance v5, Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;-><init>()V

    const/4 v8, 0x2

    new-array v9, v8, [B

    const/4 v10, 0x4

    new-array v11, v10, [B

    .line 29
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v11}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    const/4 v12, 0x0

    .line 30
    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v13

    int-to-long v14, v13

    const-wide/32 v16, 0x4034b50

    cmp-long v18, v14, v16

    if-nez v18, :cond_d

    .line 34
    invoke-virtual {v5, v13}, Lnet/lingala/zip4j/model/LocalFileHeader;->setSignature(I)V

    .line 38
    iget-object v13, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v13, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 39
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v13

    invoke-virtual {v5, v13}, Lnet/lingala/zip4j/model/LocalFileHeader;->setVersionNeededToExtract(I)V

    .line 43
    iget-object v13, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v13, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 44
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v13

    and-int/lit16 v13, v13, 0x800

    const/4 v14, 0x1

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v5, v13}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileNameUTF8Encoded(Z)V

    aget-byte v13, v9, v12

    and-int/lit8 v15, v13, 0x1

    if-eqz v15, :cond_2

    .line 48
    invoke-virtual {v5, v14}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncrypted(Z)V

    .line 50
    :cond_2
    invoke-virtual {v5, v9}, Lnet/lingala/zip4j/model/LocalFileHeader;->setGeneralPurposeFlag([B)V

    .line 54
    invoke-static {v13}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v15

    .line 55
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v10, :cond_4

    const/4 v6, 0x3

    .line 56
    invoke-virtual {v15, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->setDataDescriptorExists(Z)V

    .line 59
    :cond_4
    iget-object v6, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 60
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressionMethod(I)V

    .line 64
    iget-object v6, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v11}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 65
    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->setLastModFileTime(I)V

    .line 69
    iget-object v6, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v11}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 70
    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc32(J)V

    .line 71
    invoke-virtual {v11}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrcBuff([B)V

    .line 75
    iget-object v6, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v11}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 76
    invoke-direct {v1, v11}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v6

    .line 77
    invoke-static {v6, v12}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 81
    iget-object v6, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v11}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 82
    invoke-direct {v1, v11}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v6

    .line 83
    invoke-static {v6, v12}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 87
    iget-object v6, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 88
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v6

    .line 89
    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileNameLength(I)V

    .line 93
    iget-object v7, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v7, v9}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 94
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v7

    .line 95
    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setExtraFieldLength(I)V

    const/16 v9, 0x1e

    if-lez v6, :cond_7

    .line 100
    new-array v10, v6, [B

    .line 101
    iget-object v11, v1, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v11, v10}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    .line 105
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->isFileNameUTF8Encoded()Z

    move-result v11

    invoke-static {v10, v11}, Lnet/lingala/zip4j/util/Zip4jUtil;->decodeFileName([BZ)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 111
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_5

    .line 112
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 115
    :cond_5
    invoke-virtual {v5, v10}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    add-int/2addr v9, v6

    goto :goto_2

    .line 116
    :cond_6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "file name is null, cannot assign file name to local file header"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v0, 0x0

    .line 126
    invoke-virtual {v5, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    .line 130
    :goto_2
    invoke-direct {v1, v5}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    add-int/2addr v9, v7

    int-to-long v6, v9

    add-long/2addr v3, v6

    .line 133
    invoke-virtual {v5, v3, v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->setOffsetStartOfData(J)V

    .line 136
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getPassword()[C

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->setPassword([C)V

    .line 138
    invoke-direct {v1, v5}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 140
    invoke-direct {v1, v5}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveAESExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 142
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v0

    const/16 v2, 0x63

    if-eq v0, v2, :cond_9

    const/16 v0, 0x40

    and-int/lit8 v2, v13, 0x40

    if-ne v2, v0, :cond_8

    .line 149
    invoke-virtual {v5, v14}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V

    goto :goto_3

    .line 151
    :cond_8
    invoke-virtual {v5, v12}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V

    .line 159
    :cond_9
    :goto_3
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCrc32()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_a

    .line 160
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc32(J)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getCrcBuff()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrcBuff([B)V

    .line 164
    :cond_a
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_b

    .line 165
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 168
    :cond_b
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_c

    .line 169
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    :cond_c
    return-object v5

    .line 170
    :cond_d
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid local header signature for file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 304
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 305
    :cond_e
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid local header offset"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid read parameters for local header"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
