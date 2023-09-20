.class public Lorg/apache/commons/net/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6f449111453ca76aL


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lv/d;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lv/d;

    invoke-direct {v0}, Lv/d;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/i;->b:Lv/d;

    .line 3
    iput-object p1, p0, Lorg/apache/commons/net/i;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/apache/commons/net/i;->b:Lv/d;

    invoke-virtual {v0}, Lv/d;->a()I

    move-result v0

    return v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 6
    new-instance v0, Lorg/apache/commons/net/g;

    iget-object v1, p0, Lorg/apache/commons/net/i;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/net/g;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lorg/apache/commons/net/i;->b:Lv/d;

    invoke-virtual {p1}, Lv/d;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/EventListener;

    .line 10
    check-cast p2, Lorg/apache/commons/net/h;

    invoke-interface {p2, v0}, Lorg/apache/commons/net/h;->b(Lorg/apache/commons/net/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/net/g;

    iget-object v1, p0, Lorg/apache/commons/net/i;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/net/g;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lorg/apache/commons/net/i;->b:Lv/d;

    invoke-virtual {p1}, Lv/d;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/EventListener;

    .line 5
    check-cast p2, Lorg/apache/commons/net/h;

    invoke-interface {p2, v0}, Lorg/apache/commons/net/h;->a(Lorg/apache/commons/net/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lorg/apache/commons/net/h;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/apache/commons/net/i;->b:Lv/d;

    invoke-virtual {v0, p1}, Lv/d;->a(Ljava/util/EventListener;)V

    return-void
.end method

.method public b(Lorg/apache/commons/net/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/i;->b:Lv/d;

    invoke-virtual {v0, p1}, Lv/d;->b(Ljava/util/EventListener;)V

    return-void
.end method
