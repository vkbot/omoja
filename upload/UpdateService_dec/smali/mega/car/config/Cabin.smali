.class public interface abstract Lmega/car/config/Cabin;
.super Ljava/lang/Object;
.source "Cabin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Cabin$SeatAndRearMirrorPosition;,
        Lmega/car/config/Cabin$MirrorTowards;,
        Lmega/car/config/Cabin$MirrorPosition;,
        Lmega/car/config/Cabin$MirrorMemoryResult;,
        Lmega/car/config/Cabin$MirrorFold;,
        Lmega/car/config/Cabin$MirrorSelect;,
        Lmega/car/config/Cabin$MirrorAngleSaveCmd;,
        Lmega/car/config/Cabin$ParamsMirrorDimming;,
        Lmega/car/config/Cabin$ParamsMirrorFolding;,
        Lmega/car/config/Cabin$ParamsMirrorDipping;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x1
    permission = "mega.car.permission.CARCABIN"
.end annotation


# static fields
.field public static final ID_FIRE_MODE:I = 0x1000015

.field public static final ID_ICE_MODE:I = 0x1000016

.field public static final ID_MIRROR_MEM_RESULT:I = 0x1000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/MirrorMemResult/Set"
        subscribe = "VehicleWindow/MirrorMemResult"
        type = [I
    .end annotation
.end field

.field public static final ID_MIRROR_REQ_ANGLE_READ_REQ:I = 0x1000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirrorMemoryRead/Set"
        subscribe = "VehicleWindow/RearViewMirrorMemoryRead"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MIRROR_REQ_ANGLE_SAVE_REQ:I = 0x1000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirrorMemory/Set"
        subscribe = "VehicleWindow/RearViewMirrorMemory"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_MIRROR_SELECT:I = 0x100000f

.field public static final ID_MIRROR_SYNC_CLOUDDATA:I = 0x1000017

.field public static final ID_REAR_MIRROR_POSITION_ADJUST:I = 0x100001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearMirrorPositionAdjust/Set"
        subscribe = "VehicleWindow/RearMirrorPositionAdjust"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_MIRROR_ROTATION_ADJUST:I = 0x100001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearMirrorRotationAdjust/Set"
        subscribe = "VehicleWindow/RearMirrorRotationAdjust"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_ACOUST:I = 0x1000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirrorAcoust/Set"
        subscribe = "VehicleWindow/RearViewMirrorAcoust"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_ACOUST_LEFT:I = 0x100002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirrorAcoust/Left/Set"
        subscribe = "VehicleWindow/RearViewMirrorAcoust/Left"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_ACOUST_RIGHT:I = 0x100002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirrorAcoust/Right/Set"
        subscribe = "VehicleWindow/RearViewMirrorAcoust/Right"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_AUTO_DIPPING:I = 0x1000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirrorAutoTurnDown/Set"
        subscribe = "VehicleWindow/RearViewMirrorAutoTurnDown"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_AUTO_FOLDING:I = 0x1000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirrorAutoFold/Set"
        subscribe = "VehicleWindow/RearViewMirrorAutoFold"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_DIMMING:I = 0x1000008

.field public static final ID_REAR_VIEW_MIRROR_FOLD_CONTROL:I = 0x1000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirrorFold/Set"
        subscribe = "VehicleWindow/RearViewMirrorFold"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_H_POS:I = 0x1000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirrorHorizontalPosition/Set"
        subscribe = "VehicleWindow/RearViewMirrorHorizontalPosition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_H_POS_LEFT:I = 0x1000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirrorHorizontalPosition/Left/Set"
        subscribe = "VehicleWindow/RearViewMirrorHorizontalPosition/Left"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_H_POS_RIGHT:I = 0x1000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirrorHorizontalPosition/Right/Set"
        subscribe = "VehicleWindow/RearViewMirrorHorizontalPosition/Right"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_STATUS:I = 0x1000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirror/Set"
        subscribe = "VehicleWindow/RearViewMirror"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_STATUS_LEFT:I = 0x1000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirror/Left/Set"
        subscribe = "VehicleWindow/RearViewMirror/Left"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_STATUS_RIGHT:I = 0x1000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirror/Right/Set"
        subscribe = "VehicleWindow/RearViewMirror/Right"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_V_POS:I = 0x1000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirrorVerticalPosition/Set"
        subscribe = "VehicleWindow/RearViewMirrorVerticalPosition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_V_POS_LEFT:I = 0x1000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirrorVerticalPosition/Left/Set"
        subscribe = "VehicleWindow/RearViewMirrorVerticalPosition/Left"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_VIEW_MIRROR_V_POS_RIGHT:I = 0x1000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearViewMirrorVerticalPosition/Right/Set"
        subscribe = "VehicleWindow/RearViewMirrorVerticalPosition/Right"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RELATE_KEY_OR_FACE_ID:I = 0x1000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RelateKeyOrFaceID/Set"
        subscribe = "VehicleWindow/RelateKeyOrFaceID"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_AND_REAR_MIRROR_ENABLE_SAVE:I = 0x1000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/SeatAndRearMirrorEnableSave/Set"
        subscribe = "VehicleWindow/SeatAndRearMirrorEnableSave"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_AND_REAR_MIRROR_POSITION:I = 0x100001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "VehicleWindow/SeatAndRearMirrorPosition/Set"
        subscribe = "VehicleWindow/SeatAndRearMirrorPosition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_AND_REAR_MIRROR_POSITION_STORE:I = 0x1000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/SeatAndRearMirrorPositionStore/Set"
        subscribe = "VehicleWindow/SeatAndRearMirrorPositionStore"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_FORE_BACK_ADJUST:I = 0x100001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/SeatForeBackAdjust/Set"
        subscribe = "VehicleWindow/SeatForeBackAdjust"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_POSITION_AND_KEY:I = 0x1000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/SeatPositionAndKey/Set"
        subscribe = "VehicleWindow/SeatPositionAndKey"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_ROTATION_ANGLE_ADJUST:I = 0x100001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/SeatRotationAngleAdjust/Set"
        subscribe = "VehicleWindow/SeatRotationAngleAdjust"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SEAT_UP_DOWN_ADJUST:I = 0x100001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/SeatUpDownAdjust/Set"
        subscribe = "VehicleWindow/SeatUpDownAdjust"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_THERMOSTATIC_COCKPIT:I = 0x1000011

.field public static final ID_THERMOSTATIC_COCKPIT_NOTICE:I = 0x1000012

.field public static final ID_THERMOSTATIC_COCKPIT_TEXT:I = 0x1000013

.field public static final ID_WINTER_MODE:I = 0x1000014

.field public static final MGR_ID:I = 0x1
