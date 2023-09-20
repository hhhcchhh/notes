.class public Lcom/dwdbsdk/Socket/SocketClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/Thread;

.field public e:Ljava/net/Socket;

.field public f:Ljava/io/InputStream;

.field public g:Ljava/io/InputStreamReader;

.field public h:Ljava/io/BufferedReader;

.field public i:Ljava/io/OutputStream;

.field public j:Ljava/io/PrintWriter;

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->c:Z

    const/16 v0, 0x64

    .line 11
    iput v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->k:I

    return-void
.end method

.method public static synthetic a(Lcom/dwdbsdk/Socket/SocketClient;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/Socket/SocketClient;->e:Ljava/net/Socket;

    return-object p0
.end method


# virtual methods
.method public CloseIO()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->h:Ljava/io/BufferedReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 3
    iput-object v1, p0, Lcom/dwdbsdk/Socket/SocketClient;->h:Ljava/io/BufferedReader;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->j:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 7
    iput-object v1, p0, Lcom/dwdbsdk/Socket/SocketClient;->j:Ljava/io/PrintWriter;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->g:Ljava/io/InputStreamReader;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 12
    iput-object v1, p0, Lcom/dwdbsdk/Socket/SocketClient;->g:Ljava/io/InputStreamReader;

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->i:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 17
    iput-object v1, p0, Lcom/dwdbsdk/Socket/SocketClient;->i:Ljava/io/OutputStream;

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 22
    iput-object v1, p0, Lcom/dwdbsdk/Socket/SocketClient;->f:Ljava/io/InputStream;

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->e:Ljava/net/Socket;

    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 27
    iput-object v1, p0, Lcom/dwdbsdk/Socket/SocketClient;->e:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public getBsId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->k:I

    return v0
.end method

.method public getHeartCnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->l:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getReadThread()Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->d:Ljava/lang/Thread;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->e:Ljava/net/Socket;

    return-object v0
.end method

.method public getSocketBufferedReader()Ljava/io/BufferedReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->h:Ljava/io/BufferedReader;

    return-object v0
.end method

.method public getSocketInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->f:Ljava/io/InputStream;

    return-object v0
.end method

.method public getSocketInputStreamReader()Ljava/io/InputStreamReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->g:Ljava/io/InputStreamReader;

    return-object v0
.end method

.method public getSocketOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->i:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSocketPrintWriter()Ljava/io/PrintWriter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->j:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public incHeartCnt()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->l:I

    return-void
.end method

.method public isReading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->c:Z

    return v0
.end method

.method public send(Ljava/lang/String;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->e:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send data, msg = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 39
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send data error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public send(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dwdbsdk/Socket/SocketClient$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/dwdbsdk/Socket/SocketClient$1;-><init>(Lcom/dwdbsdk/Socket/SocketClient;[BLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setBsId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/SocketClient;->a:Ljava/lang/String;

    return-void
.end method

.method public setConnectState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Socket/SocketClient;->k:I

    return-void
.end method

.method public setHeartCnt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Socket/SocketClient;->l:I

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/SocketClient;->b:Ljava/lang/String;

    return-void
.end method

.method public setReadThread(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/SocketClient;->d:Ljava/lang/Thread;

    return-void
.end method

.method public setReading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dwdbsdk/Socket/SocketClient;->c:Z

    return-void
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/SocketClient;->e:Ljava/net/Socket;

    return-void
.end method

.method public setSocketBufferedReader(Ljava/io/BufferedReader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/SocketClient;->h:Ljava/io/BufferedReader;

    return-void
.end method

.method public setSocketInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/SocketClient;->f:Ljava/io/InputStream;

    return-void
.end method

.method public setSocketInputStreamReader(Ljava/io/InputStreamReader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/SocketClient;->g:Ljava/io/InputStreamReader;

    return-void
.end method

.method public setSocketOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/SocketClient;->i:Ljava/io/OutputStream;

    return-void
.end method

.method public setSocketPrintWriter(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/SocketClient;->j:Ljava/io/PrintWriter;

    return-void
.end method

.method public startReadThread(Ljava/lang/Thread;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->c:Z

    .line 2
    iput-object p1, p0, Lcom/dwdbsdk/Socket/SocketClient;->d:Ljava/lang/Thread;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const-string p1, "start read thread is null"

    .line 5
    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopReadThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/dwdbsdk/Socket/SocketClient;->c:Z

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/dwdbsdk/Socket/SocketClient;->d:Ljava/lang/Thread;

    goto :goto_0

    :cond_0
    const-string v0, "stop read thread is null"

    .line 6
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SocketClient{bsId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dwdbsdk/Socket/SocketClient;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dwdbsdk/Socket/SocketClient;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
