.class public interface abstract Lmega/car/config/Comforts;
.super Ljava/lang/Object;
.source "Comforts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Comforts$RainIntensity;,
        Lmega/car/config/Comforts$FragrancePosition;,
        Lmega/car/config/Comforts$FragranceType;,
        Lmega/car/config/Comforts$SeatMemoryResult;,
        Lmega/car/config/Comforts$InstrumentTheme;,
        Lmega/car/config/Comforts$FragranceCct;,
        Lmega/car/config/Comforts$FragranceTat;,
        Lmega/car/config/Comforts$ParamsSeatMassageMode;,
        Lmega/car/config/Comforts$ParamsSeatMassageLevel;,
        Lmega/car/config/Comforts$ParamsFrontLeftSeatCtrl;,
        Lmega/car/config/Comforts$ParamsSeatMessage;,
        Lmega/car/config/Comforts$ParamsSafeBoxMode;,
        Lmega/car/config/Comforts$ParamsSafeBoxAuthRes;,
        Lmega/car/config/Comforts$ParamsSafeBoxAlert;,
        Lmega/car/config/Comforts$ParamsPsgSeatFoldRestore;,
        Lmega/car/config/Comforts$ParamsWirelessChargingFailureStatus;,
        Lmega/car/config/Comforts$ParamsWirelessChargingControlResult;,
        Lmega/car/config/Comforts$ParamsWirelessChargingStatus;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x3
    permission = "mega.car.permission.COMFORTS_SETTINGS"
.end annotation


# static fields
.field public static final ID_AMB_BRIGHTNESS:I = 0x300004a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "RainLightInfo/AMB_BRIGHTNESS/Set"
        subscribe = "RainLightInfo/AMB_BRIGHTNESS"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CAMP_MOD_STS:I = 0x3000026

.field public static final ID_DISPLAY_CONTROL_BACK_LIGHT:I = 0x3000052
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/ControlDimmerLevel/Set"
        subscribe = "BodyInfo/ControlDimmerLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISPLAY_HUD:I = 0x300000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/HUD/Set"
        subscribe = "HUD/HUD"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISPLAY_HUD_AUTO_DIM:I = 0x3000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/HUDBrightnessAutoAdjustment/Set"
        subscribe = "HUD/HUDBrightnessAutoAdjustment"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISPLAY_HUD_BACK_LIGHT:I = 0x300000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/HUDBrightness/Set"
        subscribe = "HUD/HUDBrightness"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISPLAY_HUD_MODE:I = 0x300002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/HUDDisplayMode/Set"
        subscribe = "HUD/HUDDisplayMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISPLAY_HUD_POS:I = 0x300000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/HUDHeight/Set"
        subscribe = "HUD/HUDHeight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISPLAY_HUD_THEME:I = 0x300002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/HUDTheme/Set"
        subscribe = "HUD/HUDTheme"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISPLAY_HUD_VIDEO_MODE:I = 0x300002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/HUDVideo/Set"
        subscribe = "HUD/HUDVideo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISPLAY_ICD_AUTO_DIM:I = 0x3000011

.field public static final ID_DISPLAY_ICD_BACK_LIGHT:I = 0x3000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/DimmerLevel/Set"
        subscribe = "BodyInfo/DimmerLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRV_SEAT_STR_COLUMN_EASY_ENTRY:I = 0x3000002

