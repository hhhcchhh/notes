.class public Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;
.source "SourceFile"


# static fields
.field private static final MONTHS:Ljava/lang/String; = "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"

.field private static final REGEX:Ljava/lang/String; = "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)"

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 12

    .line 1
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xe

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    .line 7
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 8
    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x11

    .line 9
    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12

    .line 10
    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x14

    .line 11
    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x15

    .line 12
    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x16

    .line 13
    invoke-virtual {p0, v8}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x17

    .line 14
    invoke-virtual {p0, v9}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 16
    invoke-virtual {v0, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 17
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 21
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 29
    invoke-virtual {v1, p1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 30
    invoke-virtual {v1, p1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 32
    invoke-virtual {v1, p1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    .line 34
    invoke-virtual {v1, v2, v10}, Ljava/util/Calendar;->set(II)V

    :try_start_1
    const-string v3, "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 40
    div-int/lit8 v3, v3, 0x4

    const/4 v4, 0x2

    const/4 v10, 0x1

    if-eqz v6, :cond_0

    .line 44
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v10, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 54
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ge v11, v3, :cond_1

    add-int/lit8 v6, v6, -0x1

    .line 58
    :cond_1
    invoke-virtual {v1, v10, v6}, Ljava/util/Calendar;->set(II)V

    .line 60
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 62
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Calendar;->set(II)V

    .line 65
    :goto_0
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 69
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    :catch_1
    invoke-virtual {v0, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
