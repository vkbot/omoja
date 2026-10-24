.class public interface abstract Lmega/car/config/Dms;
.super Ljava/lang/Object;
.source "Dms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Dms$FatigueMonitorDuration;,
        Lmega/car/config/Dms$FaceRecoOperReq;,
        Lmega/car/config/Dms$DriverMotionStatus;,
        Lmega/car/config/Dms$LiveDetectState;,
        Lmega/car/config/Dms$BioassayState;,
        Lmega/car/config/Dms$FaceIDRegResult;,
        Lmega/car/config/Dms$FaceRecognizeKeyCode;,
        Lmega/car/config/Dms$FaceRegisterKeyCode;,
        Lmega/car/config/Dms$ExceptReport;,
        Lmega/car/config/Dms$CameraShelter;,
        Lmega/car/config/Dms$FaceIDResult;,
        Lmega/car/config/Dms$DynaGestureRecogSts;,
        Lmega/car/config/Dms$GestureStudySts;,
        Lmega/car/config/Dms$StaticGestureRecogSts;,
        Lmega/car/config/Dms$FatigueMonitorReq;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0xf
    permission = "mega.car.permission.DMS"
.end annotation


# static fields
.field public static final ID_BIOASSAY_AC_REQ:I = 0xf00002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/BioassayAcReq/Set"
        subscribe = "DMS/BioassayAcReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BIOASSAY_STATUS:I = 0xf00002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/BioassayStatus/Set"
        subscribe = "DMS/BioassayStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BIOASSAY_WINDOW_REQ:I = 0xf00002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/BioassayWindowReq/Set"
        subscribe = "DMS/BioassayWindowReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CALLING_DETECT:I = 0xf00001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/CallingDetectSwitch/Set"
        subscribe = "DMS/CallingDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHECK_LICENSE:I = 0xf000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/CheckLicense/Set"
        subscribe = "DMS/CheckLicense"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_COORDINATE_INFO_FL:I = 0xf000019

.field public static final ID_DELETE_ALL_FACE:I = 0xf000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/DeleteAllFace/Set"
        subscribe = "DMS/DeleteAllFace"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DELETE_FACE_ID:I = 0xf000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/DeleteFaceid/Set"
        subscribe = "DMS/DeleteFaceid"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DISTRACT_MONITOR_ONOFF:I = 0xf00000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/DistractionDetectSwitch/Set"
        subscribe = "DMS/DistractionDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DMS_DETECT_STATUS:I = 0xf000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "DMS/DetectedStatus/Set"
        subscribe = "DMS/DetectedStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DRINKING_DETECT:I = 0xf00001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/DrinkingDetectSwitch/Set"
        subscribe = "DMS/DrinkingDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EXCEPTION_REPORT_RESULT:I = 0xf00001b

.field public static final ID_EYE_WAKSLP_SCRE_ONOFF:I = 0xf000010

.field public static final ID_FACE_RECOGNIZE_KEY_EVENT:I = 0xf000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/FaceRecognizeKeyEvent/Set"
        subscribe = "DMS/FaceRecognizeKeyEvent"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FACE_RECOGNIZE_ONOFF:I = 0xf000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/FaceDetectSwitch/Set"
        subscribe = "DMS/FaceDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FACE_RECOOPER:I = 0xf000032

.field public static final ID_FACE_RECOOPER_RESPONSE:I = 0xf000033

.field public static final ID_FACE_REGISTER:I = 0xf000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/FaceRegister/Set"
        subscribe = "DMS/FaceRegister"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FACE_REGISTER_CHIME:I = 0xf000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/FaceRegisterChime/Set"
        subscribe = "DMS/FaceRegisterChime"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FACE_REGISTER_KEY_EVENT:I = 0xf000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/FaceRegisterKeyEvent/Set"
        subscribe = "DMS/FaceRegisterKeyEvent"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FACE_REGISTER_NOTICE:I = 0xf000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/FaceRegisterNotice/Set"
        subscribe = "DMS/FaceRegisterNotice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FACE_REGISTER_STATUS:I = 0xf000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/FaceRegisterStatus/Set"
        subscribe = "DMS/FaceRegisterStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FATIGUE_MONITOR_DURATION:I = 0xf000034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/FatigueDetectDuration/Set"
        subscribe = "DMS/FatigueDetectDuration"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FATIGUE_MONITOR_SET:I = 0xf00000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/FatigueDetectSwitch/Set"
        subscribe = "DMS/FatigueDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FEATURE_FL:I = 0xf000015

