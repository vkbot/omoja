.class public final Lmega/car/RDSignal;
.super Ljava/lang/Object;
.source "RDSignal.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x6e
    permission = "mega.car.permission.VEHICLE_CONTROL"
.end annotation


# static fields
.field public static final AC_AC_MODE_THIRD:I = 0x6e00002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/ACMode/Third"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AC_AUTOMODE_THIRD:I = 0x6e00002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/AutoMode/Third"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AC_BLOW_FACE_THIRD:I = 0x6e000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/WindMode/Face/Third"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AC_BLOW_FOOT_THIRD:I = 0x6e000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/WindMode/Foot/Third"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AC_BLOW_THIRD:I = 0x6e00002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/WindMode/Third"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AC_CHILD_LOCK_STATUS_THIRD:I = 0x6e000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/ChildLock/Third"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AC_DISPLAY_STATUS_THIRD:I = 0x6e000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/Display/Third"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AC_STATUS_THIRD:I = 0x6e000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/Status/Third"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AC_TEMPERATURE_THIRD:I = 0x6e00002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/Temperature/Third"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final AC_WINDLEVEL_THIRD:I = 0x6e00002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/WindLevel/Third"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ADAS_DOW:I = 0x6e000048
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/DowConfig/Set"
        subscribe = "ADAS/DowConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ADAS_FCTA_FCTB:I = 0x6e000049
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/FctaFctbConfig/Set"
        subscribe = "ADAS/FctaFctbConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ADAS_RCTA_RCTB:I = 0x6e00008b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "ADAS/RctaRctbConfig/Set"
        subscribe = "ADAS/RctaRctbConfig"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final BODYINFO_ELECTRICAL_ABSORBER_MODE:I = 0x6e000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "BodyInfo/ElectricalAbsorberMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final BODYINFO_HILL_DESCENT_CONTROL:I = 0x6e000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "BodyInfo/HillDescentControl"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final BODYINFO_PEDAL_COMFORT:I = 0x6e000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "BodyInfo/PedalComfort"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final BODYINFO_PEDAL_COMFORT_ASSOCIATED_DRIVING:I = 0x6e000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "BodyInfo/PedalComfortAssociatedDriving"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final BODYINFO_SUSPENSION_HEIGHT:I = 0x6e000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "BodyInfo/SuspensionHeight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final CANCEL_MATCH_FACE_ID:I = 0x6e0000e7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/CancelMatchFaceid/Set"
        subscribe = "DMS/CancelMatchFaceid"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final CANCEL_OCCUPANT_CARE:I = 0x6e0000e9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "OMS/CancelOccupantCare/Set"
        subscribe = "OMS/CancelOccupantCare"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final CANCEL_REGISTER_FACE_ID:I = 0x6e0000e6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/CancelRegisterFaceid/Set"
        subscribe = "DMS/CancelRegisterFaceid"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final CANCEL_UPDATE_FACE_ID:I = 0x6e0000e8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/CancelUpdateFaceId/Set"
        subscribe = "DMS/CancelUpdateFaceId"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final CDU_WORKING_MODE:I = 0x6e000032
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/WorkingMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ENERGYINFO_CHARGE_GUN_STATUS:I = 0x6e000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/ChargeGunStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ENERGYINFO_DISCHARGE_SWITCH:I = 0x6e000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/DischargeSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ENERGYINFO_STOP_DISCHARGE:I = 0x6e000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/StopDischarge"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final GUN_ELOCK:I = 0x6e000033
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/ChargeGunELockSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final HUD_IMG_ROTATE_ADJUST:I = 0x6e000046
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/ImageRotate/Set"
        subscribe = "HUD/ImageRotate"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final HUD_USER_ID:I = 0x6e000109
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/UserID/Set"
        subscribe = "HUD/UserID"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AC_AUTO_DEF_LEVEL:I = 0x6e000142
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AutoDefLevel/Set"
        subscribe = "AC/AutoDefLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AC_DISPLAY_REAR:I = 0x6e00001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/Display/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AC_FAST_COOL:I = 0x6e000051
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ACFast/Cool/Set"
        subscribe = "AC/ACFast/Cool"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AC_FAST_HEAT:I = 0x6e000052
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ACFast/Heat/Set"
        subscribe = "AC/ACFast/Heat"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AC_RESET_FILTER_STATUS:I = 0x6e00005c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ResetFilterStatus/Set"
        subscribe = "AC/ResetFilterStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AC_WRONG_OPERATION:I = 0x6e00002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/WrongOperation"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_OUTLET_DC_ON_OFF:I = 0x6e000057
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AirOutlet/DCOnOff/Set"
        subscribe = "AC/AirOutlet/DCOnOff"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_OUTLET_DL_ON_OFF:I = 0x6e000056
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AirOutlet/DLOnOff/Set"
        subscribe = "AC/AirOutlet/DLOnOff"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_OUTLET_DR_ON_OFF:I = 0x6e000055
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AirOutlet/DROnOff/Set"
        subscribe = "AC/AirOutlet/DROnOff"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_OUTLET_PL_ON_OFF:I = 0x6e000054
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AirOutlet/PLOnOff/Set"
        subscribe = "AC/AirOutlet/PLOnOff"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AIR_OUTLET_PR_ON_OFF:I = 0x6e000053
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AirOutlet/PROnOff/Set"
        subscribe = "AC/AirOutlet/PROnOff"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ALARM_ARMING:I = 0x6e0000f7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Alarm/Arming/Set"
        subscribe = "Alarm/Arming"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AMB_LIGHT_SET:I = 0x6e0000b7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/AmbLightSet/Set"
        subscribe = "Light/AmbLightSet"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ANDROID_HEALTH_MESSAGE:I = 0x6e0000fc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/AndroidHealthMessage"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ANDROID_REBOOT:I = 0x6e0001f2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Android/Reboot/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APPROVE_UNLOCK:I = 0x6e00009c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/ApproveUnlock/Set"
        subscribe = "BodyInfo/ApproveUnlock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AQS_DISPLAY:I = 0x6e000059
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AQSDisplay/Set"
        subscribe = "AC/AQSDisplay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ASSIST_PASS_STATUS:I = 0x6e0001ea
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "eHMI_ASUset/notifyASUAssistPassSet"
        subscribe = "DrivingInfo/ntfSuspSts/assistPassStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ASU_HIGHWAY_MOD:I = 0x6e000064
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/ASUHighwayMod/Set"
        subscribe = "BodyInfo/ASUHighwayMod"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ASU_MAP:I = 0x6e000063
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/ASUMap/Set"
        subscribe = "BodyInfo/ASUMap"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ASU_MEMORY_POSITION:I = 0x6e000078
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/ASUMemoryPosition/Set"
        subscribe = "BodyInfo/ASUMemoryPosition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ASU_PREVIEW_CONTENT:I = 0x6e000062
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/ASUPreviewContent/Set"
        subscribe = "BodyInfo/ASUPreviewContent"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTOMATIC_LOCKED:I = 0x6e000082
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/AutomaticLocked/Set"
        subscribe = "BodyInfo/AutomaticLocked"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_EASY_LOADING_ENABLE:I = 0x6e0000a2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/AutoEasyLoadingEnable/Set"
        subscribe = "BodyInfo/AutoEasyLoadingEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AUTO_EASY_OUT:I = 0x6e0000a4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/AutoEasyEntry/Set"
        subscribe = "BodyInfo/AutoEasyEntry"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AWAY_LOCK:I = 0x6e000083
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/AwayLock/Set"
        subscribe = "BodyInfo/AwayLock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATT_AVG_TEMP:I = 0x6e00006d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/BattAvgTemp/Set"
        subscribe = "EnergyInfo/BattAvgTemp"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATT_KEEP_WARM:I = 0x6e00006c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/BattKeepWarm/Set"
        subscribe = "EnergyInfo/BattKeepWarm"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATT_KEEP_WARM_FAIL_REASON:I = 0x6e00006e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/BattKeepWarmFailReason/Set"
        subscribe = "EnergyInfo/BattKeepWarmFailReason"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BATT_KEEP_WARM_START_TIME:I = 0x6e00006f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/BattKeepWarmStartTime/Set"
        subscribe = "EnergyInfo/BattKeepWarmStartTime"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_BATT_STOP_KEEP_WARM:I = 0x6e000070
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/BattStopKeepWarm/Set"
        subscribe = "EnergyInfo/BattStopKeepWarm"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_BLE_DOOR_DRIVER_DOOR:I = 0x6e000076
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/BLEOpenDriverDoor/Set"
        subscribe = "BodyInfo/BLEOpenDriverDoor"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_CYCLE:I = 0x6e000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/BookChargeCycle"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_CYCLE_TYPE:I = 0x6e000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/BookChargeCycleType"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_DURATION:I = 0x6e000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/BookChargeDuration"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_FAIL_REASON:I = 0x6e000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/BookChargeFailReason"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_RESPONSE:I = 0x6e000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/BookChargeResponse"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_SET_FAIL_REASON:I = 0x6e000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/BookChargeSetFailReason"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_STATUS:I = 0x6e000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/BookChargeStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_SWITCH:I = 0x6e00001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/BookChargeSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BOOK_CHARGE_TIME:I = 0x6e00001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/BookChargeTime"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_CALL_DETECT_SWITCH:I = 0x6e0000d0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/CallDetectSwitch/Set"
        subscribe = "DMS/CallDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CALL_EVENT:I = 0x6e0000da
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/CallEvent/Set"
        subscribe = "DMS/CallEvent"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_CONSOLE_ADJUST:I = 0x6e0000ad
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/ConsoleAdjust/Set"
        subscribe = "BodyInfo/ConsoleAdjust"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CST_ENABLE_STATUS:I = 0x6e00005f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/CSTEnableStatus/Set"
        subscribe = "BodyInfo/CSTEnableStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CST_INTERVENTION:I = 0x6e000060
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/CSTIntervention/Set"
        subscribe = "BodyInfo/CSTIntervention"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DCSWING_LEFT_RIGHT_POS:I = 0x6e000058
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/AirOutlet/DCSwingLeftRightPos/Set"
        subscribe = "AC/AirOutlet/DCSwingLeftRightPos"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DIGITAL_KEY:I = 0x6e000114
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BNCM/DigitalKey/Set"
        subscribe = "BNCM/DigitalKey"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_DISTRACTION_EVENT:I = 0x6e0000d7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/DistractionEvent/Set"
        subscribe = "DMS/DistractionEvent"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_DMS_AUTORECOGNITION:I = 0x6e0000f6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/AutoRecognition/Set"
        subscribe = "DMS/AutoRecognition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DMS_CANCELOCCUPANTCARE:I = 0x6e0000f0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/CancelOccupantCare/Set"
        subscribe = "DMS/CancelOccupantCare"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_DMS_DETECT_SWITCH:I = 0x6e0000cb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/DmsDetectSwitch/Set"
        subscribe = "DMS/DmsDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DMS_GETALLFACEINFO:I = 0x6e0000f3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/GetAllFaceInfo/Set"
        subscribe = "DMS/GetAllFaceInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_DMS_HEALTH_DETECT:I = 0x6e000116
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/HealthDetectSwitch/Set"
        subscribe = "DMS/HealthDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DMS_NOTIFYCOLDSTART:I = 0x6e0000f4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/NotifyColdStart/Set"
        subscribe = "DMS/NotifyColdStart"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_DMS_REAR_VIEW_MIRROR:I = 0x6e00010c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/RearViewMirror/Set"
        subscribe = "DMS/RearViewMirror"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DMS_SYNCSTATE:I = 0x6e0000f5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/SyncState/Set"
        subscribe = "DMS/SyncState"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DMS_UPDATEFACEID:I = 0x6e0000f2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/UpdateFaceId/Set"
        subscribe = "DMS/UpdateFaceId"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_DOOR_CENTRAL_LOCK:I = 0x6e000096
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/CentralLock/Set"
        subscribe = "VehicleDoor/CentralLock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_CHARGE_GATE:I = 0x6e00009b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/ChargeGate/Set"
        subscribe = "VehicleDoor/ChargeGate"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_CHILD_LOCK:I = 0x6e000097
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleDoor/ChildLock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_CHILD_LOCK_SWITCH:I = 0x6e000098
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/ChildLockSwitch/Set"
        subscribe = "VehicleDoor/ChildLockSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_CLOSE_ALL_DOORS:I = 0x6e00008e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/CloseAllDoors/Set"
        subscribe = "VehicleDoor/CloseAllDoors"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_CONTROL_MODE_FRONT:I = 0x6e00008f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/DoorControlMode/Front/Set"
        subscribe = "VehicleDoor/DoorControlMode/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_CONTROL_MODE_REAR:I = 0x6e000090
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/DoorControlMode/Rear/Set"
        subscribe = "VehicleDoor/DoorControlMode/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_CURRENT_POSITION:I = 0x6e00008d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleDoor/CurrentPosition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_FUNCTION_POSITION:I = 0x6e0001e5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "VehicleDoor/OpenPositionSettingInfo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_HOOD_SW:I = 0x6e000099
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/HoodSW/Set"
        subscribe = "VehicleDoor/HoodSW"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_MOTION_DIRECTION:I = 0x6e000140
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "VehicleDoor/MotionDirection"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_MOTION_PROMPT:I = 0x6e000095
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "VehicleDoor/MotionPrompt"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_REMOTE_KEY_CONTROL:I = 0x6e000075
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/DoorRemoteKeyControl/Set"
        subscribe = "BodyInfo/DoorRemoteKeyControl"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_TAILGATE_SW:I = 0x6e00009a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/TailgateSW/Set"
        subscribe = "VehicleDoor/TailgateSW"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DOOR_WINDOW_LOCK_STATUS:I = 0x6e0000ae
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/WindowLockStatus/Set"
        subscribe = "VehicleDoor/WindowLockStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRINK_DETECT_SWITCH:I = 0x6e0000cf
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/DrinkDetectSwitch/Set"
        subscribe = "DMS/DrinkDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRINK_EVENT:I = 0x6e0000db
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/DrinkEvent/Set"
        subscribe = "DMS/DrinkEvent"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_DRIVE_MODE_AIRCONDITION_MODE:I = 0x6e00003a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "DrivingInfo/AirconditionMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVE_MODE_BRAKE_PEDAL_FEEL_MODE:I = 0x6e00003b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "DrivingInfo/BrakePedalFeelMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVE_MODE_ESP_MODE:I = 0x6e00003c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "DrivingInfo/ESPMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVE_MODE_PROPULSION_MODE:I = 0x6e000036
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "DrivingInfo/PropulsionMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVE_MODE_STEERING_MODE:I = 0x6e000037
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "DrivingInfo/SteeringMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVE_MODE_SUSPENSION_DAMPING:I = 0x6e000039
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "DrivingInfo/SuspensionDamping"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVE_MODE_SUSPENSION_HEIGHT:I = 0x6e000038
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "DrivingInfo/SuspensionHeight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRIVING_INFO_GEAR:I = 0x6e0000bc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/DrivingInfo/Gear/Set"
        subscribe = "AVM/DrivingInfo/Gear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EASY_LOADING_ENABLE:I = 0x6e0000a1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EasyLoadingEnable/Set"
        subscribe = "BodyInfo/EasyLoadingEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EES_MODE:I = 0x6e0000a6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EESMode/Set"
        subscribe = "BodyInfo/EESMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EES_MODE_AVAILABLE:I = 0x6e0000a5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EESModeAvailable/Set"
        subscribe = "BodyInfo/EESModeAvailable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EES_MODE_EXTEND_RANG:I = 0x6e0000a7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EESModeExtendRang/Set"
        subscribe = "BodyInfo/EESModeExtendRang"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EES_MODE_QNX:I = 0x6e000115
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EESMode/QNX/Set"
        subscribe = "BodyInfo/EESMode/QNX"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EES_MODE_REQ:I = 0x6e0000b5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EESModeReq/Set"
        subscribe = "BodyInfo/EESModeReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EFFECT_BALANCE:I = 0x6e000105
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Volume/effect/balance/Set"
        subscribe = "Volume/effect/balance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EFFECT_DECLINE:I = 0x6e000104
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Volume/effect/decline/Set"
        subscribe = "Volume/effect/decline"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EFFECT_SOUND_FILED:I = 0x6e000106
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Volume/effect/soundFiled/Set"
        subscribe = "Volume/effect/soundFiled"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EGY_REGEN_LEVEL_HIGH_ALLOWED:I = 0x6e00011e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EgyRegenLevelHighAllowed/Set"
        subscribe = "BodyInfo/EgyRegenLevelHighAllowed"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EHMI_DOORSET_NOTIFY_SET_OPEN_ANGLE:I = 0x6e0001e3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "eHMI_DoorSet/notifySetOpenAngle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EMOTION_DETECT_SWITCH:I = 0x6e0000d4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "OMS/ExpressionDetectSwitch/Set"
        subscribe = "OMS/ExpressionDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ENERGYINFO_BATTERY_CAPACITY:I = 0x6e00010a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Battery/Capacity"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ENERGY_CONSUMPTION_10_KM_CHART:I = 0x6e0000ea
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/EnergyConsumptionPer10KmChart"
        type = [Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_ENERGY_CONSUMPTION_25_KM_CHART:I = 0x6e0000eb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/EnergyConsumptionPer25KmChart"
        type = [Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_ENERGY_CONSUMPTION_50_KM_CHART:I = 0x6e0000ec
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/EnergyConsumptionPer50KmChart"
        type = [Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_ENERGY_CONSUMPTION_PER_100_KM:I = 0x6e00007d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EnergyConsumptionPer100Km/Set"
        subscribe = "BodyInfo/EnergyConsumptionPer100Km"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ENERGY_CONSUMPTION_PER_10_KM:I = 0x6e00007a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/EnergyConsumptionPer10Km/Set"
        subscribe = "EnergyInfo/EnergyConsumptionPer10Km"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ENERGY_CONSUMPTION_PER_25_KM:I = 0x6e00007b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EnergyConsumptionPer25Km/Set"
        subscribe = "BodyInfo/EnergyConsumptionPer25Km"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ENERGY_CONSUMPTION_PER_50_KM:I = 0x6e00007c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EnergyConsumptionPer50Km/Set"
        subscribe = "BodyInfo/EnergyConsumptionPer50Km"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EXPRESSION_EVENT:I = 0x6e0000dd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "OMS/ExpressionEvent/Set"
        subscribe = "OMS/ExpressionEvent"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_E_PEDAL_MODE_STATUS:I = 0x6e000121
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EPedalModeStatus/Set"
        subscribe = "BodyInfo/EPedalModeStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_E_PEDAL_OPD_INFO:I = 0x6e000122
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EPedalOPDInfo/Set"
        subscribe = "BodyInfo/EPedalOPDInfo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FATIGUE_EVENT:I = 0x6e0000d8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/FatigueEvent/Set"
        subscribe = "DMS/FatigueEvent"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_RUN_OUT:I = 0x6e0000fa
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "AC/Fragrance/RunOut"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRAGRANCE_UNSET:I = 0x6e00004b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/Fragrance/Unset/Set"
        subscribe = "AC/Fragrance/Unset"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRONT_DOOR_VOICE_CONTROL:I = 0x6e0000ac
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/FrontDoorVoiceControl/Set"
        subscribe = "VehicleDoor/FrontDoorVoiceControl"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_GAZA_ON_REAR_VIEW_MIRROR_DETECT_SWITCH:I = 0x6e0000d2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/GazaOnRVMDetectSwitch/Set"
        subscribe = "DMS/GazaOnRVMDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_GAZA_ON_SCREEN_DETECT_SWITCH:I = 0x6e0000d1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/GazaOnCCSDetectSwitch/Set"
        subscribe = "DMS/GazaOnCCSDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_GAZE_AREA_EVENT:I = 0x6e0000dc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/GazeAreaEvent/Set"
        subscribe = "DMS/GazeAreaEvent"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_GLOVE_BOX_SWITCH:I = 0x6e000079
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/GloveBoxSwitch/Set"
        subscribe = "BodyInfo/GloveBoxSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HUD_DEFAULT:I = 0x6e0000ca
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/Default/Set"
        subscribe = "HUD/Default"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HUD_NAVIGATION_START_UP:I = 0x6e0000df
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/NavigationStartup/Set"
        subscribe = "HUD/NavigationStartup"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HUD_SNOW_MODE:I = 0x6e0001ba
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "HUD/HUDSnowMode/Set"
        subscribe = "HUD/HUDSnowMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INTE_MODE_AQS_AUTO_RUN:I = 0x6e00004c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/InteMode/AQSAutoRun/Set"
        subscribe = "AC/InteMode/AQSAutoRun"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INTE_MODE_CLEAN_CAR:I = 0x6e00004f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/InteMode/InteCleanCar/Set"
        subscribe = "AC/InteMode/InteCleanCar"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INTE_MODE_DFM:I = 0x6e00004d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/InteMode/DFM/Set"
        subscribe = "AC/InteMode/DFM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INTE_MODE_KEEP_WARM:I = 0x6e000050
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/InteMode/KeepWarm/Set"
        subscribe = "AC/InteMode/KeepWarm"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_INTE_MODE_LOVE_REMIND:I = 0x6e00004e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/InteMode/LoveRemind/Set"
        subscribe = "AC/InteMode/LoveRemind"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_AUTO_READ_LIGHT:I = 0x6e00009d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/AutoReadLight/Set"
        subscribe = "Light/AutoReadLight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_INTELLIGENT_HIGH_BEAM:I = 0x6e00006b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/IntelligentHighBeam/Set"
        subscribe = "Light/IntelligentHighBeam"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_INTERACTIVE_SIGNAL:I = 0x6e00009f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/InteractiveSignal/Set"
        subscribe = "Light/InteractiveSignal"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_INTERACTIVE_SIGNAL_MODE:I = 0x6e0000a0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/InteractiveSignalMode/Set"
        subscribe = "Light/InteractiveSignalMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIGHT_ISD_LIGHT_STATUS:I = 0x6e00015c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/ISDLightStatus/Set"
        subscribe = "Light/ISDLightStatus"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_LIGHT_MUSIC_LIGHT_SHOW:I = 0x6e0000b4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/MusicLightShow/Set"
        subscribe = "Light/MusicLightShow"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_LIGHT_WELCOME_OPEN:I = 0x6e00006a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Light/WelcomeOpen/Set"
        subscribe = "Light/WelcomeOpen"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LOCK_CAR_WINDOW_CLOSE:I = 0x6e000068
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/LockCarWindowClose/Set"
        subscribe = "BodyInfo/LockCarWindowClose"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MAINTENANCE_MODE_SUSPENSION:I = 0x6e00005e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "MaintenanceMode/Suspension/Set"
        subscribe = "MaintenanceMode/Suspension"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MAINTENANCE_MODE_WIPER:I = 0x6e00005d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "MaintenanceMode/Wiper/Set"
        subscribe = "MaintenanceMode/Wiper"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_MANUAL_EASY_OUT:I = 0x6e0000a3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/ManualEasyOut/Set"
        subscribe = "BodyInfo/ManualEasyOut"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MFS_SWITCH_MODE:I = 0x6e000086
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/MFSSwitchMode/Set"
        subscribe = "BodyInfo/MFSSwitchMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MODE_DEFROST_FRONT:I = 0x6e000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/WindMode/Defrost/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MODE_DRIVER_SWEEP:I = 0x6e000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/WindSweepMode/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MODE_FACE_FRONT:I = 0x6e00000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/WindMode/Face/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MODE_FACE_REAR:I = 0x6e00001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/WindMode/Face/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MODE_FOOT_FRONT:I = 0x6e00000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/WindMode/Foot/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MODE_FOOT_REAR:I = 0x6e00001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/WindMode/Foot/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MODE_PSR_SWEEP:I = 0x6e000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/WindSweepMode/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NFC_CARD1_INFO:I = 0x6e000071
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/NFCCard1Info/Set"
        subscribe = "BodyInfo/NFCCard1Info"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_NFC_CARD2_INFO:I = 0x6e000072
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/NFCCard2Info/Set"
        subscribe = "BodyInfo/NFCCard2Info"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_NFC_CARD3_INFO:I = 0x6e000073
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/NFCCard3Info/Set"
        subscribe = "BodyInfo/NFCCard3Info"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_NFC_CARD4_INFO:I = 0x6e000074
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/NFCCard4Info/Set"
        subscribe = "BodyInfo/NFCCard4Info"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_OCCUPANT_CARE_DETECT_SWITCH:I = 0x6e0000d5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "OMS/OccupantCareDetectSwitch/Set"
        subscribe = "OMS/OccupantCareDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OCCUPANT_CARE_EVENT:I = 0x6e0000de
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "OMS/OccupantCare/Set"
        subscribe = "OMS/OccupantCare"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_OMS_DETECT_SWITCH:I = 0x6e0000d3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "OMS/OmsDetectSwitch/Set"
        subscribe = "OMS/OmsDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OMS_HEALTH_DETECT:I = 0x6e000117
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "OMS/HealthDetectSwitch/Set"
        subscribe = "OMS/HealthDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PEDAL_CLOSE_DRIVER_DOOR:I = 0x6e000077
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/PedalCloseDriverDoor/Set"
        subscribe = "BodyInfo/PedalCloseDriverDoor"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PET_MODE_ENABLE:I = 0x6e0000bd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "PET/petModeStatus/Set"
        subscribe = "PET/petModeStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PHONE_CHARGE_STATUS:I = 0x6e00010e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/PhoneChargeStatus/Set"
        subscribe = "BodyInfo/PhoneChargeStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PHONE_FORGOTTEN_STATUS:I = 0x6e00010d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/PhoneForgottenStatus/Set"
        subscribe = "BodyInfo/PhoneForgottenStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PHONE_LEAVE_ALERT:I = 0x6e000084
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/PhoneLeaveAlert/Set"
        subscribe = "BodyInfo/PhoneLeaveAlert"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PHONE_WIRELESS_CHARGE:I = 0x6e000085
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/WirelessCharge/Set"
        subscribe = "BodyInfo/WirelessCharge"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PM25_TOO_HIGH:I = 0x6e00004a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/PM25TooHigh/Set"
        subscribe = "AC/PM25TooHigh"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POSITION_DRIVER_LEFT_VENT_HORIZONTAL:I = 0x6e000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/DriverLeftVent/LeftRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POSITION_DRIVER_LEFT_VENT_VERTICAL:I = 0x6e000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/DriverLeftVent/UpDown"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POSITION_DRIVER_RIGHT_VENT_HORIZONTAL:I = 0x6e000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/DriverRightVent/LeftRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POSITION_DRIVER_RIGHT_VENT_VERTICAL:I = 0x6e000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/DriverRightVent/UpDown"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POSITION_PSR_LEFT_VENT_HORIZONTAL:I = 0x6e000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/PsrLeftVent/LeftRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POSITION_PSR_LEFT_VENT_VERTICAL:I = 0x6e000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/PsrLeftVent/UpDown"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POSITION_PSR_RIGHT_VENT_HORIZONTAL:I = 0x6e00001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/PsrRightVent/LeftRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POSITION_PSR_RIGHT_VENT_VERTICAL:I = 0x6e000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/PsrRightVent/UpDown"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POWER_LIMITLOW:I = 0x6e000107
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "Power/LimitLow"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POWER_OFF:I = 0x6e00009e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/PowerOff/Set"
        subscribe = "BodyInfo/PowerOff"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_POWER_STATUS:I = 0x6e0000b8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/PowerStatus/Set"
        subscribe = "EnergyInfo/PowerStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_QNX_HEALTH_MESSAGE:I = 0x6e0000fd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "DMS/QnxHealthMessage"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_RAIN_WINDOW_CLOSE:I = 0x6e000069
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/RainWindowClose/Set"
        subscribe = "BodyInfo/RainWindowClose"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RANGE_AVAL_CLTC:I = 0x6e000089
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "RangeAval/CLTC/Set"
        subscribe = "RangeAval/CLTC"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RANGE_AVAL_DYNAMIC:I = 0x6e00008a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "RangeAval/Dynamic/Set"
        subscribe = "RangeAval/Dynamic"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_DOOR_VOICE_CONTROL:I = 0x6e0000ab
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleDoor/RearDoorVoiceControl/Set"
        subscribe = "VehicleDoor/RearDoorVoiceControl"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_AUTO_FOLD:I = 0x6e000065
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/RearViewAutoFold/Set"
        subscribe = "BodyInfo/RearViewAutoFold"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_FLIP:I = 0x6e000066
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/RearViewFlip/Set"
        subscribe = "BodyInfo/RearViewFlip"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_FOLD:I = 0x6e0000b6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/RearViewFold/Set"
        subscribe = "BodyInfo/RearViewFold"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_RAIN_AUTO_HEAT:I = 0x6e000067
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/RearViewRainAutoHeat/Set"
        subscribe = "BodyInfo/RearViewRainAutoHeat"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REMAINING_MILEAGE_MODE:I = 0x6e0000d6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/RemainingMileageMode/Set"
        subscribe = "DrivingInfo/RemainingMileageMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SAFETY_BELT_STATUS:I = 0x6e000081
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/SafetyBeltStatus/Set"
        subscribe = "BodyInfo/SafetyBeltStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BACK_HEAT:I = 0x6e00003d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatBackHeating"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BACK_REST_ANGLE:I = 0x6e000041
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatBackRestAngle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BACK_REST_ANGLE_INCH:I = 0x6e0000ba
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatBackRestAngleInch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BACK_VENT:I = 0x6e00003e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatBackVentilation"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_BACK_Z_ANGLE:I = 0x6e000042
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatBackZAngle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_CUSHION_INCH:I = 0x6e0000bb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatCushionInch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_CUSHION_TARGET_POS:I = 0x6e0000af
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatCushionTargetPos"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_EASY_ACCESS:I = 0x6e0000a9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatEasyAccess"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_EASY_ACCESS_POSITION:I = 0x6e00011c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/SeatEasyAccessPosition/Set"
        subscribe = "AC/SeatEasyAccessPosition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_EASY_ACCESS_REQ:I = 0x6e0000aa
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatEasyAccessReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_FOOT_REST_ANGLE:I = 0x6e0000b1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatFootRestAngle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_HEAD_REST_POS:I = 0x6e00011d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatHeadRestPos"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_LEG_REST_ANGLE:I = 0x6e0000b0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatLegRestAngle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MASSAGE:I = 0x6e000047
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatMassage"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_SEAT_MASSAGE_LEVEL:I = 0x0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatMassageLevel"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MASSAGE_MODE:I = 0x0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatMassageMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_MEMORY:I = 0x6e0000b2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatMemory"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_NEED_MEMORY:I = 0x6e0000b3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatNeedMemory"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_X_DIRECTION:I = 0x6e00003f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatXDirection"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_X_DIRECTION_INCH:I = 0x6e0000b9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatXDirectionInch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_Z_DIRECTION:I = 0x6e000040
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AC/SeatZDirection"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SMOKING_EVENT:I = 0x6e0000d9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/SmokingEvent/Set"
        subscribe = "DMS/SmokingEvent"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_SPOILER_FAIL:I = 0x6e0000e0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/SpoilerFail/Set"
        subscribe = "BodyInfo/SpoilerFail"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SPOILER_FEED_BACK:I = 0x6e0000f9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/SpoilerFeedBack/Set"
        subscribe = "BodyInfo/SpoilerFeedBack"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SPOILER_HEIGHT:I = 0x6e000092
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/SpoilerHeight/Set"
        subscribe = "BodyInfo/SpoilerHeight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SPOILER_SWITCH:I = 0x6e000091
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/SpoilerSwitch/Set"
        subscribe = "BodyInfo/SpoilerSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_STOP_CHARGE:I = 0x6e00010b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/StopCharge"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_STOP_MODE_ALLOWED:I = 0x6e00011f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/StopModeAllowed/Set"
        subscribe = "BodyInfo/StopModeAllowed"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_STOP_MODE_STATUS_RESP:I = 0x6e000120
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/StopModeStatusResp/Set"
        subscribe = "BodyInfo/StopModeStatusResp"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_STOP_MODE_SWITCH:I = 0x6e00008c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/StopModeSwitch/Set"
        subscribe = "BodyInfo/StopModeSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TELLTALE_HAZARDLIGHTTELLTALE:I = 0x6e0000fe
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "Telltale/HazardLightTellTale"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TEMPERATURE_OUTSIDE:I = 0x6e0000fb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "Sensor/NumberOfTemperature"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TIRE_KPA_NUM_LEFTFRONT:I = 0x6e0000c6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EOXTPMS/LeftFront/TireKpaNum/Set"
        subscribe = "EOXTPMS/LeftFront/TireKpaNum"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_KPA_NUM_LEFTREAR:I = 0x6e0000c8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EOXTPMS/LeftRear/TireKpaNum/Set"
        subscribe = "EOXTPMS/LeftRear/TireKpaNum"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_KPA_NUM_RIGHTFRONT:I = 0x6e0000c7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EOXTPMS/RightFront/TireKpaNum/Set"
        subscribe = "EOXTPMS/RightFront/TireKpaNum"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_KPA_NUM_RIGHTREAR:I = 0x6e0000c9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EOXTPMS/RightRear/TireKpaNum/Set"
        subscribe = "EOXTPMS/RightRear/TireKpaNum"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_KPA_UNIT:I = 0x6e000108
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EOXTPMS/KpaUnit/Set"
        subscribe = "EOXTPMS/KpaUnit"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_TIRESTS_LEFTFRONT:I = 0x6e000110
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EOXTPMS/LeftFront/TireSts/Set"
        subscribe = "EOXTPMS/LeftFront/TireSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_TIRESTS_LEFTREAR:I = 0x6e000112
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EOXTPMS/LeftRear/TireSts/Set"
        subscribe = "EOXTPMS/LeftRear/TireSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_TIRESTS_RIGHTFRONT:I = 0x6e000111
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EOXTPMS/RightFront/TireSts/Set"
        subscribe = "EOXTPMS/RightFront/TireSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_TIRESTS_RIGHTREAR:I = 0x6e000113
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EOXTPMS/RightRear/TireSts/Set"
        subscribe = "EOXTPMS/RightRear/TireSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_TIRETEMPNUM_LEFTFRONT:I = 0x6e000118
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EOXTPMS/LeftFront/TireTempNum/Set"
        subscribe = "EOXTPMS/LeftFront/TireTempNum"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_TIRETEMPNUM_LEFTREAR:I = 0x6e00011a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EOXTPMS/LeftRear/TireTempNum/Set"
        subscribe = "EOXTPMS/LeftRear/TireTempNum"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_TIRETEMPNUM_RIGHTFRONT:I = 0x6e000119
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EOXTPMS/RightFront/TireTempNum/Set"
        subscribe = "EOXTPMS/RightFront/TireTempNum"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TIRE_TIRETEMPNUM_RIGHTREAR:I = 0x6e00011b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EOXTPMS/RightRear/TireTempNum/Set"
        subscribe = "EOXTPMS/RightRear/TireTempNum"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TOWING_MODE_AVAILABLE:I = 0x6e0000a8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EnergyInfo/TowModeAvailable/Set"
        subscribe = "EnergyInfo/TowModeAvailable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TRIP_A_DRIVE_DISTANCE:I = 0x6e0000bf
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/TripADriveDistance/Set"
        subscribe = "DrivingInfo/TripADriveDistance"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TRIP_A_DRIVE_TIME:I = 0x6e0000be
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/TripADriveTime/Set"
        subscribe = "DrivingInfo/TripADriveTime"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_TRIP_B_DRIVE_DISTANCE:I = 0x6e0000c2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DrivingInfo/TripBDriveDistance/Set"
        subscribe = "DrivingInfo/TripBDriveDistance"
        type = Ljava/lang/Float;
    .end annotation
.end field

.field public static final ID_UNLOCK_ALARM_WARN:I = 0x6e00007e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/UnlockAlarmWarn/Set"
        subscribe = "BodyInfo/UnlockAlarmWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_UNLOCK_DOOR_SET:I = 0x6e00007f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/UnlockDoorSet/Set"
        subscribe = "BodyInfo/UnlockDoorSet"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VEHICLE_ENHANCE_BREAKLIGHTSTATUS:I = 0x6e0000ff
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "Vehicle/Enhance/BreakLightStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VIBRATION_WARNING:I = 0x6e000080
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/VibrationWarning/Set"
        subscribe = "BodyInfo/VibrationWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_ALL_WINDOW_ADJUST:I = 0x6e000093
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/AllWindowAdjust/Set"
        subscribe = "VehicleWindow/AllWindowAdjust"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_VENTILATE:I = 0x6e000094
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/WindowVentilate/Set"
        subscribe = "VehicleWindow/WindowVentilate"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WIPER_SENSITIVITY:I = 0x6e000061
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/WiperSensitivity/Set"
        subscribe = "BodyInfo/WiperSensitivity"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ZERO_HEAVY_SEAT:I = 0x6e000088
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AC/ZeroHeavySeat/Set"
        subscribe = "AC/ZeroHeavySeat"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final LIGHT_AUTO:I = 0x6e00000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Light/Auto"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final LIGHT_OFF:I = 0x6e00000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "Light/Off"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x6e

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.VEHICLE_CONTROL"

.field public static final SFT_WARNING:I = 0x6e000035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/SftWarningSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TOWING_MODE:I = 0x6e000034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "EnergyInfo/TowingModeSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
