.class public Lr/h;
.super Lr/d;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String; = "TLS"


# instance fields
.field public final k:Z

.field public final l:Ljava/lang/String;

.field public m:Ljavax/net/ssl/SSLContext;

.field public n:[Ljava/lang/String;

.field public o:[Ljava/lang/String;

.field public p:Ljavax/net/ssl/TrustManager;

.field public q:Ljavax/net/ssl/KeyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "TLS"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lr/h;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lr/h;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lr/d;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lr/h;->m:Ljavax/net/ssl/SSLContext;

    .line 8
    iput-object v0, p0, Lr/h;->n:[Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lr/h;->o:[Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lr/h;->p:Ljavax/net/ssl/TrustManager;

    .line 16
    iput-object v0, p0, Lr/h;->q:Ljavax/net/ssl/KeyManager;

    .line 52
    iput-object p1, p0, Lr/h;->l:Ljava/lang/String;

    .line 53
    iput-boolean p2, p0, Lr/h;->k:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p3}, Lr/d;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 55
    iput-object p3, p0, Lr/h;->m:Ljavax/net/ssl/SSLContext;

    .line 58
    iput-object p3, p0, Lr/h;->n:[Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lr/h;->o:[Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lr/h;->p:Ljavax/net/ssl/TrustManager;

    .line 66
    iput-object p3, p0, Lr/h;->q:Ljavax/net/ssl/KeyManager;

    .line 116
    iput-object p1, p0, Lr/h;->l:Ljava/lang/String;

    .line 117
    iput-boolean p2, p0, Lr/h;->k:Z

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, v0, p1}, Lr/h;-><init>(ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const-string v0, "TLS"

    .line 2
    invoke-direct {p0, v0, p1}, Lr/h;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Lr/d;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lr/h;->n:[Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lr/h;->o:[Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lr/h;->p:Ljavax/net/ssl/TrustManager;

    .line 127
    iput-object v0, p0, Lr/h;->q:Ljavax/net/ssl/KeyManager;

    .line 188
    iput-boolean p1, p0, Lr/h;->k:Z

    .line 189
    iput-object p2, p0, Lr/h;->m:Ljavax/net/ssl/SSLContext;

    const-string p1, "TLS"

    .line 190
    iput-object p1, p0, Lr/h;->l:Ljava/lang/String;

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
    iget-boolean v0, p0, Lr/h;->k:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lr/h;->i()V

    .line 4
    :cond_0
    invoke-super {p0}, Lr/c;->_connectAction_()V

    return-void
.end method

.method public g()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "STARTTLS"

    .line 1
    invoke-virtual {p0, v0}, Lr/c;->sendCommand(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lr/g;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lr/h;->i()V

    const/4 v0, 0x1

    return v0
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

.method public getKeyManager()Ljavax/net/ssl/KeyManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lr/h;->q:Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method public getTrustManager()Ljavax/net/ssl/TrustManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lr/h;->p:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public final h()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr/h;->m:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lr/h;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lr/h;->getKeyManager()Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-virtual {p0}, Lr/h;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lv/e;->a(Ljava/lang/String;Ljavax/net/ssl/KeyManager;Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lr/h;->m:Ljavax/net/ssl/SSLContext;

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr/h;->h()V

    .line 3
    iget-object v0, p0, Lr/h;->m:Ljavax/net/ssl/SSLContext;

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
    iget-object v1, p0, Lr/h;->o:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 14
    :cond_0
    iget-object v1, p0, Lr/h;->n:[Ljava/lang/String;

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

    iget-object v3, p0, Lr/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ln/a;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lr/c;->c:Ljava/io/BufferedReader;

    .line 24
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    iget-object v3, p0, Lr/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lr/c;->d:Ljava/io/BufferedWriter;

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 3

    .line 1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lr/h;->n:[Ljava/lang/String;

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

    iput-object v0, p0, Lr/h;->o:[Ljava/lang/String;

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setKeyManager(Ljavax/net/ssl/KeyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr/h;->q:Ljavax/net/ssl/KeyManager;

    return-void
.end method

.method public setTrustManager(Ljavax/net/ssl/TrustManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr/h;->p:Ljavax/net/ssl/TrustManager;

    return-void
.end method
