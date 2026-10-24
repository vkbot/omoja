.class public interface abstract Lmega/car/config/Climate;
.super Ljava/lang/Object;
.source "Climate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Climate$AirQualityLevel;,
        Lmega/car/config/Climate$ParamsBlowModeH53;,
        Lmega/car/config/Climate$ParamsBlowMode;,
        Lmega/car/config/Climate$ParamsDrvInfoTemperatureShowMode;,
        Lmega/car/config/Climate$ParamsHotCold;,
        Lmega/car/config/Climate$ParamsAqsSensitivity;,
        Lmega/car/config/Climate$ParamsAirCdComfortConfig;,
        Lmega/car/config/Climate$ParamsFanSpeedModeInAuto;,
        Lmega/car/config/Climate$ParamsRecycleDoorMode;,
        Lmega/car/config/Climate$ParamsSeatHeatVent;,
        Lmega/car/config/Climate$ParamsPm25CleanerMode;,
        Lmega/car/config/Climate$ParamsFrontBlwDirect;,
        Lmega/car/config/Climate$ParamsRearBlwLevel;,
        Lmega/car/config/Climate$ParamsFrontBlwLevel;,
        Lmega/car/config/Climate$ParamsPressedReq;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x2
    permission = "mega.car.permission.CLIMATE"
.end annotation


# static fields
.field public static final ID_ACMODE_CUSTOM:I = 0x2000062
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Setting/ACModeCustom/Set"
        subscribe = "AC/Setting/ACModeCustom"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AC_DISPLAY:I = 0x2000068
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Display/Set"
        subscribe = "AC/Display"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AC_FAST_HEAT:I = 0x2000059
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/FastHeat/Set"
        subscribe = "AC/FastHeat"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AC_RUN_REQ:I = 0x2000042

.field public static final ID_AC_SYSTEM_ERROR:I = 0x2000058
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SystemError/Set"
        subscribe = "AC/SystemError"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_CD_AC_MAX_MODE:I = 0x2000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/MaxAC/Set"
        subscribe = "AC/MaxAC"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_CD_AC_MODE:I = 0x2000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ACMode/Set"
        subscribe = "AC/ACMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_CD_AC_MODE_FRONT:I = 0x2000075
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ACMode/Front/Set"
        subscribe = "AC/ACMode/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_CD_AC_MODE_REAR:I = 0x2000076
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ACMode/Rear/Set"
        subscribe = "AC/ACMode/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_CD_DEFROST_AUTO_MODE:I = 0x2000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoDefOnOffSts/Set"
        subscribe = "AC/AutoDefOnOffSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_CD_DEFROST_MAX_MODE:I = 0x2000008

.field public static final ID_AIR_CD_ECONOMY_MODE:I = 0x2000005

.field public static final ID_AIR_CD_SYNC_DRV_SETTING_MODE:I = 0x2000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SyncMode/Set"
        subscribe = "AC/SyncMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_CD_SYNC_DRV_SETTING_MODE_ALL:I = 0x2000074
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SyncMode/All/Set"
        subscribe = "AC/SyncMode/All"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_CD_SYNC_DRV_SETTING_MODE_FRONT:I = 0x2000072
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SyncMode/Front/Set"
        subscribe = "AC/SyncMode/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_CD_SYNC_DRV_SETTING_MODE_REAR:I = 0x2000073
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SyncMode/Rear/Set"
        subscribe = "AC/SyncMode/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_CLEAN_AUTO_RUN:I = 0x2000063
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Setting/AirCleanAutoRun/Set"
        subscribe = "AC/Setting/AirCleanAutoRun"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_DISTRIBUTION_AUTO_LAMP:I = 0x200001e

.field public static final ID_AQS_IONIZER:I = 0x200001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AirClean/Set"
        subscribe = "AC/AirClean"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AQS_SENSITIVITY_CONFIG:I = 0x2000028

.field public static final ID_AUTO_AIR_CD_MODE:I = 0x2000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoMode/Set"
        subscribe = "AC/AutoMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_AIR_CD_MODE_FRONT:I = 0x200006c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoMode/Front/Set"
        subscribe = "AC/AutoMode/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_AIR_CD_MODE_FRONTLEFT:I = 0x200006e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoMode/FrontLeft/Set"
        subscribe = "AC/AutoMode/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_AIR_CD_MODE_FRONTRIGHT:I = 0x200006f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoMode/FrontRight/Set"
        subscribe = "AC/AutoMode/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_AIR_CD_MODE_REAR:I = 0x200006d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoMode/Rear/Set"
        subscribe = "AC/AutoMode/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_AIR_CD_MODE_REARLEFT:I = 0x2000070
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoMode/RearLeft/Set"
        subscribe = "AC/AutoMode/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_AIR_CD_MODE_REARRIGHT:I = 0x2000071
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoMode/RearRight/Set"
        subscribe = "AC/AutoMode/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_AIR_CIRCULATION_ON_AUTO:I = 0x2000022

