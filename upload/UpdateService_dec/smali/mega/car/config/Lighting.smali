.class public interface abstract Lmega/car/config/Lighting;
.super Ljava/lang/Object;
.source "Lighting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Lighting$LightDetectedState;,
        Lmega/car/config/Lighting$ParamsAmbFortifyNotice;,
        Lmega/car/config/Lighting$ParamsAmbGameMode;,
        Lmega/car/config/Lighting$EXLWlcOnOffRequest;,
        Lmega/car/config/Lighting$ReadingLampLevel;,
        Lmega/car/config/Lighting$LightShowOutLightFRReq;,
        Lmega/car/config/Lighting$LightShowOutLightLRReq;,
        Lmega/car/config/Lighting$TurnLightSts;,
        Lmega/car/config/Lighting$BacklightAdjust;,
        Lmega/car/config/Lighting$DayNightMode;,
        Lmega/car/config/Lighting$ColorGamut;,
        Lmega/car/config/Lighting$ExtLightHeight;,
        Lmega/car/config/Lighting$ExtLightMode;,
        Lmega/car/config/Lighting$TelltaleStatus;,
        Lmega/car/config/Lighting$AutoLightSnsParams;,
        Lmega/car/config/Lighting$H53FollowMeHomeParams;,
        Lmega/car/config/Lighting$FollowMeHomeParams;,
        Lmega/car/config/Lighting$AmbLightColor;,
        Lmega/car/config/Lighting$H53AmbLightBrightness;,
        Lmega/car/config/Lighting$AmbLightBrightness;,
        Lmega/car/config/Lighting$ParamsAutoBeamSwitch;,
        Lmega/car/config/Lighting$H53ParamsAmbLightMode;,
        Lmega/car/config/Lighting$ParamsAmbLightMode;,
        Lmega/car/config/Lighting$ParamsExtLightFollowMeHomeMode;,
        Lmega/car/config/Lighting$ParamsExtLightHeadLightMode;,
        Lmega/car/config/Lighting$ParamsTurnSignalStatus;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x8
    permission = "mega.car.permission.LIGHTING"
.end annotation


# static fields
.field public static final ID_AMB_FORTIFY_NOTICE:I = 0x8000037
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AmbLightAPP/FortifyNotice/Set"
        subscribe = "AmbLightAPP/FortifyNotice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIGHT_BRIGHTNESS:I = 0x800000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/AmbientLightBrightness/Set"
        subscribe = "Light/AmbientLightBrightness"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIGHT_COLOR:I = 0x800000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/AmbientLightColor/Set"
        subscribe = "Light/AmbientLightColor"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIGHT_DRIVEMODE:I = 0x8000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AmbLightAPP/DriveModeSelectType/Set"
        subscribe = "AmbLightAPP/DriveModeSelectType"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIGHT_GAMEMODE:I = 0x8000035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AmbLightAPP/GameMode/Set"
        subscribe = "AmbLightAPP/GameMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIGHT_GAMUT:I = 0x8000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AmbLightAPP/ColorSelectType/Set"
        subscribe = "AmbLightAPP/ColorSelectType"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIGHT_MODE:I = 0x8000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/AmbientLightMode/Set"
        subscribe = "Light/AmbientLightMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIGHT_MUSIC_FREQ:I = 0x8000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AmbLightAPP/MusicSelectType/Set"
        subscribe = "AmbLightAPP/MusicSelectType"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIGHT_MUSIC_MODE:I = 0x800000e

