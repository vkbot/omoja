.class public interface abstract Lmega/car/config/Driving;
.super Ljava/lang/Object;
.source "Driving.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Driving$DrivingModeExchange;,
        Lmega/car/config/Driving$DrivingInfoType;,
        Lmega/car/config/Driving$ParamsLanguageSet;,
        Lmega/car/config/Driving$RemainingMileageMode;,
        Lmega/car/config/Driving$ParamsTripConsumptionUnit;,
        Lmega/car/config/Driving$ParamsChassisModeSet;,
        Lmega/car/config/Driving$ParamsPropModeSet;,
        Lmega/car/config/Driving$ParamsEpsModeSet;,
        Lmega/car/config/Driving$ParamsSOCSet;,
        Lmega/car/config/Driving$ParamsMaxFuelConsumptionModeSts;,
        Lmega/car/config/Driving$ParamsMaxFuelConsumptionModeSW;,
        Lmega/car/config/Driving$BrakePedalSts;,
        Lmega/car/config/Driving$SuspensionLevel;,
        Lmega/car/config/Driving$SuspensionAdjustStatus;,
        Lmega/car/config/Driving$ParamsMemSysCmd;,
        Lmega/car/config/Driving$ParamsVehPowerStatusSts;,
        Lmega/car/config/Driving$ParamsDrvInfoComfortEnable;,
        Lmega/car/config/Driving$ParamsDrvEnergyMode;,
        Lmega/car/config/Driving$ParamsDrvInfoGearPosition;,
        Lmega/car/config/Driving$ParamsDrvInfoOdometerInfoMode;,
        Lmega/car/config/Driving$ParamsDrvInfoSpeedInfoMode;,
        Lmega/car/config/Driving$ParamsDrvMode;,
        Lmega/car/config/Driving$ParamsDrvSteeringMode;,
        Lmega/car/config/Driving$ParamsDrvBrkRegenMode;,
        Lmega/car/config/Driving$ParamsDrvAccMode;,
        Lmega/car/config/Driving$ParamsDrvLatchStatus;,
        Lmega/car/config/Driving$ParamsDrivingStatus;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x4
    permission = "mega.car.permission.CAR_DRIVING"
.end annotation


# static fields
.field public static final ID_ACC_PEDAL_POS:I = 0x400005a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/AccPedal/Set"
        subscribe = "DrivingInfo/AccPedal"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_BRAKE_PEDAL_STATUS:I = 0x4000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/BrakePedal/Set"
        subscribe = "BodyInfo/BrakePedal"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BRAKE_POSITION:I = 0x4000060
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/BreakPositon/Set"
        subscribe = "DrivingInfo/BreakPositon"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DEPARTURE_REMINDER:I = 0x4000064
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/DepartureReminder/Set"
        subscribe = "DrivingInfo/DepartureReminder"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVEMODE_STORAGE:I = 0x400006b

.field public static final ID_DRIVER_INFO_REQ_ACCOUNT_DELETE:I = 0x400001f

.field public static final ID_DRIVER_INFO_REQ_ACCOUNT_ID:I = 0x400001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "CDC/AccountId/Set"
        subscribe = "CDC/AccountId"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVER_INFO_REQ_MEM_SYS_SAVE_RECALL_COMMAND:I = 0x400001e

.field public static final ID_DRIVER_INFO_STS_ACCUM_MINUTES:I = 0x400001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/AccumulativeDriveTime/Set"
        subscribe = "DrivingInfo/AccumulativeDriveTime"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVER_INFO_STS_ACCUM_SPEED_AVG:I = 0x4000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/AccumulativeAverageSpeed/Set"
        subscribe = "DrivingInfo/AccumulativeAverageSpeed"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DRIVER_INFO_STS_CURR_ODOMETER:I = 0x4000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/TripDriveRange/Set"
        subscribe = "DrivingInfo/TripDriveRange"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DRIVER_INFO_STS_LOW_BATTERY_VOLT:I = 0x4000026

