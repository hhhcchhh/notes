.class Lcom/dwdbsdk/SCP/ScpUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dwdbsdk/SCP/ScpUtil;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/SCP/ScpUtil;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/SCP/ScpUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/SCP/ScpUtil$1;->a:Lcom/dwdbsdk/SCP/ScpUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil$1;->a:Lcom/dwdbsdk/SCP/ScpUtil;

    invoke-static {v0}, Lcom/dwdbsdk/SCP/ScpUtil;->a(Lcom/dwdbsdk/SCP/ScpUtil;)Lcom/dwdbsdk/SCP/ScpUtil$OnScpListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/SCP/ScpUtil$1;->a:Lcom/dwdbsdk/SCP/ScpUtil;

    invoke-static {v0}, Lcom/dwdbsdk/SCP/ScpUtil;->a(Lcom/dwdbsdk/SCP/ScpUtil;)Lcom/dwdbsdk/SCP/ScpUtil$OnScpListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/dwdbsdk/SCP/ScpUtil$OnScpListener;->OnScpConnectFail()V

    :cond_0
    return-void
.end method
