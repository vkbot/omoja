.class public interface abstract Lmega/car/config/Adas;
.super Ljava/lang/Object;
.source "Adas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Adas$AssidDrvgStyle;,
        Lmega/car/config/Adas$OverSpeedWarningThresholdOut;,
        Lmega/car/config/Adas$OverSpeedWarningThreshold;,
        Lmega/car/config/Adas$MONSensitivitySts;,
        Lmega/car/config/Adas$V2XStatus;,
        Lmega/car/config/Adas$RoadType;,
        Lmega/car/config/Adas$FuncDispSts;,
        Lmega/car/config/Adas$AEBTriggered;,
        Lmega/car/config/Adas$OnOffError;,
        Lmega/car/config/Adas$LKAHandoffWarn;,
        Lmega/car/config/Adas$NOAWarningReq;,
        Lmega/car/config/Adas$NoaDispSts;,
        Lmega/car/config/Adas$IcaDispSts;,
        Lmega/car/config/Adas$SpdDisplayValue;,
        Lmega/car/config/Adas$ACCDispSts;,
        Lmega/car/config/Adas$FcwReq;,
        Lmega/car/config/Adas$Lanelinecolor;,
        Lmega/car/config/Adas$LCInfor;,
        Lmega/car/config/Adas$LCCHandsOffWarningReq;,
        Lmega/car/config/Adas$LCDispSts;,
        Lmega/car/config/Adas$LCASensitivity;,
        Lmega/car/config/Adas$LDWFuncWarnModSet;,
        Lmega/car/config/Adas$LKSFunctSwSts;,
        Lmega/car/config/Adas$LKSFunSwSet;,
        Lmega/car/config/Adas$FCWSensitivity;,
        Lmega/car/config/Adas$LaneDepartureSensitivity;,
        Lmega/car/config/Adas$GearShiftLevel;,
        Lmega/car/config/Adas$NavIconType;,
        Lmega/car/config/Adas$NavZoneType;,
        Lmega/car/config/Adas$NavStatus;,
        Lmega/car/config/Adas$NavCorpType;,
        Lmega/car/config/Adas$NavSpeedLimitType;,
        Lmega/car/config/Adas$NavRoadType;,
        Lmega/car/config/Adas$SpeedInfoMode;,
        Lmega/car/config/Adas$FcwWarnDistance;,
        Lmega/car/config/Adas$CruiseMode;,
        Lmega/car/config/Adas$TSRMode;,
        Lmega/car/config/Adas$LksWarnMode;,
        Lmega/car/config/Adas$LksModeParams;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0xd
    permission = "mega.car.permission.ADAS"
.end annotation


# static fields
.field public static final ADAS_TSR_FRONT_OFF_RAMP_DISTANCE:I = 0xd000018