.field public static final ID_DRIVER_INFO_STS_MEM_SYS_WINDOW:I = 0x4000020

.field public static final ID_DRIVER_INFO_STS_RUN_MINUTES:I = 0x4000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/TripDriveTime/Set"
        subscribe = "DrivingInfo/TripDriveTime"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVER_INFO_STS_SPEED_AVG:I = 0x4000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/TripAverageSpeed/Set"
        subscribe = "DrivingInfo/TripAverageSpeed"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DRIVER_INFO_STS_TOTAL_ODOMETER:I = 0x4000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/TotalDriveDistance/Set"
        subscribe = "DrivingInfo/TotalDriveDistance"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DRIVER_INFO_STS_TOTAL_TIME:I = 0x4000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/TotalDriveTime/Set"
        subscribe = "DrivingInfo/TotalDriveTime"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVER_INFO_STS_USER_ID:I = 0x400001d

.field public static final ID_DRIVER_INFO_STS_VEH_POWER:I = 0x400001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/PowerStatus/Set"
        subscribe = "DrivingInfo/PowerStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVING_INFO_CONTROL_LOCK:I = 0x400006e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/ControlLock/Set"
        subscribe = "DrivingInfo/ControlLock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVING_INFO_WINDOW_LOCK:I = 0x400006d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/WindowLock/Set"
        subscribe = "DrivingInfo/WindowLock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVING_STATUS:I = 0x4000001

.field public static final ID_DRV_ACC_MODE:I = 0x4000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/AccelerationMode/Set"
        subscribe = "BodyInfo/AccelerationMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_AUTO_CONVENIENT:I = 0x400002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Driving/DrvAutoConvenient/Set"
        subscribe = "Driving/DrvAutoConvenient"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_BRAKE_POWER_MODE:I = 0x4000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/BrakeBoosterMode/Set"
        subscribe = "BodyInfo/BrakeBoosterMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_BRK_REGEN_MODE:I = 0x4000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/EnergyRecoveryMode/Set"
        subscribe = "EnergyInfo/EnergyRecoveryMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_CHASSIS_MODESET:I = 0x4000039
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/ChassisModeset/Set"
        subscribe = "Driving/ChassisModeset"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_COMFORT_PARKING:I = 0x400002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Driving/DrvComfortParking/Set"
        subscribe = "Driving/DrvComfortParking"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_COOL_LIQUID_ADD:I = 0x400002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Driving/DrvCoolLiquid/Set"
        subscribe = "Driving/DrvCoolLiquid"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_DISPLAY_INFO:I = 0x400006a

.field public static final ID_DRV_ENERGY_MODE:I = 0x4000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/EnergyManagementMode/Set"
        subscribe = "EnergyInfo/EnergyManagementMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_ENERGY_MODE_MEM:I = 0x4000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/EnergyManagementModeMemory/Set"
        subscribe = "EnergyInfo/EnergyManagementModeMemory"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_EPS_MODESET:I = 0x4000037
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/DrvEpsModeset/Set"
        subscribe = "Driving/DrvEpsModeset"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_HIGHWAY_MODE:I = 0x4000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Driving/DrvHighWay/Set"
        subscribe = "Driving/DrvHighWay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_INFO_COMFORT_ENABLE:I = 0x4000016

.field public static final ID_DRV_INFO_GEAR_POSITION:I = 0x400000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/Gear/Set"
        subscribe = "DrivingInfo/Gear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_INFO_ODOMETER_INFO:I = 0x400000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/DrivingInfoType/Set"
        subscribe = "DrivingInfo/DrivingInfoType"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_INFO_ODOMETER_INFO_MODE:I = 0x4000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/TripDistantUnit/Set"
        subscribe = "DrivingInfo/TripDistantUnit"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_INFO_SPEED_INFO:I = 0x400000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "DrivingInfo/Speed/Set"
        subscribe = "DrivingInfo/Speed"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DRV_INFO_SPEED_INFO_MODE:I = 0x4000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/SpeedUnit/Set"
        subscribe = "DrivingInfo/SpeedUnit"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_INFO_TOTAL_TRIP_ODOMETER_INFO:I = 0x400000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/AccumulativeDriveRange/Set"
        subscribe = "DrivingInfo/AccumulativeDriveRange"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DRV_LATCH_STATUS:I = 0x4000002

