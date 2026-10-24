.class public interface abstract Lmega/car/config/SequoiaMap;
.super Ljava/lang/Object;
.source "SequoiaMap.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x6b
    name = "sequoia"
    permission = "mega.car.permission.SEQUOIA"
.end annotation


# static fields
.field public static final ID_ADCC_AOMDB_GET_PACKAGE_DATA:I = 0x6b000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        serializable = false
        topic = "ADCC_AomMMSt/GetPackageData"
        type = [B
    .end annotation
.end field

.field public static final ID_ADCC_AOMDB_NOTIFY_ADSDB_INFO:I = 0x6b000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        serializable = false
        topic = "ADCC_AomMMSt/NotifyADSDBInfo"
        type = [B
    .end annotation
.end field

.field public static final ID_ADCC_AOMMMST_NOTIFY_EXTMMRESWLNK:I = 0x6b000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_AomMMSt/NotifyExtMMResWLnk"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_RTMM_NOTIFY_RT_MATCH_RES:I = 0x6b000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_RtMM/NotifyRtMatchRes"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_RTMM_SET_ADAS_V2_INFO:I = 0x6b000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_RtMM/SetAdasV2Info"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ADCC_RTMM_START_ROUTE_MATCHING:I = 0x6b000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ADCC_RtMM/StartRouteMatching"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_FCM_UUID_GET_UUID_CODE:I = 0x6b000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "FCM_UUID/GetUUIDCodeResponse"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final ID_ICC_AOM_GET_RENDER_DB_INFO:I = 0x6b000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        serializable = false
        topic = "ICC_Aom/GetRenderDBInfo"
        type = [B
    .end annotation
.end field

.field public static final ID_ICC_SDMAPINFO_NOTIFY_SD_MAP_INFO:I = 0x6b000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        topic = "ICC_SDmapInfo/NtfSDmapInfo"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x6b

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.SEQUOIA"

.field public static final SERVICE_NAME:Ljava/lang/String; = "sequoia"
