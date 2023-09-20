.class public Lcom/dwdbsdk/SerialPort/SerialPort;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/FileDescriptor;

.field public b:Ljava/io/FileInputStream;

.field public c:Ljava/io/FileOutputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "bs_service"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chmod 666 "

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "/system/bin/su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nexit\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/dwdbsdk/SerialPort/SerialPort;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/dwdbsdk/SerialPort/SerialPort;->a:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_2

    .line 25
    new-instance p1, Ljava/io/FileInputStream;

    iget-object p2, p0, Lcom/dwdbsdk/SerialPort/SerialPort;->a:Ljava/io/FileDescriptor;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Lcom/dwdbsdk/SerialPort/SerialPort;->b:Ljava/io/FileInputStream;

    .line 26
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Lcom/dwdbsdk/SerialPort/SerialPort;->a:Ljava/io/FileDescriptor;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Lcom/dwdbsdk/SerialPort/SerialPort;->c:Ljava/io/FileOutputStream;

    return-void

    :cond_2
    const-string p1, "SerialPort: native open returns null"

    .line 27
    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    .line 28
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 29
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
.end method

.method public static native open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/SerialPort/SerialPort;->b:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public b()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/SerialPort/SerialPort;->c:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public native close()V
.end method