.field public static final ID_FEATURE_FR:I = 0xf000016

.field public static final ID_FEATURE_REAR:I = 0xf000017

.field public static final ID_FRONT_PERSON_STS:I = 0xf00002a

.field public static final ID_GESTURE_RECOG_ONOFF:I = 0xf000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/GestureDetectSwitch/Set"
        subscribe = "DMS/GestureDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_GESTURE_RECOG_STS:I = 0xf000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "DMS/GestureDetected/Set"
        subscribe = "DMS/GestureDetected"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_GESTURE_STUDY:I = 0xf00001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "DMS/GestureStudy/Set"
        subscribe = "DMS/GestureStudy"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_GET_FACE_ID_NUM:I = 0xf000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/GetFaceidNum/Set"
        subscribe = "DMS/GetFaceidNum"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_KEY_EVENT:I = 0xf000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/KeyEvent/Set"
        subscribe = "DMS/KeyEvent"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIFEFORGREMIND_ONOFF:I = 0xf00000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/LiveDetectSwitch/Set"
        subscribe = "DMS/LiveDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIVE_DETECT_ACTIVE:I = 0xf00002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/LiveDetectActive/Set"
        subscribe = "DMS/LiveDetectActive"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LIVE_DETECT_STATUS:I = 0xf00002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "DMS/LiveDetectedStatus/Set"
        subscribe = "DMS/LiveDetectedStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MATCH_FACE_ID:I = 0xf000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/MatchFaceid/Set"
        subscribe = "DMS/MatchFaceid"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_OUT_FATIGUE_MONITOR_DURATION:I = 0xf000035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/FatigueDetectDurationOut/Set"
        subscribe = "DMS/FatigueDetectDurationOut"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_QNX_REPLY:I = 0xf00000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "DMS/QnxReply/Set"
        subscribe = "DMS/QnxReply"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_REARMONITOR_ONOFF:I = 0xf00000f

.field public static final ID_REARPERSON_STS:I = 0xf000018

.field public static final ID_REGISTER_FACE_ID:I = 0xf000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/RegisterFaceid/Set"
        subscribe = "DMS/RegisterFaceid"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REPLY_LICENSE:I = 0xf000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/ReplyLicense/Set"
        subscribe = "DMS/ReplyLicense"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_SCREOFF_WAITING_TIME:I = 0xf000011

.field public static final ID_SHELTER_STATUS:I = 0xf00001a

.field public static final ID_SMOKE_MODE_ACOUST_WARN:I = 0xf000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/SmokeModeAcoustWarn/Set"
        subscribe = "DMS/SmokeModeAcoustWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SMOKE_MODE_AIR_CLEAN:I = 0xf000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/SmokeModeAirClean/Set"
        subscribe = "DMS/SmokeModeAirClean"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SMOKE_MODE_SWITCH:I = 0xf000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/SmokeMode/Set"
        subscribe = "DMS/SmokeMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SMOKE_MODE_WINDOW_DOWN:I = 0xf000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/SmokeModeWindowDown/Set"
        subscribe = "DMS/SmokeModeWindowDown"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SMOKING_DETECT:I = 0xf00001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/SmokingDetectSwitch/Set"
        subscribe = "DMS/SmokingDetectSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_STOP:I = 0xf000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/Stop/Set"
        subscribe = "DMS/Stop"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TEST:I = 0xf000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/Test/Set"
        subscribe = "DMS/Test"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_UI_SETTING:I = 0xf00000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DMS/UiSetting/Set"
        subscribe = "DMS/UiSetting"
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final MGR_ID:I = 0xf