.field public static final ID_DRV_MANUAL_CONVENIENT:I = 0x400002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Driving/DrvManualConvenient/Set"
        subscribe = "Driving/DrvManualConvenient"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_MAXFUELCONSUMPTIONMODESW:I = 0x4000035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/DRVMAXFUELCONSUMPTIONMODESW/Set"
        subscribe = "EnergyInfo/DRVMAXFUELCONSUMPTIONMODESW"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_MAXFUELCONSUMPTIONSW:I = 0x4000034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/MAXFUELCONSUMPTIONSW/Set"
        subscribe = "EnergyInfo/MAXFUELCONSUMPTIONSW"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_MODE:I = 0x4000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/DrivingMode/Set"
        subscribe = "DrivingInfo/DrivingMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_MODE_EXCHANGE:I = 0x4000073
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "DrivingInfo/DrivingModeExchange/Set"
        subscribe = "DrivingInfo/DrivingModeExchange"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_PROP_MODESET:I = 0x4000038
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/PROPMODESET/Set"
        subscribe = "Driving/PROPMODESET"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_SLOW_MODE:I = 0x4000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/CrawlControl/Set"
        subscribe = "BodyInfo/CrawlControl"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_SOCSET:I = 0x4000036
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/DRVSOCSET/Set"
        subscribe = "EnergyInfo/DRVSOCSET"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_STEERING_MODE:I = 0x4000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EPSMode/Set"
        subscribe = "BodyInfo/EPSMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_SUSPENSION_ADJUST_STATUS:I = 0x400002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Driving/SuspensionAdjustStatus/Set"
        subscribe = "Driving/SuspensionAdjustStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_SUSPENSION_CURRENT_LEVEL:I = 0x4000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Driving/SuspensionCurrentLevel/Set"
        subscribe = "Driving/SuspensionCurrentLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_SUSPENSION_MAINTAIN:I = 0x400002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Driving/SuspensionMaintain/Set"
        subscribe = "Driving/SuspensionMaintain"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EP_CREEP_MODE:I = 0x4000012

.field public static final ID_EP_CRUISE_STATUS:I = 0x4000010

.field public static final ID_EP_CRUISE_STORED_SPEED:I = 0x4000011

.field public static final ID_EP_CURR_TRIP_AVG_CONSUMPTION:I = 0x4000057
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVDriveCycleAverageConsumption/Set"
        subscribe = "DrivingInfo/EVDriveCycleAverageConsumption"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_CURR_TRIP_ODOMETER:I = 0x400004d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVTripDriveRange/Set"
        subscribe = "DrivingInfo/EVTripDriveRange"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_CURR_TRIP_TIME:I = 0x4000052
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVTripBDriveTime/Set"
        subscribe = "DrivingInfo/EVTripBDriveTime"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_FOUR_WHEEL_DRV_MODE:I = 0x400000f