.field public static final ID_FRAGRANCE_CCT:I = 0x3000035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Fragrance/Cct/Set"
        subscribe = "Fragrance/Cct"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_CECONSISTENCE_LEVEL:I = 0x3000043
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Fragrance/CeconsistenceLevel/Set"
        subscribe = "AC/Fragrance/CeconsistenceLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_DISPLAY_STS:I = 0x3000041
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Fragrance/Displaysts/Set"
        subscribe = "AC/Fragrance/Displaysts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_MODE:I = 0x3000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Fragrance/Status/Set"
        subscribe = "Fragrance/Status"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_NAME:I = 0x3000048
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Fragrance/Name/Set"
        subscribe = "Fragrance/Name"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_POS1_TYPES_STS:I = 0x300003d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Fragrance/Pos1TypesSts/Set"
        subscribe = "AC/Fragrance/Pos1TypesSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_POS2_TYPES_STS:I = 0x300003e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Fragrance/Pos2TypesSts/Set"
        subscribe = "AC/Fragrance/Pos2TypesSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_POS3_TYPES_STS:I = 0x300003f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Fragrance/Pos3TypesSts/Set"
        subscribe = "AC/Fragrance/Pos3TypesSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_POSITION:I = 0x3000045
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Fragrance/FragrancePosition/Set"
        subscribe = "AC/Fragrance/FragrancePosition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_SHORT_WARN:I = 0x300003c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Fragrance/ShortageWarning/Set"
        subscribe = "AC/Fragrance/ShortageWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_SW:I = 0x3000046
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Fragrance/FragranceSW/Set"
        subscribe = "AC/Fragrance/FragranceSW"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_TAT:I = 0x3000034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Fragrance/Tat/Set"
        subscribe = "Fragrance/Tat"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_WORK_STS1:I = 0x3000058
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Fragrance/WorkStatus1/Set"
        subscribe = "AC/Fragrance/WorkStatus1"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_WORK_STS2:I = 0x3000059
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Fragrance/WorkStatus2/Set"
        subscribe = "AC/Fragrance/WorkStatus2"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_WORK_STS3:I = 0x300005a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Fragrance/WorkStatus3/Set"
        subscribe = "AC/Fragrance/WorkStatus3"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FW_BRIGHTNESS:I = 0x300004b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "RainLightInfo/FW_BRIGHTNESS/Set"
        subscribe = "RainLightInfo/FW_BRIGHTNESS"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HUD_ADAS_DISPLAY:I = 0x3000054
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/ADASDisplay/Set"
        subscribe = "HUD/ADASDisplay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HUD_BLUETOOTH_DISPLAY:I = 0x3000056
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/BluetoothDisplay/Set"
        subscribe = "HUD/BluetoothDisplay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HUD_BRIGHTNESS:I = 0x3000049
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "RainLightInfo/HUD_BRIGHTNESS/Set"
        subscribe = "RainLightInfo/HUD_BRIGHTNESS"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HUD_NAVIGATION_DISPLAY:I = 0x3000055
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/NavigationDisplay/Set"
        subscribe = "HUD/NavigationDisplay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HUD_STEERPAN:I = 0x3000057
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/HUDSteerpan/Set"
        subscribe = "HUD/HUDSteerpan"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INSTRUMENT_THEME:I = 0x3000037
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/Theme/Set"
        subscribe = "DrivingInfo/Theme"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IR_BRIGHTNESS:I = 0x300004c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "RainLightInfo/IR_BRIGHTNESS/Set"
        subscribe = "RainLightInfo/IR_BRIGHTNESS"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PHONE_LEAVE_ALERT:I = 0x3000047
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/PhoneLeaveAlert/Set"
        subscribe = "VehicleSeat/PhoneLeaveAlert"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PSG_SEAT_EASY_ENTRY:I = 0x3000003

.field public static final ID_PSG_SEAT_FOLD_RESTORE:I = 0x3000004

.field public static final ID_RAIN_INTENSITY:I = 0x300004d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "RainLightInfo/RAIN_INTENSITY/Set"
        subscribe = "RainLightInfo/RAIN_INTENSITY"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RESPITE_MOD_STS:I = 0x3000025

.field public static final ID_SAFE_BOX_ALERT:I = 0x3000017

.field public static final ID_SAFE_BOX_AUTH_RES:I = 0x3000014

.field public static final ID_SAFE_BOX_LOCK_UNLOCK_STATE:I = 0x3000016

.field public static final ID_SAFE_BOX_MODE:I = 0x3000013

.field public static final ID_SAFE_BOX_OPEN_CLOSE_STATE:I = 0x3000015

