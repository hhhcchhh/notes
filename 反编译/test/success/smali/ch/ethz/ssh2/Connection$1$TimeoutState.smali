.class final Lch/ethz/ssh2/Connection$1$TimeoutState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field isCancelled:Z

.field final synthetic this$0:Lch/ethz/ssh2/Connection;

.field timeoutSocketClosed:Z


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/Connection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/ethz/ssh2/Connection$1$TimeoutState;->this$0:Lch/ethz/ssh2/Connection;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lch/ethz/ssh2/Connection$1$TimeoutState;->isCancelled:Z

    .line 4
    iput-boolean p1, p0, Lch/ethz/ssh2/Connection$1$TimeoutState;->timeoutSocketClosed:Z

    return-void
.end method
