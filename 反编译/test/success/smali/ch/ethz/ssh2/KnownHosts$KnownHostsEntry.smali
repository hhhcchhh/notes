.class Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/ethz/ssh2/KnownHosts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KnownHostsEntry"
.end annotation


# instance fields
.field key:Ljava/lang/Object;

.field patterns:[Ljava/lang/String;

.field final synthetic this$0:Lch/ethz/ssh2/KnownHosts;


# direct methods
.method public constructor <init>(Lch/ethz/ssh2/KnownHosts;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;->this$0:Lch/ethz/ssh2/KnownHosts;

    .line 3
    iput-object p2, p0, Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;->patterns:[Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lch/ethz/ssh2/KnownHosts$KnownHostsEntry;->key:Ljava/lang/Object;

    return-void
.end method
