.class public Lp/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp/d;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public final e:J

.field public f:Z


# direct methods
.method public constructor <init>(Lp/d;J)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lp/e;-><init>(Lp/d;JLjava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Lp/d;JLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/d;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lp/e;-><init>(Lp/d;JLjava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Lp/d;JLjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/d;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 8
    iput-wide p2, p0, Lp/e;->e:J

    .line 9
    iput-object p1, p0, Lp/e;->a:Lp/d;

    .line 10
    iput-object p4, p0, Lp/e;->b:Ljava/util/List;

    if-eqz p5, :cond_0

    .line 12
    invoke-virtual {p0}, Lp/e;->a()V

    :cond_0
    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "message cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lp/d;JZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lp/e;-><init>(Lp/d;JLjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 18

    move-object/from16 v0, p0

    .line 5
    iget-boolean v1, v0, Lp/e;->f:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lp/e;->f:Z

    .line 9
    iget-object v1, v0, Lp/e;->b:Ljava/util/List;

    if-nez v1, :cond_1

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lp/e;->b:Ljava/util/List;

    .line 13
    :cond_1
    iget-object v1, v0, Lp/e;->a:Lp/d;

    invoke-interface {v1}, Lp/d;->i()Lp/f;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lp/f;->e()J

    move-result-wide v2

    .line 17
    iget-object v4, v0, Lp/e;->a:Lp/d;

    invoke-interface {v4}, Lp/d;->s()Lp/f;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lp/f;->e()J

    move-result-wide v5

    .line 21
    iget-object v7, v0, Lp/e;->a:Lp/d;

    invoke-interface {v7}, Lp/d;->j()Lp/f;

    move-result-object v7

    .line 22
    invoke-virtual {v7}, Lp/f;->e()J

    move-result-wide v8

    .line 40
    invoke-virtual {v1}, Lp/f;->f()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-nez v1, :cond_3

    .line 44
    invoke-virtual {v7}, Lp/f;->f()J

    move-result-wide v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_2

    .line 46
    iget-wide v1, v0, Lp/e;->e:J

    sub-long/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lp/e;->d:Ljava/lang/Long;

    .line 47
    iget-object v1, v0, Lp/e;->b:Ljava/util/List;

    const-string v2, "Error: zero orig time -- cannot compute delay"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 49
    :cond_2
    iget-object v1, v0, Lp/e;->b:Ljava/util/List;

    const-string v2, "Error: zero orig time -- cannot compute delay/offset"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 51
    :cond_3
    invoke-virtual {v4}, Lp/f;->f()J

    move-result-wide v10

    const-string v1, "Error: OrigTime > DestRcvTime"

    cmp-long v14, v10, v12

    if-eqz v14, :cond_a

    invoke-virtual {v7}, Lp/f;->f()J

    move-result-wide v10

    cmp-long v14, v10, v12

    if-nez v14, :cond_4

    goto :goto_2

    .line 76
    :cond_4
    iget-wide v10, v0, Lp/e;->e:J

    sub-long/2addr v10, v2

    cmp-long v4, v8, v5

    if-gez v4, :cond_5

    .line 81
    iget-object v4, v0, Lp/e;->b:Ljava/util/List;

    const-string v7, "Error: xmitTime < rcvTime"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    sub-long v14, v8, v5

    cmp-long v4, v14, v10

    if-gtz v4, :cond_6

    sub-long v12, v10, v14

    goto :goto_1

    :cond_6
    sub-long/2addr v14, v10

    const-wide/16 v16, 0x1

    cmp-long v4, v14, v16

    if-nez v4, :cond_7

    cmp-long v4, v10, v12

    if-eqz v4, :cond_8

    .line 100
    iget-object v4, v0, Lp/e;->b:Ljava/util/List;

    const-string v7, "Info: processing time > total network time by 1 ms -> assume zero delay"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_7
    iget-object v4, v0, Lp/e;->b:Ljava/util/List;

    const-string v7, "Warning: processing time > total network time"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_0
    move-wide v12, v10

    .line 108
    :goto_1
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lp/e;->c:Ljava/lang/Long;

    .line 109
    iget-wide v10, v0, Lp/e;->e:J

    cmp-long v4, v2, v10

    if-lez v4, :cond_9

    .line 110
    iget-object v4, v0, Lp/e;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    sub-long/2addr v5, v2

    .line 113
    iget-wide v1, v0, Lp/e;->e:J

    sub-long/2addr v8, v1

    add-long/2addr v5, v8

    const-wide/16 v1, 0x2

    div-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lp/e;->d:Ljava/lang/Long;

    goto :goto_4

    .line 114
    :cond_a
    :goto_2
    iget-object v10, v0, Lp/e;->b:Ljava/util/List;

    const-string v11, "Warning: zero rcvNtpTime or xmitNtpTime"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-wide v10, v0, Lp/e;->e:J

    cmp-long v14, v2, v10

    if-lez v14, :cond_b

    .line 117
    iget-object v10, v0, Lp/e;->b:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    sub-long/2addr v10, v2

    .line 121
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lp/e;->c:Ljava/lang/Long;

    .line 127
    :goto_3
    invoke-virtual {v4}, Lp/f;->f()J

    move-result-wide v10

    cmp-long v1, v10, v12

    if-eqz v1, :cond_c

    sub-long/2addr v5, v2

    .line 130
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lp/e;->d:Ljava/lang/Long;

    goto :goto_4

    .line 131
    :cond_c
    invoke-virtual {v7}, Lp/f;->f()J

    move-result-wide v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_d

    .line 134
    iget-wide v1, v0, Lp/e;->e:J

    sub-long/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lp/e;->d:Ljava/lang/Long;

    :cond_d
    :goto_4
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp/e;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp/e;->b:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lp/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp/e;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/e;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public d()Lp/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/e;->a:Lp/d;

    return-object v0
.end method

.method public e()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/e;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lp/e;->e:J

    return-wide v0
.end method
