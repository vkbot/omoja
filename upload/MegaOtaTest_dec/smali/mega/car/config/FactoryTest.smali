.class public interface abstract Lmega/car/config/FactoryTest;
.super Ljava/lang/Object;
.source "FactoryTest.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x2b
    permission = "mega.car.permission.FACTORY_TEST"
.end annotation


# static fields
.field public static final ID_AMP_A2B_STATUS:I = 0x2b000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "AMP/A2BStatus/Set"
        subscribe = "AMP/A2BStatus"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_CONTROL_RADIO:I = 0x2b000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "controlRadio/req/Set"
        serializable = false
        subscribe = "controlRadio/req"
        type = [B
    .end annotation
.end field

.field public static final ID_CONTROL_RGB_SHOW:I = 0x2b000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "DidControlRgbShow/Set"
        subscribe = "DidControlRgbShow"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_GET_BATTERY_INFO:I = 0x2b000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EngineeringMode/Battery/Set"
        subscribe = "EngineeringMode/Battery"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_GET_VERSION:I = 0x2b000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "FactoryTest/ICScreenTest/Set"
        subscribe = "FactoryTest/ICScreenTest"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_PLAY_STARTUP_VIDEO:I = 0x2b000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "IC/PlayStartupVideo/Set"
        subscribe = "IC/PlayStartupVideo"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RIGHT_KEY_START_PAUSE:I = 0x2b000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "EngineeringMode/KeyInput/MFS_Start_Pause/Set"
        subscribe = "EngineeringMode/KeyInput/MFS_Start_Pause"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SCREEN_INFO:I = 0x2b000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "Screen/Info/Set"
        subscribe = "Screen/Info"
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x2b