.field public static final ID_EP_LAST_RECHARGE_AVG_CONSUMPTION:I = 0x4000058
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVLastChargeAverageConsumption/Set"
        subscribe = "DrivingInfo/EVLastChargeAverageConsumption"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_LAST_RECHARGE_ODOMETER:I = 0x400004e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVLastChargeDriveRange/Set"
        subscribe = "DrivingInfo/EVLastChargeDriveRange"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_LAST_RECHARGE_TIME:I = 0x4000053
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVLastChargeDriveTime/Set"
        subscribe = "DrivingInfo/EVLastChargeDriveTime"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_TOTAL_AVG_CONSUMPTION:I = 0x4000054
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVTotalAverageConsumption/Set"
        subscribe = "DrivingInfo/EVTotalAverageConsumption"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_TOTAL_ODOMETER:I = 0x400004a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVTotalDriveRange/Set"
        subscribe = "DrivingInfo/EVTotalDriveRange"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_TOTAL_TIME:I = 0x400004f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVTotalDriveTime/Set"
        subscribe = "DrivingInfo/EVTotalDriveTime"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_TRIP_A_AVG_CONSUMPTION:I = 0x4000055
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVTripAAverageConsumption/Set"
        subscribe = "DrivingInfo/EVTripAAverageConsumption"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_TRIP_A_ODOMETER:I = 0x400004b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVTripADriveRange/Set"
        subscribe = "DrivingInfo/EVTripADriveRange"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_TRIP_A_TIME:I = 0x4000050
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVTripDriveTime/Set"
        subscribe = "DrivingInfo/EVTripDriveTime"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_TRIP_B_AVG_CONSUMPTION:I = 0x4000056
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVTripBAverageConsumption/Set"
        subscribe = "DrivingInfo/EVTripBAverageConsumption"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_TRIP_B_ODOMETER:I = 0x400004c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVTripBDriveRange/Set"
        subscribe = "DrivingInfo/EVTripBDriveRange"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_TRIP_B_TIME:I = 0x4000051
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVTripADriveTime/Set"
        subscribe = "DrivingInfo/EVTripADriveTime"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_CURR_TRIP_AVG_CONSUMPTION:I = 0x4000048
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelDriveCycleAverageConsumption/Set"
        subscribe = "DrivingInfo/FuelDriveCycleAverageConsumption"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_CURR_TRIP_ODOMETER:I = 0x400003e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelTripDriveRange/Set"
        subscribe = "DrivingInfo/FuelTripDriveRange"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_CURR_TRIP_TIME:I = 0x4000043
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelTripDriveTime/Set"
        subscribe = "DrivingInfo/FuelTripDriveTime"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_LAST_REFUEL_AVG_CONSUMPTION:I = 0x4000049
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelLastRefuelAverageConsumption/Set"
        subscribe = "DrivingInfo/FuelLastRefuelAverageConsumption"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_LAST_REFUEL_ODOMETER:I = 0x400003f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelLastRefuelDriveRange/Set"
        subscribe = "DrivingInfo/FuelLastRefuelDriveRange"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_LAST_REFUEL_TIME:I = 0x4000044
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelLastRefuelDriveTime/Set"
        subscribe = "DrivingInfo/FuelLastRefuelDriveTime"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_TOTAL_AVG_CONSUMPTION:I = 0x4000045
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelTotalAverageConsumption/Set"
        subscribe = "DrivingInfo/FuelTotalAverageConsumption"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_TOTAL_ODOMETER:I = 0x400003b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelTotalDriveRange/Set"
        subscribe = "DrivingInfo/FuelTotalDriveRange"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_TOTAL_TIME:I = 0x4000040
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelTotalDriveTime/Set"
        subscribe = "DrivingInfo/FuelTotalDriveTime"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_TRIP_A_AVG_CONSUMPTION:I = 0x4000046
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelTripAAverageConsumption/Set"
        subscribe = "DrivingInfo/FuelTripAAverageConsumption"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_TRIP_A_ODOMETER:I = 0x400003c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelTripADriveRange/Set"
        subscribe = "DrivingInfo/FuelTripADriveRange"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_TRIP_A_TIME:I = 0x4000041
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelTripADriveTime/Set"
        subscribe = "DrivingInfo/FuelTripADriveTime"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_TRIP_B_AVG_CONSUMPTION:I = 0x4000047
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelTripBAverageConsumption/Set"
        subscribe = "DrivingInfo/FuelTripBAverageConsumption"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_TRIP_B_ODOMETER:I = 0x400003d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelTripBDriveRange/Set"
        subscribe = "DrivingInfo/FuelTripBDriveRange"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_TRIP_B_TIME:I = 0x4000042
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/FuelTripBDriveTime/Set"
        subscribe = "DrivingInfo/FuelTripBDriveTime"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_INSTANT_POWER_CONSUMPTION:I = 0x400000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/PowerConsumption/Set"
        subscribe = "EnergyInfo/PowerConsumption"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_INTELLIGENT_AVOIDANCE:I = 0x4000068
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/IntelligentAvoidance/Set"
        subscribe = "DrivingInfo/IntelligentAvoidance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INTELLIGENT_SPEED_CONTROL:I = 0x4000065
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/IntelligentSpeedControl/Set"
        subscribe = "DrivingInfo/IntelligentSpeedControl"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LANE_ASSIST_INTERVENTION:I = 0x4000061
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/LaneAssistIntervention/Set"
        subscribe = "DrivingInfo/LaneAssistIntervention"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LANE_ASSIST_WARNING:I = 0x4000069
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/LaneAssistWarning/Set"
        subscribe = "DrivingInfo/LaneAssistWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LANGUAGE_SETTINGS:I = 0x400005c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/Language/Set"
        subscribe = "DrivingInfo/Language"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MEDIA_MEDIA_INFO_SET:I = 0x4000070
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/MediaInfo/Set"
        subscribe = "Media/MediaInfo"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_MEDIA_MEDIA_STATE_SET:I = 0x4000071
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Media/MediaState/Set"
        subscribe = "Media/MediaState"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OUT_DRV_MODE:I = 0x4000072
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/DrivingModeOut/Set"
        subscribe = "DrivingInfo/DrivingModeOut"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PROPMODE_STORAGE:I = 0x400006c

