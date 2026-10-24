.class public interface abstract Lmega/car/config/Power;
.super Ljava/lang/Object;
.source "Power.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Power$PowerEFSMMode;,
        Lmega/car/config/Power$PowerEFSM;,
        Lmega/car/config/Power$ScreenControlEntry;,
        Lmega/car/config/Power$ScreenControlReason;,
        Lmega/car/config/Power$ScreenControlMode;,
        Lmega/car/config/Power$ScreenControlType;,
        Lmega/car/config/Power$ReportEntry;,
        Lmega/car/config/Power$PowerChangeReason;,
        Lmega/car/config/Power$PowerChangeDirection;,
        Lmega/car/config/Power$PowerStatusEnum;,
        Lmega/car/config/Power$ParamsPowerVoltage;,
        Lmega/car/config/Power$UartOpcode;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x2d
    permission = "mega.car.permission.CAR_POWER"
.end annotation


# static fields
.field public static final ANDROID_STATUS_REPORT:I = 0x2d000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "Power/AndroidStatusReport"
        type = Lmega/car/config/Power$ReportEntry;
    .end annotation
.end field

.field public static final BATTERY_HOTWARNING:I = 0x2d000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        subscribe = "Battery/HotWarning"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final CAR_POWER_STR_STAGE:I = 0x2d00000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "car_power_str_stage"
        serializable = false
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final CONTROL_FOR_MODIFY_SCREEN:I = 0x2d000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "ControlScreen/Control/Req"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ENABLE_STR:I = 0x2d000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "Power/EnableSTR"
        subscribe = "Power/EnableSTR/Set"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final IPC_POWER_VOLTAGE:I = 0x2d000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        subscribe = "IPC_POWER_VOLTAGE"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x2d

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.CAR_POWER"

.field public static final POWER_EFSM_MODE:I = 0x2d000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        subscribe = "Power/EFSM/mode"
        type = Lmega/car/config/Power$PowerEFSMMode;
    .end annotation
.end field

.field public static final SCREEN_CONTROL_REQUEST:I = 0x2d000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "ControlScreen/ScreenLight/req"
        type = Lmega/car/config/Power$ScreenControlEntry;
    .end annotation
.end field

.field public static final SCREEN_CONTROL_SET:I = 0x2d000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        subscribe = "ControlScreen/ScreenLight/Set"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field public static final SERVICE_NAME:Ljava/lang/String; = "Power"

.field public static final SET_STR_EXPIRATION_DAYS:I = 0x2d000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "Power/STRExpirationDays"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final UART_RPC_SVC_PM_REQ:I = 0x2d00000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "uartrpc_svc/pm/req"
        serializable = false
        type = [B
    .end annotation
.end field

.field public static final UART_RPC_SVC_PM_RESP:I = 0x2d00000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        serializable = false
        subscribe = "uartrpc_svc/pm/resp"
        type = [B
    .end annotation
.end field
