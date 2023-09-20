.class public Lq/b;
.super Lorg/apache/commons/net/j;
.source "SourceFile"


# static fields
.field public static final h:I = 0x6e

.field public static final i:I = -0x1

.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:Ljava/lang/String; = "+OK"

.field public static final n:Ljava/lang/String; = "+ "

.field public static final o:Ljava/lang/String; = "-ERR"

.field public static final p:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field public a:I

.field public b:Ljava/io/BufferedWriter;

.field public c:Ljava/io/BufferedReader;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lorg/apache/commons/net/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/j;-><init>()V

    const/16 v0, 0x6e

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->setDefaultPort(I)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lq/b;->a:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lq/b;->c:Ljava/io/BufferedReader;

    .line 5
    iput-object v0, p0, Lq/b;->b:Ljava/io/BufferedWriter;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq/b;->f:Ljava/util/List;

    .line 7
    new-instance v0, Lorg/apache/commons/net/i;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/i;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lq/b;->g:Lorg/apache/commons/net/i;

    return-void
.end method


# virtual methods
.method public final __getReply()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lq/b;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "+OK"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lq/b;->d:I

    goto :goto_0

    :cond_0
    const-string v1, "-ERR"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lq/b;->d:I

    goto :goto_0

    :cond_1
    const-string v1, "+ "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 13
    iput v1, p0, Lq/b;->d:I

    .line 20
    :goto_0
    iget-object v1, p0, Lq/b;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iput-object v0, p0, Lq/b;->e:Ljava/lang/String;

    .line 23
    iget v0, p0, Lq/b;->d:I

    invoke-virtual {p0}, Lq/b;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/j;->fireReplyReceived(ILjava/lang/String;)V

    return-void

    .line 24
    :cond_2
    new-instance v1, Lorg/apache/commons/net/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received invalid POP3 protocol response from server."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/net/e;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Connection closed without indication."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
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

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ln/a;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lq/b;->c:Ljava/io/BufferedReader;

    .line 5
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lq/b;->b:Ljava/io/BufferedWriter;

    .line 8
    invoke-virtual {p0}, Lq/b;->__getReply()V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lq/b;->a(I)V

    return-void
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lq/b;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lq/b;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "."

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lq/b;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lq/b;->a:I

    return-void
.end method

.method public a(Lorg/apache/commons/net/h;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/j;->removeProtocolCommandListener(Lorg/apache/commons/net/h;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lq/b;->a:I

    return v0
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
    iput-object v0, p0, Lq/b;->c:Ljava/io/BufferedReader;

    .line 3
    iput-object v0, p0, Lq/b;->b:Ljava/io/BufferedWriter;

    .line 4
    iput-object v0, p0, Lq/b;->e:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lq/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 6
    invoke-virtual {p0, v0}, Lq/b;->a(I)V

    return-void
.end method

.method public getCommandSupport()Lorg/apache/commons/net/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/b;->g:Lorg/apache/commons/net/i;

    return-object v0
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    iget-object v1, p0, Lq/b;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lq/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public sendCommand(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    sget-object v0, Lq/d;->p:[Ljava/lang/String;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lq/b;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    sget-object v0, Lq/d;->p:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lq/b;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 23
    invoke-virtual {p0, p1, v0}, Lq/b;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq/b;->b:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/16 v1, 0x20

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "\r\n"

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 15
    iget-object v0, p0, Lq/b;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lq/b;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/j;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lq/b;->__getReply()V

    .line 21
    iget p1, p0, Lq/b;->d:I

    return p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Socket is not connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
