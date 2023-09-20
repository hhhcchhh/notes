.class public Lm/b;
.super Lorg/apache/commons/net/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/b$a;
    }
.end annotation


# static fields
.field public static final g:I = 0x8f

.field public static final h:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field public a:Lm/b$a;

.field public b:Ljava/io/BufferedWriter;

.field public c:Ljava/io/BufferedReader;

.field public d:I

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/j;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lm/b;->f:[C

    const/16 v0, 0x8f

    .line 10
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->setDefaultPort(I)V

    .line 11
    sget-object v0, Lm/b$a;->a:Lm/b$a;

    iput-object v0, p0, Lm/b;->a:Lm/b$a;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lm/b;->c:Ljava/io/BufferedReader;

    .line 13
    iput-object v0, p0, Lm/b;->b:Ljava/io/BufferedWriter;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/b;->e:Ljava/util/List;

    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->createCommandSupport()V

    return-void

    :array_0
    .array-data 2
        0x41s
        0x41s
        0x41s
        0x41s
    .end array-data
.end method


# virtual methods
.method public final __getReply()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lm/b;->__getReply(Z)V

    return-void
.end method

.method public final __getReply(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lm/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lm/b;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection closed without indication."

    if-eqz v0, :cond_5

    .line 9
    iget-object v2, p0, Lm/b;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_4

    .line 12
    :goto_0
    invoke-static {v0}, Lm/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    invoke-static {v0}, Lm/e;->e(Ljava/lang/String;)I

    move-result p1

    :goto_1
    if-ltz p1, :cond_1

    .line 15
    iget-object v0, p0, Lm/b;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v2, p0, Lm/b;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    goto :goto_1

    .line 21
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    iget-object p1, p0, Lm/b;->c:Ljava/io/BufferedReader;

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 30
    iget-object p1, p0, Lm/b;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_3
    invoke-static {v0}, Lm/e;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lm/b;->d:I

    goto :goto_2

    .line 38
    :cond_4
    invoke-static {v0}, Lm/e;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lm/b;->d:I

    .line 41
    :goto_2
    iget p1, p0, Lm/b;->d:I

    invoke-virtual {p0}, Lm/b;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/j;->fireReplyReceived(ILjava/lang/String;)V

    return-void

    .line 42
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
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

    iput-object v0, p0, Lm/b;->c:Ljava/io/BufferedReader;

    .line 5
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lm/b;->b:Ljava/io/BufferedWriter;

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getSoTimeout()I

    move-result v0

    if-gtz v0, :cond_0

    .line 10
    iget v1, p0, Lorg/apache/commons/net/j;->connectTimeout:I

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/j;->setSoTimeout(I)V

    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1}, Lm/b;->__getReply(Z)V

    if-gtz v0, :cond_1

    .line 14
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->setSoTimeout(I)V

    .line 16
    :cond_1
    sget-object v0, Lm/b$a;->b:Lm/b$a;

    invoke-virtual {p0, v0}, Lm/b;->a(Lm/b$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0, p1, v0}, Lm/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "\r\n"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object p3, p0, Lm/b;->b:Ljava/io/BufferedWriter;

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 19
    iget-object p3, p0, Lm/b;->b:Ljava/io/BufferedWriter;

    invoke-virtual {p3}, Ljava/io/BufferedWriter;->flush()V

    .line 21
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/net/j;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lm/b;->__getReply()V

    .line 24
    iget p1, p0, Lm/b;->d:I

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 6

    .line 28
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lm/b;->f:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 31
    iget-object v1, p0, Lm/b;->f:[C

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-eqz v2, :cond_1

    if-ltz v1, :cond_1

    .line 33
    iget-object v3, p0, Lm/b;->f:[C

    aget-char v4, v3, v1

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_0

    const/16 v4, 0x41

    .line 35
    aput-char v4, v3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    int-to-char v2, v4

    .line 39
    aput-char v2, v3, v1

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a(Lm/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/b;->a:Lm/b$a;

    return-void
.end method

.method public a(Lm/d;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lm/b;->b(Lm/d;)I

    move-result p1

    invoke-static {p1}, Lm/e;->b(I)Z

    move-result p1

    return p1
.end method

.method public a(Lm/d;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lm/b;->b(Lm/d;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lm/e;->b(I)Z

    move-result p1

    return p1
.end method

.method public b(Lm/d;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lm/b;->b(Lm/d;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b(Lm/d;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lm/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lm/b;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b()Lm/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/b;->a:Lm/b$a;

    return-object v0
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
    iput-object v0, p0, Lm/b;->c:Ljava/io/BufferedReader;

    .line 3
    iput-object v0, p0, Lm/b;->b:Ljava/io/BufferedWriter;

    .line 4
    iget-object v0, p0, Lm/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    sget-object v0, Lm/b$a;->a:Lm/b$a;

    invoke-virtual {p0, v0}, Lm/b;->a(Lm/b$a;)V

    return-void
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Lm/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lm/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public sendCommand(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lm/b;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 1
    invoke-virtual {p0}, Lm/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lm/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
