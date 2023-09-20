.class public Ld/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a$a;
    }
.end annotation


# static fields
.field public static f:Ld/a;


# instance fields
.field public a:Lcom/dwdbsdk/SerialPort/SerialPort;

.field public b:Ljava/io/OutputStream;

.field public c:Ljava/io/InputStream;

.field public d:Ld/a$a;

.field public final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Ld/a;->a:Lcom/dwdbsdk/SerialPort/SerialPort;

    .line 220
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ld/a;->e:Landroid/os/Handler;

    :try_start_0
    const-string v0, "/dev/ttyS0"

    const v1, 0x1c200

    .line 221
    invoke-virtual {p0, v0, v1}, Ld/a;->a(Ljava/lang/String;I)Lcom/dwdbsdk/SerialPort/SerialPort;

    move-result-object v0

    iput-object v0, p0, Ld/a;->a:Lcom/dwdbsdk/SerialPort/SerialPort;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    :goto_0
    iget-object v0, p0, Ld/a;->a:Lcom/dwdbsdk/SerialPort/SerialPort;

    invoke-virtual {v0}, Lcom/dwdbsdk/SerialPort/SerialPort;->b()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Ld/a;->b:Ljava/io/OutputStream;

    .line 227
    iget-object v0, p0, Ld/a;->a:Lcom/dwdbsdk/SerialPort/SerialPort;

    invoke-virtual {v0}, Lcom/dwdbsdk/SerialPort/SerialPort;->a()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ld/a;->c:Ljava/io/InputStream;

    .line 229
    new-instance v0, Ld/a$a;

    invoke-direct {v0, p0}, Ld/a$a;-><init>(Ld/a;)V

    iput-object v0, p0, Ld/a;->d:Ld/a$a;

    .line 230
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic a(Ld/a;)Landroid/os/Handler;
    .locals 0

    .line 2
    iget-object p0, p0, Ld/a;->e:Landroid/os/Handler;

    return-object p0
.end method

.method public static a()Ld/a;
    .locals 2

    .line 3
    const-class v0, Ld/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ld/a;->f:Ld/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ld/a;

    invoke-direct {v1}, Ld/a;-><init>()V

    sput-object v1, Ld/a;->f:Ld/a;

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object v0, Ld/a;->f:Ld/a;

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic a(Ld/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lcom/dwdbsdk/SerialPort/SerialPort;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/dwdbsdk/SerialPort/SerialPort;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p2, p1}, Lcom/dwdbsdk/SerialPort/SerialPort;-><init>(Ljava/io/File;II)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 11
    invoke-static {}, Lcom/dwdbsdk/Arfcn/Nr5g;->a()Lcom/dwdbsdk/Arfcn/Nr5g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Arfcn/Nr5g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static {}, Lcom/dwdbsdk/Arfcn/Nr5g;->a()Lcom/dwdbsdk/Arfcn/Nr5g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dwdbsdk/Arfcn/Nr5g;->d(Ljava/lang/String;)Ljava/util/List;

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/dwdbsdk/Arfcn/Nr5g;->a()Lcom/dwdbsdk/Arfcn/Nr5g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dwdbsdk/Arfcn/Nr5g;->b(Ljava/lang/String;)Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a;->a:Lcom/dwdbsdk/SerialPort/SerialPort;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/dwdbsdk/SerialPort/SerialPort;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ld/a;->a:Lcom/dwdbsdk/SerialPort/SerialPort;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Ld/a;->b:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 5
    iget-object p1, p0, Ld/a;->b:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/a;->d:Ld/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ld/a$a;->a()V

    .line 3
    iput-object v1, p0, Ld/a;->d:Ld/a$a;

    .line 5
    :cond_0
    invoke-virtual {p0}, Ld/a;->b()V

    .line 6
    sput-object v1, Ld/a;->f:Ld/a;

    return-void
.end method
