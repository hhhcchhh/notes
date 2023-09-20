.class public Lr/d;
.super Lr/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lr/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lr/d;->l(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Lr/d;->i(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 10
    :cond_1
    invoke-virtual {p0, p3}, Lr/d;->k(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lr/d;->l(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 15
    :goto_0
    array-length v2, p2

    if-ge p1, v2, :cond_2

    .line 17
    aget-object v2, p2, p1

    invoke-virtual {p0, v2}, Lr/d;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    return v0

    .line 26
    :cond_3
    invoke-virtual {p0, p3}, Lr/d;->k(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Lr/b;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lr/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr/c;->d(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lr/g;->c(I)Z

    move-result p1

    return p1
.end method

.method public b(Lr/b;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lr/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr/c;->c(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lr/g;->c(I)Z

    move-result p1

    return p1
.end method

.method public completePendingCommand()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr/c;->getReply()I

    move-result v0

    invoke-static {v0}, Lr/g;->c(I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lr/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lr/g;->c(I)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr/c;->b()I

    move-result v0

    invoke-static {v0}, Lr/g;->c(I)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr/c;->a()I

    move-result v0

    invoke-static {v0}, Lr/g;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ln/g;

    iget-object v1, p0, Lr/c;->d:Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Ln/g;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr/c;->d(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lr/g;->c(I)Z

    move-result p1

    return p1
.end method

.method public j(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lr/c;->b(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lr/g;->c(I)Z

    move-result p1

    return p1
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr/d;->f()Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 10
    invoke-virtual {p0}, Lr/d;->completePendingCommand()Z

    move-result p1

    return p1
.end method

.method public l(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr/c;->c(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lr/g;->c(I)Z

    move-result p1

    return p1
.end method

.method public listHelp()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr/c;->help()I

    move-result v0

    invoke-static {v0}, Lr/g;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lr/c;->getReplyString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public listHelp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lr/c;->help(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lr/g;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lr/c;->getReplyString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public logout()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr/c;->quit()I

    move-result v0

    invoke-static {v0}, Lr/g;->c(I)Z

    move-result v0

    return v0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lr/c;->h(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xfa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xfb

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public sendNoOp()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr/c;->noop()I

    move-result v0

    invoke-static {v0}, Lr/g;->c(I)Z

    move-result v0

    return v0
.end method
