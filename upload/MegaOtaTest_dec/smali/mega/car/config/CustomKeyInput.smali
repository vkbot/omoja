.class public interface abstract Lmega/car/config/CustomKeyInput;
.super Ljava/lang/Object;
.source "CustomKeyInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/CustomKeyInput$PressMode;,
        Lmega/car/config/CustomKeyInput$KeyCodeEnum;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x2c
    permission = "mega.car.permission.KeyInput"
.end annotation


# static fields
.field public static final ID_CURRENT_VIEW_REQUEST:I = 0x2c000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "KeyInput/CurrentView/Set"
        subscribe = "KeyInput/CurrentView"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_LEFT_KEY_CUSTOM:I = 0x2c000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "KeyInput/MFS_Customize/Set"
        subscribe = "KeyInput/MFS_Customize"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RIGHT_KEY_FUNCTION_CHANGE:I = 0x2c00000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "KeyInput/MFS_ICMFctChg/Set"
        subscribe = "KeyInput/MFS_ICMFctChg"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RIGHT_KEY_NEXT:I = 0x2c000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "KeyInput/MFS_SeekDown/Set"
        subscribe = "KeyInput/MFS_SeekDown"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RIGHT_KEY_PLAY:I = 0x2c00000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "KeyInput/MFS_Start_Pause/Set"
        subscribe = "KeyInput/MFS_Start_Pause"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RIGHT_KEY_PREVIOUS:I = 0x2c000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "KeyInput/MFS_SeekUp/Set"
        subscribe = "KeyInput/MFS_SeekUp"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RIGHT_KEY_VOICE_ASSIST:I = 0x2c00000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "KeyInput/MFS_VoiceRecognition/Set"
        subscribe = "KeyInput/MFS_VoiceRecognition"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RIGHT_KEY_VOLUME_DOWN:I = 0x2c000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "KeyInput/MFS_VolumeDown/Set"
        subscribe = "KeyInput/MFS_VolumeDown"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_RIGHT_KEY_VOLUME_UP:I = 0x2c000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "KeyInput/MFS_VolumeUp/Set"
        subscribe = "KeyInput/MFS_VolumeUp"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SCREEN_TOUCH_AVM:I = 0x2c00000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "KeyInput/SCREEN_TOUCH_AVM/Set"
        subscribe = "KeyInput/SCREEN_TOUCH_AVM"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SCREEN_TOUCH_ESP:I = 0x2c00000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "KeyInput/SCREEN_TOUCH_ESP/Set"
        subscribe = "KeyInput/SCREEN_TOUCH_ESP"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_SCREEN_TOUCH_HDC:I = 0x2c00000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        publish = "KeyInput/SCREEN_TOUCH_HDC/Set"
        subscribe = "KeyInput/SCREEN_TOUCH_HDC"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_STEER_WHEEL_CONTROL_MODE:I = 0x2c000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "KeyInput/SteerWheelControlMode/Set"
        subscribe = "KeyInput/SteerWheelControlMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final ID_STEER_WHEEL_VIEW_CHOOSE_MODE:I = 0x2c000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        publish = "KeyInput/ViewChooseMode/Set"
        subscribe = "KeyInput/ViewChooseMode"
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x2c

.field public static final UNSUPPORTED_CODE:I = -0x1
