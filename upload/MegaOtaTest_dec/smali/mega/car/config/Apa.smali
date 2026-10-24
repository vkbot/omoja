.class public interface abstract Lmega/car/config/Apa;
.super Ljava/lang/Object;
.source "Apa.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Apa$Radar;,
        Lmega/car/config/Apa$OptionalSoltType;,
        Lmega/car/config/Apa$APAIVIParkingActiveReq;,
        Lmega/car/config/Apa$APAParkingMode;,
        Lmega/car/config/Apa$OptionalParkingInfo;,
        Lmega/car/config/Apa$APAActiveButtonDisp;,
        Lmega/car/config/Apa$APAIVIDisplayInfo;,
        Lmega/car/config/Apa$ParamsAVMDisplayReady;,
        Lmega/car/config/Apa$RunningStatus;,
        Lmega/car/config/Apa$QNXParkingState;,
        Lmega/car/config/Apa$AndroidParkingState;,
        Lmega/car/config/Apa$CrossParkMode;,
        Lmega/car/config/Apa$APAResponse;,
        Lmega/car/config/Apa$APARecommend;,
        Lmega/car/config/Apa$HPPTerminalStation;,
        Lmega/car/config/Apa$HPPLearnReq;,
        Lmega/car/config/Apa$HPPFuncReq;,
        Lmega/car/config/Apa$HPPHomepageDisplayRequest;,
        Lmega/car/config/Apa$HPPLearnFailReason;,
        Lmega/car/config/Apa$HPPNoticeRequest;,
        Lmega/car/config/Apa$HPPParkType;,
        Lmega/car/config/Apa$HPPAbortReason;,
        Lmega/car/config/Apa$HPPSuspendReason;,
        Lmega/car/config/Apa$HPPVoiceNotice;,
        Lmega/car/config/Apa$HPPDeleteMapSts;,
        Lmega/car/config/Apa$HPPUsingMapID;,
        Lmega/car/config/Apa$HPPSLAMSts;,
        Lmega/car/config/Apa$HPPParkActiveButton;,
        Lmega/car/config/Apa$HPPPointButton;,
        Lmega/car/config/Apa$HPPVersionSts;,
        Lmega/car/config/Apa$CreateMapSts;,
        Lmega/car/config/Apa$MapFullSts;,
        Lmega/car/config/Apa$HPPMode;,
        Lmega/car/config/Apa$HPPSlamScore;,
        Lmega/car/config/Apa$RPAParkingTypeIndication;,
        Lmega/car/config/Apa$APAVirtualSlotTypeSts;,
        Lmega/car/config/Apa$APAReqBleIndicate;,
        Lmega/car/config/Apa$RPACompletedDis;,
        Lmega/car/config/Apa$RPAParkInOutDis;,
        Lmega/car/config/Apa$APARPARequest;,
        Lmega/car/config/Apa$APARPASuspendReason;,
        Lmega/car/config/Apa$APARPAAbortReason;,
        Lmega/car/config/Apa$RPAAPAMode;,
        Lmega/car/config/Apa$APASts;,
        Lmega/car/config/Apa$RPABLEParkOutDirection;,
        Lmega/car/config/Apa$RPAFuncModSts;,
        Lmega/car/config/Apa$RPABLEParkingActiveReq;,
        Lmega/car/config/Apa$AVMSts;,
        Lmega/car/config/Apa$AVMMonVideoOutSts;,
        Lmega/car/config/Apa$VoiceFeedBack;,
        Lmega/car/config/Apa$RDASwtSts;,
        Lmega/car/config/Apa$RDASts;,
        Lmega/car/config/Apa$RDANmlOptMsg;,
        Lmega/car/config/Apa$APAWarningReq;,
        Lmega/car/config/Apa$ParamDVRVision;,
        Lmega/car/config/Apa$ParamsAVMTrigger;,
        Lmega/car/config/Apa$ParamsParkingMode;,
        Lmega/car/config/Apa$ParamsSlotSts;,
        Lmega/car/config/Apa$ParamsTouchScreenCtrl;,
        Lmega/car/config/Apa$ParamsDistDispArea;,
        Lmega/car/config/Apa$ParamsFrontBeepRate;,
        Lmega/car/config/Apa$ParamsPDCSysSts;,
        Lmega/car/config/Apa$ParamsSDWSysSts;,
        Lmega/car/config/Apa$ParamsMebSwSts;,
        Lmega/car/config/Apa$ParamsMebSts;,
        Lmega/car/config/Apa$ParamsVoiceWarnReq;,
        Lmega/car/config/Apa$ParamsVoiceProcessReq;,
        Lmega/car/config/Apa$ParamsAvmReqWarn;,
        Lmega/car/config/Apa$ParamsAvmHmiIndex;,
        Lmega/car/config/Apa$Params3D2DviewMode;,
        Lmega/car/config/Apa$ParamsPdcSwSts;,
        Lmega/car/config/Apa$ParamsAvmSwSts;,
        Lmega/car/config/Apa$ParamsAvmDisplayReq;,
        Lmega/car/config/Apa$ParamsAvmSts;,
        Lmega/car/config/Apa$ParamsLanguageSet;,
        Lmega/car/config/Apa$ParamsVoiceAPASwitch;,
        Lmega/car/config/Apa$ParamsAVM3dCarModeColor;,
        Lmega/car/config/Apa$ParamsSingleViewSts;,
        Lmega/car/config/Apa$ParamsApaFrontObjectExist;,
        Lmega/car/config/Apa$ParamsApaParkSideSelect;,
        Lmega/car/config/Apa$ParamsApaDisplayReq;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0xe
    permission = "mega.car.permission.APA"
