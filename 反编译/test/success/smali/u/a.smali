.class public final Lu/a;
.super Lorg/apache/commons/net/j;
.source "SourceFile"


# static fields
.field public static final a:I = 0x25

.field public static final b:J = 0x83aa7e80L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/j;-><init>()V

    const/16 v0, 0x25

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lu/a;->b()J

    move-result-wide v1

    const-wide v3, 0x83aa7e80L

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public b()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method
