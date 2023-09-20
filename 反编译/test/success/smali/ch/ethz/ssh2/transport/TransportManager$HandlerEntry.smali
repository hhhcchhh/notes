.class Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/ethz/ssh2/transport/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerEntry"
.end annotation


# instance fields
.field high:I

.field low:I

.field mh:Lch/ethz/ssh2/transport/MessageHandler;

.field final synthetic this$0:Lch/ethz/ssh2/transport/TransportManager;


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/transport/TransportManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/ethz/ssh2/transport/TransportManager$HandlerEntry;->this$0:Lch/ethz/ssh2/transport/TransportManager;

    return-void
.end method