.field public static final ID_ACC_MODE:I = 0xd00004a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/ACCMode/Set"
        subscribe = "ADAS/ACCMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ACC_TIME_GAP:I = 0xd00007b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/ACCTimeGap/Set"
        subscribe = "ADAS/ACCTimeGap"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ACC_VEHICLE_START_REMIND:I = 0xd000052
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/ACCVehicleStartRemindSts/Set"
        subscribe = "ADAS/ACCVehicleStartRemindSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_ACC_DISPSTS:I = 0xd000061
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasAccDispSts/Set"
        subscribe = "ADAS/AdasAccDispSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_ACC_TARGETSPEED:I = 0xd000069
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasAccTargetSpeed/Set"
        subscribe = "ADAS/AdasAccTargetSpeed"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_AEB_AUTO_EMERGENCY_BRAKING_CONFIG:I = 0xd000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AEBSwitch/Set"
        subscribe = "ADAS/AEBSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_ALLOW_SPEED_PERCENT:I = 0xd00006c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasAllowSpeedPercent/Set"
        subscribe = "ADAS/AdasAllowSpeedPercent"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_BSD_CONFIG:I = 0xd000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/BsdConfig/Set"
        subscribe = "ADAS/BsdConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_CRUISE_MODE_CONFIG:I = 0xd00000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/IACCEnable/Set"
        subscribe = "ADAS/IACCEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_DOOR_OPEN_WARNING_CONFIG:I = 0xd00001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/DoorOpenWarning/Set"
        subscribe = "ADAS/DoorOpenWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_DOOR_OPEN_WARNING_VOICE:I = 0xd000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/DoorOpenWarningVoice/Set"
        subscribe = "ADAS/DoorOpenWarningVoice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_ELK_DISPSTS:I = 0xd000068
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasElkDispSts/Set"
        subscribe = "ADAS/AdasElkDispSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_EMERGENCY_LANE_KEEPING_CONFIG:I = 0xd000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/EmergencyLaneKeeping/Set"
        subscribe = "ADAS/EmergencyLaneKeeping"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_EMERGENCY_STEERING_ASSIST_CONFIG:I = 0xd00001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasEmergencySterringAssistConfig/Set"
        subscribe = "ADAS/AdasEmergencySterringAssistConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_FCW_REQ:I = 0xd000060
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasFcwReq/Set"
        subscribe = "ADAS/AdasFcwReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_FCW_SENSITIVITY_CONFIG:I = 0xd00003e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/FCWSensitivity/Set"
        subscribe = "ADAS/FCWSensitivity"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_FCW_SWITCH_CONFIG:I = 0xd000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/ForwardCollisionWarning/Set"
        subscribe = "ADAS/ForwardCollisionWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_FCW_WARN_DISTANCE_CONFIG:I = 0xd00000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/FCWDistance/Set"
        subscribe = "ADAS/FCWDistance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_FORWARD_CROSSING_TRAFFIC_ALERTING_CONFIG:I = 0xd00001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasForwardCrossingTrafficAlertingConfig/Set"
        subscribe = "ADAS/AdasForwardCrossingTrafficAlertingConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_FRONT_VEHICLE_START_REMINDER_CONFIG:I = 0xd00001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasFrontVehicleStartReminderConfid/Set"
        subscribe = "ADAS/AdasFrontVehicleStartReminderConfid"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_FVSR_WARN:I = 0xd00005a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasFvsrWarn/Set"
        subscribe = "ADAS/AdasFvsrWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_HMA_SWITCH_CONFIG:I = 0xd000004

.field public static final ID_ADAS_IACC_CAMERA_AHEAD_DISTANCE:I = 0xd000010

.field public static final ID_ADAS_IACC_LIMIT_SPEED:I = 0xd00000d

.field public static final ID_ADAS_IACC_LIMIT_SPEED_UNIT:I = 0xd00000e

.field public static final ID_ADAS_IACC_NAVI_CORP:I = 0xd000013

.field public static final ID_ADAS_IACC_NAVI_NEW_ICON_REMAIN_DISTANCE:I = 0xd000016

.field public static final ID_ADAS_IACC_NAVI_NEW_ICON_TYPE:I = 0xd000017

.field public static final ID_ADAS_IACC_NAVI_STATUS:I = 0xd000014

.field public static final ID_ADAS_IACC_OFF_RAMP_STATUS:I = 0xd000009

.field public static final ID_ADAS_IACC_REST_DISTANCE_ON_ISD:I = 0xd00000f

.field public static final ID_ADAS_IACC_ROAD_TYPE:I = 0xd000011

.field public static final ID_ADAS_IACC_SPEED_LIMIT_TYPE:I = 0xd000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AutoAdjustCruiseSpeed/Set"
        subscribe = "ADAS/AutoAdjustCruiseSpeed"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_IACC_ZONE_CODE:I = 0xd000015

.field public static final ID_ADAS_ICA_DISPSTS:I = 0xd000064
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasIcaDispSts/Set"
        subscribe = "ADAS/AdasIcaDispSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_ISA_ALLOWOVERS_CONFIG:I = 0xd00002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/OverSpeedDeviation/Set"
        subscribe = "ADAS/OverSpeedDeviation"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_ISA_CONFIG:I = 0xd00002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasIsaConfig/Set"
        subscribe = "ADAS/AdasIsaConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_ISA_CONFIRM_CONFIG:I = 0xd00002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasIsaConfirmConfig/Set"
        subscribe = "ADAS/AdasIsaConfirmConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_ISLC_CONFIG:I = 0xd00002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasIsLcConfig/Set"
        subscribe = "ADAS/AdasIsLcConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_JUNCTION_ASSIST_CONFIG:I = 0xd000021

