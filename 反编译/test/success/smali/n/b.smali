.class public Ln/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/e;


# instance fields
.field public final a:Lv/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lv/d;

    invoke-direct {v0}, Lv/d;-><init>()V

    iput-object v0, p0, Ln/b;->a:Lv/d;

    return-void
.end method


# virtual methods
.method public a(Ln/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln/b;->a:Lv/d;

    invoke-virtual {v0, p1}, Lv/d;->a(Ljava/util/EventListener;)V

    return-void
.end method

.method public b(Ln/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln/b;->a:Lv/d;

    invoke-virtual {v0, p1}, Lv/d;->b(Ljava/util/EventListener;)V

    return-void
.end method

.method public bytesTransferred(JIJ)V
    .locals 8

    .line 4
    iget-object v0, p0, Ln/b;->a:Lv/d;

    invoke-virtual {v0}, Lv/d;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EventListener;

    .line 6
    move-object v2, v1

    check-cast v2, Ln/e;

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Ln/e;->bytesTransferred(JIJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bytesTransferred(Ln/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln/b;->a:Lv/d;

    invoke-virtual {v0}, Lv/d;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EventListener;

    .line 3
    check-cast v1, Ln/e;

    invoke-interface {v1, p1}, Ln/e;->bytesTransferred(Ln/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method