.field public static final ID_AUTO_DEFROST_DEFOG:I = 0x2000050
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoDefrostDefog/Set"
        subscribe = "AC/AutoDefrostDefog"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_DEFROST_DEFOG_TIP:I = 0x2000069
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoDefrostDefogTip/Set"
        subscribe = "AC/AutoDefrostDefogTip"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_ION_MODE:I = 0x2000057
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoNegAniOnOffSts/Set"
        subscribe = "AC/AutoNegAniOnOffSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_WIND_DRYING:I = 0x200004e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoWindDrying/Set"
        subscribe = "AC/AutoWindDrying"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_WIND_LONG_PRESS:I = 0x200004d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/KeyLongPressAutoWind/Set"
        subscribe = "BodyInfo/KeyLongPressAutoWind"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_WIND_TIMER:I = 0x200004f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/VentilationTimer/Set"
        subscribe = "AC/VentilationTimer"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_WIND_UNLOCK:I = 0x200004c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/KeyUnlockAutoWind/Set"
        subscribe = "BodyInfo/KeyUnlockAutoWind"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLOWER_AUTO_MODE:I = 0x200001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindSweepMode/Set"
        subscribe = "AC/WindSweepMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLOWER_AUTO_MODE_FRONT:I = 0x2000096
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindSweepMode/Front/Set"
        subscribe = "AC/WindSweepMode/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLOWER_AUTO_MODE_FRONTLEFT:I = 0x2000094
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindSweepMode/FrontLeft/Set"
        subscribe = "AC/WindSweepMode/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLOWER_AUTO_MODE_FRONTRIGHT:I = 0x2000095
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindSweepMode/FrontRight/Set"
        subscribe = "AC/WindSweepMode/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLOWER_AUTO_MODE_REAR:I = 0x2000097
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindSweepMode/Rear/Set"
        subscribe = "AC/WindSweepMode/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLOWER_AUTO_MODE_REARLEFT:I = 0x2000098
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindSweepMode/RearLeft/Set"
        subscribe = "AC/WindSweepMode/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLOWER_AUTO_MODE_REARRIGHT:I = 0x2000099
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindSweepMode/RearRight/Set"
        subscribe = "AC/WindSweepMode/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLW_DIRECT:I = 0x2000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindMode/Set"
        subscribe = "AC/WindMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLW_DIRECT_FRONT:I = 0x2000084
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindMode/Front/Set"
        subscribe = "AC/WindMode/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLW_DIRECT_FRONTLEFT:I = 0x2000082
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindMode/FrontLeft/Set"
        subscribe = "AC/WindMode/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLW_DIRECT_FRONTRIGHT:I = 0x2000083
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindMode/FrontRight/Set"
        subscribe = "AC/WindMode/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLW_DIRECT_REAR:I = 0x2000085
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindMode/Rear/Set"
        subscribe = "AC/WindMode/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLW_DIRECT_REARLEFT:I = 0x2000086
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindMode/RearLeft/Set"
        subscribe = "AC/WindMode/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLW_DIRECT_REARRIGHT:I = 0x2000087
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindMode/RearRight/Set"
        subscribe = "AC/WindMode/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLW_LEVEL:I = 0x2000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindLevel/Set"
        subscribe = "AC/WindLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLW_LEVEL_FRONT:I = 0x200007e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindLevel/Front/Set"
        subscribe = "AC/WindLevel/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLW_LEVEL_FRONTLEFT:I = 0x200007c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindLevel/FrontLeft/Set"
        subscribe = "AC/WindLevel/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLW_LEVEL_FRONTRIGHT:I = 0x200007d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindLevel/FrontRight/Set"
        subscribe = "AC/WindLevel/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLW_LEVEL_REAR:I = 0x200007f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindLevel/Rear/Set"
        subscribe = "AC/WindLevel/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLW_LEVEL_REARLEFT:I = 0x2000080
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindLevel/RearLeft/Set"
        subscribe = "AC/WindLevel/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BLW_LEVEL_REARRIGHT:I = 0x2000081
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/WindLevel/RearRight/Set"
        subscribe = "AC/WindLevel/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CABIN_AUTO_CLEAN:I = 0x2000061
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Setting/CabinAutoClean/Set"
        subscribe = "AC/Setting/CabinAutoClean"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CABIN_AUTO_MATICVENTILATION:I = 0x2000060
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Setting/CabinAutomaticVentilation/Set"
        subscribe = "AC/Setting/CabinAutomaticVentilation"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_COMFORT_CONFIG:I = 0x2000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ComfortConfig/Set"
        subscribe = "AC/ComfortConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_COOLANT_FILL:I = 0x200005a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/CoolantFillingSts/Set"
        subscribe = "AC/CoolantFillingSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ELECTRIC_TEMPERATURE:I = 0x2000067
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricTemperature/Set"
        subscribe = "AC/ElectricTemperature"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FAN_SPEED_MODE_ON_AUTO:I = 0x2000026

