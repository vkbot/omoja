.class public interface abstract Lmega/car/config/VehicleMotion;
.super Ljava/lang/Object;
.source "VehicleMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/VehicleMotion$HillDescentControlStatus;,
        Lmega/car/config/VehicleMotion$ParamsEspStatus;,
        Lmega/car/config/VehicleMotion$ToneMode;,
        Lmega/car/config/VehicleMotion$PARAMS_PARKING_BRAKE_EPB;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0xa
    permission = "mega.car.permission.VEHICLE_MOTION"
.end annotation


# static fields
.field public static final ID_ACOUSTIC_VEH_ALERT:I = 0xa000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/LowSpeedPedestrianAlarm/Set"
        subscribe = "BodyInfo/LowSpeedPedestrianAlarm"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_BRAKE_CTRL_HILL_DESCENT:I = 0xa000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/CtrlHillDescent/Set"
        subscribe = "BodyInfo/CtrlHillDescent"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PARKING_BRAKE_EPB:I = 0xa000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EPB/Set"
        subscribe = "BodyInfo/EPB"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PARKING_BRAKE_EPB_ON_AVA:I = 0xa000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/EPBState/Set"
        subscribe = "BodyInfo/EPBState"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PARKING_BRAKE_TOW_MODE:I = 0xa000002

.field public static final ID_PARKING_BRAKE_TOW_ON_AVA:I = 0xa000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/TrailerMode/Set"
        subscribe = "BodyInfo/TrailerMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SAFE_AVA_TONE_TYPE_CONFIG:I = 0xa000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/LowSpeedPedestrianAlarmType/Set"
        subscribe = "BodyInfo/LowSpeedPedestrianAlarmType"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SAFE_CHARGE_TONE_CONFIG:I = 0xa00000a

.field public static final ID_SAFE_ESP_ENABLE:I = 0xa000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/ESC/Set"
        subscribe = "BodyInfo/ESC"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SAFE_ESP_FAULT:I = 0xa00000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Fault/ESC/Set"
        subscribe = "Fault/ESC"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SAFE_ESP_STATE:I = 0xa00000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Telltale/ESC/Status/Set"
        subscribe = "Telltale/ESC/Status"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SAFE_WELCOME_TONE_CONFIG:I = 0xa00000b

.field public static final MGR_ID:I = 0xa
