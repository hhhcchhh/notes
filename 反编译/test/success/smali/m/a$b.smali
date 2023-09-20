.class public final enum Lm/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lm/a$b;

.field public static final enum c:Lm/a$b;

.field public static final enum d:Lm/a$b;

.field public static final enum e:Lm/a$b;

.field public static final synthetic f:[Lm/a$b;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lm/a$b;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lm/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lm/a$b;->b:Lm/a$b;

    .line 3
    new-instance v1, Lm/a$b;

    const-string v3, "CRAM-MD5"

    const-string v4, "CRAM_MD5"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lm/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lm/a$b;->c:Lm/a$b;

    .line 5
    new-instance v3, Lm/a$b;

    const-string v4, "LOGIN"

    const/4 v6, 0x2

    invoke-direct {v3, v4, v6, v4}, Lm/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lm/a$b;->d:Lm/a$b;

    .line 7
    new-instance v4, Lm/a$b;

    const-string v7, "XOAUTH"

    const/4 v8, 0x3

    invoke-direct {v4, v7, v8, v7}, Lm/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lm/a$b;->e:Lm/a$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lm/a$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v5

    aput-object v3, v7, v6

    aput-object v4, v7, v8

    .line 8
    sput-object v7, Lm/a$b;->f:[Lm/a$b;

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
    iput-object p3, p0, Lm/a$b;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lm/a$b;
    .locals 1

    .line 1
    const-class v0, Lm/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm/a$b;

    return-object p0
.end method

.method public static values()[Lm/a$b;
    .locals 1

    .line 1
    sget-object v0, Lm/a$b;->f:[Lm/a$b;

    invoke-virtual {v0}, [Lm/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm/a$b;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a$b;->a:Ljava/lang/String;

    return-object v0
.end method
