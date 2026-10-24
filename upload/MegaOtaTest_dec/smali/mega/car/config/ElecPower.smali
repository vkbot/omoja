.class public interface abstract Lmega/car/config/ElecPower;
.super Ljava/lang/Object;
.source "ElecPower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/ElecPower$BookChargeTime;,
        Lmega/car/config/ElecPower$HeatingStatus;,
        Lmega/car/config/ElecPower$PowerBatteryState;,
        Lmega/car/config/ElecPower$ChargeState;,
        Lmega/car/config/ElecPower$EngineStatus;,
        Lmega/car/config/ElecPower$BattHeatStatus;,
        Lmega/car/config/ElecPower$DischargeStatus;,
        Lmega/car/config/ElecPower$DCDischargeStatus;,
        Lmega/car/config/ElecPower$ChargeType;,
        Lmega/car/config/ElecPower$TimeInfo;,
        Lmega/car/config/ElecPower$BookChargeTimeMode;,
        Lmega/car/config/ElecPower$ChargeMode;,
        Lmega/car/config/ElecPower$ParamsLowVolLoadShedLevel;,
        Lmega/car/config/ElecPower$OnOff;,
        Lmega/car/config/ElecPower$ParamsIdEpCruiseStatus;,
        Lmega/car/config/ElecPower$ParamsIdEpFourWheelDrvMode;,
        Lmega/car/config/ElecPower$ParamsBattChargeStatus;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x5
    permission = "mega.car.permission.ELEC_POWER"
.end annotation


# static fields
.field public static final ID_AC_CHARGE_CURRENT_LIMIT:I = 0x5000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ACChargeCurrentLimit/Set"
        subscribe = "EnergyInfo/ACChargeCurrentLimit"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_AC_CHRG_CNCTR_STS:I = 0x5000025

.field public static final ID_AVERAGE_ENERGY_CONSUME:I = 0x500004b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/AverageEnergyConsumption/Set"
        subscribe = "EnergyInfo/AverageEnergyConsumption"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_AVERAGE_ENERGY_CONSUME_10KM:I = 0x500004c

.field public static final ID_AVERAGE_ENERGY_CONSUME_25KM:I = 0x500004d

.field public static final ID_AVERAGE_ENERGY_CONSUME_50KM:I = 0x500004e

.field public static final ID_BATTERY_HEAT_ACTIVE_STATUS:I = 0x5000058
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/BatteryHeatingActiveStatus/Set"
        subscribe = "EnergyInfo/BatteryHeatingActiveStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATTERY_SOC:I = 0x5000044
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/BatterySOC/Set"
        subscribe = "EnergyInfo/BatterySOC"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATTERY_SOC_STATUS:I = 0x5000043
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/BatterySOCStatus/Set"
        subscribe = "EnergyInfo/BatterySOCStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATTERY_TEMPERATURE_MIN:I = 0x5000059
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/BatteryTempratureMin/Set"
        subscribe = "EnergyInfo/BatteryTempratureMin"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_BATT_HEAT:I = 0x5000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/BatteryHeatingSwitch/Set"
        subscribe = "BodyInfo/BatteryHeatingSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATT_HEATING_STATUS:I = 0x500003b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Telltale/PowerBatteryHeating/Set"
        subscribe = "Telltale/PowerBatteryHeating"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATT_HEAT_REMAIN_TIME:I = 0x5000041
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/BatteryHeatingRemainTime/Set"
        subscribe = "BodyInfo/BatteryHeatingRemainTime"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATT_HEAT_STATUS:I = 0x5000040
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/BatteryHeatingStatus/Set"
        subscribe = "BodyInfo/BatteryHeatingStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_TIME:I = 0x500005b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ScheduledChargeTime/Set"
        subscribe = "EnergyInfo/ScheduledChargeTime"
        type = Lmega/car/config/ElecPower$BookChargeTime;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_TIME_MODE:I = 0x5000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ScheduledChargeTimeMode/Set"
        subscribe = "EnergyInfo/ScheduledChargeTimeMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHARGE_CONNECT_LAMP:I = 0x5000049
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ChargeConnectLamp/Set"
        subscribe = "EnergyInfo/ChargeConnectLamp"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHARGE_HEAT_STATUS:I = 0x500001f

.field public static final ID_CHARGE_HEAT_TIME_CFG:I = 0x5000020

.field public static final ID_CHARGE_RANGE_PLUS_KWH:I = 0x5000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ChargekWh/Set"
        subscribe = "EnergyInfo/ChargekWh"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHARGE_STATE:I = 0x5000047
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ChargeState/Set"
        subscribe = "EnergyInfo/ChargeState"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHARGE_STATE_LAMP:I = 0x5000048
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ChargeStateLamp/Set"
        subscribe = "EnergyInfo/ChargeStateLamp"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHRG_PILE_CNCT:I = 0x5000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleCharge/ChargePileBTSwitch/Set"
        subscribe = "VehicleCharge/ChargePileBTSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DC_CHRG_CNCTR_STS:I = 0x5000026

