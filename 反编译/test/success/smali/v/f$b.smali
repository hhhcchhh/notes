.class public final Lv/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lv/f;


# direct methods
.method public constructor <init>(Lv/f;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lv/f$b;->a:Lv/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lv/f;Lv/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lv/f$b;-><init>(Lv/f;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-static {v0}, Lv/f;->c(Lv/f;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    .line 4
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-static {v0, p1}, Lv/f;->a(Lv/f;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a(I)Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lv/f$b;->m()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lv/f$b;->l()I

    move-result v0

    invoke-virtual {p0}, Lv/f$b;->m()I

    move-result v1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-static {v0}, Lv/f;->d(Lv/f;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-static {v0, p1}, Lv/f;->a(Lv/f;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lv/f$b;->a(I)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-virtual {p0}, Lv/f$b;->a()I

    move-result v1

    invoke-static {v0, v1}, Lv/f;->a(Lv/f;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lv/f;->a(Lv/f;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv/f$b;->b()I

    move-result v0

    invoke-virtual {p0}, Lv/f$b;->o()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lv/f$b;->a:Lv/f;

    invoke-virtual {v1}, Lv/f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    add-int/2addr v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public e()[Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lv/f$b;->d()I

    move-result v0

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    if-nez v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lv/f$b;->m()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lv/f$b;->l()I

    move-result v3

    if-gt v0, v3, :cond_1

    .line 7
    iget-object v3, p0, Lv/f$b;->a:Lv/f;

    invoke-static {v3, v0}, Lv/f;->a(Lv/f;I)[I

    move-result-object v4

    invoke-static {v3, v4}, Lv/f;->a(Lv/f;[I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-virtual {p0}, Lv/f$b;->b()I

    move-result v1

    invoke-static {v0, v1}, Lv/f;->a(Lv/f;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lv/f;->a(Lv/f;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-virtual {p0}, Lv/f$b;->a()I

    move-result v1

    invoke-static {v0, v1}, Lv/f;->a(Lv/f;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lv/f;->a(Lv/f;[I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lv/f$b;->a:Lv/f;

    invoke-virtual {p0}, Lv/f$b;->n()I

    move-result v3

    invoke-static {v2, v3}, Lv/f;->a(Lv/f;I)[I

    move-result-object v3

    invoke-static {v2, v3}, Lv/f;->a(Lv/f;[I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lv/f;->a(Lv/f;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-virtual {p0}, Lv/f$b;->l()I

    move-result v1

    invoke-static {v0, v1}, Lv/f;->a(Lv/f;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lv/f;->a(Lv/f;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-virtual {p0}, Lv/f$b;->m()I

    move-result v1

    invoke-static {v0, v1}, Lv/f;->a(Lv/f;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lv/f;->a(Lv/f;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-virtual {p0}, Lv/f$b;->n()I

    move-result v1

    invoke-static {v0, v1}, Lv/f;->a(Lv/f;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lv/f;->a(Lv/f;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-virtual {p0}, Lv/f$b;->o()I

    move-result v1

    invoke-static {v0, v1}, Lv/f;->a(Lv/f;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lv/f;->a(Lv/f;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()I
    .locals 2

    .line 1
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-virtual {v0}, Lv/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv/f$b;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv/f$b;->b()I

    move-result v0

    invoke-virtual {p0}, Lv/f$b;->o()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lv/f$b;->b()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()I
    .locals 2

    .line 1
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-virtual {v0}, Lv/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv/f$b;->o()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv/f$b;->b()I

    move-result v0

    invoke-virtual {p0}, Lv/f$b;->o()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lv/f$b;->o()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-static {v0}, Lv/f;->a(Lv/f;)I

    move-result v0

    return v0
.end method

.method public final o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv/f$b;->a:Lv/f;

    invoke-static {v0}, Lv/f;->b(Lv/f;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CIDR Signature:\t["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lv/f$b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Netmask: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv/f$b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\nNetwork:\t["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv/f$b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\nBroadcast:\t["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv/f$b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\nFirst Address:\t["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv/f$b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\nLast Address:\t["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv/f$b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n# Addresses:\t["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv/f$b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
