.class public interface abstract Lmega/car/config/TBoxSignal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x6a
    permission = "mega.car.permission.SEQUOIA"
.end annotation


# static fields
.field public static final MGR_ID:I = 0x6a

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.SEQUOIA"

.field public static final TBOX_5G_SWITCH:I = 0x6a000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "TBox/5GSwitch/Set"
        subscribe = "TBox/5GSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TBOX_BEICALL_UPLOAD_CALL_STATUS:I = 0x6a000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/CallStatus"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_GNSSINFO_GNSS_INFO:I = 0x6a000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/GnssInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SEND_UNIT:I = 0x6a000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "TBox/SendUnit/Response"
        subscribe = "TBox/SendUnit/Request"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_ANT_STATE:I = 0x6a000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/AntState"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_BLE_MODULE_INFO:I = 0x6a000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/BleModuleInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_CALL_NUMBER_LIST:I = 0x6a000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/CallNumberList"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_CAN_CONFIG:I = 0x6a00000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/CanConfig"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_CELL_INFO:I = 0x6a000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/CellInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_CERTIFICATE_ISSUED_MARK:I = 0x6a000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/CertificateIssuedMark"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_CURRENT_MONTH_TALK_TIME:I = 0x6a00000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/CurrentMonthTalkTime"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_ECU_VERSION:I = 0x6a00000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/EcuVersion"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_IMEI_INFO:I = 0x6a000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/ImeiInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_KL15_STATE:I = 0x6a00000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/Kl15State"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_MIC_STATE:I = 0x6a00000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/MicState"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_NETWORD_STATE:I = 0x6a000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/NetworkState"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_SET_CALL_NUMBER:I = 0x6a000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "TBox/SetCallNumber"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_SIM_CARD_INFO:I = 0x6a000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/SimCardInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_SPK_STATE:I = 0x6a000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/SpkState"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_TBOX_VERSION_INFO:I = 0x6a000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/VersionInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_TSP_CONNECTION_STATE:I = 0x6a00000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/TspConnectionState"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_SYSTEMINFO_WORK_MODEL:I = 0x6a000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        topic = "TBox/WorkModel"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TBOX_V2X_SWITCH:I = 0x6a000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "TBox/V2XSwitch/Set"
        subscribe = "TBox/V2XSwitch"
        type = Ljava/lang/Integer;
    .end annotation
.end field
