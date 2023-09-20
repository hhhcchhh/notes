.class public Lcom/dwdbsdk/Bean/DB/MsgSn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/dwdbsdk/Bean/DB/MsgSn;


# instance fields
.field public msgSn:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build()Lcom/dwdbsdk/Bean/DB/MsgSn;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/Bean/DB/MsgSn;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Bean/DB/MsgSn;->a:Lcom/dwdbsdk/Bean/DB/MsgSn;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DB/MsgSn;

    invoke-direct {v1}, Lcom/dwdbsdk/Bean/DB/MsgSn;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Bean/DB/MsgSn;->a:Lcom/dwdbsdk/Bean/DB/MsgSn;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/Bean/DB/MsgSn;->a:Lcom/dwdbsdk/Bean/DB/MsgSn;

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


# virtual methods
.method public getMsgSn()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Bean/DB/MsgSn;->msgSn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dwdbsdk/Bean/DB/MsgSn;->msgSn:I

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/dwdbsdk/Bean/DB/MsgSn;->msgSn:I

    .line 5
    :cond_0
    iget v0, p0, Lcom/dwdbsdk/Bean/DB/MsgSn;->msgSn:I

    return v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/dwdbsdk/Bean/DB/MsgSn;->msgSn:I

    return-void
.end method