.field public static final ID_FRAGRANCE_REFRESH_FUNCTION:I = 0x2000065
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Setting/FragranceRefreshFunction/Set"
        subscribe = "AC/Setting/FragranceRefreshFunction"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_WELCOME_FUNCTION:I = 0x2000064
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Setting/FragranceWelcomeFunction/Set"
        subscribe = "AC/Setting/FragranceWelcomeFunction"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HOT_COLD_MODE:I = 0x200003e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/HeatingColdMode/Set"
        subscribe = "AC/HeatingColdMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INSIDE_AIR_QUALITY_AUTO_NOTIFICATION:I = 0x200005e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Sensor/AirQualityAutoNotification/Set"
        subscribe = "Sensor/AirQualityAutoNotification"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INSIDE_AIR_QUALITY_NOTIFICATION:I = 0x200005d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Sensor/AirQualityNotification/Set"
        subscribe = "Sensor/AirQualityNotification"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INSIDE_TEMPERATURE:I = 0x2000041
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Sensor/InsideTemperature/Set"
        subscribe = "Sensor/InsideTemperature"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_IN_CABIN_PM25_DENSITY:I = 0x200000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Sensor/InsideAirQuality/Set"
        subscribe = "Sensor/InsideAirQuality"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_IN_CABIN_PM25_LEVEL:I = 0x2000054
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Sensor/InsideAirLevel/Set"
        subscribe = "Sensor/InsideAirLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OUTSIDE_REAR_VIEW_MIRROR_HEAT:I = 0x200001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/RearViewMirrorHeating/Set"
        subscribe = "AC/RearViewMirrorHeating"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OUTSIDE_REAR_VIEW_MIRROR_HEAT_LEFT:I = 0x2000092
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/RearViewMirrorHeating/Left/Set"
        subscribe = "AC/RearViewMirrorHeating/Left"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OUTSIDE_REAR_VIEW_MIRROR_HEAT_RIGHT:I = 0x2000093
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/RearViewMirrorHeating/Right/Set"
        subscribe = "AC/RearViewMirrorHeating/Right"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OUTSIDE_TEMPERATURE:I = 0x2000040
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Sensor/OutsideTemperature/Set"
        subscribe = "Sensor/OutsideTemperature"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_OUT_CABIN_LIGHT_INTENSITY:I = 0x200000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Sensor/LightIntensity/Set"
        subscribe = "Sensor/LightIntensity"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OUT_CABIN_PM25_DENSITY:I = 0x200000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Sensor/OutsideAirQuality/Set"
        subscribe = "Sensor/OutsideAirQuality"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_OUT_CABIN_PM25_LEVEL:I = 0x2000053
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Sensor/OutsideAirLevel/Set"
        subscribe = "Sensor/OutsideAirLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PM25_CLEANER_MODE:I = 0x2000014

.field public static final ID_REAR_DEFROST:I = 0x200001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/RearDefrost/Set"
        subscribe = "AC/RearDefrost"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_LOCK:I = 0x2000051
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/RearLock/Set"
        subscribe = "AC/RearLock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RECYCLE_DOOR_MODE:I = 0x2000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/CycleMode/Set"
        subscribe = "AC/CycleMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REMOTE_AC_CONTROL:I = 0x2000055
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/RemoteAcControl/Set"
        subscribe = "AC/RemoteAcControl"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REMOTE_FRONT_DEFROST:I = 0x2000056
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/RemoteFrontDefrost/Set"
        subscribe = "AC/RemoteFrontDefrost"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REQ_DUAL_TEMP_BY_VR:I = 0x2000031

.field public static final ID_REQ_DUAL_TEMP_DELTA_VALUE_BY_VR:I = 0x200002f

