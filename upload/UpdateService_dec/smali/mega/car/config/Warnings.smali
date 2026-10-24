.class public interface abstract Lmega/car/config/Warnings;
.super Ljava/lang/Object;
.source "Warnings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Warnings$ScreenHighTemperature;,
        Lmega/car/config/Warnings$CrashOutputStatus;,
        Lmega/car/config/Warnings$SeriousError;,
        Lmega/car/config/Warnings$DCChargeInputError;,
        Lmega/car/config/Warnings$ChargeInputError;,
        Lmega/car/config/Warnings$DischargeError;,
        Lmega/car/config/Warnings$ParamsDMSStatus;,
        Lmega/car/config/Warnings$WarnSwitchPower;,
        Lmega/car/config/Warnings$WarnDriverSeat;,
        Lmega/car/config/Warnings$ShutdownTimer;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0xb
    permission = "mega.car.permission.CAR_WARNING"
.end annotation


# static fields
.field public static final ID_ABNORMAL_SHUTDOWN_TIMER:I = 0xb000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "Power/Abnormal/ShutdownTimer/Set"
        subscribe = "Power/Abnormal/ShutdownTimer"
        type = Lmega/car/config/Warnings$ShutdownTimer;
    .end annotation
.end field

.field public static final ID_AQS:I = 0xb000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Warning/PoorAirQuality/Set"
        subscribe = "Warning/PoorAirQuality"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHARGING_INPUT_ERROR:I = 0xb000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "GW_1E5/BcuTextDispReq/Set"
        subscribe = "GW_1E5/BcuTextDispReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DC_CHARGING_INPUT_ERROR:I = 0xb000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "GW_1E5/BcuDcTextDispReq/Set"
        subscribe = "GW_1E5/BcuDcTextDispReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISCHARGE_ERROR:I = 0xb000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Info/Discharge/Set"
        subscribe = "Info/Discharge"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DMS_STATUS:I = 0xb000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Warning/DriverFatigue/Set"
        subscribe = "Warning/DriverFatigue"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVER_INFO_STS_DOOR_AJAR_WARN:I = 0xb000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Warning/DoorOpen/Set"
        subscribe = "Warning/DoorOpen"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FAULT_AMOUNT:I = 0xb000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Telltale/FaultQuantityIndicator/Set"
        subscribe = "Telltale/FaultQuantityIndicator"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FAULT_INDICATION:I = 0xb000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "List/FaultIndication/Set"
        subscribe = "List/FaultIndication"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FUEL_BAR_NOTICE:I = 0xb000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "FuelBar/Notice/Set"
        subscribe = "FuelBar/Notice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INSTRUMENT_SCREEN_HIGHTEMPERATURE:I = 0xb00001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Warning/ScreenHighTemperature/1/Set"
        subscribe = "Warning/ScreenHighTemperature/1"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOW_VOLTAGE_BATTERY_ERROR:I = 0xb00001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Fault/LowVoltBattery/Set"
        subscribe = "Fault/LowVoltBattery"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MAIN_SCREEN_HIGHTEMPERATURE:I = 0xb00001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Warning/ScreenHighTemperature/2/Set"
        subscribe = "Warning/ScreenHighTemperature/2"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PASSENGER_SCREEN_HIGHTEMPERATURE:I = 0xb000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Warning/ScreenHighTemperature/3/Set"
        subscribe = "Warning/ScreenHighTemperature/3"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POWER_BATTERY_LOW:I = 0xb000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Warning/PowerBatteryLow/Set"
        subscribe = "Warning/PowerBatteryLow"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POWER_BATTERY_LOW_VOICE:I = 0xb00001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Warning/PowerBatteryLowVoice/Set"
        subscribe = "Warning/PowerBatteryLowVoice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POWER_FUEL_LOW:I = 0xb000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Warning/FuelTankLow/Set"
        subscribe = "Warning/FuelTankLow"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RESET_IVI:I = 0xb000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "icdriving/ResetIvi/Set"
        subscribe = "icdriving/ResetIvi"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SERIOUSLY_CRASH:I = 0xb00001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Warning/SeriouslyCrash/Set"
        subscribe = "Warning/SeriouslyCrash"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TPMS_STS_HIGH_PRESSURE_WARN:I = 0xb000011

.field public static final ID_TPMS_STS_LOW_PRESSURE_WARN:I = 0xb000010

.field public static final ID_VEHICLE_CONTROL_SCREEN_HIGHTEMPERATURE:I = 0xb000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Warning/ScreenHighTemperature/4/Set"
        subscribe = "Warning/ScreenHighTemperature/4"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_FAULT_INFO:I = 0xb00001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ictelltale/VehicleFaultInfo/Set"
        subscribe = "ictelltale/VehicleFaultInfo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_SERIOUS_BREAKDOWN:I = 0xb000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Fault/VehicleBreakdown/Set"
        subscribe = "Fault/VehicleBreakdown"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_SERIOUS_ERROR:I = 0xb000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Fault/VehicleSerious/Set"
        subscribe = "Fault/VehicleSerious"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WARN_MSG_DRIVER_INFO_STS_ODOMETER_DIFF_MORE_10KM:I = 0xb000003

.field public static final ID_WARN_MSG_DRIVER_INFO_STS_ODOMETER_OVERFLOW:I = 0xb000002

.field public static final ID_WARN_MSG_DRIVER_INFO_STS_SNOW_FLAKE:I = 0xb000004

.field public static final ID_WARN_MSG_ELEC_POWER_STS_AC_CHARGER_NEED_REMOVED:I = 0xb000009

.field public static final ID_WARN_MSG_ELEC_POWER_STS_BRAKE_NEEDED:I = 0xb000008

.field public static final ID_WARN_MSG_ELEC_POWER_STS_HV_BATT_OVER_TEMPERATURE:I = 0xb000005

.field public static final ID_WARN_MSG_ELEC_POWER_STS_IMMEDIATELY_STOP_DRIVING:I = 0xb000007

.field public static final ID_WARN_MSG_ELEC_POWER_STS_MOTOR_OVER_SPEED:I = 0xb000006

.field public static final ID_WARN_MSG_REAR_CLOSURE_STS_POWER_LIFT_GATE_FAIL:I = 0xb00000a

.field public static final ID_WARN_MSG_REAR_CLOSURE_STS_POWER_LIFT_GATE_WARNING:I = 0xb00000b

.field public static final ID_WARN_MSG_SEAT_CTL_PASS_LONG_SLIDE:I = 0xb00000c

.field public static final ID_WARN_MSG_VEH_STATE_STS_DRIVER_NOT_PRESENT:I = 0xb000001

.field public static final ID_WARN_MSG_VEH_STATE_STS_SWITCH_POWER:I = 0xb00000e

.field public static final ID_WARN_MSG_WARN_MSG_VEH_STATE_STS_DRIVER_SEAT_SENSOR:I = 0xb00000d

.field public static final MGR_ID:I = 0xb
