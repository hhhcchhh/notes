.class public Lcom/dwdbsdk/Bean/DW/AtCmd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dwdbsdk/Bean/DW/AtCmd$OP;,
        Lcom/dwdbsdk/Bean/DW/AtCmd$NR;,
        Lcom/dwdbsdk/Bean/DW/AtCmd$PWR;
    }
.end annotation


# static fields
.field public static a:Lcom/dwdbsdk/Bean/DW/AtCmd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build()Lcom/dwdbsdk/Bean/DW/AtCmd;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/Bean/DW/AtCmd;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Bean/DW/AtCmd;->a:Lcom/dwdbsdk/Bean/DW/AtCmd;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/AtCmd;

    invoke-direct {v1}, Lcom/dwdbsdk/Bean/DW/AtCmd;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Bean/DW/AtCmd;->a:Lcom/dwdbsdk/Bean/DW/AtCmd;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/Bean/DW/AtCmd;->a:Lcom/dwdbsdk/Bean/DW/AtCmd;

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
