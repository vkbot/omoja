.class public Lcom/mega/update/sdk/utils/OtaVehicleInfo;
.super Ljava/lang/Object;
.source "OtaVehicleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/sdk/utils/OtaVehicleInfo$BattKeepWarmStartTime;,
        Lcom/mega/update/sdk/utils/OtaVehicleInfo$ScheduledChargingTime;
    }
.end annotation


# instance fields
.field private antiTheftStatus:I

.field private battKeepWarm:I

.field private battKeepWarmStartTime:Ljava/lang/String;

.field private battStopKeepWarm:I

.field private batteryVoltage:F

.field private chargeStatus:I

.field private countryCode:I

.field private drivenSpeed:F

.field private drivenType:I

.field private engineStatus:I

.field private gearStatus:I

.field private handbrakeStatus:I

.field private hvReadyStatus:I

.field private idcu:I

.field private mMainSeatBelt:I

.field private obdStatus:I

.field private powerEFSMMode:Ljava/lang/String;

.field private powerStatus:I

.field private ptReadyStatus:I

.field private qnxVersion:Ljava/lang/String;

.field private scheduledChargeMode:I

.field private scheduledChargingDuration:I

.field private scheduledChargingRepeatDate:I

.field private scheduledChargingTimeHour:I

.field private scheduledChargingTimeMinute:I

.field private scheduledTravel:I

.field private scheduledTravelHour:I

.field private scheduledTravelMinute:I

.field private scheduledTravelRepeatDate:I

.field private socBattery:I

.field private socBatteryPower:I

.field private vinNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->mMainSeatBelt:I

    return-void
.end method


# virtual methods
.method public getAntiTheftStatus()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->antiTheftStatus:I

    return v0
.end method

.method public getBattKeepWarm()I
    .locals 1

    .line 430
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->battKeepWarm:I

    return v0
.end method

.method public getBattKeepWarmStartTime()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->battKeepWarmStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getBattStopKeepWarm()I
    .locals 1

    .line 466
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->battStopKeepWarm:I

    return v0
.end method

.method public getBatteryVoltage()F
    .locals 1

    .line 223
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->batteryVoltage:F

    return v0
.end method

.method public getChargeStatus()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->chargeStatus:I

    return v0
.end method

.method public getCountryCode()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->countryCode:I

    return v0
.end method

.method public getDrivenSpeed()F
    .locals 1

    .line 239
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->drivenSpeed:F

    return v0
.end method

.method public getDrivenType()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->drivenType:I

    return v0
.end method

.method public getEngineStatus()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->engineStatus:I

    return v0
.end method

.method public getGearStatus()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->gearStatus:I

    return v0
.end method

.method public getHVReadyStatus()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->hvReadyStatus:I

    return v0
.end method

.method public getHandbrakStatus()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->handbrakeStatus:I

    return v0
.end method

.method public getIdcu()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->idcu:I

    return v0
.end method

.method public getMainSeatBelt()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->mMainSeatBelt:I

    return v0
.end method

.method public getOBDStatus()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->obdStatus:I

    return v0
.end method

.method public getPTReadyStatus()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->ptReadyStatus:I

    return v0
.end method

.method public getPowerEFSMMode()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->powerEFSMMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerStatus()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->powerStatus:I

    return v0
.end method

.method public getQnxVersion()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->qnxVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledChargeMode()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargeMode:I

    return v0
.end method

.method public getScheduledChargingDuration()I
    .locals 1

    .line 373
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargingDuration:I

    return v0
.end method

.method public getScheduledChargingRepeatDate()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargingRepeatDate:I

    return v0
.end method

.method public getScheduledChargingTimeHour()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargingTimeHour:I

    return v0
.end method

.method public getScheduledChargingTimeMinute()I
    .locals 1

    .line 343
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargingTimeMinute:I

    return v0
.end method

.method public getScheduledTravel()I
    .locals 1

    .line 389
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravel:I

    return v0
.end method

.method public getScheduledTravelHour()I
    .locals 1

    .line 397
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravelHour:I

    return v0
.end method

.method public getScheduledTravelMinute()I
    .locals 1

    .line 405
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravelMinute:I

    return v0
.end method

.method public getScheduledTravelRepeatDate()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravelRepeatDate:I

    return v0
.end method

.method public getSocBattery()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->socBattery:I

    return v0
.end method

.method public getSocBatteryPower()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->socBatteryPower:I

    return v0
.end method

.method public getVinNumber()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->vinNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setAntiTheftStatus(I)V
    .locals 0
    .param p1, "antiTheftStatus"    # I

    .line 299
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->antiTheftStatus:I

    .line 300
    return-void
