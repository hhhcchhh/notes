.class public final Lh/a;
.super Lorg/apache/commons/net/j;
.source "SourceFile"


# static fields
.field public static final a:I = 0xb

.field public static final b:I = 0xf

.field public static final c:I = 0x11

.field public static final d:I = 0x13

.field public static final e:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/j;-><init>()V

    const/16 v0, 0x13

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/j;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/j;->_input_:Ljava/io/InputStream;

    return-object v0
.end method
