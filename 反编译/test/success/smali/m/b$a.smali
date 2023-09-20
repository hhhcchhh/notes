.class public final enum Lm/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lm/b$a;

.field public static final enum b:Lm/b$a;

.field public static final enum c:Lm/b$a;

.field public static final enum d:Lm/b$a;

.field public static final synthetic e:[Lm/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lm/b$a;

    const-string v1, "DISCONNECTED_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm/b$a;->a:Lm/b$a;

    .line 3
    new-instance v1, Lm/b$a;

    const-string v3, "NOT_AUTH_STATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lm/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm/b$a;->b:Lm/b$a;

    .line 5
    new-instance v3, Lm/b$a;

    const-string v5, "AUTH_STATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lm/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lm/b$a;->c:Lm/b$a;

    .line 7
    new-instance v5, Lm/b$a;

    const-string v7, "LOGOUT_STATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lm/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lm/b$a;->d:Lm/b$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lm/b$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 8
    sput-object v7, Lm/b$a;->e:[Lm/b$a;

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

.method public static valueOf(Ljava/lang/String;)Lm/b$a;
    .locals 1

    .line 1
    const-class v0, Lm/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm/b$a;

    return-object p0
.end method

.method public static values()[Lm/b$a;
    .locals 1

    .line 1
    sget-object v0, Lm/b$a;->e:[Lm/b$a;

    invoke-virtual {v0}, [Lm/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm/b$a;

    return-object v0
.end method
