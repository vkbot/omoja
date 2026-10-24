.class public interface abstract Lmega/car/config/SomeIP;
.super Ljava/lang/Object;
.source "SomeIP.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x3e8
    permission = "mega.car.permission.VEHICLE_CONTROL"
.end annotation


# static fields
.field public static final ADS_NTF_FUNC_STATE_HD_SPEED:I = 0x20401070
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final DZ_APA_ENUM_CAL_TRIGGER:I = 0x20401067
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final DZ_APA_FUNC_OPERATE:I = 0x20101063
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final DZ_APA_GET_AVM_DATA:I = 0x23c36d17
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final DZ_APA_PARKING_FUNC_MOD:I = 0x20401062
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final DZ_APA_STRT_AVM_FAIL_STS:I = 0x20101068
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final DZ_APA_STRT_VOICE_CONTROL_INFO:I = 0x20701069
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final DZ_MRA_OPERATION_ID:I = 0x20401065
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TBOX_APP_T:I = 0x20101023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_BEICALL:I = 0x20101030
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_BLE_MODULE_INFO:I = 0x20101007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_CAN_CONFIG:I = 0x20101020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_CELL_INFO:I = 0x20101014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_CERTIFICATE_ISSUED_MARK:I = 0x20101012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_CURREN_MONTH_TALK_TIME:I = 0x20101016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_ECU_VERSION:I = 0x20101019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_IMEI_INFO:I = 0x20101010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_KL15_STATE:I = 0x20401021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TBOX_MIC_STATE:I = 0x20401018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TBOX_NETWORK_STATUS:I = 0x20101004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_OS_RTC:I = 0x20401024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TBOX_OTA_APP_T_CANCEL:I = 0x20401026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TBOX_OTA_APP_T_INSTALL:I = 0x20401000
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TBOX_OTA_APP_T_SET:I = 0x20101025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_OTA_APP_T_SYNC:I = 0x20101027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_OTA_REMOTE_APP_T_CANCEL:I = 0x20101003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_OTA_REMOTE_APP_T_SET:I = 0x20101002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_OTA_REMOTE_INSTALL:I = 0x20101001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_OTA_STATE:I = 0x20101028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_READY:I = 0x20401022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TBOX_SET_CALL_NUMBER:I = 0x20101013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SIM_CARD_INFO:I = 0x20101009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_TSP_CONNECTION_STATE:I = 0x20401017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TBOX_UPLOAD_BEICALL_STS:I = 0x20101029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_VEHICLE_DIAG:I = 0x20401015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TBOX_VEHICLE_DIAG_STATUS:I = 0x20101005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_VERSION_INFO:I = 0x20101006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_VIN:I = 0x20101008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_WORK_MODEL:I = 0x20401011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field
