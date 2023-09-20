.class public Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;
.super Ljava/lang/Object;
.source "DbDeviceInfoBean.java"


# instance fields
.field airSyncState:I

.field autoCfgState:I

.field batteryUtil:Lcom/dwdbsdk/Util/BatteryPredator;

.field gpsState:I

.field isUpdate:Z

.field lastMsgSn:I

.field location:I

.field name:Ljava/lang/String;

.field pci:I

.field stateStr:Ljava/lang/String;

.field temp:Ljava/lang/String;

.field wifiIp:Ljava/lang/String;

.field workState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u5f85\u8fde\u63a5.."

    .line 7
    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->name:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/dwdbsdk/Util/BatteryPredator;

    invoke-direct {v0}, Lcom/dwdbsdk/Util/BatteryPredator;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->batteryUtil:Lcom/dwdbsdk/Util/BatteryPredator;

    const-string v0, "0"

    .line 9
    iput-object v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->temp:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->location:I

    .line 11
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->gpsState:I

    const/4 v1, 0x2

    .line 12
    iput v1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->airSyncState:I

    .line 13
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->autoCfgState:I

    .line 14
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->pci:I

    const-string v1, ""

    .line 15
    iput-object v1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->wifiIp:Ljava/lang/String;

    .line 16
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->lastMsgSn:I

    .line 17
    iput v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->workState:I

    .line 27
    iput-object v1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->stateStr:Ljava/lang/String;

    .line 28
    iput-boolean v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->isUpdate:Z

    return-void
.end method


# virtual methods
.method public getAirSyncState()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->airSyncState:I

    return v0
.end method

.method public getAutoCfgState()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->autoCfgState:I

    return v0
.end method

.method public getBatteryUtil()Lcom/dwdbsdk/Util/BatteryPredator;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->batteryUtil:Lcom/dwdbsdk/Util/BatteryPredator;

    return-object v0
.end method

.method public getGpsState()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->gpsState:I

    return v0
.end method

.method public getLastMsgSn()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->lastMsgSn:I

    return v0
.end method

.method public getLocation()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->location:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPci()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->pci:I

    return v0
.end method

.method public getStateStr()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->stateStr:Ljava/lang/String;

    return-object v0
.end method

.method public getTemp()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->temp:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiIp()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->wifiIp:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkState()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->workState:I

    return v0
.end method

.method public isUpdate()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->isUpdate:Z

    return v0
.end method

.method public setAirSyncState(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->airSyncState:I

    return-void
.end method

.method public setAutoCfgState(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->autoCfgState:I

    return-void
.end method

.method public setBatteryUtil(Lcom/dwdbsdk/Util/BatteryPredator;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->batteryUtil:Lcom/dwdbsdk/Util/BatteryPredator;

    return-void
.end method

.method public setGpsState(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->gpsState:I

    return-void
.end method

.method public setLastMsgSn(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->lastMsgSn:I

    return-void
.end method

.method public setLocation(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->location:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPci(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->pci:I

    return-void
.end method

.method public setStateStr(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->stateStr:Ljava/lang/String;

    return-void
.end method

.method public setTemp(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->temp:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->isUpdate:Z

    return-void
.end method

.method public setWifiIp(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->wifiIp:Ljava/lang/String;

    return-void
.end method

.method public setWorkState(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->workState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceInfoBean{workState=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->workState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', battery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->batteryUtil:Lcom/dwdbsdk/Util/BatteryPredator;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/dwdbsdk/Util/BatteryPredator;->getPercent()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", temp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->temp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->gpsState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", airSyncState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->airSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", autoCfgState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->autoCfgState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->pci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wifiIp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Bean/DbDeviceInfoBean;->wifiIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