.field public static final ID_REQ_FRONT_DEFROST:I = 0x2000036
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/FrontDefrost/Set"
        subscribe = "AC/FrontDefrost"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REQ_HVAC_ON_OFF_VR:I = 0x2000039

.field public static final ID_REQ_ION_MODE:I = 0x2000038
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Plasma/Set"
        subscribe = "AC/Plasma"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REQ_WIND_SPEED_DELTA_VALUE_BY_VR:I = 0x2000034

.field public static final ID_SEAT_AUTO_HEATING_VENT:I = 0x2000024

.field public static final ID_SEAT_HEAT:I = 0x2000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SeatHeating/Set"
        subscribe = "AC/SeatHeating"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_HEAT_FRONTLEFT:I = 0x2000088
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SeatHeating/FrontLeft/Set"
        subscribe = "AC/SeatHeating/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_HEAT_FRONTRIGHT:I = 0x2000089
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SeatHeating/FrontRight/Set"
        subscribe = "AC/SeatHeating/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_HEAT_REARLEFT:I = 0x200008a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SeatHeating/RearLeft/Set"
        subscribe = "AC/SeatHeating/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_HEAT_REARMIDDLE:I = 0x200008b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SeatHeating/RearMiddle/Set"
        subscribe = "AC/SeatHeating/RearMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_HEAT_REARRIGHT:I = 0x200008c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SeatHeating/RearRight/Set"
        subscribe = "AC/SeatHeating/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_VENT:I = 0x2000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SeatVentilation/Set"
        subscribe = "AC/SeatVentilation"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_VENT_FRONTLEFT:I = 0x200008d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SeatVentilation/FrontLeft/Set"
        subscribe = "AC/SeatVentilation/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_VENT_FRONTRIGHT:I = 0x200008e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SeatVentilation/FrontRight/Set"
        subscribe = "AC/SeatVentilation/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_VENT_REARLEFT:I = 0x200008f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SeatVentilation/RearLeft/Set"
        subscribe = "AC/SeatVentilation/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_VENT_REARMIDDLE:I = 0x2000090
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SeatVentilation/RearMiddle/Set"
        subscribe = "AC/SeatVentilation/RearMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_VENT_REARRIGHT:I = 0x2000091
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SeatVentilation/RearRight/Set"
        subscribe = "AC/SeatVentilation/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_STS_AIR_QUALITY_SNS_SUPPORTED:I = 0x2000023

.field public static final ID_STS_ION_SUPPORTED:I = 0x2000021

.field public static final ID_SWT:I = 0x2000044
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletSwitch/Set"
        subscribe = "AC/ElectricAirOutletSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_AUTO:I = 0x2000047

.field public static final ID_SWT_DIRECTION:I = 0x2000052
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletDirection/Set"
        subscribe = "AC/ElectricAirOutletDirection"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_DIRECTION_FRONTLEFT:I = 0x20000ab
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletDirection/FrontLeft/Set"
        subscribe = "AC/ElectricAirOutletDirection/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_DIRECTION_FRONTLEFTMIDDLE:I = 0x20000ac
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletDirection/FrontLeftMiddle/Set"
        subscribe = "AC/ElectricAirOutletDirection/FrontLeftMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_DIRECTION_FRONTRIGHT:I = 0x20000ad
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletDirection/FrontRight/Set"
        subscribe = "AC/ElectricAirOutletDirection/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_DIRECTION_FRONTRIGHTMIDDLE:I = 0x20000ae
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletDirection/FrontRightMiddle/Set"
        subscribe = "AC/ElectricAirOutletDirection/FrontRightMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_DIRECTION_REARLEFT:I = 0x20000af
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletDirection/RearLeft/Set"
        subscribe = "AC/ElectricAirOutletDirection/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_DIRECTION_REARRIGHT:I = 0x20000b0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletDirection/RearRight/Set"
        subscribe = "AC/ElectricAirOutletDirection/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_FRONTLEFT:I = 0x200009f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletSwitch/FrontLeft/Set"
        subscribe = "AC/ElectricAirOutletSwitch/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_FRONTLEFTMIDDLE:I = 0x20000a0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletSwitch/FrontLeftMiddle/Set"
        subscribe = "AC/ElectricAirOutletSwitch/FrontLeftMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_FRONTRIGHT:I = 0x20000a1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletSwitch/FrontRight/Set"
        subscribe = "AC/ElectricAirOutletSwitch/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_FRONTRIGHTMIDDLE:I = 0x20000a2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletSwitch/FrontRightMiddle/Set"
        subscribe = "AC/ElectricAirOutletSwitch/FrontRightMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_HORIZONTAL:I = 0x2000045
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletHorizontal/Set"
        subscribe = "AC/ElectricAirOutletHorizontal"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_HORIZONTAL_AUTO:I = 0x2000048

