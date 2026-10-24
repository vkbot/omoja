.class public interface abstract Lmega/car/config/Windows;
.super Ljava/lang/Object;
.source "Windows.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/Windows$InputSunRoof;,
        Lmega/car/config/Windows$OutSunRoof;,
        Lmega/car/config/Windows$ParamsSunShadeState;,
        Lmega/car/config/Windows$ParamsWindowState;,
        Lmega/car/config/Windows$ParamsWindowControl;,
        Lmega/car/config/Windows$ParamsTopWindowPosition;,
        Lmega/car/config/Windows$ParamsSunroofOpenReminderStatus;,
        Lmega/car/config/Windows$ParamsSunRoofShadeButtonStatus;,
        Lmega/car/config/Windows$ParamsSunshadeStatus;,
        Lmega/car/config/Windows$ParamsSunroofStatus;,
        Lmega/car/config/Windows$ParamsOpenClose;,
        Lmega/car/config/Windows$WipeWashMode;,
        Lmega/car/config/Windows$ParamsWindowMode;,
        Lmega/car/config/Windows$ParamsWindowPos;,
        Lmega/car/config/Windows$RoofControlReqParams;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0xc
    permission = "mega.car.permission.CAR_WINDOWS"
.end annotation


# static fields
.field public static final ID_FRONT_LEFT_WINDOW_STATE:I = 0xc00001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/FrontLeftWindow/Set"
        subscribe = "VehicleWindow/FrontLeftWindow"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_FRONT_RIGHT_WINDOW_STATE:I = 0xc00001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/FrontRightWindow/Set"
        subscribe = "VehicleWindow/FrontRightWindow"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_LEFT_WINDOW_STATE:I = 0xc000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearLeftWindow/Set"
        subscribe = "VehicleWindow/RearLeftWindow"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_REAR_RIGHT_WINDOW_STATE:I = 0xc000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RearRightWindow/Set"
        subscribe = "VehicleWindow/RearRightWindow"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_ROOF_REQ_CONTROL:I = 0xc000019

.field public static final ID_SUNSHADE:I = 0xc000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/SunShade/Set"
        subscribe = "VehicleWindow/SunShade"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SUNSHADE_FRONT:I = 0xc000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/SunShade/Front/Set"
        subscribe = "VehicleWindow/SunShade/Front"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SUNSHADE_REAR:I = 0xc000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/SunShade/Rear/Set"
        subscribe = "VehicleWindow/SunShade/Rear"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SUNSHADE_TOP:I = 0xc00002a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/SunShade/Top/Set"
        subscribe = "VehicleWindow/SunShade/Top"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SUN_ROOF_WINDOW_STATE:I = 0xc000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/SunRoofPosition/Set"
        subscribe = "VehicleWindow/SunRoofPosition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_TOP_WINDOW:I = 0xc00001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/TopWindow/Set"
        subscribe = "VehicleWindow/TopWindow"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WASH_WIPER_AUTO_WIPER_CFG:I = 0xc000018

.field public static final ID_WASH_WIPER_FRONT_WASH_EXTRA_MODE:I = 0xc00000a

.field public static final ID_WASH_WIPER_SERVICE_MODE:I = 0xc00000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "BodyInfo/WiperServiceMode/Set"
        subscribe = "BodyInfo/WiperServiceMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WASH_WIPER_STS_AUTO_FRONT_MODE:I = 0xc00000d

.field public static final ID_WASH_WIPER_STS_LIQUID_LACK_STATUS:I = 0xc00000e

.field public static final ID_WASH_WIPER_STS_REAR_STATUS:I = 0xc00000f

.field public static final ID_WASH_WIPER_WASH_AUTO_REAR_MODE:I = 0xc00000c

.field public static final ID_WINDOW:I = 0xc000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/Window/Set"
        subscribe = "VehicleWindow/Window"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_ALL:I = 0xc00001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/Window/All/Set"
        subscribe = "VehicleWindow/Window/All"
        type = [I
    .end annotation
.end field

.field public static final ID_WINDOW_FRONTLEFT:I = 0xc000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/Window/FrontLeft/Set"
        subscribe = "VehicleWindow/Window/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_FRONTRIGHT:I = 0xc000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/Window/FrontRight/Set"
        subscribe = "VehicleWindow/Window/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_LOCK:I = 0xc000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/WindowLock/Set"
        subscribe = "VehicleWindow/WindowLock"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_LOCK_FRONTLEFT:I = 0xc00002b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/WindowLock/FrontLeft/Set"
        subscribe = "VehicleWindow/WindowLock/FrontLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_LOCK_FRONTRIGHT:I = 0xc00002c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/WindowLock/FrontRight/Set"
        subscribe = "VehicleWindow/WindowLock/FrontRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_LOCK_REARLEFT:I = 0xc00002d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/WindowLock/RearLeft/Set"
        subscribe = "VehicleWindow/WindowLock/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_LOCK_REARRIGHT:I = 0xc00002e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/WindowLock/RearRight/Set"
        subscribe = "VehicleWindow/WindowLock/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_MODE:I = 0xc000009

.field public static final ID_WINDOW_REARLEFT:I = 0xc000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/Window/RearLeft/Set"
        subscribe = "VehicleWindow/Window/RearLeft"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_REARRIGHT:I = 0xc000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/Window/RearRight/Set"
        subscribe = "VehicleWindow/Window/RearRight"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_RLS_CLOSE:I = 0xc00001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/RlsClose/Set"
        subscribe = "VehicleWindow/RlsClose"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_SET_LOKUP:I = 0xc00001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/SetLookup/Set"
        subscribe = "VehicleWindow/SetLookup"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_WINDOW_TOP:I = 0xc000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "VehicleWindow/Window/Top/Set"
        subscribe = "VehicleWindow/Window/Top"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0xc