.end annotation


# static fields
.field public static final ID_APARPA_ABORT_REASON:I = 0xe00008d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaRpaAbortReason/Set"
        subscribe = "AVM/ApaRpaAbortReason"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APARPA_REQUEST:I = 0xe00008f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaRpaRequest/Set"
        subscribe = "AVM/ApaRpaRequest"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APARPA_SUSPEND_REASON:I = 0xe00008e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaRpaSuspendReason/Set"
        subscribe = "AVM/ApaRpaSuspendReason"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_ACTIVE_BUTTON_DISP:I = 0xe0000d8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaActiveButtonDisp/Set"
        subscribe = "AVM/ApaActiveButtonDisp"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_ANDROID_PARKINGSTATE:I = 0xe0000d1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/AndroidParkingState/Set"
        subscribe = "APA/AndroidParkingState"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_APASWSTS:I = 0xe00003e

.field public static final ID_APA_AVM3D2DSW:I = 0xe00002d

.field public static final ID_APA_AVMPDC_REQWARN:I = 0xe000042
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/AvmPdcReqWarn/Set"
        subscribe = "APA/AvmPdcReqWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_AVMSTS:I = 0xe00003b

.field public static final ID_APA_AVMSWSTS:I = 0xe00003d

.field public static final ID_APA_AVM_3D2DVIEWMODE:I = 0xe000040
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/Avm3d2dViewMode/Set"
        subscribe = "APA/Avm3d2dViewMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_AVM_AUTOSWITCHINGSW:I = 0xe000033
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/AvmAutoSwitchingSw/Set"
        subscribe = "APA/AvmAutoSwitchingSw"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_AVM_CARCOLOR:I = 0xe00002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APAAvmCarColor/Set"
        subscribe = "APA/APAAvmCarColor"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_AVM_HMIINDEX:I = 0xe000041
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/AvmHmiIndex/Set"
        subscribe = "APA/AvmHmiIndex"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_AVM_LICENSE:I = 0xe000035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APAAvmLicense/Set"
        subscribe = "APA/APAAvmLicense"
        type = [I
    .end annotation
.end field

.field public static final ID_APA_AVM_MONITVIDEO_OUTPUT:I = 0xe000049

.field public static final ID_APA_AVM_MONVIDEORECEIVE:I = 0xe000039

.field public static final ID_APA_AVM_TRAJECTORYSW:I = 0xe000032
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/AvmTrajectorySw/Set"
        subscribe = "APA/AvmTrajectorySw"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_AVM_TRANSPARENTSW:I = 0xe000034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APAAvmTransparentSw/Set"
        subscribe = "APA/APAAvmTransparentSw"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_AVM_TRIGBY_TURNNINGSTS:I = 0xe000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APAAvmTrigbyTurnningSts/Set"
        subscribe = "APA/APAAvmTrigbyTurnningSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_CARD_PLAY_REQUEST:I = 0xe0000c7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APACardPlayRequest/Set"
        subscribe = "APA/APACardPlayRequest"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_CONDITION_NOTICE:I = 0xe0000c8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APAConditionNotice/Set"
        subscribe = "APA/APAConditionNotice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_CONFIRM_BUTTON_CONFIG:I = 0xe000024

.field public static final ID_APA_CROSS_MODE_SELECT_REQ:I = 0xe0000cf
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/CrossModeSelect/Set"
        subscribe = "APA/CrossModeSelect"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_CROSS_PARK_MODE:I = 0xe0000d0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/CrossParkingMode/Set"
        subscribe = "APA/CrossParkingMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_CURRENT_LOCATION:I = 0xe0000c6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/CurrentLocation/Set"
        subscribe = "APA/CurrentLocation"
        type = Lmega/car/annotation/PropertyDefine$JsonString;
    .end annotation
.end field

.field public static final ID_APA_DISPLAY_REQ:I = 0xe000026

.field public static final ID_APA_ENABLE:I = 0xe00005d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APAEnable/Set"
        subscribe = "APA/APAEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_ENABLE_STATUS:I = 0xe00005e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APAEnableStatus/Set"
        subscribe = "APA/APAEnableStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_FRONT_OBJECT_EXIST:I = 0xe000028

.field public static final ID_APA_FUNC_SELECT_CONFIG:I = 0xe000025

.field public static final ID_APA_HPP_ABORTREASON:I = 0xe0000b8

.field public static final ID_APA_HPP_AUTOACTIVE_SW:I = 0xe0000be

.field public static final ID_APA_HPP_CHOOSEMAPID:I = 0xe0000c0

.field public static final ID_APA_HPP_CHOOSEMAPIDS:I = 0xe0000c1

.field public static final ID_APA_HPP_CHOOSE_SLOTID:I = 0xe0000e1

.field public static final ID_APA_HPP_CREATEMAP_BAR:I = 0xe0000a6

.field public static final ID_APA_HPP_CREATEMAP_STS:I = 0xe0000a5

.field public static final ID_APA_HPP_DELETEMAP_STS:I = 0xe0000b2

.field public static final ID_APA_HPP_DISAUTO_ACTIVESW:I = 0xe0000aa

.field public static final ID_APA_HPP_END_POINTBUTTON:I = 0xe0000ac

.field public static final ID_APA_HPP_FUNCREQ:I = 0xe0000bf

.field public static final ID_APA_HPP_FUNC_STS:I = 0xe00009e

.field public static final ID_APA_HPP_HOMEPAGE_DISPLAYREQUEST:I = 0xe0000bc

.field public static final ID_APA_HPP_INTERCHGSTAT_BUTTON:I = 0xe0000af

.field public static final ID_APA_HPP_LEARNDIST_BAR:I = 0xe0000a8

.field public static final ID_APA_HPP_LEARNFAILREASON:I = 0xe0000bb

.field public static final ID_APA_HPP_LEARNREQ:I = 0xe0000c2

.field public static final ID_APA_HPP_MAPATTRIBUTE:I = 0xe0000b5

.field public static final ID_APA_HPP_MAPFULL_STS:I = 0xe0000a4

.field public static final ID_APA_HPP_MAPNAME:I = 0xe0000cb

.field public static final ID_APA_HPP_MODE:I = 0xe0000a0

.field public static final ID_APA_HPP_NAMEREQUEST:I = 0xe00009f

.field public static final ID_APA_HPP_NOTICEREQUEST:I = 0xe0000ba

.field public static final ID_APA_HPP_PARKACTIVE_BUTTON:I = 0xe0000ad

.field public static final ID_APA_HPP_PARKING_BAR:I = 0xe0000a7

.field public static final ID_APA_HPP_PARKTYPE:I = 0xe0000b9

.field public static final ID_APA_HPP_SCENEDATA:I = 0xe0000c4

.field public static final ID_APA_HPP_SLAMSTS:I = 0xe0000b0

.field public static final ID_APA_HPP_SOP_STS:I = 0xe0000b3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APAHppSopSts/Set"
        subscribe = "APA/APAHppSopSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_HPP_START_POINTBUTTON:I = 0xe0000ab

.field public static final ID_APA_HPP_SUCCESSINFO:I = 0xe0000b6

.field public static final ID_APA_HPP_SUSPENDBUTTON:I = 0xe0000ae

.field public static final ID_APA_HPP_SUSPENDREASON:I = 0xe0000b7

.field public static final ID_APA_HPP_SW:I = 0xe0000bd

.field public static final ID_APA_HPP_TERMINALSTATION:I = 0xe0000c3

.field public static final ID_APA_HPP_TRAJECTORYPOINT:I = 0xe0000ce

.field public static final ID_APA_HPP_USINGMAP_ID:I = 0xe0000b1

.field public static final ID_APA_HPP_VEHICLE_ANGLE:I = 0xe0000a3

.field public static final ID_APA_HPP_VEHICLE_X:I = 0xe0000a1

.field public static final ID_APA_HPP_VEHICLE_Y:I = 0xe0000a2

.field public static final ID_APA_HPP_VERSION_STS:I = 0xe0000a9

.field public static final ID_APA_HPP_VOICENOTICE:I = 0xe0000b4

.field public static final ID_APA_IVI_DISPLAY_INFO:I = 0xe0000d7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaIviDisplayInfo/Set"
        subscribe = "AVM/ApaIviDisplayInfo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_IVI_PARKING_ACTIVE_REQ:I = 0xe0000de

.field public static final ID_APA_LANGUAGE_SET:I = 0xe00003a

.field public static final ID_APA_MEB_HANDOVER_REQ:I = 0xe000048
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaMebHandOverReq/Set"
        subscribe = "APA/ApaMebHandOverReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_MEB_STS:I = 0xe000046
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaMebSts/Set"
        subscribe = "APA/ApaMebSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_MEB_SW:I = 0xe000037

.field public static final ID_APA_MEB_SW_STS:I = 0xe000047
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaMebSwSts/Set"
        subscribe = "APA/ApaMebSwSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_MODESW:I = 0xe00002c

.field public static final ID_APA_MODSW:I = 0xe000031

.field public static final ID_APA_OBESLOTPOINT_ANG:I = 0xe00009a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaObeSlotPointAng/Set"
        subscribe = "AVM/ApaObeSlotPointAng"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_ONOFF_SET:I = 0xe000029

.field public static final ID_APA_OPTIONAL_PARKING_INFO:I = 0xe0000dc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaOptionalParkingInfo/Set"
        subscribe = "AVM/ApaOptionalParkingInfo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_OPTIONAL_SOLT_TYPE:I = 0xe0000e0

.field public static final ID_APA_PARKING_MODE:I = 0xe0000dd

.field public static final ID_APA_PARK_OUT_DIRECTION:I = 0xe0000df

.field public static final ID_APA_PARK_SIDE_SELECT:I = 0xe000027

.field public static final ID_APA_PAS_APA_DRIVER_REQ:I = 0xe000004

.field public static final ID_APA_PAS_APA_MODE_IND:I = 0xe000003

.field public static final ID_APA_PAS_APA_PARK_SLOT_ST:I = 0xe000005

.field public static final ID_APA_PAS_APA_QUIT_IND:I = 0xe000006

.field public static final ID_APA_PAS_APA_REC_IND:I = 0xe000007

.field public static final ID_APA_PAS_APA_ST:I = 0xe000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APAButtonPress/Set"
        subscribe = "APA/APAButtonPress"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PAS_BATT_VOLT_ERR_FLAG:I = 0xe000023

.field public static final ID_APA_PAS_CTRL_MODULE_ERR_FLAG:I = 0xe000022

.field public static final ID_APA_PAS_FL_SNS_ERR_FLAG:I = 0xe00001d

.field public static final ID_APA_PAS_FRONT_LEFT_DISTANCE:I = 0xe000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RadarDistance/FrontLeft/Set"
        subscribe = "AVM/RadarDistance/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PAS_FRONT_LEFT_MID_DISTANCE:I = 0xe000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RadarDistance/FrontLeftMiddle/Set"
        subscribe = "AVM/RadarDistance/FrontLeftMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PAS_FRONT_LEFT_MID_SNS_ERR_FLAG:I = 0xe00001f

.field public static final ID_APA_PAS_FRONT_RIGHT_DISTANCE:I = 0xe000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RadarDistance/FrontRight/Set"
        subscribe = "AVM/RadarDistance/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PAS_FRONT_RIGHT_MID_DISTANCE:I = 0xe000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RadarDistance/FrontRightMiddle/Set"
        subscribe = "AVM/RadarDistance/FrontRightMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PAS_FRONT_RIGHT_MID_SNS_ERR_FLAG:I = 0xe00001e

.field public static final ID_APA_PAS_FR_SNS_ERR_FLAG:I = 0xe00001c

.field public static final ID_APA_PAS_FSL_SIDE_DISTANCE:I = 0xe000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RadarDistance/FrontLeftSide/Set"
        subscribe = "AVM/RadarDistance/FrontLeftSide"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PAS_FSL_SNS_ERR_FLAG:I = 0xe000021

.field public static final ID_APA_PAS_FSR_SIDE_DISTANCE:I = 0xe000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RadarDistance/FrontRightSide/Set"
        subscribe = "AVM/RadarDistance/FrontRightSide"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PAS_FSR_SNS_ERR_FLAG:I = 0xe000020

.field public static final ID_APA_PAS_FUNCMODE:I = 0xe0000cc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaPasFunMode/Set"
        subscribe = "APA/ApaPasFunMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PAS_MODE:I = 0xe000008

.field public static final ID_APA_PAS_REAR_LEFT_DISTANCE:I = 0xe00000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RadarDistance/RearLeft/Set"
        subscribe = "AVM/RadarDistance/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PAS_REAR_LEFT_MID_DISTANCE:I = 0xe00000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RadarDistance/RearLeftMiddle/Set"
        subscribe = "AVM/RadarDistance/RearLeftMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PAS_REAR_LEFT_MID_SNS_ERR_FLAG:I = 0xe000019

.field public static final ID_APA_PAS_REAR_LEFT_SNS_ERR_FLAG:I = 0xe000017

.field public static final ID_APA_PAS_REAR_RIGHT_DISTANCE:I = 0xe00000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RadarDistance/RearRight/Set"
        subscribe = "AVM/RadarDistance/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PAS_REAR_RIGHT_MID_DISTANCE:I = 0xe00000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RadarDistance/RearRightMiddle/Set"
        subscribe = "AVM/RadarDistance/RearRightMiddle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PAS_REAR_RIGHT_MID_SNS_ERR_FLAG:I = 0xe000018

.field public static final ID_APA_PAS_REAR_RIGHT_SNS_ERR_FLAG:I = 0xe000016

.field public static final ID_APA_PAS_RSL_SIDE_DISTANCE:I = 0xe00000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RadarDistance/RearLeftSide/Set"
        subscribe = "AVM/RadarDistance/RearLeftSide"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PAS_RSL_SNS_ERR_FLAG:I = 0xe00001b

.field public static final ID_APA_PAS_RSR_SIDE_DISTANCE:I = 0xe00000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RadarDistance/RearRightSide/Set"
        subscribe = "AVM/RadarDistance/RearRightSide"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PAS_RSR_SNS_ERR_FLAG:I = 0xe00001a

.field public static final ID_APA_PAS_WARN_TONE:I = 0xe000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaPasWarnTone/Set"
        subscribe = "APA/ApaPasWarnTone"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PDCSWSTS:I = 0xe00003f

.field public static final ID_APA_PDC_DISTDISPAREA:I = 0xe000055

.field public static final ID_APA_PDC_FAILUREWARNING:I = 0xe00004c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaPdcFailureWarning/Set"
        subscribe = "APA/ApaPdcFailureWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PDC_MUTEREQ:I = 0xe000038

.field public static final ID_APA_PDC_MUTESTS:I = 0xe00004d

.field public static final ID_APA_PDC_OBJDISPLAYREQ:I = 0xe000050
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaPdcObjDisplayReq/Set"
        subscribe = "APA/ApaPdcObjDisplayReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PDC_OBJ_F_MINDIST:I = 0xe000056
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaPdcObjFMindist/Set"
        subscribe = "APA/ApaPdcObjFMindist"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PDC_OBJ_R_MINDIST:I = 0xe000057
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaPdcObjRMindist/Set"
        subscribe = "APA/ApaPdcObjRMindist"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PDC_SDW_AUDIBLEFRONTBEEPRATE:I = 0xe00004e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaPdcSdwAudiBLEFrontBeepRate/Set"
        subscribe = "APA/ApaPdcSdwAudiBLEFrontBeepRate"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PDC_SDW_AUDIBLEREARBEEPRATE:I = 0xe00004f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaPdcSdwAudiBLERearBeepRate/Set"
        subscribe = "APA/ApaPdcSdwAudiBLERearBeepRate"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PDC_SYSSTS:I = 0xe00004b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaPdcSysSts/Set"
        subscribe = "APA/ApaPdcSysSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_PROCESSBAR:I = 0xe0000da
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaProcessBar/Set"
        subscribe = "AVM/ApaProcessBar"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_QNX_PARKINGSTATE:I = 0xe0000d2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/QNXParkingState/Set"
        subscribe = "APA/QNXParkingState"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_RADAR_CONFIG:I = 0xe000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/Radar/Set"
        subscribe = "BodyInfo/Radar"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_RADAR_CONFIG_BACK:I = 0xe0000e3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/Radar/Back/Set"
        subscribe = "BodyInfo/Radar/Back"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_RADAR_CONFIG_FRONTLEFT:I = 0xe0000e6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/Radar/FrontLeft/Set"
        subscribe = "BodyInfo/Radar/FrontLeft"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_RADAR_CONFIG_FRONTLEFTMIDDLE:I = 0xe0000ec
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/Radar/FrontLeftMiddle/Set"
        subscribe = "BodyInfo/Radar/FrontLeftMiddle"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_RADAR_CONFIG_FRONTRIGHT:I = 0xe0000e7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/Radar/FrontRight/Set"
        subscribe = "BodyInfo/Radar/FrontRight"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_RADAR_CONFIG_FRONTRIGHTMIDDLE:I = 0xe0000ed
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/Radar/FrontRightMiddle/Set"
        subscribe = "BodyInfo/Radar/FrontRightMiddle"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_RADAR_CONFIG_HOOD:I = 0xe0000e2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/Radar/Hood/Set"
        subscribe = "BodyInfo/Radar/Hood"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_RADAR_CONFIG_LEFT:I = 0xe0000e4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/Radar/Left/Set"
        subscribe = "BodyInfo/Radar/Left"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_RADAR_CONFIG_REARLEFT:I = 0xe0000e8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/Radar/RearLeft/Set"
        subscribe = "BodyInfo/Radar/RearLeft"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_RADAR_CONFIG_REARLEFTMIDDLE:I = 0xe0000ea
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/Radar/RearLeftMiddle/Set"
        subscribe = "BodyInfo/Radar/RearLeftMiddle"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_RADAR_CONFIG_REARRIGHT:I = 0xe0000e9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/Radar/RearRight/Set"
        subscribe = "BodyInfo/Radar/RearRight"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_RADAR_CONFIG_REARRIGHTMIDDLE:I = 0xe0000eb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/Radar/RearRightMiddle/Set"
        subscribe = "BodyInfo/Radar/RearRightMiddle"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_RADAR_CONFIG_RIGHT:I = 0xe0000e5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/Radar/Right/Set"
        subscribe = "BodyInfo/Radar/Right"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_RECOMMEND:I = 0xe0000c5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APARecommend/Set"
        subscribe = "APA/APARecommend"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_REQBLE_INDICATE:I = 0xe000094
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaReqbleIndicate/Set"
        subscribe = "AVM/ApaReqbleIndicate"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_RPA_BUTTON_DISPALY:I = 0xe0000db
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaRpaButtonDisplay/Set"
        subscribe = "AVM/ApaRpaButtonDisplay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_SDW_FL_DISTANCE:I = 0xe000051
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaSdwFLDistance/Set"
        subscribe = "APA/ApaSdwFLDistance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_SDW_FR_DISTANCE:I = 0xe000052
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaSdwFRDistance/Set"
        subscribe = "APA/ApaSdwFRDistance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_SDW_RL_DISTANCE:I = 0xe000053
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaSdwRLDistance/Set"
        subscribe = "APA/ApaSdwRLDistance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_SDW_RR_DISTANCE:I = 0xe000054
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaSdwRLDistance/Set"
        subscribe = "APA/ApaSdwRRDistance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_SDW_SYSSTS:I = 0xe00004a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaSdwSysSts/Set"
        subscribe = "APA/ApaSdwSysSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_SIDE_RADAR:I = 0xe0000d6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/SideRadar/Set"
        subscribe = "BodyInfo/SideRadar"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_SIDE_RADAR_BACK:I = 0xe0000f3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/SideRadar/Back/Set"
        subscribe = "BodyInfo/SideRadar/Back"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_SIDE_RADAR_FRONTLEFT:I = 0xe0000f6
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/SideRadar/FrontLeft/Set"
        subscribe = "BodyInfo/SideRadar/FrontLeft"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_SIDE_RADAR_FRONTLEFTMIDDLE:I = 0xe0000fc
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/SideRadar/FrontLeftMiddle/Set"
        subscribe = "BodyInfo/SideRadar/FrontLeftMiddle"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_SIDE_RADAR_FRONTRIGHT:I = 0xe0000f7
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/SideRadar/FrontRight/Set"
        subscribe = "BodyInfo/SideRadar/FrontRight"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_SIDE_RADAR_FRONTRIGHTMIDDLE:I = 0xe0000fd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/SideRadar/FrontRightMiddle/Set"
        subscribe = "BodyInfo/SideRadar/FrontRightMiddle"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_SIDE_RADAR_HOOD:I = 0xe0000f2
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/SideRadar/Hood/Set"
        subscribe = "BodyInfo/SideRadar/Hood"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_SIDE_RADAR_LEFT:I = 0xe0000f4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/SideRadar/Left/Set"
        subscribe = "BodyInfo/SideRadar/Left"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_SIDE_RADAR_REARLEFT:I = 0xe0000f8
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/SideRadar/RearLeft/Set"
        subscribe = "BodyInfo/SideRadar/RearLeft"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_SIDE_RADAR_REARLEFTMIDDLE:I = 0xe0000fa
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/SideRadar/RearLeftMiddle/Set"
        subscribe = "BodyInfo/SideRadar/RearLeftMiddle"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_SIDE_RADAR_REARRIGHT:I = 0xe0000f9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/SideRadar/RearRight/Set"
        subscribe = "BodyInfo/SideRadar/RearRight"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_SIDE_RADAR_REARRIGHTMIDDLE:I = 0xe0000fb
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/SideRadar/RearRightMiddle/Set"
        subscribe = "BodyInfo/SideRadar/RearRightMiddle"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_SIDE_RADAR_RIGHT:I = 0xe0000f5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "BodyInfo/SideRadar/Right/Set"
        subscribe = "BodyInfo/SideRadar/Right"
        type = Lmega/car/config/Apa$Radar;
    .end annotation
.end field

.field public static final ID_APA_SLOTWARNINGREQ:I = 0xe000043
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/DynamicSlotWarning/Set"
        subscribe = "APA/DynamicSlotWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_SLOT_ANGLE:I = 0xe000095
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaSlotAngle/Set"
        subscribe = "AVM/ApaSlotAngle"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_SLOT_LENGTH:I = 0xe000096
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaSlotLength/Set"
        subscribe = "AVM/ApaSlotLength"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_SLOT_WIDTH:I = 0xe000097
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaSlotWidth/Set"
        subscribe = "AVM/ApaSlotWidth"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_SLOT_X:I = 0xe000098
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaSlotX/Set"
        subscribe = "AVM/ApaSlotX"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_SLOT_Y:I = 0xe000099
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaSlotY/Set"
        subscribe = "AVM/ApaSlotY"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_STS:I = 0xe00008a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaSts/Set"
        subscribe = "AVM/ApaSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_SUSPEND_BUTTON_DISAPLAY:I = 0xe0000d9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaSuspendButtonDisp/Set"
        subscribe = "AVM/ApaSuspendButtonDisp"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_SWT_STS:I = 0xe00009d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaSwtSts/Set"
        subscribe = "AVM/ApaSwtSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_TOUCH_EVENT2:I = 0xe0000ca
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/TouchEvent2/Set"
        subscribe = "APA/TouchEvent2"
        type = [I
    .end annotation
.end field

.field public static final ID_APA_TOUCH_INFO:I = 0xe0000c9
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APATouchInfo/Set"
        subscribe = "APA/APATouchInfo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_TOUCH_SCREEN_CTRL:I = 0xe000058
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ScreenTouchControl/Set"
        subscribe = "APA/ScreenTouchControl"
        type = [I
    .end annotation
.end field

.field public static final ID_APA_VIEW_SELECT:I = 0xe00002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APAViewSelect/Set"
        subscribe = "APA/APAViewSelect"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_VIRTUALSLOT_TYPESTS:I = 0xe00009b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/ApaObeSlotPointTypeSts/Set"
        subscribe = "AVM/ApaObeSlotPointTypeSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_VOICE_APAONOFFREQ:I = 0xe000036
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APAEnableVoice/Set"
        subscribe = "APA/APAEnableVoice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_VOICE_PROCESSREQ:I = 0xe000044
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ApaVoiceProcessReq/Set"
        subscribe = "APA/ApaVoiceProcessReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APA_VOICE_WARNREQ:I = 0xe000045
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/VoiceWarnReq/Set"
        subscribe = "APA/VoiceWarnReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CAMERA_FAILED:I = 0xe000081

.field public static final ID_AVM_CAMERA_STATUS:I = 0xe000074
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/CameraStatus/Set"
        subscribe = "AVM/CameraStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CAMERA_STATUS_FRONT:I = 0xe0000ee
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/CameraStatus/Front/Set"
        subscribe = "AVM/CameraStatus/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CAMERA_STATUS_LEFT:I = 0xe0000f0
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/CameraStatus/Left/Set"
        subscribe = "AVM/CameraStatus/Left"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CAMERA_STATUS_REAR:I = 0xe0000ef
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/CameraStatus/Rear/Set"
        subscribe = "AVM/CameraStatus/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CAMERA_STATUS_RIGHT:I = 0xe0000f1
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/CameraStatus/Right/Set"
        subscribe = "AVM/CameraStatus/Right"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CARTRANSPARENT_ONOFF_REQ:I = 0xe00007d

.field public static final ID_AVM_DETECT:I = 0xe000076
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/AVMDetectReq/Set"
        subscribe = "AVM/AVMDetectReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_MONVIDEO_OUTSTS:I = 0xe000083
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/AVMMonVideoOutsts/Set"
        subscribe = "AVM/AVMMonVideoOutsts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_MON_STS:I = 0xe000085
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/AVMMonSts/Set"
        subscribe = "AVM/AVMMonSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_ONOFF_SET:I = 0xe00002a

.field public static final ID_AVM_OVER_SPEED_WARN:I = 0xe00006c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/AVMOverspeedWarning/Set"
        subscribe = "AVM/AVMOverspeedWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_QUIT_SW:I = 0xe00007e

.field public static final ID_AVM_STS:I = 0xe000084
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/AVMsts/Set"
        subscribe = "AVM/AVMsts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_SWITCH:I = 0xe00006a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/AVMSwitch/Set"
        subscribe = "AVM/AVMSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_SWT_STS:I = 0xe000086
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/AVMSwtSts/Set"
        subscribe = "AVM/AVMSwtSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_TRIGBY_PDCSW:I = 0xe00007f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/AVMTriGbyPdcSw/Set"
        subscribe = "AVM/AVMTriGbyPdcSw"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_TRIGGER_METHOD:I = 0xe00006b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/AVMTrigger/Set"
        subscribe = "AVM/AVMTrigger"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_VIDEO_OUTPUT_FAILED:I = 0xe000082
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/AVMVideoOutputFailed/Set"
        subscribe = "AVM/AVMVideoOutputFailed"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_VOICE_FEEDBACK:I = 0xe000080
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/AVMVoiceFeedback/Set"
        subscribe = "AVM/AVMVoiceFeedback"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_VOICE_ONOFF_REQ:I = 0xe00007c

.field public static final ID_AVP_MAP_DOWNLOAD_RECOMMEND:I = 0xe000066
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/AVPMapDownloadRecomend/Set"
        subscribe = "APA/AVPMapDownloadRecomend"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVP_RECOMMEND:I = 0xe000065
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/AVPRecomend/Set"
        subscribe = "APA/AVPRecomend"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DVR_DISPLAY_VISION:I = 0xe000073
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/DVRDisplayVision/Set"
        subscribe = "AVM/DVRDisplayVision"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DVR_EMERGENCY_RECORD:I = 0xe00006f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/DVREmergencyRecord/Set"
        subscribe = "AVM/DVREmergencyRecord"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DVR_MODE:I = 0xe00006d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/DVRMode/Set"
        subscribe = "AVM/DVRMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DVR_PHOTO_RESULT:I = 0xe000072
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/DVRPhotoResult/Set"
        subscribe = "AVM/DVRPhotoResult"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DVR_RECORD_STATUS:I = 0xe00006e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/DVREnableStatus/Set"
        subscribe = "AVM/DVREnableStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DVR_SD_ERROR_CODE:I = 0xe000071
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/DVRSdcardErrorStatus/Set"
        subscribe = "AVM/DVRSdcardErrorStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_DVR_SD_FULL_WARN:I = 0xe000070
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/DVRSdcardFullStatus/Set"
        subscribe = "AVM/DVRSdcardFullStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ERROR_CODE:I = 0xe000060
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/APAFailure/Set"
        subscribe = "APA/APAFailure"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HPP_APA_AVMDISPLAYREQ:I = 0xe00003c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "AVM/AVMDisplayReq/Set"
        subscribe = "AVM/AVMDisplayReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HPP_APA_AVMDISPLAY_READY:I = 0xe0000d5
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/AVMDisplayReady/Set"
        subscribe = "AVM/AVMDisplayReady"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HZP_RECOMMEND:I = 0xe000064
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/HZPRecomend/Set"
        subscribe = "APA/HZPRecomend"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_NAVI_MSG:I = 0xe000077

.field public static final ID_PARKING_MODE:I = 0xe000067
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ParkingMode/Set"
        subscribe = "APA/ParkingMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PARKING_NOTICE:I = 0xe000061
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ParkingNotice/Set"
        subscribe = "APA/ParkingNotice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PARKING_SLOT_NUMBER:I = 0xe000062
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/ParkingSlotNumber/Set"
        subscribe = "APA/ParkingSlotNumber"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RADAR_FRONT_ACTIVE:I = 0xe0000cd
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/FrontRadar/Set"
        subscribe = "BodyInfo/FrontRadar"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RDA_NMLOPT_MSGVOICE:I = 0xe000079
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RdaNmloptMsgVoice/Set"
        subscribe = "AVM/RdaNmloptMsgVoice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RDA_STS:I = 0xe00007a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/Rdasts/Set"
        subscribe = "AVM/Rdasts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RDA_SWT_STS:I = 0xe00007b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RdaSwtsts/Set"
        subscribe = "AVM/RdaSwtsts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RDA_VOICE_ONOFF_REQ:I = 0xe000078

.field public static final ID_REAR_ASSIST_DRIVE_NOTICE:I = 0xe000063
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/RearAssistDrvNotice/Set"
        subscribe = "APA/RearAssistDrvNotice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REMOTE_DISPLAY:I = 0xe000075
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RemoteDisplay/Set"
        subscribe = "AVM/RemoteDisplay"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REMOTE_PARK_RUN_DISTANCE:I = 0xe00005a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/RemoteParkRunDistance/Set"
        subscribe = "APA/RemoteParkRunDistance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REMOTE_PARK_SAFE_DISTANCE:I = 0xe00005b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/RemoteParkSafeDistance/Set"
        subscribe = "APA/RemoteParkSafeDistance"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RPAAPA_MODE:I = 0xe00008c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RpaApaMode/Set"
        subscribe = "AVM/RpaApaMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RPA_BLEPARKOUT_DIRECTION:I = 0xe000089

.field public static final ID_RPA_BTPARKING_ACTIVE_REQ:I = 0xe000087

.field public static final ID_RPA_COMPLETED_DIS:I = 0xe000093
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RpaCompletedDis/Set"
        subscribe = "AVM/RpaCompletedDis"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RPA_FUNCMOD_STS:I = 0xe000088

.field public static final ID_RPA_PARKINGTYPE_INDICATION:I = 0xe00009c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RpaParkingTypeIndication/Set"
        subscribe = "AVM/RpaParkingTypeIndication"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RPA_PARKOUT_INHIBIT:I = 0xe000090
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RpaParkOutInhibit/Set"
        subscribe = "AVM/RpaParkOutInhibit"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RPA_PARK_INOUT:I = 0xe000091
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RpaParkOutInOut/Set"
        subscribe = "AVM/RpaParkOutInOut"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RPA_PROCESSBAR:I = 0xe000092
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RpaParkOutInOut/Set"
        subscribe = "AVM/Rpaprocessbar"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RPA_STS:I = 0xe00008b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RpaSts/Set"
        subscribe = "AVM/RpaSts"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RUNNING_STATUS:I = 0xe0000d4
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/RunningStatus"
        subscribe = "AVM/RunningStatus/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SIDE_AUDIO_WARN:I = 0xe000059
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/SideAudioWarning/Set"
        subscribe = "APA/SideAudioWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SIDE_VIEW_ASSIST:I = 0xe000069
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/SideViewAssist/Set"
        subscribe = "APA/SideViewAssist"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SLOT_NOTICE:I = 0xe00005f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/SlotNotice/Set"
        subscribe = "APA/SlotNotice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SLOT_SELECT_VOICE:I = 0xe000068
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/SlotSelectVoice/Set"
        subscribe = "APA/SlotSelectVoice"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TURN_LIGHT_AVM_SWITCH:I = 0xe0000d3
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "AVM/TurnLightAVMSwitch/Set"
        subscribe = "AVM/TurnLightAVMSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_VOICE_PARK_ENABLE:I = 0xe00005c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "APA/VoiceParkEnable/Set"
        subscribe = "APA/VoiceParkEnable"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0xe
