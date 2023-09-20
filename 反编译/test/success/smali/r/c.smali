.class public Lr/c;
.super Lorg/apache/commons/net/j;
.source "SourceFile"


# static fields
.field public static final i:I = 0x19

.field public static final j:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lorg/apache/commons/net/i;

.field public c:Ljava/io/BufferedReader;

.field public d:Ljava/io/BufferedWriter;

.field public e:I

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ISO-8859-1"

    .line 1
    invoke-direct {p0, v0}, Lr/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/net/j;-><init>()V

    const/16 v0, 0x19

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->setDefaultPort(I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr/c;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lr/c;->g:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lr/c;->h:Ljava/lang/String;

    .line 7
    new-instance v0, Lorg/apache/commons/net/i;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/i;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr/c;->b:Lorg/apache/commons/net/i;

    .line 8
    iput-object p1, p0, Lr/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final __getReply()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lr/c;->g:Z

    .line 2
    iget-object v0, p0, Lr/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lr/c;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection closed without indication."

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    const/4 v4, 0x0

    .line 21
    :try_start_0
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lr/c;->e:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    iget-object v5, p0, Lr/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v2, v3, :cond_2

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_2

    .line 37
    :cond_0
    iget-object v0, p0, Lr/c;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v5, p0, Lr/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Lr/f;

    invoke-direct {v0, v1}, Lr/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2
    :goto_0
    iget v0, p0, Lr/c;->e:I

    invoke-virtual {p0}, Lr/c;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/j;->fireReplyReceived(ILjava/lang/String;)V

    .line 70
    iget v0, p0, Lr/c;->e:I

    const/16 v1, 0x1a5

    if-eq v0, v1, :cond_3

    return-void

    .line 71
    :cond_3
    new-instance v0, Lr/f;

    const-string v1, "SMTP response 421 received.  Server closed connection."

    invoke-direct {v0, v1}, Lr/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :catch_0
    new-instance v1, Lorg/apache/commons/net/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse response code.\nServer Reply: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/net/e;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_4
    new-instance v1, Lorg/apache/commons/net/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Truncated server reply: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/net/e;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_5
    new-instance v0, Lr/f;

    invoke-direct {v0, v1}, Lr/f;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public _connectAction_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/apache/commons/net/j;->_connectAction_()V

    .line 2
    new-instance v0, Ln/a;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    iget-object v3, p0, Lr/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ln/a;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lr/c;->c:Ljava/io/BufferedReader;

    .line 5
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    iget-object v3, p0, Lr/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lr/c;->d:Ljava/io/BufferedWriter;

    .line 8
    invoke-virtual {p0}, Lr/c;->__getReply()V

    return-void
.end method

.method public a()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 23
    invoke-virtual {p0, v0}, Lr/c;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public final a(ILjava/lang/String;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-static {p1}, Lr/e;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lr/c;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 24
    invoke-virtual {p0, v0, p1}, Lr/c;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/16 p3, 0x20

    .line 7
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "\r\n"

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object p2, p0, Lr/c;->d:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lr/c;->d:Ljava/io/BufferedWriter;

    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V

    .line 18
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/net/j;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lr/c;->__getReply()V

    .line 21
    iget p1, p0, Lr/c;->e:I

    return p1
.end method

.method public a(Lorg/apache/commons/net/h;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/j;->removeProtocolCommandListener(Lorg/apache/commons/net/h;)V

    return-void
.end method

.method public b()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0}, Lr/c;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lr/c;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 2
    invoke-virtual {p0, v0}, Lr/c;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lr/c;->a(ILjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lr/c;->a(ILjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/apache/commons/net/j;->disconnect()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lr/c;->c:Ljava/io/BufferedReader;

    .line 3
    iput-object v0, p0, Lr/c;->d:Ljava/io/BufferedWriter;

    .line 4
    iput-object v0, p0, Lr/c;->h:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lr/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lr/c;->g:Z

    return-void
.end method

.method public e(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0, p1}, Lr/c;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, p1}, Lr/c;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0, p1}, Lr/c;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCommandSupport()Lorg/apache/commons/net/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lr/c;->b:Lorg/apache/commons/net/i;

    return-object v0
.end method

.method public getReply()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr/c;->__getReply()V

    .line 2
    iget v0, p0, Lr/c;->e:I

    return v0
.end method

.method public getReplyCode()I
    .locals 1

    .line 1
    iget v0, p0, Lr/c;->e:I

    return v0
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lr/c;->g:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lr/c;->h:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v1, p0, Lr/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lr/c;->g:Z

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lr/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0, p1}, Lr/c;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public help()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, v0}, Lr/c;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public help(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 2
    invoke-virtual {p0, v0, p1}, Lr/c;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noop()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-virtual {p0, v0}, Lr/c;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public quit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    .line 1
    invoke-virtual {p0, v0}, Lr/c;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public sendCommand(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lr/c;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(ILjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lr/e;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lr/c;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lr/c;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lr/c;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method