.field public static final ID_REAR_APPROACH_WARNING:I = 0x4000062
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/RearApproachWarning/Set"
        subscribe = "DrivingInfo/RearApproachWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_CROSS_COLLISION_WARNING:I = 0x4000063
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/RearCrossCollisionWarning/Set"
        subscribe = "DrivingInfo/RearCrossCollisionWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REMAINGMILEAGE_MODE:I = 0x4000059
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/RemainingMileageMode/Set"
        subscribe = "DrivingInfo/RemainingMileageMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RESET_TOTAL_DRIVING_INFO:I = 0x400005d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/ResetTotalDrivingInfo/Set"
        subscribe = "DrivingInfo/ResetTotalDrivingInfo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RESET_TRIP_A:I = 0x400005e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/ResetTripA/Set"
        subscribe = "DrivingInfo/ResetTripA"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RESET_TRIP_B:I = 0x400005f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/ResetTripB/Set"
        subscribe = "DrivingInfo/ResetTripB"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEATBELT_LOCK_STATUS:I = 0x400005b

.field public static final ID_STEERING_ANGLE:I = 0x4000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/SteeringWheelAngle/Set"
        subscribe = "DrivingInfo/SteeringWheelAngle"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_STEERING_MODE_SWITCH:I = 0x400006f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/SteeringModeSwitch/Set"
        subscribe = "BodyInfo/SteeringModeSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TRAFFIC_SIGNAL_RECOGNITION:I = 0x4000067
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/TrafficSignalRecognition/Set"
        subscribe = "DrivingInfo/TrafficSignalRecognition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TRAFFIC_SIGN_RECOGNITION:I = 0x4000066
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/TrafficSignRecognition/Set"
        subscribe = "DrivingInfo/TrafficSignRecognition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TRIP_ACERAGE_SPEED_A:I = 0x4000074
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "DrivingInfo/TripAAverageSpeed/Set"
        subscribe = "DrivingInfo/TripAAverageSpeed"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TRIP_ACERAGE_SPEED_B:I = 0x4000075
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "DrivingInfo/TripBAverageSpeed/Set"
        subscribe = "DrivingInfo/TripBAverageSpeed"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TRIP_CONSUMPTION_UNIT:I = 0x400003a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/TripConsumptionUnit/Set"
        subscribe = "DrivingInfo/TripConsumptionUnit"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TRIP_ELECTRIC_UNIT:I = 0x4000076
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/TripElectricUnit/Set"
        subscribe = "DrivingInfo/TripElectricUnit"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x4
