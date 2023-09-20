.class public Lj/a;
.super Lorg/apache/commons/net/j;
.source "SourceFile"


# static fields
.field public static final a:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/j;-><init>()V

    const/16 v0, 0x9

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_output_:Ljava/io/OutputStream;

    return-object v0
.end method
