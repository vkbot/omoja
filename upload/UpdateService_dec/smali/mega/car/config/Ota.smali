.class public interface abstract Lmega/car/config/Ota;
.super Ljava/lang/Object;
.source "Ota.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Ota$TaskStatus;,
        Lmega/car/config/Ota$TaskType;,
        Lmega/car/config/Ota$UserOperationTrgger;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x13
    permission = "mega.car.permission.OTA"
.end annotation


# static fields
.field public static final ID_CURRENT_UPDATE_TASK_INFO:I = 0x13000007

.field public static final ID_DISPUPDA_NOTSATISFY:I = 0x13000004

.field public static final ID_DOWNLOAD_PERCENT:I = 0x1300000e

.field public static final ID_EXPECTED_UPDATE_TIME:I = 0x1300000d

.field public static final ID_SCHEDULE_TIME_REQ:I = 0x13000002

.field public static final ID_TASK_STATUS:I = 0x1300000c

.field public static final ID_TASK_TYPE:I = 0x1300000b

.field public static final ID_UPDATE_FAILED_INFO:I = 0x13000009

.field public static final ID_UPDATE_RETRY:I = 0x13000003

.field public static final ID_UPDATE_RETRY_ENABLEST:I = 0x1300000a

.field public static final ID_UPDATE_SUCCESS_INFO:I = 0x13000008

.field public static final ID_UPDATING_INFO:I = 0x13000010

.field public static final ID_UPDATING_PERCENT:I = 0x1300000f

.field public static final ID_USER_OPERATION_TRGGER:I = 0x13000001

.field public static final ID_VEHICLE_VERSION:I = 0x13000005

.field public static final ID_VEHICLE_VERSION_INFO:I = 0x13000006

.field public static final MGR_ID:I = 0x13
