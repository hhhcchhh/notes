.class public Lcom/dwdbsdk/Util/AirState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FAIL:I = 0x2

.field public static final IDLE:I = 0x0

.field public static final SUCC:I = 0x1

.field public static c:Lcom/dwdbsdk/Util/AirState;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/dwdbsdk/Util/AirState;->a:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/dwdbsdk/Util/AirState;->b:I

    return-void
.end method

.method public static build()Lcom/dwdbsdk/Util/AirState;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/Util/AirState;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Util/AirState;->c:Lcom/dwdbsdk/Util/AirState;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/Util/AirState;

    invoke-direct {v1}, Lcom/dwdbsdk/Util/AirState;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Util/AirState;->c:Lcom/dwdbsdk/Util/AirState;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/Util/AirState;->c:Lcom/dwdbsdk/Util/AirState;

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
.method public getAirSyncState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Util/AirState;->a:I

    return v0
.end method

.method public getPci()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Util/AirState;->b:I

    return v0
.end method

.method public setAirSyncState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Util/AirState;->a:I

    return-void
.end method

.method public setPci(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dwdbsdk/Util/AirState;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AirState{airSyncState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Util/AirState;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dwdbsdk/Util/AirState;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
