.class public final enum Lr/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr/a$a;

.field public static final enum b:Lr/a$a;

.field public static final enum c:Lr/a$a;

.field public static final enum d:Lr/a$a;

.field public static final synthetic e:[Lr/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lr/a$a;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/a$a;->a:Lr/a$a;

    .line 3
    new-instance v1, Lr/a$a;

    const-string v3, "CRAM_MD5"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lr/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr/a$a;->b:Lr/a$a;

    .line 5
    new-instance v3, Lr/a$a;

    const-string v5, "LOGIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lr/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr/a$a;->c:Lr/a$a;

    .line 7
    new-instance v5, Lr/a$a;

    const-string v7, "XOAUTH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lr/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lr/a$a;->d:Lr/a$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lr/a$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 8
    sput-object v7, Lr/a$a;->e:[Lr/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final a(Lr/a$a;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lr/a$a;->a:Lr/a$a;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PLAIN"

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lr/a$a;->b:Lr/a$a;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "CRAM-MD5"

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Lr/a$a;->c:Lr/a$a;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "LOGIN"

    return-object p0

    .line 7
    :cond_2
    sget-object v0, Lr/a$a;->d:Lr/a$a;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "XOAUTH"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lr/a$a;
    .locals 1

    .line 1
    const-class v0, Lr/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr/a$a;

    return-object p0
.end method

.method public static values()[Lr/a$a;
    .locals 1

    .line 1
    sget-object v0, Lr/a$a;->e:[Lr/a$a;

    invoke-virtual {v0}, [Lr/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr/a$a;

    return-object v0
.end method
