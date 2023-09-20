.class public Lo/f;
.super Lo/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/e;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lo/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/e;
        }
    .end annotation

    const-string v0, " "

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 19
    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 24
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lo/k;->a(J)V

    const/4 v1, 0x2

    .line 26
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lo/k;->b(J)V

    const/4 v1, 0x3

    .line 28
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lo/k;->c(J)V

    const/4 v1, 0x4

    .line 30
    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lo/k;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Lo/k;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 40
    :catch_0
    :cond_0
    new-instance p1, Lorg/apache/commons/net/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse newsgroup info.\nServer reply: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/net/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static j(Ljava/lang/String;)Lo/a;
    .locals 3

    .line 1
    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lo/a;->e(Ljava/lang/String;)V

    const-string v1, "\t"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v1, p0

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 7
    :try_start_0
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/a;->a(J)V

    const/4 v1, 0x1

    .line 8
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lo/a;->e(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 9
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lo/a;->d(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 10
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lo/a;->c(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 11
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lo/a;->b(Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 12
    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Lo/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static k(Ljava/lang/String;)Lo/k;
    .locals 12

    const-string v0, " "

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 5
    :cond_0
    new-instance v0, Lo/k;

    invoke-direct {v0}, Lo/k;-><init>()V

    const/4 v1, 0x0

    .line 9
    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Lo/k;->a(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 13
    :try_start_0
    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x2

    .line 14
    aget-object v7, p0, v6

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 15
    invoke-virtual {v0, v7, v8}, Lo/k;->b(J)V

    .line 16
    invoke-virtual {v0, v4, v5}, Lo/k;->c(J)V

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    cmp-long v11, v4, v9

    if-nez v11, :cond_1

    .line 18
    invoke-virtual {v0, v9, v10}, Lo/k;->a(J)V

    goto :goto_0

    :cond_1
    sub-long/2addr v4, v7

    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    .line 20
    invoke-virtual {v0, v4, v5}, Lo/k;->a(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x3

    .line 26
    aget-object p0, p0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v4, 0x4d

    if-eq p0, v4, :cond_4

    const/16 v4, 0x4e

    if-eq p0, v4, :cond_3

    const/16 v4, 0x59

    if-eq p0, v4, :cond_2

    const/16 v4, 0x79

    if-eq p0, v4, :cond_2

    const/16 v4, 0x6d

    if-eq p0, v4, :cond_4

    const/16 v3, 0x6e

    if-eq p0, v3, :cond_3

    .line 44
    invoke-virtual {v0, v1}, Lo/k;->a(I)V

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v0, v6}, Lo/k;->a(I)V

    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {v0, v2}, Lo/k;->a(I)V

    goto :goto_1

    .line 55
    :cond_4
    invoke-virtual {v0, v3}, Lo/k;->a(I)V

    :goto_1
    return-object v0

    :catch_0
    return-object v2
.end method


# virtual methods
.method public final a(IJLo/b;)Ljava/io/BufferedReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/e;->sendCommand(ILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lo/i;->d(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p4, :cond_1

    .line 64
    invoke-virtual {p0}, Lo/e;->getReplyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lo/f;->a(Ljava/lang/String;Lo/b;)V

    .line 67
    :cond_1
    new-instance p1, Ln/f;

    iget-object p2, p0, Lo/e;->d:Ljava/io/BufferedReader;

    invoke-direct {p1, p2}, Ln/f;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method

.method public final a(ILjava/lang/String;Lo/b;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p0, p1, p2}, Lo/e;->sendCommand(ILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lo/i;->d(I)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lo/e;->sendCommand(I)I

    move-result p1

    invoke-static {p1}, Lo/i;->d(I)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    if-eqz p3, :cond_2

    .line 54
    invoke-virtual {p0}, Lo/e;->getReplyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lo/f;->a(Ljava/lang/String;Lo/b;)V

    .line 57
    :cond_2
    new-instance p1, Ln/f;

    iget-object p2, p0, Lo/e;->d:Ljava/io/BufferedReader;

    invoke-direct {p1, p2}, Ln/f;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method

.method public a(JLo/b;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0, p1, p2, p3}, Lo/f;->a(IJLo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;J)Ljava/io/BufferedReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;JJ)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lo/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public a(II)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    int-to-long p1, p2

    .line 86
    invoke-virtual {p0, v0, v1, p1, p2}, Lo/f;->b(JJ)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public a(ILo/d;)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-virtual {p0, p2}, Lo/f;->a(Lo/d;)Lo/b;

    move-result-object v0

    int-to-long v1, p1

    .line 89
    invoke-virtual {p0, v1, v2, v0}, Lo/f;->a(JLo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 90
    invoke-virtual {p0, v0, p2}, Lo/f;->a(Lo/b;Lo/d;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p2

    .line 87
    invoke-virtual {p0, p1, v0, v1}, Lo/f;->a(Ljava/lang/String;J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;II)Ljava/io/Reader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v2, p2

    int-to-long v4, p3

    move-object v0, p0

    move-object v1, p1

    .line 85
    invoke-virtual/range {v0 .. v5}, Lo/f;->a(Ljava/lang/String;JJ)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lo/d;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-virtual {p0, p2}, Lo/f;->a(Lo/d;)Lo/b;

    move-result-object v0

    .line 92
    invoke-virtual {p0, p1, v0}, Lo/f;->b(Ljava/lang/String;Lo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 93
    invoke-virtual {p0, v0, p2}, Lo/f;->a(Lo/b;Lo/d;)V

    return-object p1
.end method

.method public a(JJ)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/lang/Iterable<",
            "Lo/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/f;->b(JJ)Ljava/io/BufferedReader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    new-instance p2, Lo/c;

    new-instance p3, Lo/m;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4}, Lo/m;-><init>(Ljava/io/BufferedReader;Z)V

    invoke-direct {p2, p3}, Lo/c;-><init>(Ljava/lang/Iterable;)V

    return-object p2

    .line 82
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "XOVER command failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/e;->getReplyString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lo/j;)Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/j;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lo/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lo/j;->e()Z

    move-result v4

    invoke-virtual {p1}, Lo/j;->b()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lo/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lo/i;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    new-instance p1, Lo/m;

    iget-object v0, p0, Lo/e;->d:Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Lo/m;-><init>(Ljava/io/BufferedReader;)V

    return-object p1

    .line 75
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NEWNEWS command failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/e;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lo/d;)Lo/b;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 94
    :cond_0
    new-instance p1, Lo/b;

    invoke-direct {p1}, Lo/b;-><init>()V

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lo/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/e;
        }
    .end annotation

    const-string v0, " "

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 7
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p2, Lo/b;->b:J

    const/4 v1, 0x2

    .line 9
    aget-object v0, v0, v1

    iput-object v0, p2, Lo/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 17
    :catch_0
    :cond_0
    new-instance p2, Lorg/apache/commons/net/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse article pointer.\nServer reply: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/net/e;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Lo/b;Lo/d;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 95
    iget-object v0, p1, Lo/b;->a:Ljava/lang/String;

    iput-object v0, p2, Lo/d;->b:Ljava/lang/String;

    .line 96
    iget-wide v0, p1, Lo/b;->b:J

    long-to-int p1, v0

    iput p1, p2, Lo/d;->a:I

    :cond_0
    return-void
.end method

.method public a(Lo/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0, p1}, Lo/f;->e(Ljava/lang/String;Lo/b;)Z

    move-result p1

    return p1
.end method

.method public b(JJ)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/f;->l(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public b(JLo/b;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lo/f;->a(IJLo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Lo/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lo/i;->d(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 26
    :cond_0
    new-instance p1, Ln/f;

    iget-object p2, p0, Lo/e;->d:Ljava/io/BufferedReader;

    invoke-direct {p1, p2}, Ln/f;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method

.method public b(Ljava/lang/String;Lo/b;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lo/f;->a(ILjava/lang/String;Lo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public b(ILo/d;)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-virtual {p0, p2}, Lo/f;->a(Lo/d;)Lo/b;

    move-result-object v0

    int-to-long v1, p1

    .line 28
    invoke-virtual {p0, v1, v2, v0}, Lo/f;->b(JLo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 29
    invoke-virtual {p0, v0, p2}, Lo/f;->a(Lo/b;Lo/d;)V

    return-object p1
.end method

.method public b(Ljava/lang/String;Lo/d;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    invoke-virtual {p0, p2}, Lo/f;->a(Lo/d;)Lo/b;

    move-result-object v0

    .line 31
    invoke-virtual {p0, p1, v0}, Lo/f;->c(Ljava/lang/String;Lo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 32
    invoke-virtual {p0, v0, p2}, Lo/f;->a(Lo/b;Lo/d;)V

    return-object p1
.end method

.method public b(Lo/j;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/j;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p1}, Lo/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/j;->e()Z

    move-result v2

    invoke-virtual {p1}, Lo/j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lo/e;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lo/i;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    new-instance p1, Lo/m;

    iget-object v0, p0, Lo/e;->d:Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Lo/m;-><init>(Ljava/io/BufferedReader;)V

    return-object p1

    .line 20
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NEWGROUPS command failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/e;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Lo/k;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lo/e;->e(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lo/i;->d(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p0}, Lo/e;->getReplyString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lo/f;->a(Ljava/lang/String;Lo/k;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b(Lo/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lo/e;->f()I

    move-result v0

    invoke-static {v0}, Lo/i;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0}, Lo/e;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/f;->a(Ljava/lang/String;Lo/b;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b(Lo/d;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lo/f;->a(Lo/d;)Lo/b;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lo/f;->a(Lo/b;)Z

    move-result v1

    .line 35
    invoke-virtual {p0, v0, p1}, Lo/f;->a(Lo/b;Lo/d;)V

    return v1
.end method

.method public c(JLo/b;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lo/f;->a(IJLo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lo/b;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lo/f;->a(ILjava/lang/String;Lo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public c(ILo/d;)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    invoke-virtual {p0, p2}, Lo/f;->a(Lo/d;)Lo/b;

    move-result-object v0

    int-to-long v1, p1

    .line 20
    invoke-virtual {p0, v1, v2, v0}, Lo/f;->c(JLo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 21
    invoke-virtual {p0, v0, p2}, Lo/f;->a(Lo/b;Lo/d;)V

    return-object p1
.end method

.method public c(Ljava/lang/String;Lo/d;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    invoke-virtual {p0, p2}, Lo/f;->a(Lo/d;)Lo/b;

    move-result-object v0

    .line 23
    invoke-virtual {p0, p1, v0}, Lo/f;->d(Ljava/lang/String;Lo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 24
    invoke-virtual {p0, v0, p2}, Lo/f;->a(Lo/b;Lo/d;)V

    return-object p1
.end method

.method public c(Lo/j;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/j;",
            ")",
            "Ljava/lang/Iterable<",
            "Lo/k;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    new-instance v0, Lo/l;

    invoke-virtual {p0, p1}, Lo/f;->b(Lo/j;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/l;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lo/e;->c(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x17d

    if-ne p1, v0, :cond_0

    .line 14
    invoke-virtual {p0, p2}, Lo/e;->b(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x119

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lo/e;->a:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lo/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lo/e;->e()I

    move-result v0

    invoke-static {v0}, Lo/i;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lo/e;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/f;->a(Ljava/lang/String;Lo/b;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public c(Lo/d;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    invoke-virtual {p0, p1}, Lo/f;->a(Lo/d;)Lo/b;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lo/f;->b(Lo/b;)Z

    move-result v1

    .line 27
    invoke-virtual {p0, v0, p1}, Lo/f;->a(Lo/b;Lo/d;)V

    return v1
.end method

.method public completePendingCommand()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo/e;->getReply()I

    move-result v0

    invoke-static {v0}, Lo/i;->d(I)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;Lo/b;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lo/f;->a(ILjava/lang/String;Lo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public d(ILo/d;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p0, p2}, Lo/f;->a(Lo/d;)Lo/b;

    move-result-object v0

    int-to-long v1, p1

    .line 35
    invoke-virtual {p0, v1, v2, v0}, Lo/f;->d(JLo/b;)Z

    move-result p1

    .line 36
    invoke-virtual {p0, v0, p2}, Lo/f;->a(Lo/b;Lo/d;)V

    return p1
.end method

.method public d(JLo/b;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lo/e;->d(J)I

    move-result p1

    invoke-static {p1}, Lo/i;->d(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p0}, Lo/e;->getReplyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lo/f;->a(Ljava/lang/String;Lo/b;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public d(Ljava/lang/String;Lo/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    invoke-virtual {p0, p2}, Lo/f;->a(Lo/d;)Lo/b;

    move-result-object v0

    .line 38
    invoke-virtual {p0, p1, v0}, Lo/f;->e(Ljava/lang/String;Lo/b;)Z

    move-result p1

    .line 39
    invoke-virtual {p0, v0, p2}, Lo/f;->a(Lo/b;Lo/d;)V

    return p1
.end method

.method public d(Lo/d;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lo/f;->a(Lo/d;)Lo/b;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lo/f;->c(Lo/b;)Z

    move-result v1

    .line 42
    invoke-virtual {p0, v0, p1}, Lo/f;->a(Lo/b;Lo/d;)V

    return v1
.end method

.method public d(Lo/j;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Lo/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lo/j;->e()Z

    move-result v4

    invoke-virtual {p1}, Lo/j;->b()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lo/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lo/i;->d(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 15
    new-instance v0, Ln/f;

    iget-object v1, p0, Lo/e;->d:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ln/f;-><init>(Ljava/io/Reader;)V

    .line 19
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 26
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1

    .line 31
    :cond_2
    new-array v0, v0, [Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 33
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public e(J)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lo/f;->a(JLo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public e(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 21
    invoke-virtual {p0, v0, v1}, Lo/f;->e(J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Lo/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lo/e;->stat(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lo/i;->d(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lo/e;->stat()I

    move-result p1

    invoke-static {p1}, Lo/i;->d(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-eqz p2, :cond_2

    .line 12
    invoke-virtual {p0}, Lo/e;->getReplyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/f;->a(Ljava/lang/String;Lo/b;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public e(Lo/j;)[Lo/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p1}, Lo/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/j;->e()Z

    move-result v2

    invoke-virtual {p1}, Lo/j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lo/e;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lo/i;->d(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lo/f;->h()[Lo/k;

    move-result-object p1

    return-object p1
.end method

.method public f(J)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lo/f;->b(JLo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public f(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lo/f;->f(J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public g(J)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lo/f;->c(JLo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public g(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lo/f;->g(J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public h(J)Ljava/io/BufferedReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/f;->l(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public h(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 28
    invoke-virtual {p0, v0, v1}, Lo/f;->h(J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public final h()[Lo/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ln/f;

    iget-object v1, p0, Lo/e;->d:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ln/f;-><init>(Ljava/io/Reader;)V

    .line 4
    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {v2}, Lo/f;->k(Ljava/lang/String;)Lo/k;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lorg/apache/commons/net/e;

    invoke-direct {v1, v2}, Lorg/apache/commons/net/e;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 20
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [Lo/k;

    return-object v0

    .line 24
    :cond_2
    new-array v0, v0, [Lo/k;

    .line 25
    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 26
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public i()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lo/e;->list()I

    move-result v0

    invoke-static {v0}, Lo/i;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lo/m;

    iget-object v1, p0, Lo/e;->d:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lo/m;-><init>(Ljava/io/BufferedReader;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LIST command failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/e;->getReplyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 6
    invoke-virtual {p0, v0, v1}, Lo/f;->i(J)Z

    move-result p1

    return p1
.end method

.method public i(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lo/f;->d(JLo/b;)Z

    move-result p1

    return p1
.end method

.method public j()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lo/k;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    new-instance v0, Lo/l;

    invoke-virtual {p0}, Lo/f;->i()Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/l;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public k()[Lo/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lo/e;->list()I

    move-result v0

    invoke-static {v0}, Lo/i;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lo/f;->h()[Lo/k;

    move-result-object v0

    return-object v0
.end method

.method public final l(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lo/e;->i(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lo/i;->d(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 17
    :cond_0
    new-instance p1, Ln/f;

    iget-object v0, p0, Lo/e;->d:Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ln/f;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method

.method public l()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "LIST"

    const-string v1, "OVERVIEW.FMT"

    .line 1
    invoke-virtual {p0, v0, v1}, Lo/e;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lo/i;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ln/f;

    iget-object v1, p0, Lo/e;->d:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ln/f;-><init>(Ljava/io/Reader;)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public listHelp()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo/e;->help()I

    move-result v0

    invoke-static {v0}, Lo/i;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 6
    new-instance v1, Ln/f;

    iget-object v2, p0, Lo/e;->d:Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ln/f;-><init>(Ljava/io/Reader;)V

    .line 7
    invoke-static {v1, v0}, Ln/n;->a(Ljava/io/Reader;Ljava/io/Writer;)J

    .line 8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 9
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V

    .line 10
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logout()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo/e;->quit()I

    move-result v0

    invoke-static {v0}, Lo/i;->d(I)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo/e;->g()I

    move-result v0

    invoke-static {v0}, Lo/i;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ln/g;

    iget-object v1, p0, Lo/e;->e:Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Ln/g;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public m(Ljava/lang/String;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lo/e;->g(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lo/i;->e(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ln/g;

    iget-object v0, p0, Lo/e;->e:Ljava/io/BufferedWriter;

    invoke-direct {p1, v0}, Ln/g;-><init>(Ljava/io/Writer;)V

    return-object p1
.end method

.method public n()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lo/f;->q(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lo/e;->h(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lo/i;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lo/m;

    iget-object v0, p0, Lo/e;->d:Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Lo/m;-><init>(Ljava/io/BufferedReader;)V

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LIST ACTIVE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " command failed: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/e;->getReplyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lo/f;->r(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lo/k;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lo/l;

    invoke-virtual {p0, p1}, Lo/f;->n(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/l;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public p()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lo/f;->s(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;)[Lo/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lo/e;->h(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lo/i;->d(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lo/f;->h()[Lo/k;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lo/f;->b(Ljava/lang/String;Lo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public q()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lo/f;->b(Lo/b;)Z

    move-result v0

    return v0
.end method

.method public r(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lo/f;->c(Ljava/lang/String;Lo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public r()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lo/f;->c(Lo/b;)Z

    move-result v0

    return v0
.end method

.method public s(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lo/f;->d(Ljava/lang/String;Lo/b;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lo/f;->e(Ljava/lang/String;Lo/b;)Z

    move-result p1

    return p1
.end method

.method public u(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lo/f;->b(Ljava/lang/String;Lo/k;)Z

    move-result p1

    return p1
.end method
