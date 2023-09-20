.class public abstract Ls/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(IZZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ls/l;->f:Z

    .line 7
    iput-boolean v0, p0, Ls/l;->g:Z

    .line 27
    iput p1, p0, Ls/l;->a:I

    .line 28
    iput-boolean p2, p0, Ls/l;->b:Z

    .line 29
    iput-boolean p3, p0, Ls/l;->c:Z

    .line 30
    iput-boolean p4, p0, Ls/l;->d:Z

    .line 31
    iput-boolean p5, p0, Ls/l;->e:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Ls/l;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls/l;->d:Z

    return v0
.end method

.method public abstract a([II)[I
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Ls/l;->e:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls/l;->e:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Ls/l;->f:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls/l;->f:Z

    return v0
.end method

.method public d(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Ls/l;->b:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls/l;->b:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Ls/l;->c:Z

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls/l;->c:Z

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Ls/l;->a:I

    return v0
.end method

.method public f(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Ls/l;->g:Z

    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls/l;->g:Z

    return v0
.end method

.method public abstract h()[I
.end method

.method public abstract i()[I
.end method
