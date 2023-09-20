.class Lcom/dwdbsdk/Socket/UdpControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/Socket/UdpControl;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/Socket/UdpControl;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Socket/UdpControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/UdpControl$1;->a:Lcom/dwdbsdk/Socket/UdpControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/UdpControl$1;->a:Lcom/dwdbsdk/Socket/UdpControl;

    invoke-virtual {v0}, Lcom/dwdbsdk/Socket/UdpControl;->startUdp()V

    return-void
.end method