.field public static final ID_DC_DISCHARGE_STATUS:I = 0x5000052
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/DischargeStatus/Set"
        subscribe = "EnergyInfo/DischargeStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISCHARGE_CURRENT:I = 0x500001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/DischargeCurrent/Set"
        subscribe = "EnergyInfo/DischargeCurrent"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DISCHARGE_POWER:I = 0x5000053
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/DischargePower/Set"
        subscribe = "EnergyInfo/DischargePower"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DISCHARGE_STATUS:I = 0x500001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Telltale/DischargeState/Set"
        subscribe = "Telltale/DischargeState"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISCHARGE_VOLTAGE:I = 0x500001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/DischargeVoltage/Set"
        subscribe = "EnergyInfo/DischargeVoltage"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DRV_BATT_AUTO_HEAT:I = 0x5000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/BatteryAutoHeating/Set"
        subscribe = "BodyInfo/BatteryAutoHeating"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_EGY_IND:I = 0x5000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EnginePower/Set"
        subscribe = "DrivingInfo/EnginePower"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_ENERGY_HOLD_SOC:I = 0x5000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/SocHolding/Set"
        subscribe = "EnergyInfo/SocHolding"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ELEC_POWER_BOOK_CHARGE_MODE:I = 0x500000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ScheduledChargeMode/Set"
        subscribe = "EnergyInfo/ScheduledChargeMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ELEC_POWER_BOOK_CHARGE_START_TIME:I = 0x5000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ScheduledChargeStartTime/Set"
        subscribe = "EnergyInfo/ScheduledChargeStartTime"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_ELEC_POWER_BOOK_CHARGE_STOP_TIME:I = 0x5000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ScheduledChargeStopTime/Set"
        subscribe = "EnergyInfo/ScheduledChargeStopTime"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final ID_ELEC_POWER_CHG_CURRENT:I = 0x500000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ChargeCurrent/Set"
        subscribe = "EnergyInfo/ChargeCurrent"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_ELEC_POWER_CHG_PLG_UNLOCK:I = 0x5000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/ChargeAutoUnlock/Set"
        subscribe = "BodyInfo/ChargeAutoUnlock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ELEC_POWER_CHG_POWER:I = 0x500000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ChargePower/Set"
        subscribe = "EnergyInfo/ChargePower"
        type = [Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_ELEC_POWER_CHG_RANGE_PLUS_MILEAGE:I = 0x500000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ChargeIncreasedRange/Set"
        subscribe = "EnergyInfo/ChargeIncreasedRange"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ELEC_POWER_CHG_TYPE:I = 0x5000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ChargeType/Set"
        subscribe = "EnergyInfo/ChargeType"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ELEC_POWER_CHG_VOLTAGE:I = 0x500000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ChargeVoltage/Set"
        subscribe = "EnergyInfo/ChargeVoltage"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_ELEC_POWER_CIRCULAR_BOOK_CHARGE_CFG:I = 0x5000012

.field public static final ID_ELEC_POWER_DISCHARGE_CFG:I = 0x5000019

.field public static final ID_ELEC_POWER_DISCHARGE_SOC_CFG:I = 0x5000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/DischargeSocThreshold/Set"
        subscribe = "EnergyInfo/DischargeSocThreshold"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ELEC_POWER_ECO_PLUS_MODE_CFG:I = 0x500003f

.field public static final ID_ELEC_POWER_STS_DSP_CHG_ST:I = 0x5000015

.field public static final ID_ELEC_POWER_USER_STOP_CHG:I = 0x5000023

.field public static final ID_ENERGY_SOURCE:I = 0x5000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EnergyMode/Set"
        subscribe = "DrivingInfo/EnergyMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ENGINE_STATUS:I = 0x5000042
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/EngineStatus/Set"
        subscribe = "EnergyInfo/EngineStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ENG_DIST_SW:I = 0x500002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ResidualEnergyDisplayMode/Set"
        subscribe = "EnergyInfo/ResidualEnergyDisplayMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EP_HV_BATT_CHG_STATUS:I = 0x5000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ChargeStatus/Set"
        subscribe = "EnergyInfo/ChargeStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EP_HV_BATT_CURRENT:I = 0x5000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/HighVoltBatteryCurrent/Set"
        subscribe = "EnergyInfo/HighVoltBatteryCurrent"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_HV_BATT_REMAIN_RANGE:I = 0x500001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/SocResidualRange/Set"
        subscribe = "EnergyInfo/SocResidualRange"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_HV_BATT_VOL:I = 0x5000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/HighVoltBatteryVoltage/Set"
        subscribe = "EnergyInfo/HighVoltBatteryVoltage"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_LV_BATT_CHG_STATUS:I = 0x5000006

.field public static final ID_EP_LV_BATT_CURRENT:I = 0x5000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/LowVoltBatteryCurrent/Set"
        subscribe = "EnergyInfo/LowVoltBatteryCurrent"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_LV_BATT_VOL:I = 0x5000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/LowVoltBatteryVoltage/Set"
        subscribe = "EnergyInfo/LowVoltBatteryVoltage"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_MOTOR_SPEED:I = 0x500003c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/MotorSpeed/Set"
        subscribe = "DrivingInfo/MotorSpeed"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EP_REMAIN_CHARGE_TIME:I = 0x500000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ChargeRemainTime/Set"
        subscribe = "EnergyInfo/ChargeRemainTime"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EP_WINTER_LONG_TRIP_CFG:I = 0x500003e

.field public static final ID_FUEL_L:I = 0x5000056
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/FuelLevel/Set"
        subscribe = "EnergyInfo/FuelLevel"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_LEVEL:I = 0x500005a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/FuelLevel/Set"
        subscribe = "EnergyInfo/FuelLevel"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_PERCENT:I = 0x5000032
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/FuelPercent/Set"
        subscribe = "EnergyInfo/FuelPercent"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FUEL_REMAIN_RANGE:I = 0x5000033
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/FuelResidualRange/Set"
        subscribe = "EnergyInfo/FuelResidualRange"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_HV_CHARGE_TARGET:I = 0x5000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ChargeSocThreshold/Set"
        subscribe = "EnergyInfo/ChargeSocThreshold"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HV_PERCENT:I = 0x500001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/SocPercent/Set"
        subscribe = "EnergyInfo/SocPercent"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HYDROGEN_PERCENT:I = 0x5000034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/HydrogenPercent/Set"
        subscribe = "EnergyInfo/HydrogenPercent"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HYDROGEN_REMAIN_RANGE:I = 0x5000035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/HydrogenRemainRange/Set"
        subscribe = "EnergyInfo/HydrogenRemainRange"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_KEY_BATT_LEVEL:I = 0x5000036
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/KeyBatteryLevel/Set"
        subscribe = "EnergyInfo/KeyBatteryLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MOMENT_ENERGY_CONSUME_10KM:I = 0x500004f

.field public static final ID_MOMENT_ENERGY_CONSUME_25KM:I = 0x5000050

.field public static final ID_MOMENT_ENERGY_CONSUME_50KM:I = 0x5000051

.field public static final ID_PILE_BLE_CNCT_REQ:I = 0x500002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleCharge/ChargePileBTConnectRequest/Set"
        subscribe = "VehicleCharge/ChargePileBTConnectRequest"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PILE_BLE_DELETE_REQ:I = 0x5000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleCharge/ChargePileBTDeletePairRequest/Set"
        subscribe = "VehicleCharge/ChargePileBTDeletePairRequest"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PILE_BLE_ID:I = 0x500002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleCharge/ChargePileBTCurrentId/Set"
        subscribe = "VehicleCharge/ChargePileBTCurrentId"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PILE_BLE_OFF_REQ:I = 0x5000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleCharge/ChargePileBTDisconnectRequest/Set"
        subscribe = "VehicleCharge/ChargePileBTDisconnectRequest"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PILE_CNCT_STS_ID:I = 0x500002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleCharge/ChargePileBTConnectStatus/Set"
        subscribe = "VehicleCharge/ChargePileBTConnectStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POWER_BATTERY_WORK_MODE:I = 0x5000057
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/PowerBatteryWorkingMode/Set"
        subscribe = "EnergyInfo/PowerBatteryWorkingMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REMAINING_MILEAGE_REAL:I = 0x5000054
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/RemainingMileage/Set"
        subscribe = "EnergyInfo/RemainingMileage"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_REMAINING_MILEAGE_STANDARD:I = 0x5000055
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/RemainingMileageStandard/Set"
        subscribe = "EnergyInfo/RemainingMileageStandard"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_REMAIN_RANGE_BY_10KM:I = 0x5000038
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ResidualRangeBy10km/Set"
        subscribe = "EnergyInfo/ResidualRangeBy10km"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_REMAIN_RANGE_BY_25KM:I = 0x5000039
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ResidualRangeBy25km/Set"
        subscribe = "EnergyInfo/ResidualRangeBy25km"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_REMAIN_RANGE_BY_50KM:I = 0x500003a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ResidualRangeBy50km/Set"
        subscribe = "EnergyInfo/ResidualRangeBy50km"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_REMAIN_RANGE_BY_INSTANT_SPEED:I = 0x5000037
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/ResidualRange/Set"
        subscribe = "EnergyInfo/ResidualRange"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REMOTE_START_REQ:I = 0x5000045
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/RemoteStartReq/Set"
        subscribe = "EnergyInfo/RemoteStartReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RESI_MILG_IN_10KM:I = 0x500005c

.field public static final ID_RESI_MILG_IN_25KM:I = 0x500005d

.field public static final ID_RESI_MILG_IN_50KM:I = 0x500005e

.field public static final ID_SMART_ENERGY_MANAGER:I = 0x500004a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/SmartEnergyManager/Set"
        subscribe = "EnergyInfo/SmartEnergyManager"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SYS_EGY_FLOW_DIRECTION:I = 0x500002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/PowerFlowDirection/Set"
        subscribe = "EnergyInfo/PowerFlowDirection"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_USE_CAR_BOOK:I = 0x5000046
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/UseCarBook/Set"
        subscribe = "EnergyInfo/UseCarBook"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_VEH_EGY_CNSE_SELECT:I = 0x500002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/EnergyConsumptionModel/Set"
        subscribe = "EnergyInfo/EnergyConsumptionModel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x5