.end method

.method public setBattKeepWarm(I)V
    .locals 0
    .param p1, "battKeepWarm"    # I

    .line 425
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->battKeepWarm:I

    .line 426
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravel:I

    .line 427
    return-void
.end method

.method public setBattKeepWarmStartTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "battKeepWarmStartTime"    # Ljava/lang/String;

    .line 441
    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->battKeepWarmStartTime:Ljava/lang/String;

    .line 442
    if-eqz p1, :cond_1

    .line 444
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/mega/update/sdk/utils/OtaVehicleInfo$BattKeepWarmStartTime;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/update/sdk/utils/OtaVehicleInfo$BattKeepWarmStartTime;

    .line 445
    .local v0, "startTime":Lcom/mega/update/sdk/utils/OtaVehicleInfo$BattKeepWarmStartTime;
    if-nez v0, :cond_0

    .line 446
    return-void

    .line 448
    :cond_0
    iget v1, v0, Lcom/mega/update/sdk/utils/OtaVehicleInfo$BattKeepWarmStartTime;->IHU_KeepWarmStrtHour:I

    iput v1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravelHour:I

    .line 449
    iget v1, v0, Lcom/mega/update/sdk/utils/OtaVehicleInfo$BattKeepWarmStartTime;->IHU_KeepWarmStrtMin:I

    iput v1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravelMinute:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .end local v0    # "startTime":Lcom/mega/update/sdk/utils/OtaVehicleInfo$BattKeepWarmStartTime;
    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 455
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public setBattStopKeepWarm(I)V
    .locals 0
    .param p1, "battStopKeepWarm"    # I

    .line 462
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->battStopKeepWarm:I

    .line 463
    return-void
.end method

.method public setBatteryVoltage(F)V
    .locals 0
    .param p1, "batteryVoltage"    # F

    .line 219
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->batteryVoltage:F

    .line 220
    return-void
.end method

.method public setChargeStatus(I)V
    .locals 0
    .param p1, "chargeStatus"    # I

    .line 291
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->chargeStatus:I

    .line 292
    return-void
.end method

.method public setCountryCode(I)V
    .locals 0
    .param p1, "countryCode"    # I

    .line 187
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->countryCode:I

    .line 188
    return-void
.end method

.method public setDrivenSpeed(F)V
    .locals 0
    .param p1, "drivenSpeed"    # F

    .line 235
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->drivenSpeed:F

    .line 236
    return-void
.end method

.method public setDrivenType(I)V
    .locals 0
    .param p1, "drivenType"    # I

    .line 211
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->drivenType:I

    .line 212
    return-void
.end method

.method public setEngineStatus(I)V
    .locals 0
    .param p1, "engineStatus"    # I

    .line 259
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->engineStatus:I

    .line 260
    return-void
.end method

.method public setGearStatus(I)V
    .locals 0
    .param p1, "gearStatus"    # I

    .line 251
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->gearStatus:I

    .line 252
    return-void
.end method

.method public setHVReadyStatus(I)V
    .locals 0
    .param p1, "hvReadyStatus"    # I

    .line 307
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->hvReadyStatus:I

    .line 308
    return-void
.end method

.method public setHandbrakStatus(I)V
    .locals 0
    .param p1, "handbrakeStatus"    # I

    .line 267
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->handbrakeStatus:I

    .line 268
    return-void
.end method

.method public setIdcu(I)V
    .locals 0
    .param p1, "idcu"    # I

    .line 179
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->idcu:I

    .line 180
    return-void
.end method

.method public setMainSeatBelt(I)V
    .locals 0
    .param p1, "mainSeatBelt"    # I

    .line 171
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->mMainSeatBelt:I

    .line 172
    return-void
.end method

.method public setOBDStatus(I)V
    .locals 0
    .param p1, "obdStatus"    # I

    .line 283
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->obdStatus:I

    .line 284
    return-void
.end method

.method public setPTReadyStatus(I)V
    .locals 0
    .param p1, "ptReadyStatus"    # I

    .line 315
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->ptReadyStatus:I

    .line 316
    return-void
.end method

.method public setPowerEFSMMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "powerEFSMMode"    # Ljava/lang/String;

    .line 417
    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->powerEFSMMode:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setPowerStatus(I)V
    .locals 0
    .param p1, "powerStatus"    # I

    .line 243
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->powerStatus:I

    .line 244
    return-void
.end method

.method public setQnxVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "qnxVersion"    # Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->qnxVersion:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setScheduledChargeMode(I)V
    .locals 0
    .param p1, "scheduledChargeMode"    # I

    .line 323
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargeMode:I

    .line 324
    return-void