.field public static final ID_ADAS_LANELINECOLOR_LEFT:I = 0xd00005b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasLaneLineColorLeft/Set"
        subscribe = "ADAS/AdasLaneLineColorLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_LANELINECOLOR_RIGHT:I = 0xd00005c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasLaneLineColorRight/Set"
        subscribe = "ADAS/AdasLaneLineColorRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_LANE_AID_TYPE_REQUEST_CONFIG:I = 0xd00000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/LaneAssistSystem/Set"
        subscribe = "ADAS/LaneAssistSystem"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_LANE_CHANGE_ASSIST_CONFIG:I = 0xd00001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/LaneChangeAssistMode/Set"
        subscribe = "ADAS/LaneChangeAssistMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_LANE_DEPARTURE_SENSITIVITY_CONFIG:I = 0xd000020

.field public static final ID_ADAS_LANE_DEPARTURE_WARNING_CONFIG:I = 0xd00001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/LaneDepartueWarning/Set"
        subscribe = "ADAS/LaneDepartueWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_LANE_KEEPING_ASSIST_CONFIG:I = 0xd000001

.field public static final ID_ADAS_LCA_SENSITIVITY_CONFIG:I = 0xd000040
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/LCASensitivity/Set"
        subscribe = "ADAS/LCASensitivity"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_LCC_HANDSOFF_WARNING:I = 0xd000057
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasLccHandsOffWarning/Set"
        subscribe = "ADAS/AdasLccHandsOffWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_LCI_NFOR:I = 0xd000058
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasLciNfor/Set"
        subscribe = "ADAS/AdasLciNfor"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_LC_DISP_STS:I = 0xd000056
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasLcDispSts/Set"
        subscribe = "ADAS/AdasLcDispSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_LC_OBSTACLE_ID:I = 0xd000059
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasLcObstacle/Set"
        subscribe = "ADAS/AdasLcObstacle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_LDW_FUNCTWARNMOD_CONFIG:I = 0xd00003f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/LDWFuncWarnModSet/Set"
        subscribe = "ADAS/LDWFuncWarnModSet"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_LKAHANDOFF_WARN:I = 0xd000067
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasLkahAndOffWarn/Set"
        subscribe = "ADAS/AdasLkahAndOffWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_LKA_CONFIG:I = 0xd000029

.field public static final ID_ADAS_MEB_CONFIG:I = 0xd00002e

.field public static final ID_ADAS_MON_SENSITIVITY_SW:I = 0xd00006f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasMonSensitivitySw/Set"
        subscribe = "ADAS/AdasMonSensitivitySw"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_MON_SW:I = 0xd00006e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasMonSw/Set"
        subscribe = "ADAS/AdasMonSw"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_NAVIGATION_ON_DRIVING_ASSIST_CONFIG:I = 0xd000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasNavigationOnDrivingAssistConfig/Set"
        subscribe = "ADAS/AdasNavigationOnDrivingAssistConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_NAV_CUR_ROAD_TYPE:I = 0xd00006a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/NavCurrentRoadType/Set"
        subscribe = "ADAS/NavCurrentRoadType"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_NOA_ALC_CONFIRM_CONFIG:I = 0xd000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasNoaAlcConfirmConfig/Set"
        subscribe = "ADAS/AdasNoaAlcConfirmConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_NOA_DISPSTS:I = 0xd000065
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasNoaDispSts/Set"
        subscribe = "ADAS/AdasNoaDispSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_NOA_LOWSPD_ALC_CONFIG:I = 0xd000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasNoaLowSpdAlcConfig/Set"
        subscribe = "ADAS/AdasNoaLowSpdAlcConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_NOA_OVERTAKINGBACK_ALC_CONFIG:I = 0xd000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasNoaOverTakingBackAlcConfig/Set"
        subscribe = "ADAS/AdasNoaOverTakingBackAlcConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_NOA_WARNINGREQ:I = 0xd000066
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasNoaWarningReq/Set"
        subscribe = "ADAS/AdasNoaWarningReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_NVSOBJMARK_ONOFF:I = 0xd000070

.field public static final ID_ADAS_OVERSPD_ALERT:I = 0xd000063
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasOverspdAlert/Set"
        subscribe = "ADAS/AdasOverspdAlert"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_PEB_STAROBJ_ID:I = 0xd00005f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasPebStarObj/Set"
        subscribe = "ADAS/AdasPebStarObj"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_PERCEPT_LINEINFO:I = 0xd00005e

