.class public Lq/g;
.super Lq/c;
.source "SourceFile"


# static fields
.field public static final x:I = 0x3e3

.field public static final y:Ljava/lang/String; = "TLS"


# instance fields
.field public final q:Z

.field public final r:Ljava/lang/String;

.field public s:Ljavax/net/ssl/SSLContext;

.field public t:[Ljava/lang/String;

.field public u:[Ljava/lang/String;

.field public v:Ljavax/net/ssl/TrustManager;

.field public w:Ljavax/net/ssl/KeyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "TLS"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lq/g;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lq/g;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lq/g;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lq/c;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lq/g;->t:[Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lq/g;->u:[Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lq/g;->v:Ljavax/net/ssl/TrustManager;

    .line 15
    iput-object v0, p0, Lq/g;->w:Ljavax/net/ssl/KeyManager;

    .line 65
    iput-object p1, p0, Lq/g;->r:Ljava/lang/String;

    .line 66
    iput-boolean p2, p0, Lq/g;->q:Z

    .line 67
    iput-object p3, p0, Lq/g;->s:Ljavax/net/ssl/SSLContext;

    if-eqz p2, :cond_0

    const/16 p1, 0x3e3

    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/j;->setDefaultPort(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0, p1}, Lq/g;-><init>(ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const-string v0, "TLS"

    .line 2
    invoke-direct {p0, v0, p1}, Lq/g;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 1

    const-string v0, "TLS"

    .line 70
    invoke-direct {p0, v0, p1, p2}, Lq/g;-><init>(Ljava/lang/String;ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method


# virtual methods
.method public _connectAction_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq/g;->q:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq/g;->k()V

    .line 4
    :cond_0
    invoke-super {p0}, Lq/b;->_connectAction_()V

    return-void
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getKeyManager()Ljavax/net/ssl/KeyManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/g;->w:Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method public getTrustManager()Ljavax/net/ssl/TrustManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/g;->v:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public i()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "STLS"

    .line 1
    invoke-virtual {p0, v0}, Lq/b;->sendCommand(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lq/g;->k()V

    const/4 v0, 0x1

    return v0
.end method

.method public final j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq/g;->s:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lq/g;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lq/g;->getKeyManager()Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-virtual {p0}, Lq/g;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lv/e;->a(Ljava/lang/String;Ljavax/net/ssl/KeyManager;Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lq/g;->s:Ljavax/net/ssl/SSLContext;

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lq/g;->j()V

    .line 3
    iget-object v0, p0, Lq/g;->s:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/net/j;->getRemotePort()I

    move-result v2

    .line 6
    iget-object v3, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v2, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 8
    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 9
    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 11
    iget-object v1, p0, Lq/g;->u:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 14
    :cond_0
    iget-object v1, p0, Lq/g;->t:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 19
    iput-object v0, p0, Lorg/apache/commons/net/j;->_socket_:Ljava/net/Socket;

    .line 20
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    .line 21
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    .line 22
    new-instance v0, Ln/a;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ln/a;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lq/b;->c:Ljava/io/BufferedReader;

    .line 23
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lq/b;->b:Ljava/io/BufferedWriter;

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 3

    .line 1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lq/g;->t:[Ljava/lang/String;

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 3

    .line 1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lq/g;->u:[Ljava/lang/String;

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setKeyManager(Ljavax/net/ssl/KeyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq/g;->w:Ljavax/net/ssl/KeyManager;

    return-void
.end method

.method public setTrustManager(Ljavax/net/ssl/TrustManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq/g;->v:Ljavax/net/ssl/TrustManager;

    return-void
.end method
