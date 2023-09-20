.class public Lch/ethz/ssh2/log/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final enabled:Z = false

.field private static final logLevel:I = 0x63


# instance fields
.field private className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/ethz/ssh2/log/Logger;->className:Ljava/lang/String;

    return-void
.end method

.method public static final getLogger(Ljava/lang/Class;)Lch/ethz/ssh2/log/Logger;
    .locals 1

    .line 1
    new-instance v0, Lch/ethz/ssh2/log/Logger;

    invoke-direct {v0, p0}, Lch/ethz/ssh2/log/Logger;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final log(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
