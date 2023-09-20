.class public final Lk/a;
.super Lj/a;
.source "SourceFile"


# static fields
.field public static final b:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj/a;-><init>()V

    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method public b()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    return-object v0
.end method
