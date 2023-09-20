.class public Lo/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lo/o;

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/o;",
            ">;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lo/q;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lo/o;
    .locals 4

    .line 153
    new-instance v0, Lo/o;

    invoke-direct {v0}, Lo/o;-><init>()V

    .line 154
    iget-object v1, p0, Lo/q;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 156
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 158
    iget-object v3, p0, Lo/q;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/o;

    .line 159
    iget-object v3, v2, Lo/o;->b:Lo/o;

    if-nez v3, :cond_0

    .line 160
    iget-object v3, v2, Lo/o;->c:Lo/o;

    if-nez v3, :cond_1

    .line 164
    iget-object v3, v0, Lo/o;->d:Lo/o;

    iput-object v3, v2, Lo/o;->c:Lo/o;

    .line 165
    iput-object v2, v0, Lo/o;->d:Lo/o;

    goto :goto_0

    .line 166
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "c.next is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lo/o;->c:Lo/o;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public a(Ljava/lang/Iterable;)Lo/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/p;",
            ">;)",
            "Lo/p;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lo/q;->b:Ljava/util/HashMap;

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/p;

    .line 6
    invoke-interface {v1}, Lo/p;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lo/q;->a(Lo/p;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lo/q;->a()Lo/o;

    move-result-object p1

    iput-object p1, p0, Lo/q;->a:Lo/o;

    .line 12
    iget-object p1, p0, Lo/q;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 13
    iput-object v0, p0, Lo/q;->b:Ljava/util/HashMap;

    .line 15
    iget-object p1, p0, Lo/q;->a:Lo/o;

    invoke-virtual {p0, p1}, Lo/q;->a(Lo/o;)V

    .line 17
    iget-object p1, p0, Lo/q;->a:Lo/o;

    invoke-virtual {p1}, Lo/o;->b()V

    .line 18
    invoke-virtual {p0}, Lo/q;->b()V

    .line 20
    iget-object p1, p0, Lo/q;->a:Lo/o;

    iget-object v1, p1, Lo/o;->c:Lo/o;

    if-nez v1, :cond_6

    .line 24
    iget-object p1, p1, Lo/o;->d:Lo/o;

    :goto_1
    if-eqz p1, :cond_4

    .line 25
    iget-object v1, p1, Lo/o;->a:Lo/p;

    if-nez v1, :cond_3

    .line 26
    iget-object v1, p1, Lo/o;->d:Lo/o;

    iget-object v1, v1, Lo/o;->a:Lo/p;

    invoke-interface {v1}, Lo/p;->c()Lo/p;

    move-result-object v1

    iput-object v1, p1, Lo/o;->a:Lo/p;

    .line 27
    :cond_3
    iget-object p1, p1, Lo/o;->c:Lo/o;

    goto :goto_1

    .line 33
    :cond_4
    iget-object p1, p0, Lo/q;->a:Lo/o;

    iget-object v1, p1, Lo/o;->d:Lo/o;

    if-nez v1, :cond_5

    move-object v1, v0

    goto :goto_2

    :cond_5
    iget-object v1, v1, Lo/o;->a:Lo/p;

    .line 34
    :goto_2
    invoke-virtual {p1}, Lo/o;->a()V

    .line 35
    iput-object v0, p0, Lo/q;->a:Lo/o;

    return-object v1

    .line 36
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "root node has a next:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/q;->a:Lo/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public a(Ljava/util/List;)Lo/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/p;",
            ">;)",
            "Lo/p;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lo/q;->a(Ljava/lang/Iterable;)Lo/p;

    move-result-object p1

    return-object p1
.end method

.method public a([Lo/p;)Lo/p;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/q;->a(Ljava/util/List;)Lo/p;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lo/o;)V
    .locals 7

    .line 167
    iget-object v0, p1, Lo/o;->d:Lo/o;

    iget-object v1, v0, Lo/o;->c:Lo/o;

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_8

    .line 174
    iget-object v4, v0, Lo/o;->a:Lo/p;

    if-nez v4, :cond_1

    iget-object v5, v0, Lo/o;->d:Lo/o;

    if-nez v5, :cond_1

    if-nez v3, :cond_0

    .line 176
    iget-object v0, v0, Lo/o;->c:Lo/o;

    iput-object v0, p1, Lo/o;->d:Lo/o;

    goto :goto_3

    .line 178
    :cond_0
    iget-object v0, v0, Lo/o;->c:Lo/o;

    iput-object v0, v3, Lo/o;->c:Lo/o;

    goto :goto_3

    :cond_1
    if-nez v4, :cond_5

    .line 186
    iget-object v4, v0, Lo/o;->d:Lo/o;

    if-eqz v4, :cond_5

    iget-object v5, v0, Lo/o;->b:Lo/o;

    if-nez v5, :cond_2

    iget-object v5, v4, Lo/o;->c:Lo/o;

    if-nez v5, :cond_5

    :cond_2
    if-nez v3, :cond_3

    .line 197
    iput-object v4, p1, Lo/o;->d:Lo/o;

    goto :goto_1

    .line 199
    :cond_3
    iput-object v4, v3, Lo/o;->c:Lo/o;

    :goto_1
    move-object v1, v4

    .line 204
    :goto_2
    iget-object v5, v1, Lo/o;->c:Lo/o;

    if-eqz v5, :cond_4

    .line 205
    iget-object v6, v0, Lo/o;->b:Lo/o;

    iput-object v6, v1, Lo/o;->b:Lo/o;

    move-object v1, v5

    goto :goto_2

    .line 208
    :cond_4
    iget-object v5, v0, Lo/o;->b:Lo/o;

    iput-object v5, v1, Lo/o;->b:Lo/o;

    .line 209
    iget-object v0, v0, Lo/o;->c:Lo/o;

    iput-object v0, v1, Lo/o;->c:Lo/o;

    move-object v0, v4

    goto :goto_4

    .line 217
    :cond_5
    iget-object v3, v0, Lo/o;->d:Lo/o;

    if-eqz v3, :cond_6

    .line 220
    invoke-virtual {p0, v0}, Lo/q;->a(Lo/o;)V

    :cond_6
    move-object v3, v0

    :goto_3
    move-object v0, v1

    :goto_4
    if-nez v0, :cond_7

    move-object v1, v2

    goto :goto_0

    .line 221
    :cond_7
    iget-object v1, v0, Lo/o;->c:Lo/o;

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final a(Lo/p;)V
    .locals 9

    .line 37
    invoke-interface {p1}, Lo/p;->e()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lo/q;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 43
    iget-object v3, v1, Lo/o;->a:Lo/p;

    if-eqz v3, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<Bogus-id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/q;->c:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lo/q;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_0

    .line 49
    :cond_0
    iput-object p1, v1, Lo/o;->a:Lo/p;

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 55
    new-instance v1, Lo/o;

    invoke-direct {v1}, Lo/o;-><init>()V

    .line 56
    iput-object p1, v1, Lo/o;->a:Lo/p;

    .line 57
    iget-object v3, p0, Lo/q;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_2
    invoke-interface {p1}, Lo/p;->d()[Ljava/lang/String;

    move-result-object p1

    .line 65
    array-length v0, p1

    const/4 v3, 0x0

    move-object v4, v2

    :goto_1
    if-ge v3, v0, :cond_5

    aget-object v5, p1, v3

    .line 67
    iget-object v6, p0, Lo/q;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/o;

    if-nez v6, :cond_3

    .line 71
    new-instance v6, Lo/o;

    invoke-direct {v6}, Lo/o;-><init>()V

    .line 72
    iget-object v7, p0, Lo/q;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v4, :cond_4

    .line 78
    iget-object v5, v6, Lo/o;->b:Lo/o;

    if-nez v5, :cond_4

    if-eq v4, v6, :cond_4

    invoke-virtual {v6, v4}, Lo/o;->a(Lo/o;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 83
    iput-object v4, v6, Lo/o;->b:Lo/o;

    .line 84
    iget-object v5, v4, Lo/o;->d:Lo/o;

    iput-object v5, v6, Lo/o;->c:Lo/o;

    .line 85
    iput-object v6, v4, Lo/o;->d:Lo/o;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move-object v4, v6

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_7

    if-eq v4, v1, :cond_6

    .line 93
    invoke-virtual {v1, v4}, Lo/o;->a(Lo/o;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move-object v4, v2

    .line 102
    :cond_7
    iget-object p1, v1, Lo/o;->b:Lo/o;

    if-eqz p1, :cond_c

    .line 105
    iget-object p1, p1, Lo/o;->d:Lo/o;

    move-object v0, v2

    :goto_2
    if-eqz p1, :cond_9

    if-ne p1, v1, :cond_8

    goto :goto_3

    .line 107
    :cond_8
    iget-object v0, p1, Lo/o;->c:Lo/o;

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_2

    :cond_9
    :goto_3
    if-eqz p1, :cond_b

    if-nez v0, :cond_a

    .line 123
    iget-object p1, v1, Lo/o;->b:Lo/o;

    iget-object v0, v1, Lo/o;->c:Lo/o;

    iput-object v0, p1, Lo/o;->d:Lo/o;

    goto :goto_4

    .line 125
    :cond_a
    iget-object p1, v1, Lo/o;->c:Lo/o;

    iput-object p1, v0, Lo/o;->c:Lo/o;

    .line 128
    :goto_4
    iput-object v2, v1, Lo/o;->c:Lo/o;

    .line 129
    iput-object v2, v1, Lo/o;->b:Lo/o;

    goto :goto_5

    .line 130
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Didnt find "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in parent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lo/o;->b:Lo/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_5
    if-eqz v4, :cond_d

    .line 150
    iput-object v4, v1, Lo/o;->b:Lo/o;

    .line 151
    iget-object p1, v4, Lo/o;->d:Lo/o;

    iput-object p1, v1, Lo/o;->c:Lo/o;

    .line 152
    iput-object v1, v4, Lo/o;->d:Lo/o;

    :cond_d
    return-void
.end method

.method public final b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lo/q;->a:Lo/o;

    iget-object v0, v0, Lo/o;->d:Lo/o;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    iget-object v0, v0, Lo/o;->c:Lo/o;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v0, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 9
    iget-object v2, p0, Lo/q;->a:Lo/o;

    iget-object v2, v2, Lo/o;->d:Lo/o;

    :goto_1
    if-eqz v2, :cond_6

    .line 10
    iget-object v3, v2, Lo/o;->a:Lo/p;

    if-nez v3, :cond_1

    .line 16
    iget-object v3, v2, Lo/o;->d:Lo/o;

    iget-object v3, v3, Lo/o;->a:Lo/p;

    .line 19
    :cond_1
    invoke-interface {v3}, Lo/p;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 25
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/o;

    if-eqz v4, :cond_4

    .line 34
    iget-object v5, v2, Lo/o;->a:Lo/p;

    if-nez v5, :cond_3

    iget-object v5, v4, Lo/o;->a:Lo/p;

    if-nez v5, :cond_4

    :cond_3
    iget-object v4, v4, Lo/o;->a:Lo/p;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lo/p;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v2, Lo/o;->a:Lo/p;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lo/p;->b()Z

    move-result v4

    if-nez v4, :cond_5

    .line 40
    :cond_4
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    .line 41
    :cond_5
    :goto_2
    iget-object v2, v2, Lo/o;->c:Lo/o;

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    return-void

    .line 85
    :cond_7
    iget-object v1, p0, Lo/q;->a:Lo/o;

    iget-object v1, v1, Lo/o;->d:Lo/o;

    iget-object v2, v1, Lo/o;->c:Lo/o;

    const/4 v3, 0x0

    move-object v4, v3

    :goto_3
    if-eqz v1, :cond_15

    .line 88
    iget-object v5, v1, Lo/o;->a:Lo/p;

    if-nez v5, :cond_8

    .line 92
    iget-object v5, v1, Lo/o;->d:Lo/o;

    iget-object v5, v5, Lo/o;->a:Lo/p;

    .line 95
    :cond_8
    invoke-interface {v5}, Lo/p;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 98
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_9

    .line 102
    :cond_9
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/o;

    if-ne v5, v1, :cond_a

    goto/16 :goto_9

    :cond_a
    if-nez v4, :cond_b

    .line 111
    iget-object v6, p0, Lo/q;->a:Lo/o;

    iget-object v7, v1, Lo/o;->c:Lo/o;

    iput-object v7, v6, Lo/o;->d:Lo/o;

    goto :goto_4

    .line 113
    :cond_b
    iget-object v6, v1, Lo/o;->c:Lo/o;

    iput-object v6, v4, Lo/o;->c:Lo/o;

    .line 115
    :goto_4
    iput-object v3, v1, Lo/o;->c:Lo/o;

    .line 117
    iget-object v6, v5, Lo/o;->a:Lo/p;

    if-nez v6, :cond_f

    iget-object v7, v1, Lo/o;->a:Lo/p;

    if-nez v7, :cond_f

    .line 120
    iget-object v6, v5, Lo/o;->d:Lo/o;

    :goto_5
    if-eqz v6, :cond_c

    .line 121
    iget-object v7, v6, Lo/o;->c:Lo/o;

    if-eqz v7, :cond_c

    move-object v6, v7

    goto :goto_5

    :cond_c
    if-eqz v6, :cond_d

    .line 127
    iget-object v7, v1, Lo/o;->d:Lo/o;

    iput-object v7, v6, Lo/o;->c:Lo/o;

    .line 130
    :cond_d
    iget-object v6, v1, Lo/o;->d:Lo/o;

    :goto_6
    if-eqz v6, :cond_e

    .line 131
    iput-object v5, v6, Lo/o;->b:Lo/o;

    .line 132
    iget-object v6, v6, Lo/o;->c:Lo/o;

    goto :goto_6

    .line 136
    :cond_e
    iput-object v3, v1, Lo/o;->d:Lo/o;

    goto :goto_a

    :cond_f
    if-eqz v6, :cond_12

    .line 137
    iget-object v6, v1, Lo/o;->a:Lo/p;

    if-eqz v6, :cond_10

    invoke-interface {v6}, Lo/p;->b()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v5, Lo/o;->a:Lo/p;

    invoke-interface {v6}, Lo/p;->b()Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_8

    .line 149
    :cond_10
    new-instance v6, Lo/o;

    invoke-direct {v6}, Lo/o;-><init>()V

    .line 150
    iget-object v7, v5, Lo/o;->a:Lo/p;

    iput-object v7, v6, Lo/o;->a:Lo/p;

    .line 151
    iget-object v7, v5, Lo/o;->d:Lo/o;

    iput-object v7, v6, Lo/o;->d:Lo/o;

    :goto_7
    if-eqz v7, :cond_11

    .line 157
    iput-object v6, v7, Lo/o;->b:Lo/o;

    .line 158
    iget-object v7, v7, Lo/o;->c:Lo/o;

    goto :goto_7

    .line 163
    :cond_11
    iput-object v3, v5, Lo/o;->a:Lo/p;

    .line 166
    iput-object v5, v1, Lo/o;->b:Lo/o;

    .line 167
    iput-object v5, v6, Lo/o;->b:Lo/o;

    .line 170
    iput-object v1, v5, Lo/o;->d:Lo/o;

    .line 171
    iput-object v6, v1, Lo/o;->c:Lo/o;

    goto :goto_a

    .line 172
    :cond_12
    :goto_8
    iput-object v5, v1, Lo/o;->b:Lo/o;

    .line 173
    iget-object v6, v5, Lo/o;->d:Lo/o;

    iput-object v6, v1, Lo/o;->c:Lo/o;

    .line 174
    iput-object v1, v5, Lo/o;->d:Lo/o;

    goto :goto_a

    :cond_13
    :goto_9
    move-object v4, v1

    :goto_a
    if-nez v2, :cond_14

    move-object v1, v3

    goto :goto_b

    .line 175
    :cond_14
    iget-object v1, v2, Lo/o;->c:Lo/o;

    :goto_b
    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_3

    .line 260
    :cond_15
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
