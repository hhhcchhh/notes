.class public Lo/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lo/p;

.field public b:Lo/o;

.field public c:Lo/o;

.field public d:Lo/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 7
    iget-object v0, p0, Lo/o;->b:Lo/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/o;->a:Lo/p;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no threadable in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lo/o;->b:Lo/o;

    .line 13
    iget-object v1, p0, Lo/o;->a:Lo/p;

    if-eqz v1, :cond_3

    .line 14
    iget-object v2, p0, Lo/o;->d:Lo/o;

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lo/o;->a:Lo/p;

    :goto_1
    invoke-interface {v1, v2}, Lo/p;->a(Lo/p;)V

    .line 17
    :cond_3
    iget-object v1, p0, Lo/o;->d:Lo/o;

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v1}, Lo/o;->a()V

    .line 19
    iput-object v0, p0, Lo/o;->d:Lo/o;

    .line 22
    :cond_4
    iget-object v1, p0, Lo/o;->a:Lo/p;

    if-eqz v1, :cond_6

    .line 23
    iget-object v2, p0, Lo/o;->c:Lo/o;

    if-nez v2, :cond_5

    move-object v2, v0

    goto :goto_2

    :cond_5
    iget-object v2, v2, Lo/o;->a:Lo/p;

    :goto_2
    invoke-interface {v1, v2}, Lo/p;->b(Lo/p;)V

    .line 26
    :cond_6
    iget-object v1, p0, Lo/o;->c:Lo/o;

    if-eqz v1, :cond_7

    .line 27
    invoke-virtual {v1}, Lo/o;->a()V

    .line 28
    iput-object v0, p0, Lo/o;->c:Lo/o;

    .line 31
    :cond_7
    iput-object v0, p0, Lo/o;->a:Lo/p;

    return-void
.end method

.method public a(Lo/o;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo/o;->d:Lo/o;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lo/o;->a(Lo/o;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/o;->d:Lo/o;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Lo/o;->c:Lo/o;

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 9
    iput-object v3, v0, Lo/o;->c:Lo/o;

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_1

    .line 10
    :cond_0
    iget-object v3, v1, Lo/o;->c:Lo/o;

    :goto_1
    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_0

    .line 15
    :cond_1
    iput-object v3, p0, Lo/o;->d:Lo/o;

    :goto_2
    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v3}, Lo/o;->b()V

    .line 20
    iget-object v3, v3, Lo/o;->c:Lo/o;

    goto :goto_2

    :cond_2
    return-void
.end method
