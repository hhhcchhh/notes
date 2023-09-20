.class Lch/ethz/ssh2/SCPClient$LenNamePair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/ethz/ssh2/SCPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LenNamePair"
.end annotation


# instance fields
.field filename:Ljava/lang/String;

.field length:J

.field final synthetic this$0:Lch/ethz/ssh2/SCPClient;


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/SCPClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/ethz/ssh2/SCPClient$LenNamePair;->this$0:Lch/ethz/ssh2/SCPClient;

    return-void
.end method
