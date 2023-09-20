.class public Lc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:D

.field public c:Ljava/lang/String;

.field public d:I

.field public e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lc/a;->a:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lc/a;->c:Ljava/lang/String;

    .line 10
    iput-wide p3, p0, Lc/a;->b:D

    .line 11
    iput p5, p0, Lc/a;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lc/a;->c:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lc/a;->e:J

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lc/a;->b:D

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lc/a;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    iget v0, p0, Lc/a;->d:I

    return v0
.end method

.method public a(D)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lc/a;->b:D

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lc/a;->d:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc/a;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lc/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/a;->c:Ljava/lang/String;

    return-void
.end method

.method public c()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/a;->b:D

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/a;->e:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a;->c:Ljava/lang/String;

    return-object v0
.end method
