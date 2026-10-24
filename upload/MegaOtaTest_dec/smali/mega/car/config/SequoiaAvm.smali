.class public interface abstract Lmega/car/config/SequoiaAvm;
.super Ljava/lang/Object;
.source "SequoiaAvm.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x68
    name = "sequoia_avm"
    permission = "mega.car.permission.SEQUOIA"
.end annotation


# static fields
.field public static final ID_ADASSETTING_NOTIFY_ADAS_SETTING_INFO:I = 0x68000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADASSetting/NtfADASSettingInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGFUNCINFO_NOTIFY_ACC_INFO:I = 0x68000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_DrivingFuncInfo/NtfACCInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGFUNCINFO_NOTIFY_ALC_INFO:I = 0x68000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_DrivingFuncInfo/NtfALCInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGFUNCINFO_NOTIFY_DAI_INFO:I = 0x6800000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_DrivingFuncInfo/NtfDAIInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGFUNCINFO_NOTIFY_ESS_INFO:I = 0x6800000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_DrivingFuncInfo/NtfESSInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGFUNCINFO_NOTIFY_HNOP_INFO:I = 0x68000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_DrivingFuncInfo/NtfHNOPfunctionInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGFUNCINFO_NOTIFY_HOD_DMS_INFO:I = 0x6800000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_DrivingFuncInfo/NtfHodDmsInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGFUNCINFO_NOTIFY_ICA_INFO:I = 0x68000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_DrivingFuncInfo/NtfICAInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGFUNCINFO_NOTIFY_INTELLIGENT_INFO:I = 0x68000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_DrivingFuncInfo/NtfIntelligentEvasionInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGFUNCINFO_NOTIFY_ISLI_INFO:I = 0x68000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_DrivingFuncInfo/NtfISLIInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGFUNCINFO_NOTIFY_LSS_INFO:I = 0x6800000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_DrivingFuncInfo/NtfLSSInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGFUNCINFO_NOTIFY_NRA_INFO:I = 0x68000033
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_DrivingFuncInfo/NtfNRAInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGFUNCINFO_NOTIFY_TRAFFIC_SIGN:I = 0x68000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_DrivingFuncInfo/NtfTrafficSign"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGFUNCINFO_NOTIFY_UNOP_INFO:I = 0x68000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_DrivingFuncInfo/NtfUNOPfunctionInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGHMIENV_NOTIFY_DYNAMIC_OBJECT_LIST:I = 0x68000034
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_DrivingHmiEnv/NtfDynamicObjectList"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGHMIENV_NOTIFY_EGO_FUSION_POSE:I = 0x68000037
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_DrivingHmiEnv/NtfEgoFusionPose"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGHMIENV_NOTIFY_LANE_LINE_LIST:I = 0x68000036
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_DrivingHmiEnv/NtfLaneLineList"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_DRIVINGHMIENV_NOTIFY_STATIC_OBJECT_LIST:I = 0x68000035
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_DrivingHmiEnv/NtfDynamicObjectList"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_PARKINGFUNCINFO_NOTIFY_ADVANCE_PARKING_INFO:I = 0x68000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_ParkingFuncInfo/NtfAdvanceParkingInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_PARKINGFUNCINFO_NOTIFY_APARPA_INFO:I = 0x6800000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_ParkingFuncInfo/NtfAPARPAInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_PARKINGFUNCINFO_NOTIFY_HPA_PATH_DETAIL:I = 0x68000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_ParkingFuncInfo/NtfHPAPathDetail"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_PARKINGFUNCINFO_NOTIFY_HPA_REPALY_PATH_INFO:I = 0x6800003b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_ParkingFuncInfo/NtfHPARepalyPathInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_PARKINGFUNCINFO_NOTIFY_HPA_TRAINING_PATH_INFO:I = 0x68000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_ParkingFuncInfo/NtfHPATrainigPathInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_PARKINGFUNCINFO_NOTIFY_MAA_INFO:I = 0x68000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_ParkingFuncInfo/NtfMAAInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_PARKINGFUNCINFO_NOTIFY_MEB_INFO:I = 0x68000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_ParkingFuncInfo/NtfMEBInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_PARKINGFUNCINFO_NOTIFY_MRA_INFO:I = 0x68000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_ParkingFuncInfo/NtfMRAInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_PARKINGFUNCINFO_NOTIFY_PARKING_INFO:I = 0x6800000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_ParkingFuncInfo/NtfParkingGenaralInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_PARKINGFUNCINFO_NOTIFY_VPA_MAP_DATA:I = 0x68000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "ADCC_ParkingFuncInfo/NtfVPASelfBuildMapDate"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_PARKINGHMIENV_NOTIFY_DYNAMIC_INFO:I = 0x68000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_ParkingHmiEnv/NtfDynamicObjectList"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_PARKINGHMIENV_NOTIFY_PARKING_SLOT:I = 0x68000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_ParkingHmiEnv/NtfParkingSlot"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_PARKINGHMIENV_NOTIFY_STATIC_INFO:I = 0x68000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_ParkingHmiEnv/NtfStaticObjectList"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_SENSORINFO_NOTIFY_SENSOR:I = 0x68000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_SensorInfo/NtfSensorSt"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_AVM_ACTIVE_REQ:I = 0x68000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AVM/AvmActiveReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_FCTAWARN:I = 0x68000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AVM/FCTAWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_FLCR2_FCTAWARN:I = 0x6800002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AVM/FLCR2/FCTAWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_FLCR2_FCTBWARN:I = 0x68000039
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AVM/FLCR2/FCTBWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_FRCR2_FCTBWARN:I = 0x6800003a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AVM/FRCR2/FCTBWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_RLCR1_BSDWARN:I = 0x6800002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AVM/RLCR1/BSDWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_RLCR2_RCWWARN:I = 0x6800002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AVM/RLCR2/RCWWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_RRCR1_BSDWARN:I = 0x68000038
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "AVM/RRCR1/BSDWarn"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FCM_ACTIVESAFETYINFO_NOTIFY_SAFETY_INFO:I = 0x6800001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FCM_ActiveSafetyInfo/NtfActiveSafetyFcnInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FCM_DRIVINGFUNCINFO_NOTIFY_ACC_INFO:I = 0x68000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FCM_DrivingFuncInfo/NtfACCinfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FCM_DRIVINGFUNCINFO_NOTIFY_DAI_INFO:I = 0x68000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FCM_DrivingFuncInfo/NtfDAIInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FCM_DRIVINGFUNCINFO_NOTIFY_ESS_INFO:I = 0x68000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FCM_DrivingFuncInfo/NtfESSInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FCM_DRIVINGFUNCINFO_NOTIFY_HOD_DMS_INFO:I = 0x68000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FCM_DrivingFuncInfo/NtfHodDmsInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FCM_DRIVINGFUNCINFO_NOTIFY_ICA_INFO:I = 0x68000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FCM_DrivingFuncInfo/NtfICAInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FCM_DRIVINGFUNCINFO_NOTIFY_INTELLIGENT_INFO:I = 0x68000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FCM_DrivingFuncInfo/NtfIntelligentEvasionInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FCM_DRIVINGFUNCINFO_NOTIFY_ISLI_INFO:I = 0x6800001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FCM_DrivingFuncInfo/NtfISLIinfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FCM_DRIVINGFUNCINFO_NOTIFY_LSS_INFO:I = 0x68000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FCM_DrivingFuncInfo/NtfLSSInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FCM_DRIVINGFUNCINFO_NOTIFY_TRAFFIC_SIGN:I = 0x6800001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FCM_DrivingFuncInfo/NtfTrafficSign"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FCM_DRIVINGHMIENV_NOTIFY_DYNAMIC_INFO:I = 0x6800001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FCM_DrivingHmiEnv/NtfDynamicObjectList"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FCM_DRIVINGHMIENV_NOTIFY_LANE_LINE:I = 0x6800001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FCM_DrivingHmiEnv/NtfLaneLineList"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FCM_DRIVINGHMIENV_NOTIFY_STATIC_INFO:I = 0x6800001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FCM_DrivingHmiEnv/NtfStaticObjectList"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_PARKINGUI_NOTIFY_APA_RPA_FCN_OPERATING:I = 0x6800002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ParkingUI/NtfApaRpaFcnOperating"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_PARKINGUI_NOTIFY_HPA_FCN_OPERATING:I = 0x6800002f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ParkingUI/NtfApaRpaFcnOperating"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_PARKINGUI_NOTIFY_MRA_FCN_OPERATING:I = 0x68000031
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ParkingUI/NtfMraFcnOperating"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PARKINGUI_NOTIFY_PARKING_FUNC_MOD_REQ:I = 0x6800002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ParkingUI/NtfParkingFuncModReq"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PARKINGUI_NOTIFY_SVS_STATUS:I = 0x68000032
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ParkingUI/NtfSVSStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PARKINGUI_NOTIFY_VPA_FCN_OPERATING:I = 0x68000030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ParkingUI/NtfApaRpaFcnOperating"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x68

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.SEQUOIA"

.field public static final SERVICE_NAME:Ljava/lang/String; = "sequoia_avm"
