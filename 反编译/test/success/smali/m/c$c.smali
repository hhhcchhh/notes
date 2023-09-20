.class public final enum Lm/c$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm/c$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lm/c$c;

.field public static final enum b:Lm/c$c;

.field public static final enum c:Lm/c$c;

.field public static final enum d:Lm/c$c;

.field public static final enum e:Lm/c$c;

.field public static final synthetic f:[Lm/c$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lm/c$c;

    const-string v1, "MESSAGES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm/c$c;->a:Lm/c$c;

    .line 3
    new-instance v1, Lm/c$c;

    const-string v3, "RECENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lm/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm/c$c;->b:Lm/c$c;

    .line 5
    new-instance v3, Lm/c$c;

    const-string v5, "UIDNEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lm/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lm/c$c;->c:Lm/c$c;

    .line 7
    new-instance v5, Lm/c$c;

    const-string v7, "UIDVALIDITY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lm/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lm/c$c;->d:Lm/c$c;

    .line 9
    new-instance v7, Lm/c$c;

    const-string v9, "UNSEEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lm/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lm/c$c;->e:Lm/c$c;

    const/4 v9, 0x5

    new-array v9, v9, [Lm/c$c;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 10
    sput-object v9, Lm/c$c;->f:[Lm/c$c;

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

.method public static valueOf(Ljava/lang/String;)Lm/c$c;
    .locals 1

    .line 1
    const-class v0, Lm/c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm/c$c;

    return-object p0
.end method

.method public static values()[Lm/c$c;
    .locals 1

    .line 1
    sget-object v0, Lm/c$c;->f:[Lm/c$c;

    invoke-virtual {v0}, [Lm/c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm/c$c;

    return-object v0
.end method
