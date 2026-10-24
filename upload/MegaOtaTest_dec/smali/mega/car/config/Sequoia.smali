.class public final Lmega/car/config/Sequoia;
.super Ljava/lang/Object;
.source "Sequoia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Sequoia$LanguageType;,
        Lmega/car/config/Sequoia$DisplayMode;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x50
    name = "sequoia"
    permission = "mega.car.permission.SEQUOIA"
.end annotation


# static fields
.field public static final ID_AUTO_APA:I = 0x50000040
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/AutoAPA"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_HOLD:I = 0x50000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/AutoHold"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_PARK:I = 0x5000001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/AutoPark"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_360_BURIED:I = 0x50000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/Avm360Buried"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_AVM_RESET_SEETINGS:I = 0x5000003a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/AvmResetSettings"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_STANDBYACTIVESTATUS:I = 0x50000039
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "AVM/StandbyActiveStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BACKLIGHT_MODE:I = 0x5000001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/BacklightMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATTERY_VOLTAGE:I = 0x50000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/BatteryVoltage"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BREAK_LOW:I = 0x50000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/BreakLow"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHARGE_DISCHARGE:I = 0x5000001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/ChargeDischarge"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHIME_TEST:I = 0x50000062
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/EngineeringModeChimeTest"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_COOLANT_TEMPERATURE_SAMPLE:I = 0x50000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/CoolantTemperatureSample"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DATE_OF_DAY:I = 0x5000002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DateOfDay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DATE_OF_MONTH:I = 0x5000002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DateOfMonth"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DATE_OF_YEAR:I = 0x5000002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DateOfYear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_INFO_ACTUAL_SPEED:I = 0x50000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/ActualSpeed"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DRV_INFO_INDICATED_SPEED:I = 0x50000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/IndicatedSpeed"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DRV_MODE:I = 0x5000003b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DrivingMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DTE_AVERAGE_FUEL:I = 0x50000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/DteAverageFuel"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DTE_CALCULATED_FC:I = 0x5000000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/DteCalculatedFc"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DTE_CALCULATED_FR:I = 0x5000000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/DteCalculatedFr"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DTE_CALCULATED_FT:I = 0x50000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/DteCalculatedFt"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DTE_CALCULATED_VALUE:I = 0x50000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/DteCalculatedValue"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DTE_VALUE:I = 0x50000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/DteValue"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_DVR_SNAPSHOT_KEY:I = 0x50000041
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DvrSnapshot/Key"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DVR_SNAPSHOT_SPEECH:I = 0x50000042
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/DvrSnapshot/Speech"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ENTER_ICM_DATA:I = 0x50000045
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/EngineeringModeMeterData"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EP_LAST_RECHARGE_AVG_SPEED:I = 0x50000063
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/EVLastChargeAverageSpeed/Set"
        subscribe = "DrivingInfo/EVLastChargeAverageSpeed"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_EP_REMAIN_CHARGE_TIME:I = 0x50000064
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/ChargeRemainTime/Set"
        subscribe = "T1CF1/ChargeRemainTime"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL1_SAMPLE_RESISTANCE:I = 0x5000000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/Fuel1SampleResistance"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL1_SAMPLE_VALUE:I = 0x5000000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/Fuel1SampleValue"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL2_SAMPLE_RESISTANCE:I = 0x50000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/Fuel2SampleResistance"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL2_SAMPLE_VALUE:I = 0x5000000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/Fuel2SampleValue"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUELING_BASE_VALUE:I = 0x50000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/FuelingBaseValue"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_FUEL_ALARM_STATUS:I = 0x50000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/FuelAlarmStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FUEL_DAMPING_MODE:I = 0x50000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/FuelDampingMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FUEL_SENSOR_FAULT_STATUS:I = 0x50000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/FuelSensorFaultStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FUEL_VALUE:I = 0x5000000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/FuelValue"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_GEAR_REVERSE:I = 0x50000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/ReverseGear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HANDBRAKE_STATUS:I = 0x5000001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/HandbrakeStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IC_LOG_EXPORT:I = 0x50000046
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/ICLogExport"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IC_OUTSIDE_TEMPERATURE_C:I = 0x5000004a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Sensor/OutsideTemperatureC"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_IC_OUTSIDE_TEMPERATURE_F:I = 0x50000049
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Sensor/OutsideTemperatureF"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_IC_RAIN_DETECTED:I = 0x50000048
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/RainDetected"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INSTANT_FUEL:I = 0x50000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/InstantFuel"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_KEYLESS_WARNING:I = 0x50000065
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "T1CF1/KeylessWarning/Set"
        subscribe = "T1CF1/KeylessWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LANE_ASSIT_FEEDBACK:I = 0x50000043
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/LaneAssitFeedback"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LAUNCHER_READ:I = 0x50000061
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "android-state-monitor"
        serializable = false
        subscribe = "android-state-monitor"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_LDW_LKA_SWITCH:I = 0x50000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/LdwLkaSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_SWITCH_TIME_OUT:I = 0x5000003f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/LightSwitchTimeOut"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_LOUDNESS_1000:I = 0x50000035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MusicLoudness1000"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_LOUDNESS_120:I = 0x50000032
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MusicLoudness120"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_LOUDNESS_1500:I = 0x50000036
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MusicLoudness1500"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_LOUDNESS_2000:I = 0x50000037
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MusicLoudness2000"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_LOUDNESS_250:I = 0x50000033
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MusicLoudness250"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_LOUDNESS_500:I = 0x50000034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MusicLoudness500"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MUSIC_LOUDNESS_6000:I = 0x50000038
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/MusicLoudness6000"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OBD:I = 0x5000003e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/ODB"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OIL_PRESSURE:I = 0x50000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/OilPressure"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PANORAMIC_FINISH:I = 0x50000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/PanoramicFinish"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PANORAMIC_START:I = 0x50000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/PanoramicStart"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POWER_STATUS:I = 0x50000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/PowerStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RADAR_WORK_NOTICE:I = 0x5000001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/RadarWorkNotice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEATBELT_STATUS:I = 0x5000001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/SeatbeltStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_START_STOP_SHIELDING:I = 0x50000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/StartStopShielding"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_T1CF1_CAN_DATA:I = 0x5000003d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        serializable = false
        topic = "T1CF1/CAN"
        type = [B
    .end annotation
.end field

.field public static final ID_T1CF1_DVR:I = 0x50000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        serializable = false
        topic = "T1CF1/DVR"
        type = [B
    .end annotation
.end field

.field public static final ID_TIME_OF_HOUR:I = 0x5000002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TimeOfHour"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIME_OF_MINUTE:I = 0x50000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TimeOfMinute"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIME_OF_SECOND:I = 0x50000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TimeOfSecond"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIME_SHOW_MODE:I = 0x5000002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TimeShowMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TOUCH_VOLUME_SWITCH:I = 0x5000002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/TouchVolumeSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TYPE_OF_LANGUAGE:I = 0x50000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TypeOfLanguage"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WASGING_LIQUID:I = 0x5000003c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/TBDStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_ALL:I = 0x50000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/WindowAll"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_FRONT:I = 0x50000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/WindowFront"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_REAR:I = 0x50000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "T1CF1/WindowRear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIRELESS_CHARGE:I = 0x50000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "T1CF1/WirelessCharge"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x50

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.SEQUOIA"

.field public static final SERVICE_NAME:Ljava/lang/String; = "sequoia"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
