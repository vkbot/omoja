.class public interface abstract Lmega/car/config/LocalEvent;
.super Ljava/lang/Object;
.source "LocalEvent.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x2f
    permission = "mega.car.permission.LOCAL_EVENT"
    source = 0x4
.end annotation


# static fields
.field public static final ID_ANDROID_POWER_STATUS:I = 0x2f000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        type = Lmega/car/config/Power$ReportEntry;
    .end annotation
.end field

.field public static final ID_APP_SCREEN_ON_OFF_EVENT:I = 0x2f00000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_APP_SECOND_SCREEN_ON_OFF_EVENT:I = 0x2f00000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_AVM_CALIBRATION_RESULT:I = 0x2f000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CHECK_QNX_LICENSE:I = 0x2f000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EMERGENCY_RECORD_STATUS:I = 0x2f000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_EMERGENCY_RECORD_SWITCH:I = 0x2f000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_HEAD_LIGHT_EVENT:I = 0x2f000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ONEKEY_POWEROFF_EVENT:I = 0x2f000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SCREEN_ON_OFF_ACOUST:I = 0x2f000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SCREEN_ON_OFF_EVENT:I = 0x2f000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x2f
