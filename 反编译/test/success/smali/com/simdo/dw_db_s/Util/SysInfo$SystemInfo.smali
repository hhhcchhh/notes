.class public Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;
.super Ljava/lang/Object;
.source "SysInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simdo/dw_db_s/Util/SysInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemInfo"
.end annotation


# instance fields
.field private os:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputos(Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;->os:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputversionCode(Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;I)V
    .locals 0

    iput p1, p0, Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;->versionCode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputversionName(Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android"

    .line 348
    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;->os:Ljava/lang/String;

    .line 349
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;->versionName:Ljava/lang/String;

    .line 350
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;->versionCode:I

    return-void
.end method


# virtual methods
.method public getOs()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SystemInfo{os=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;->os:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', versionName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/simdo/dw_db_s/Util/SysInfo$SystemInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
