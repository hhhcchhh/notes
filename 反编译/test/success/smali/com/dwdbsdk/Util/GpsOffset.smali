.class public Lcom/dwdbsdk/Util/GpsOffset;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/dwdbsdk/Util/GpsOffset;


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/dwdbsdk/Util/GpsOffset;->a:J

    return-void
.end method

.method public static build()Lcom/dwdbsdk/Util/GpsOffset;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/Util/GpsOffset;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Util/GpsOffset;->b:Lcom/dwdbsdk/Util/GpsOffset;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/Util/GpsOffset;

    invoke-direct {v1}, Lcom/dwdbsdk/Util/GpsOffset;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Util/GpsOffset;->b:Lcom/dwdbsdk/Util/GpsOffset;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/Util/GpsOffset;->b:Lcom/dwdbsdk/Util/GpsOffset;

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
.method public getTiming()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/dwdbsdk/Util/GpsOffset;->a:J

    return-wide v0
.end method

.method public setTiming(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GpsOffset: timing = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 2
    iput-wide p1, p0, Lcom/dwdbsdk/Util/GpsOffset;->a:J

    return-void
.end method