.field public static final ID_AMB_LIGHT_MUSIC_PLAYSTS:I = 0x8000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AmbLightAPP/AmbLightFeature/Set"
        subscribe = "AmbLightAPP/AmbLightFeature"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_AMB_LIGHT_ON_OFF:I = 0x8000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/AmbientLightSwitch/Set"
        subscribe = "Light/AmbientLightSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIGHT_ON_OFF_VR:I = 0x8000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AmbLightAPP/VoiceAssistantFeedbackStatus/Set"
        subscribe = "AmbLightAPP/VoiceAssistantFeedbackStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIGHT_VOICESTATUS:I = 0x8000036
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AmbLightAPP/VoiceSpeakStatus/Set"
        subscribe = "AmbLightAPP/VoiceSpeakStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CABIN_LIGHT_ON_OFF:I = 0x8000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CABIN_LIGHT_ON_OFF_ALL:I = 0x8000040
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CABIN_LIGHT_ON_OFF_FRONTLEFT:I = 0x800003c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CABIN_LIGHT_ON_OFF_FRONTRIGHT:I = 0x800003d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CABIN_LIGHT_ON_OFF_REARLEFT:I = 0x800003e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CABIN_LIGHT_ON_OFF_REARRIGHT:I = 0x800003f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DAY_NIGHT_MODE:I = 0x8000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "RainLightInfo/DAY_NIGHT_MODE/Set"
        subscribe = "RainLightInfo/DAY_NIGHT_MODE"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EMERGENCY_LIGHT_SWITCH_STS:I = 0x800002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "Light/EmergencyLightSwitchStatus/Set"
        subscribe = "Light/EmergencyLightSwitchStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EXT_LIGHT_AUTO_BEAM_SWITCH:I = 0x8000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/AutoHighBeam/Set"
        subscribe = "Light/AutoHighBeam"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EXT_LIGHT_AUTO_LIGHT_SNS_CFG:I = 0x8000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/AutoHeadLamp/Set"
        subscribe = "Light/AutoHeadLamp"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EXT_LIGHT_DAYTIME_RUNNING_CFG:I = 0x800000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/DaytimeRunningLamp/Set"
        subscribe = "Light/DaytimeRunningLamp"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EXT_LIGHT_FOG_LAMP_TURN_CFG:I = 0x800000b

.field public static final ID_EXT_LIGHT_FOLLOW_ME_HOME_CFG:I = 0x800000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/HighBeamDelay/Set"
        subscribe = "Light/HighBeamDelay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EXT_LIGHT_FOLLOW_ME_HOME_MODE:I = 0x8000004

.field public static final ID_EXT_LIGHT_HEAD_LIGHT_MODE:I = 0x8000003

.field public static final ID_EXT_LIGHT_HEIGHT_AUTO:I = 0x800001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LightHeight/Set"
        subscribe = "Light/LightHeight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EXT_LIGHT_MODE:I = 0x800001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/Mode/Set"
        subscribe = "Light/Mode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EXT_LIGHT_WELCOME_MODE:I = 0x8000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LightWelcome/Set"
        subscribe = "Light/LightWelcome"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HAZARD_WARNING:I = 0x800001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/HazardWarning/Set"
        subscribe = "Light/HazardWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HAZARD_WARNING_ACOUST:I = 0x8000038
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/HazardWarningAcoust/Set"
        subscribe = "Light/HazardWarningAcoust"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HIGH_BEAM:I = 0x800001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/HighBeam/Set"
        subscribe = "Light/HighBeam"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HIGH_BEAM_SWITCH_STS:I = 0x800002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "Light/HighBeamSwitchStatus/Set"
        subscribe = "Light/HighBeamSwitchStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INFO_BACKLIGHT:I = 0x8000028