.field public static final ID_ADAS_PERCEPT_OBJINFO:I = 0xd00005d

.field public static final ID_ADAS_RCTA_CONFIG:I = 0xd000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/RearTransverseBrakeWarning/Set"
        subscribe = "ADAS/RearTransverseBrakeWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_RCTB_CONFIG:I = 0xd00003d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/RearTransverseBrake/Set"
        subscribe = "ADAS/RearTransverseBrake"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_RCW_CONFIG:I = 0xd000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/RearCollisionWarning/Set"
        subscribe = "ADAS/RearCollisionWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_SPD_DISPLAYVALUE:I = 0xd000062
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasSpdDisplayValue/Set"
        subscribe = "ADAS/AdasSpdDisplayValue"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_STS_GEAR_SHIFT_LEVEL:I = 0xd000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/ACCEnable/Set"
        subscribe = "ADAS/ACCEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_TRAFFIC_LANE_CHANGING_CONFIG:I = 0xd000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AdasTrafficLaneChangingConfig/Set"
        subscribe = "ADAS/AdasTrafficLaneChangingConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_TRAFFIC_LIGHT_ASSIST:I = 0xd00002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/TrafficLightAssist/Set"
        subscribe = "ADAS/TrafficLightAssist"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_TSR_AUDIO_SWITCH_CONFIG:I = 0xd000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/OverSpeedSoundWarning/Set"
        subscribe = "ADAS/OverSpeedSoundWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADAS_TSR_SWITCH_CONFIG:I = 0xd000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/TSRSwitch/Set"
        subscribe = "ADAS/TSRSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ADS_VOICE_REQUEST:I = 0xd00004f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/ADSVoiceRequest/Set"
        subscribe = "ADAS/ADSVoiceRequest"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AEB_DEC_ACTIVE:I = 0xd000053
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AebDecActive/Set"
        subscribe = "ADAS/AebDecActive"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ASSID_DRVG_STYLE:I = 0xd000075
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/AssidDrvgStyle/Set"
        subscribe = "ADAS/AssidDrvgStyle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISTANCE_WARNING:I = 0xd00007c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/DistanceWarning/Set"
        subscribe = "ADAS/DistanceWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRONT_TRANS_BRAKE:I = 0xd000039
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/FrontTransverseBrake/Set"
        subscribe = "ADAS/FrontTransverseBrake"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRONT_TRANS_BRAKE_WARNING:I = 0xd00003a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/FrontTransverseBrakeWarning/Set"
        subscribe = "ADAS/FrontTransverseBrakeWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IACC_HWA_MODE:I = 0xd00004c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/IACCHWAMode/Set"
        subscribe = "ADAS/IACCHWAMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_IACC_MODE:I = 0xd00004b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/IACCMode/Set"
        subscribe = "ADAS/IACCMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ISA_IDENTIFY_LOWER_SPEED:I = 0xd000076
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/IsaIdentifyLowerSpeed/Set"
        subscribe = "ADAS/IsaIdentifyLowerSpeed"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LANE_CHANGE_REQ:I = 0xd00004e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/LaneChangeReq/Set"
        subscribe = "ADAS/LaneChangeReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOW_SPEED_AUTO_EMERGENCY_BRAKE:I = 0xd00003b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/LowSpeedAEBEnable/Set"
        subscribe = "ADAS/LowSpeedAEBEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOW_SPEED_AUTO_EMERGENCY_BRAKE_WARN:I = 0xd00003c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/LowSpeedAEBNotice/Set"
        subscribe = "ADAS/LowSpeedAEBNotice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MFS_TJA_ICA_ON_OFF:I = 0xd000079
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/MFSIntegratedCruiseAssist/Action/Set"
        subscribe = "ADAS/MFSIntegratedCruiseAssist/Action"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVIGATION_DRIVE_DANGER_WARN:I = 0xd000034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/NavDrvDangerWarEnable/Set"
        subscribe = "ADAS/NavDrvDangerWarEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVIGATION_DRIVE_HIGH_WAY_ASSIST:I = 0xd000037
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/NavDrvHighWayAssistEnable/Set"
        subscribe = "ADAS/NavDrvHighWayAssistEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVIGATION_DRIVE_LANE_CHANGE:I = 0xd000032
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/NavDrvLaneChangeEnable/Set"
        subscribe = "ADAS/NavDrvLaneChangeEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVIGATION_DRIVE_SAFE_WARN:I = 0xd000035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/NavDrvSafeWarEnable/Set"
        subscribe = "ADAS/NavDrvSafeWarEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVIGATION_DRIVE_SWITCH:I = 0xd000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/NavDrvSwitch/Set"
        subscribe = "ADAS/NavDrvSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVIGATION_DRIVE_TRAFFIC_ASSIST:I = 0xd000038
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/TrafficJamAssistEnable/Set"
        subscribe = "ADAS/TrafficJamAssistEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVIGATION_DRIVE_VOICE_BROADCAST:I = 0xd000036
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/NavDrvInfoBroadcastEnable/Set"
        subscribe = "ADAS/NavDrvInfoBroadcastEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVIGATION_DRIVE_VOICE_ENABLE:I = 0xd000033
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/NavDrvAudioWarEnable/Set"
        subscribe = "ADAS/NavDrvAudioWarEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OUT_OVER_SPEED_WARN_THRESHOLD:I = 0xd000074
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/OverSpeedWarningThresholdOut/Set"
        subscribe = "ADAS/OverSpeedWarningThresholdOut"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OVER_SPEED_WARN:I = 0xd000071
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/OverSpeedWarning/Set"
        subscribe = "ADAS/OverSpeedWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OVER_SPEED_WARN_THRESHOLD:I = 0xd000072
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/OverSpeedWarningThreshold/Set"
        subscribe = "ADAS/OverSpeedWarningThreshold"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEA_ALERT:I = 0xd000051
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/SEAAlert/Set"
        subscribe = "ADAS/SEAAlert"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEA_ALERT_LEFT:I = 0xd00007d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/SEAAlert/Left/Set"
        subscribe = "ADAS/SEAAlert/Left"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEA_ALERT_RIGHT:I = 0xd00007e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/SEAAlert/Right/Set"
        subscribe = "ADAS/SEAAlert/Right"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SPEED_LIMIT_ASSISTANT:I = 0xd000073
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/SpeedLimitAssistant/Set"
        subscribe = "ADAS/SpeedLimitAssistant"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SPEED_LIMIT_DRIVE_INTERACT:I = 0xd000077
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/LimitDriveInteract/Set"
        subscribe = "ADAS/LimitDriveInteract"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TAKEOVER_AT_FAIL:I = 0xd000050
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/TakeoverReqAtIPFail/Set"
        subscribe = "ADAS/TakeoverReqAtIPFail"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TJA_ICA_MODE:I = 0xd000078
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/TJAIntegratedCruiseAssist/Mode/Set"
        subscribe = "ADAS/TJAIntegratedCruiseAssist/Mode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TJA_ICA_ON_OFF:I = 0xd00007a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/TJAIntegratedCruiseAssist/Switch/Set"
        subscribe = "ADAS/TJAIntegratedCruiseAssist/Switch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_V2X_DYNAMICROADINFORMATION:I = 0xd000054

.field public static final ID_V2X_ENABLE:I = 0xd000049
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/V2xEnable/Set"
        subscribe = "DrivingInfo/V2xEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_V2X_ROAD_HAZARDINFO:I = 0xd000046

.field public static final ID_V2X_SAFETYTIPS:I = 0xd000055

.field public static final ID_V2X_SETTINGS:I = 0xd00006b

.field public static final ID_V2X_STATUS:I = 0xd00006d

.field public static final ID_V2X_TARGETRV_AVW:I = 0xd000044

.field public static final ID_V2X_TARGETRV_CLW:I = 0xd000045

.field public static final ID_V2X_TARGETRV_DNPW:I = 0xd000043

.field public static final ID_V2X_TARGETRV_EVW:I = 0xd000047

.field public static final ID_V2X_TRAFFIC_JAMINFO:I = 0xd000048

.field public static final ID_V2X_TRAFFIC_REDORGREELIGHT:I = 0xd000042

.field public static final ID_V2X_TRAFFIC_RLVW:I = 0xd000041

.field public static final ID_VOICE_CRUISE_SPEED:I = 0xd00004d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/VoiceCruiseSpeedSet/Set"
        subscribe = "ADAS/VoiceCruiseSpeedSet"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0xd
