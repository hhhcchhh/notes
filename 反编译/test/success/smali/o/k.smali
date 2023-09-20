.class public final Lo/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x3


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    iget-wide v0, p0, Lo/k;->b:J

    long-to-int v1, v0

    return v1
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lo/k;->e:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lo/k;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/k;->a:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lo/k;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lo/k;->c:J

    return-void
.end method

.method public c()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-wide v0, p0, Lo/k;->c:J

    long-to-int v1, v0

    return v1
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lo/k;->d:J

    return-void
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lo/k;->c:J

    return-wide v0
.end method

.method public e()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Lo/k;->d:J

    long-to-int v1, v0

    return v1
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lo/k;->d:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lo/k;->e:I

    return v0
.end method