.field public static final ID_INTERIOR_LIGHT_AMBIENT_LIGHT:I = 0x8000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AmbLightAPP/LightsStatus/Set"
        subscribe = "AmbLightAPP/LightsStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INTERIOR_LIGHT_AUTO_DOME:I = 0x8000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/DoorLight/OpenWithDoor/Set"
        subscribe = "Light/DoorLight/OpenWithDoor"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHTED_ROOF_RACK:I = 0x800003b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LightedRoofRack/Set"
        subscribe = "Light/LightedRoofRack"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_COURTESY_PED:I = 0x8000033
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/CourtesyPed/Set"
        subscribe = "Light/CourtesyPed"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_DETECTED:I = 0x8000039
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LightDetected/Set"
        subscribe = "Light/LightDetected"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_PARK_LIGHT_STS:I = 0x800003a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/ParkLightSts/Set"
        subscribe = "Light/ParkLightSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_POSITION_TYPE:I = 0x8000034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/PositionLampType/Set"
        subscribe = "Light/PositionLampType"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_SHOW_DAY_LIGHT:I = 0x800002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LightShowDayLight/Set"
        subscribe = "Light/LightShowDayLight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_SHOW_HIGH_BEAM:I = 0x8000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LightShowHighBeam/Set"
        subscribe = "Light/LightShowHighBeam"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_SHOW_INTERACTIVE_LIGHT:I = 0x800002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LightShowInteractiveLight/Set"
        subscribe = "Light/LightShowInteractiveLight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_SHOW_INTERACTIVE_MODE:I = 0x8000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LightShowInteractiveMode/Set"
        subscribe = "Light/LightShowInteractiveMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_SHOW_LIGHT_MODE:I = 0x8000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LightShowLightMode/Set"
        subscribe = "Light/LightShowLightMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_SHOW_LOW_BEAM:I = 0x8000032
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LightShowLowBeam/Set"
        subscribe = "Light/LightShowLowBeam"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_SHOW_OUT_SWITCH:I = 0x800002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LightShowOutSwitch/Set"
        subscribe = "Light/LightShowOutSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_SHOW_POSITION_LIGHT:I = 0x8000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LightShowPositionLight/Set"
        subscribe = "Light/LightShowPositionLight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_SHOW_SWITCH:I = 0x8000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LightShowSwitch/Set"
        subscribe = "Light/LightShowSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_L_TURN_SIGNAL_STS:I = 0x8000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/TurnLeft/Set"
        subscribe = "Light/TurnLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OVERTAKE_LIGHT:I = 0x8000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "Light/OvertakeLight/Set"
        subscribe = "Light/OvertakeLight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_R_TURN_SIGNAL_STS:I = 0x8000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/TurnRight/Set"
        subscribe = "Light/TurnRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_OCCUPIED:I = 0x8000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatOccupied/Set"
        subscribe = "VehicleSeat/SeatOccupied"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_OCCUPIED_FRONTLEFT:I = 0x8000046
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatOccupied/FrontLeft/Set"
        subscribe = "VehicleSeat/SeatOccupied/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_OCCUPIED_FRONTRIGHT:I = 0x8000047
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatOccupied/FrontRight/Set"
        subscribe = "VehicleSeat/SeatOccupied/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_OCCUPIED_REARLEFT:I = 0x8000048
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatOccupied/RearLeft/Set"
        subscribe = "VehicleSeat/SeatOccupied/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_OCCUPIED_REARMIDDLE:I = 0x8000049
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatOccupied/RearMiddle/Set"
        subscribe = "VehicleSeat/SeatOccupied/RearMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_OCCUPIED_REARRIGHT:I = 0x800004a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatOccupied/RearRight/Set"
        subscribe = "VehicleSeat/SeatOccupied/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TELLTALE_FOG_LAMP:I = 0x8000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/FogLamp/Set"
        subscribe = "Light/FogLamp"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TELLTALE_FOG_LAMP_ALL:I = 0x800004d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/FogLamp/All/Set"
        subscribe = "Light/FogLamp/All"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TELLTALE_FOG_LAMP_FRONT:I = 0x800004b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/FogLamp/Front/Set"
        subscribe = "Light/FogLamp/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TELLTALE_FOG_LAMP_REAR:I = 0x800004c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/FogLamp/Rear/Set"
        subscribe = "Light/FogLamp/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TELLTALE_LOW_BEAM:I = 0x800001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/LowBeam/Set"
        subscribe = "Light/LowBeam"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TELLTALE_STS_BOOK_CHARGING_LAMP:I = 0x8000015

.field public static final ID_TELLTALE_STS_POSITION_LIGHT_ON_OFF_LAMP:I = 0x8000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/PositionLamp/Set"
        subscribe = "Light/PositionLamp"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TELLTALE_STS_SEAT_BELT_LAMP:I = 0x8000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBelt/Set"
        subscribe = "VehicleSeat/SeatBelt"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TELLTALE_STS_SEAT_BELT_LAMP_FRONTLEFT:I = 0x8000041
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBelt/FrontLeft/Set"
        subscribe = "VehicleSeat/SeatBelt/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TELLTALE_STS_SEAT_BELT_LAMP_FRONTRIGHT:I = 0x8000042
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBelt/FrontRight/Set"
        subscribe = "VehicleSeat/SeatBelt/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TELLTALE_STS_SEAT_BELT_LAMP_REARLEFT:I = 0x8000043
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBelt/RearLeft/Set"
        subscribe = "VehicleSeat/SeatBelt/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TELLTALE_STS_SEAT_BELT_LAMP_REARMIDDLE:I = 0x8000044
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBelt/RearMiddle/Set"
        subscribe = "VehicleSeat/SeatBelt/RearMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TELLTALE_STS_SEAT_BELT_LAMP_REARRIGHT:I = 0x8000045
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleSeat/SeatBelt/RearRight/Set"
        subscribe = "VehicleSeat/SeatBelt/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TELLTALE_STS_VEHICLE_READY_LAMP:I = 0x8000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Telltale/Ready/Set"
        subscribe = "Telltale/Ready"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TURN_LIGHT_STS:I = 0x800002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "Light/TurnLightStatus/Set"
        subscribe = "Light/TurnLightStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x8
