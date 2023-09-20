.class public Lorg/apache/commons/net/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/net/h;


# instance fields
.field public final a:Ljava/io/PrintWriter;

.field public final b:Z

.field public final c:C

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/net/f;-><init>(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;Z)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/f;-><init>(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;ZC)V
    .locals 1

    .line 3
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/net/f;-><init>(Ljava/io/PrintWriter;ZC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;ZCZ)V
    .locals 1

    .line 4
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/net/f;-><init>(Ljava/io/PrintWriter;ZCZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/f;-><init>(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/f;-><init>(Ljava/io/PrintWriter;ZC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;ZC)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/f;-><init>(Ljava/io/PrintWriter;ZCZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;ZCZ)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/apache/commons/net/f;->a:Ljava/io/PrintWriter;

    .line 10
    iput-boolean p2, p0, Lorg/apache/commons/net/f;->b:Z

    .line 11
    iput-char p3, p0, Lorg/apache/commons/net/f;->c:C

    .line 12
    iput-boolean p4, p0, Lorg/apache/commons/net/f;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 35
    iget-char v0, p0, Lorg/apache/commons/net/f;->c:C

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "\r\n"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-char v2, p0, Lorg/apache/commons/net/f;->c:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public a(Lorg/apache/commons/net/g;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/f;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/f;->a:Ljava/io/PrintWriter;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/net/f;->b:Z

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/net/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PASS"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, " *******"

    if-nez v1, :cond_3

    const-string v1, "USER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "LOGIN"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Lorg/apache/commons/net/g;->b()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lorg/apache/commons/net/f;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lorg/apache/commons/net/f;->a:Ljava/io/PrintWriter;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/net/f;->a:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/net/f;->a:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lorg/apache/commons/net/f;->a:Ljava/io/PrintWriter;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/f;->a:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/net/f;->a:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public b(Lorg/apache/commons/net/g;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/f;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/f;->a:Ljava/io/PrintWriter;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/f;->a:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lorg/apache/commons/net/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lorg/apache/commons/net/f;->a:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method