.field public static final ID_SEAT_BACK:I = 0x3000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBack/Set"
        subscribe = "VehicleSeat/SeatBack"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BACK_FRONTLEFT:I = 0x3000061
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBack/FrontLeft/Set"
        subscribe = "VehicleSeat/SeatBack/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BACK_FRONTRIGHT:I = 0x3000062
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBack/FrontRight/Set"
        subscribe = "VehicleSeat/SeatBack/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BACK_REARLEFT:I = 0x3000063
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBack/RearLeft/Set"
        subscribe = "VehicleSeat/SeatBack/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BACK_REARMIDDLE:I = 0x3000064
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBack/RearMiddle/Set"
        subscribe = "VehicleSeat/SeatBack/RearMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BACK_REARRIGHT:I = 0x3000065
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBack/RearRight/Set"
        subscribe = "VehicleSeat/SeatBack/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BELT_CHECK:I = 0x300003a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBeltCheck/Set"
        subscribe = "VehicleSeat/SeatBeltCheck"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BELT_CHECK_FRONT:I = 0x3000077
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBeltCheck/Front/Set"
        subscribe = "VehicleSeat/SeatBeltCheck/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BELT_CHECK_REAR:I = 0x3000078
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBeltCheck/Rear/Set"
        subscribe = "VehicleSeat/SeatBeltCheck/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BELT_WARNING:I = 0x3000053
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBelt/Warning/Set"
        subscribe = "VehicleSeat/SeatBelt/Warning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_CTRL_WELCOME_MODE_SETTING:I = 0x3000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatCtrlWelomeMode/Set"
        subscribe = "VehicleSeat/SeatCtrlWelomeMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_CUSHION:I = 0x3000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatCushion/Set"
        subscribe = "VehicleSeat/SeatCushion"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_CUSHION_FRONTLEFT:I = 0x3000066
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatCushion/FrontLeft/Set"
        subscribe = "VehicleSeat/SeatCushion/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_CUSHION_FRONTRIGHT:I = 0x3000067
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatCushion/FrontRight/Set"
        subscribe = "VehicleSeat/SeatCushion/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_CUSHION_REARLEFT:I = 0x3000068
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatCushion/RearLeft/Set"
        subscribe = "VehicleSeat/SeatCushion/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_CUSHION_REARMIDDLE:I = 0x3000069
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatCushion/RearMiddle/Set"
        subscribe = "VehicleSeat/SeatCushion/RearMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_CUSHION_REARRIGHT:I = 0x300006a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatCushion/RearRight/Set"
        subscribe = "VehicleSeat/SeatCushion/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_DRV_MASSAGE:I = 0x300001a

.field public static final ID_SEAT_EASY_FRONT_LEFT_CUSH_MOTOR:I = 0x300000c

.field public static final ID_SEAT_EASY_FRONT_LEFT_LEG_MOTOR:I = 0x300000b

.field public static final ID_SEAT_EASY_FRONT_LEFT_SLD_MOTOR:I = 0x3000009

.field public static final ID_SEAT_EASY_FRONT_LEFT_TILT_MOTOR:I = 0x300000a