.end method

.method public setScheduledChargingDuration(I)V
    .locals 0
    .param p1, "scheduledChargingDuration"    # I

    .line 369
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargingDuration:I

    .line 370
    return-void
.end method

.method public setScheduledChargingRepeatDate(I)V
    .locals 0
    .param p1, "scheduledChargingRepeatDate"    # I

    .line 377
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargingRepeatDate:I

    .line 378
    return-void
.end method

.method public setScheduledChargingTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .line 356
    if-eqz p1, :cond_1

    .line 357
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/mega/update/sdk/utils/OtaVehicleInfo$ScheduledChargingTime;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/update/sdk/utils/OtaVehicleInfo$ScheduledChargingTime;

    .line 358
    .local v0, "chargeTime":Lcom/mega/update/sdk/utils/OtaVehicleInfo$ScheduledChargingTime;
    if-nez v0, :cond_0

    .line 359
    return-void

    .line 361
    :cond_0
    iget v1, v0, Lcom/mega/update/sdk/utils/OtaVehicleInfo$ScheduledChargingTime;->StartTimeHour:I

    iput v1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargingTimeHour:I

    .line 362
    iget v1, v0, Lcom/mega/update/sdk/utils/OtaVehicleInfo$ScheduledChargingTime;->StartTimemMin:I

    iput v1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargingTimeMinute:I

    .line 365
    .end local v0    # "chargeTime":Lcom/mega/update/sdk/utils/OtaVehicleInfo$ScheduledChargingTime;
    :cond_1
    return-void
.end method

.method public setScheduledChargingTimeHour(I)V
    .locals 0
    .param p1, "scheduledChargingTimeHour"    # I

    .line 331
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargingTimeHour:I

    .line 332
    return-void
.end method

.method public setScheduledChargingTimeMinute(I)V
    .locals 0
    .param p1, "scheduledChargingTimeMinute"    # I

    .line 339
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargingTimeMinute:I

    .line 340
    return-void
.end method

.method public setScheduledTravel(I)V
    .locals 0
    .param p1, "scheduledTravel"    # I

    .line 385
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravel:I

    .line 386
    return-void
.end method

.method public setScheduledTravelHour(I)V
    .locals 0
    .param p1, "scheduledTravelHour"    # I

    .line 393
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravelHour:I

    .line 394
    return-void
.end method

.method public setScheduledTravelMinute(I)V
    .locals 0
    .param p1, "scheduledTravelMinute"    # I

    .line 401
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravelMinute:I

    .line 402
    return-void
.end method

.method public setScheduledTravelRepeatDate(I)V
    .locals 0
    .param p1, "scheduledTravelRepeatDate"    # I

    .line 409
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravelRepeatDate:I

    .line 410
    return-void
.end method

.method public setSocBattery(I)V
    .locals 0
    .param p1, "socBattery"    # I

    .line 227
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->socBattery:I

    .line 228
    return-void
.end method

.method public setSocBatteryPower(I)V
    .locals 0
    .param p1, "socBatteryPower"    # I

    .line 275
    iput p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->socBatteryPower:I

    .line 276
    return-void
.end method

.method public setVinNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "vinNumber"    # Ljava/lang/String;

    .line 203
    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->vinNumber:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OtaVehicleInfo {idcu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->idcu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->countryCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", qnxVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->qnxVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vinNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->vinNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", drivenType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->drivenType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", batteryVoltage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->batteryVoltage:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", socBattery="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->socBattery:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", drivenSpeed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->drivenSpeed:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", powerStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->powerStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gearStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->gearStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", engineStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->engineStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", handbrakeStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->handbrakeStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", socBatteryPower="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->socBatteryPower:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", obdStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->obdStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", chargeStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->chargeStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", antiTheftStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->antiTheftStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hvReadyStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->hvReadyStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ptReadyStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->ptReadyStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scheduledChargeMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargeMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scheduledChargingTimeHour="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargingTimeHour:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scheduledChargingTimeMinute="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargingTimeMinute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scheduledChargingDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargingDuration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scheduledChargingRepeatDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledChargingRepeatDate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scheduledTravel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scheduledTravelHour="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravelHour:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scheduledTravelMinute="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravelMinute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scheduledTravelRepeatDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->scheduledTravelRepeatDate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", battKeepWarm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->battKeepWarm:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", battKeepWarmStartTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->battKeepWarmStartTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", battStopKeepWarm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->battStopKeepWarm:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", powerEFSMMode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->powerEFSMMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
