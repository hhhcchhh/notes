.class public final enum Lq/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lq/a$b;

.field public static final enum c:Lq/a$b;

.field public static final synthetic d:[Lq/a$b;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lq/a$b;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lq/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/a$b;->b:Lq/a$b;

    .line 4
    new-instance v1, Lq/a$b;

    const-string v3, "CRAM-MD5"

    const-string v4, "CRAM_MD5"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lq/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lq/a$b;->c:Lq/a$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lq/a$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    .line 5
    sput-object v3, Lq/a$b;->d:[Lq/a$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lq/a$b;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq/a$b;
    .locals 1

    .line 1
    const-class v0, Lq/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/a$b;

    return-object p0
.end method

.method public static values()[Lq/a$b;
    .locals 1

    .line 1
    sget-object v0, Lq/a$b;->d:[Lq/a$b;

    invoke-virtual {v0}, [Lq/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/a$b;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/a$b;->a:Ljava/lang/String;

    return-object v0
.end method
