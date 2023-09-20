.class public Lcom/dwdbsdk/Socket/ServerSocketManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/net/ServerSocket;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/dwdbsdk/Socket/ServerSocketManager;->b:Z

    return-void
.end method


# virtual methods
.method public getServerSocket()Ljava/net/ServerSocket;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Socket/ServerSocketManager;->a:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public isAccept()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dwdbsdk/Socket/ServerSocketManager;->b:Z

    return v0
.end method

.method public setAccept(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dwdbsdk/Socket/ServerSocketManager;->b:Z

    return-void
.end method

.method public setServerSocket(Ljava/net/ServerSocket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Socket/ServerSocketManager;->a:Ljava/net/ServerSocket;

    return-void
.end method