.field public static final ID_SWT_HORIZONTAL_FRONTLEFT:I = 0x20000a3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletHorizontal/FrontLeft/Set"
        subscribe = "AC/ElectricAirOutletHorizontal/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_HORIZONTAL_FRONTLEFTMIDDLE:I = 0x20000a4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletHorizontal/FrontLeftMiddle/Set"
        subscribe = "AC/ElectricAirOutletHorizontal/FrontLeftMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_HORIZONTAL_FRONTRIGHT:I = 0x20000a5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletHorizontal/FrontRight/Set"
        subscribe = "AC/ElectricAirOutletHorizontal/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_HORIZONTAL_FRONTRIGHTMIDDLE:I = 0x20000a6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletHorizontal/FrontRightMiddle/Set"
        subscribe = "AC/ElectricAirOutletHorizontal/FrontRightMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_VERTICAL:I = 0x2000046
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletVertical/Set"
        subscribe = "AC/ElectricAirOutletVertical"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_VERTICAL_AUTO:I = 0x2000049

.field public static final ID_SWT_VERTICAL_FRONTLEFT:I = 0x20000a7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletVertical/FrontLeft/Set"
        subscribe = "AC/ElectricAirOutletVertical/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_VERTICAL_FRONTLEFTMIDDLE:I = 0x20000a8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletVertical/FrontLeftMiddle/Set"
        subscribe = "AC/ElectricAirOutletVertical/FrontLeftMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_VERTICAL_FRONTRIGHT:I = 0x20000a9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletVertical/FrontRight/Set"
        subscribe = "AC/ElectricAirOutletVertical/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SWT_VERTICAL_FRONTRIGHTMIDDLE:I = 0x20000aa
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ElectricAirOutletVertical/FrontRightMiddle/Set"
        subscribe = "AC/ElectricAirOutletVertical/FrontRightMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TEMPERATURE:I = 0x200000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Temperature/Set"
        subscribe = "AC/Temperature"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TEMPERATURE_FRONTLEFT:I = 0x2000077
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Temperature/FrontLeft/Set"
        subscribe = "AC/Temperature/FrontLeft"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TEMPERATURE_FRONTRIGHT:I = 0x2000078
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Temperature/FrontRight/Set"
        subscribe = "AC/Temperature/FrontRight"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TEMPERATURE_REAR:I = 0x200007b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Temperature/Rear/Set"
        subscribe = "AC/Temperature/Rear"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TEMPERATURE_REARLEFT:I = 0x2000079
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Temperature/RearLeft/Set"
        subscribe = "AC/Temperature/RearLeft"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TEMPERATURE_REARRIGHT:I = 0x200007a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Temperature/RearRight/Set"
        subscribe = "AC/Temperature/RearRight"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TEMPERATURE_UNIT:I = 0x200003f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/TemperatureUnit/Set"
        subscribe = "AC/TemperatureUnit"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TEMPERATURE_UNIT_FRONTLEFT:I = 0x200009a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/TemperatureUnit/FrontLeft/Set"
        subscribe = "AC/TemperatureUnit/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TEMPERATURE_UNIT_FRONTRIGHT:I = 0x200009b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/TemperatureUnit/FrontRight/Set"
        subscribe = "AC/TemperatureUnit/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TEMPERATURE_UNIT_REAR:I = 0x200009e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/TemperatureUnit/Rear/Set"
        subscribe = "AC/TemperatureUnit/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TEMPERATURE_UNIT_REARLEFT:I = 0x200009c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/TemperatureUnit/RearLeft/Set"
        subscribe = "AC/TemperatureUnit/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TEMPERATURE_UNIT_REARRIGHT:I = 0x200009d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/TemperatureUnit/RearRight/Set"
        subscribe = "AC/TemperatureUnit/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_AC_FILTER_CHANGE_TIPS:I = 0x200005f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleBody/VehicleMaintenance/ACFilterChangeTips/Set"
        subscribe = "VehicleBody/VehicleMaintenance/ACFilterChangeTips"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WHOLE_CABIN_AIR_CD:I = 0x2000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Status/Set"
        subscribe = "AC/Status"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WHOLE_CABIN_AIR_CD_FRONT:I = 0x200006a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Status/Front/Set"
        subscribe = "AC/Status/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WHOLE_CABIN_AIR_CD_REAR:I = 0x200006b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Status/Rear/Set"
        subscribe = "AC/Status/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x2