.field public static final ID_SEAT_LUMBAR_SUPPORT:I = 0x3000032
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatLumbarSupport/Set"
        subscribe = "VehicleSeat/SeatLumbarSupport"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_LUMBAR_SUPPORT_FRONTLEFT:I = 0x3000073
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatLumbarSupport/FrontLeft/Set"
        subscribe = "VehicleSeat/SeatLumbarSupport/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_LUMBAR_SUPPORT_FRONTRIGHT:I = 0x3000079
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatLumbarSupport/FrontRight/Set"
        subscribe = "VehicleSeat/SeatLumbarSupport/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MASSAGE:I = 0x300002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatMassage/Set"
        subscribe = "VehicleSeat/SeatMassage"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MASSAGE_FRONTLEFT:I = 0x300006b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatMassage/FrontLeft/Set"
        subscribe = "VehicleSeat/SeatMassage/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MASSAGE_FRONTRIGHT:I = 0x300006c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatMassage/FrontRight/Set"
        subscribe = "VehicleSeat/SeatMassage/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MASSAGE_MODE:I = 0x300002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatMassageMode/Set"
        subscribe = "VehicleSeat/SeatMassageMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MASSAGE_MODE_FRONTLEFT:I = 0x300006f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatMassageMode/FrontLeft/Set"
        subscribe = "VehicleSeat/SeatMassageMode/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MASSAGE_MODE_FRONTRIGHT:I = 0x3000070
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatMassageMode/FrontRight/Set"
        subscribe = "VehicleSeat/SeatMassageMode/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MASSAGE_MODE_REARLEFT:I = 0x3000071
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatMassageMode/RearLeft/Set"
        subscribe = "VehicleSeat/SeatMassageMode/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MASSAGE_MODE_REARRIGHT:I = 0x3000072
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatMassageMode/RearRight/Set"
        subscribe = "VehicleSeat/SeatMassageMode/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MASSAGE_REARLEFT:I = 0x300006d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatMassage/RearLeft/Set"
        subscribe = "VehicleSeat/SeatMassage/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MASSAGE_REARRIGHT:I = 0x300006e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatMassage/RearRight/Set"
        subscribe = "VehicleSeat/SeatMassage/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MEMORY:I = 0x300002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatMemory/Set"
        subscribe = "VehicleSeat/SeatMemory"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MEMORY_NAME:I = 0x3000038
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatMemoryName/Set"
        subscribe = "VehicleSeat/SeatMemoryName"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_SEAT_MEMORY_POS:I = 0x300003b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatMemoryPos/Set"
        subscribe = "VehicleSeat/SeatMemoryPos"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_SEAT_MEMORY_READ:I = 0x3000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatMemoryRead/Set"
        subscribe = "VehicleSeat/SeatMemoryRead"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MEMORY_RESULT:I = 0x3000039
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/MemoryResult/Set"
        subscribe = "VehicleSeat/MemoryResult"
        type = [I
    .end annotation
.end field

.field public static final ID_SEAT_NORMAL_FRONT_LEFT_CUSH_MOTOR:I = 0x3000008

.field public static final ID_SEAT_NORMAL_FRONT_LEFT_LEG_MOTOR:I = 0x3000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatLeg/Set"
        subscribe = "VehicleSeat/SeatLeg"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_NORMAL_FRONT_LEFT_LEG_MOTOR_REARRIGHT:I = 0x300005b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatLeg/RearRight/Set"
        subscribe = "VehicleSeat/SeatLeg/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_NORMAL_FRONT_LEFT_SLD_MOTOR:I = 0x3000005

.field public static final ID_SEAT_NORMAL_FRONT_LEFT_TILT_MOTOR:I = 0x3000006

.field public static final ID_SEAT_ONEKEY_RESET:I = 0x3000033
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatOnekeyReset/Set"
        subscribe = "VehicleSeat/SeatOnekeyReset"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_ONEKEY_RESET_FRONTRIGHT:I = 0x3000074
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatOnekeyReset/FrontRight/Set"
        subscribe = "VehicleSeat/SeatOnekeyReset/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_ONEKEY_RESET_REARLEFT:I = 0x3000075
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatOnekeyReset/RearLeft/Set"
        subscribe = "VehicleSeat/SeatOnekeyReset/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_ONEKEY_RESET_REARRIGHT:I = 0x3000076
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatOnekeyReset/RearRight/Set"
        subscribe = "VehicleSeat/SeatOnekeyReset/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_POSITION:I = 0x3000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatPosition/Set"
        subscribe = "VehicleSeat/SeatPosition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_POSITION_FRONTLEFT:I = 0x300005c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatPosition/FrontLeft/Set"
        subscribe = "VehicleSeat/SeatPosition/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_POSITION_FRONTRIGHT:I = 0x300005d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatPosition/FrontRight/Set"
        subscribe = "VehicleSeat/SeatPosition/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_POSITION_REARLEFT:I = 0x300005e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatPosition/RearLeft/Set"
        subscribe = "VehicleSeat/SeatPosition/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_POSITION_REARMIDDLE:I = 0x300005f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatPosition/RearMiddle/Set"
        subscribe = "VehicleSeat/SeatPosition/RearMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_POSITION_REARRIGHT:I = 0x3000060
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatPosition/RearRight/Set"
        subscribe = "VehicleSeat/SeatPosition/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_PSG_MASSAGE:I = 0x300001b

.field public static final ID_SEAT_SYNC_CLOUDDATA:I = 0x3000036

.field public static final ID_STEERING_WHEEL_HEATING:I = 0x3000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SteeringWheelHeating/Set"
        subscribe = "AC/SteeringWheelHeating"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_STEER_CTRL_EASY_TELESCOPE_ANGLE:I = 0x300001f

.field public static final ID_STEER_CTRL_EASY_TILT_ANGLE:I = 0x300001e

.field public static final ID_STEER_CTRL_NORMAL_TELESCOPE_ANGLE:I = 0x300001d

.field public static final ID_STEER_CTRL_NORMAL_TILT_ANGLE:I = 0x300001c

.field public static final ID_VEHICLE_SEAT_COPILOT_HEAT:I = 0x3000051
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/CopilotHeat/Set"
        subscribe = "VehicleSeat/CopilotHeat"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_SEAT_COPILOT_VENTILATION:I = 0x3000050
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/CopilotVentilation/Set"
        subscribe = "VehicleSeat/CopilotVentilation"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_SEAT_MAIN_HEAT:I = 0x300004f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/MainDriverHeat/Set"
        subscribe = "VehicleSeat/MainDriverHeat"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_SEAT_MAIN_VENTILATION:I = 0x300004e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/MainDriverVentilation/Set"
        subscribe = "VehicleSeat/MainDriverVentilation"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIRELESS_CHARGING_CONTROL_RESULT:I = 0x3000023

.field public static final ID_WIRELESS_CHARGING_STATUS:I = 0x3000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/WirelessCharge/Status/Set"
        subscribe = "BodyInfo/WirelessCharge/Status"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIRELESS_CHARGING_SWITCH:I = 0x3000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/WirelessCharge/Set"
        subscribe = "BodyInfo/WirelessCharge"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIRELESS_CHARGING_WARN_STS:I = 0x3000024

.field public static final MGR_ID:I = 0x3
