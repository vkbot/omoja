.class Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;
.super Ljava/lang/Object;
.source "MegaDmcOtaAssistImpl.java"

# interfaces
.implements Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;


# direct methods
.method constructor <init>(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    .line 121
    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V
    .locals 4
    .param p1, "value"    # Lmega/car/hardware/CarPropertyValue;

    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$000(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 194
    :sswitch_0
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledTravelRepeatDate(I)V

    .line 195
    goto/16 :goto_0

    .line 200
    :sswitch_1
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledTravelMinute(I)V

    .line 201
    goto/16 :goto_0

    .line 197
    :sswitch_2
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledTravelHour(I)V

    .line 198
    goto/16 :goto_0

    .line 191
    :sswitch_3
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledTravel(I)V

    .line 192
    goto/16 :goto_0

    .line 177
    :sswitch_4
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledChargingRepeatDate(I)V

    .line 178
    goto/16 :goto_0

    .line 186
    :sswitch_5
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledChargingDuration(I)V

    .line 187
    goto/16 :goto_0

    .line 183
    :sswitch_6
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledChargingTimeMinute(I)V

    .line 184
    goto/16 :goto_0

    .line 180
    :sswitch_7
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledChargingTimeHour(I)V

    .line 181
    goto/16 :goto_0

    .line 155
    :sswitch_8
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setOBDStatus(I)V

    .line 156
    goto/16 :goto_0

    .line 158
    :sswitch_9
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setPowerStatus(I)V

    .line 159
    goto/16 :goto_0

    .line 169
    :sswitch_a
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setDrivenType(I)V

    .line 170
    goto/16 :goto_0

    .line 128
    :sswitch_b
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setQnxVersion(Ljava/lang/String;)V

    .line 129
    goto/16 :goto_0

    .line 139
    :sswitch_c
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setVinNumber(Ljava/lang/String;)V

    .line 140
    goto/16 :goto_0

    .line 151
    :sswitch_d
    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/car/config/Power$PowerEFSMMode;

    .line 152
    .local v0, "powerEFSMMode":Lmega/car/config/Power$PowerEFSMMode;
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v1

    iget-object v2, v0, Lmega/car/config/Power$PowerEFSMMode;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setPowerEFSMMode(Ljava/lang/String;)V

    .line 153
    goto/16 :goto_0

    .line 161
    .end local v0    # "powerEFSMMode":Lmega/car/config/Power$PowerEFSMMode;
    :sswitch_e
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setHandbrakStatus(I)V

    .line 162
    goto/16 :goto_0

    .line 164
    :sswitch_f
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setAntiTheftStatus(I)V

    .line 165
    goto/16 :goto_0

    .line 204
    :sswitch_10
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 205
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    return-void

    .line 148
    .end local v0    # "message":Landroid/os/Message;
    :sswitch_11
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setEngineStatus(I)V

    .line 149
    goto :goto_0

    .line 174
    :sswitch_12
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledChargeMode(I)V

    .line 175
    goto :goto_0

    .line 144
    :sswitch_13
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setBatteryVoltage(F)V

    .line 145
    goto :goto_0

    .line 131
    :sswitch_14
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setDrivenSpeed(F)V

    .line 132
    goto :goto_0

    .line 134
    :sswitch_15
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setGearStatus(I)V

    .line 209
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v2}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 210
    .restart local v0    # "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x400000a -> :sswitch_15
        0x400000b -> :sswitch_14
        0x5000003 -> :sswitch_13
        0x500000f -> :sswitch_12
        0x5000042 -> :sswitch_11
        0x9000018 -> :sswitch_10
        0x900006b -> :sswitch_f
        0xa000003 -> :sswitch_e
        0x2d000006 -> :sswitch_d
        0x33000002 -> :sswitch_c
        0x33000009 -> :sswitch_b
        0x331001fa -> :sswitch_a
        0x50000016 -> :sswitch_9
        0x5000003e -> :sswitch_8
        0x500000c4 -> :sswitch_10
        0x67000001 -> :sswitch_7
        0x67000002 -> :sswitch_6
        0x67000003 -> :sswitch_5
        0x67000004 -> :sswitch_4
        0x67000009 -> :sswitch_3
        0x6700000a -> :sswitch_2
        0x6700000b -> :sswitch_1
        0x67000030 -> :sswitch_0
    .end sparse-switch
.end method

.method public onErrorEvent(II)V
    .locals 3
    .param p1, "propId"    # I
    .param p2, "zone"    # I

    .line 215
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$000(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method
