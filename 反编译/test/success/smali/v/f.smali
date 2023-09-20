.class public Lv/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv/f$b;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})"

.field public static final g:Ljava/lang/String; = "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,3})"

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:I = 0x20


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv/f;->h:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,3})"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv/f;->i:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lv/f;->a:I

    .line 3
    iput v0, p0, Lv/f;->b:I

    .line 4
    iput v0, p0, Lv/f;->c:I

    .line 5
    iput v0, p0, Lv/f;->d:I

    .line 8
    iput-boolean v0, p0, Lv/f;->e:Z

    .line 18
    invoke-virtual {p0, p1}, Lv/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lv/f;->a:I

    .line 21
    iput v0, p0, Lv/f;->b:I

    .line 22
    iput v0, p0, Lv/f;->c:I

    .line 23
    iput v0, p0, Lv/f;->d:I

    .line 26
    iput-boolean v0, p0, Lv/f;->e:Z

    .line 47
    invoke-virtual {p0, p1, p2}, Lv/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lv/f;)I
    .locals 0

    .line 2
    iget p0, p0, Lv/f;->a:I

    return p0
.end method

.method public static synthetic a(Lv/f;Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lv/f;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lv/f;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lv/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lv/f;[I)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lv/f;->a([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lv/f;I)[I
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lv/f;->b(I)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lv/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lv/f;->c:I

    return p0
.end method

.method public static synthetic c(Lv/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lv/f;->b:I

    return p0
.end method

.method public static synthetic d(Lv/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lv/f;->d:I

    return p0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x1

    const v1, 0x55555555

    and-int/2addr v0, v1

    sub-int/2addr p1, v0

    const v0, 0x33333333

    and-int v1, p1, v0

    ushr-int/lit8 p1, p1, 0x2

    and-int/2addr p1, v0

    add-int/2addr v1, p1

    ushr-int/lit8 p1, v1, 0x4

    add-int/2addr v1, p1

    const p1, 0xf0f0f0f

    and-int/2addr p1, v1

    ushr-int/lit8 v0, p1, 0x8

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    add-int/2addr p1, v0

    and-int/lit8 p1, p1, 0x3f

    return p1
.end method

.method public final a(III)I
    .locals 3

    if-le p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    return p1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] not in range ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/util/regex/Matcher;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 27
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0xff

    invoke-virtual {p0, v2, v3, v4}, Lv/f;->a(III)I

    move-result v2

    and-int/2addr v2, v4

    rsub-int/lit8 v3, v1, 0x4

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lv/f;->b(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lv/f;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a([I)Ljava/lang/String;
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 29
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 30
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, "."

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lv/f$b;
    .locals 2

    .line 8
    new-instance v0, Lv/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lv/f$b;-><init>(Lv/f;Lv/f$a;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 9
    sget-object v0, Lv/f;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p0, v0}, Lv/f;->a(Ljava/util/regex/Matcher;)I

    move-result p1

    iput p1, p0, Lv/f;->b:I

    const/4 p1, 0x5

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lv/f;->a(III)I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_0

    .line 17
    iget v0, p0, Lv/f;->a:I

    rsub-int/lit8 v2, v1, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v0, v2

    iput v0, p0, Lv/f;->a:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    iget p1, p0, Lv/f;->b:I

    iget v0, p0, Lv/f;->a:I

    and-int/2addr p1, v0

    iput p1, p0, Lv/f;->c:I

    xor-int/lit8 v0, v0, -0x1

    or-int/2addr p1, v0

    .line 24
    iput p1, p0, Lv/f;->d:I

    return-void

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lv/f;->e:Z

    return-void
.end method

.method public final b(Ljava/lang/String;)I
    .locals 3

    .line 3
    sget-object v0, Lv/f;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lv/f;->a(Ljava/util/regex/Matcher;)I

    move-result p1

    return p1

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lv/f;->e:Z

    return v0
.end method

.method public final b(I)[I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x3

    :goto_0
    if-ltz v1, :cond_0

    .line 10
    aget v2, v0, v1

    rsub-int/lit8 v3, v1, 0x3

    mul-int/lit8 v3, v3, 0x8

    ushr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
