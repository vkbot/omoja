.class public Lcom/mega/nexus/os/MegaScreenManager;
.super Lcom/mega/nexus/MegaNexusManager;
.source "MegaScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/os/MegaScreenManager$Holder;
    }
.end annotation


# static fields
.field public static final REQUEST_ACCEPTED:I = 0x1

.field public static final REQUEST_REJECTED:I = 0x2

.field public static final REQUEST_SUCCESSED:I = 0x0

.field public static final SCREENID_CEILING:I = 0x6

.field public static final SCREENID_HUD:I = 0x4

.field public static final SCREENID_INSTRUMENT:I = 0x2

.field public static final SCREENID_LEFT_REAR:I = 0x7

.field public static final SCREENID_MAIN:I = 0x0

.field public static final SCREENID_MID_REAR:I = 0x9

.field public static final SCREENID_PASSENGER:I = 0x1

.field public static final SCREENID_RIGHT_REAR:I = 0x8

.field public static final SCREENID_VEHICLE_CONTROL:I = 0x3

.field public static final SCREENID_VPA:I = 0x5

.field public static final STATE_OFF:I = 0x0

.field public static final STATE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final USAGE_APA:I = 0x5

.field public static final USAGE_BTPHONE:I = 0x4

.field public static final USAGE_ECALL:I = 0x2b

.field public static final USAGE_ERROR_RESET:I = 0x22

.field public static final USAGE_EYE_WAKSLP:I = 0x2d

.field public static final USAGE_GESTURE_CAMERA:I = 0x16

.field public static final USAGE_GESTURE_CANCEL:I = 0x18

.field public static final USAGE_GESTURE_CUSTOM:I = 0x1a

.field public static final USAGE_GESTURE_DYNAMIC1:I = 0x1b

.field public static final USAGE_GESTURE_DYNAMIC2:I = 0x1c

.field public static final USAGE_GESTURE_DYNAMIC3:I = 0x1d

.field public static final USAGE_GESTURE_MUTE:I = 0x19

.field public static final USAGE_GESTURE_OK:I = 0x17

.field public static final USAGE_HIGH_TEMPERATURE:I = 0x25

.field public static final USAGE_HIGH_VOLTAGE:I = 0x24

.field public static final USAGE_KEY_APA:I = 0x12

.field public static final USAGE_KEY_CAMERA:I = 0xb

.field public static final USAGE_KEY_CRUICING:I = 0x7

.field public static final USAGE_KEY_DIRECTION:I = 0xf

.field public static final USAGE_KEY_DRIVEMODE:I = 0x13

.field public static final USAGE_KEY_MODE:I = 0x8

.field public static final USAGE_KEY_PHONE:I = 0xd

.field public static final USAGE_KEY_PLAY:I = 0x10

.field public static final USAGE_KEY_RESET:I = 0x11

.field public static final USAGE_KEY_SCREENOFF:I = 0x2e

.field public static final USAGE_KEY_SOUNDSOURCE:I = 0x9

.field public static final USAGE_KEY_TEAM:I = 0xa

.field public static final USAGE_KEY_VOICE:I = 0xe

.field public static final USAGE_KEY_WARNING:I = 0x14

.field public static final USAGE_KEY_WECHAT:I = 0xc

.field public static final USAGE_LOW_VOLTAGE:I = 0x23

.field public static final USAGE_MESSAGE:I = 0x15

.field public static final USAGE_NOA:I = 0x29

.field public static final USAGE_OTA:I = 0x28

.field public static final USAGE_POWER_MODE:I = 0x2a

.field public static final USAGE_RADAR:I = 0x6

.field public static final USAGE_RESET:I = 0x2c

.field public static final USAGE_SOUND_TTS:I = 0x1f

.field public static final USAGE_SOUND_VEHICLE:I = 0x1e

.field public static final USAGE_TOUCH_CEILING:I = 0x31

.field public static final USAGE_TOUCH_HUD:I = 0x2f

.field public static final USAGE_TOUCH_LEFT_REAR:I = 0x32

.field public static final USAGE_TOUCH_MAIN:I = 0x20

.field public static final USAGE_TOUCH_MID_REAR:I = 0x34

.field public static final USAGE_TOUCH_PASSENGER:I = 0x21

.field public static final USAGE_TOUCH_RIGHT_REAR:I = 0x33

.field public static final USAGE_TOUCH_VPA:I = 0x30

.field public static final USAGE_USB_INSERT:I = 0x26

.field public static final USAGE_USB_UPGRADE:I = 0x27

.field public static final USAGE_VOICE_AWAKEN:I = 0x1

.field public static final USAGE_VOICE_EXEMPT_AWAKEN:I = 0x3

.field public static final USAGE_VOICE_SCREENON:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 350
    const-class v0, Lcom/mega/nexus/os/MegaScreenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/nexus/os/MegaScreenManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Lcom/mega/nexus/MegaNexusManager;-><init>()V

    .line 358
    return-void
.end method

.method synthetic constructor <init>(Lcom/mega/nexus/os/MegaScreenManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mega/nexus/os/MegaScreenManager$1;

    .line 14
    invoke-direct {p0}, Lcom/mega/nexus/os/MegaScreenManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mega/nexus/os/MegaScreenManager;
    .locals 1

    .line 363
    invoke-static {}, Lcom/mega/nexus/os/MegaScreenManager$Holder;->access$100()Lcom/mega/nexus/os/MegaScreenManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrentScreenControlUsage(I)I
    .locals 3
    .param p1, "displayid"    # I

    .line 429
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/os/MegaScreenManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->getCurrentScreenControlUsage(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/mega/nexus/os/MegaScreenManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public getScreenState(I)I
    .locals 3
    .param p1, "screenID"    # I

    .line 404
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/os/MegaScreenManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->getScreenState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/mega/nexus/os/MegaScreenManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public registerScreenStateChangeListener(Lcom/mega/nexus/os/IScreenStateChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mega/nexus/os/IScreenStateChangeListener;

    .line 413
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/os/MegaScreenManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->registerScreenStateChangeListener(Lcom/mega/nexus/os/IScreenStateChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/mega/nexus/os/MegaScreenManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public releaseScreenOff(II)V
    .locals 3
    .param p1, "usage"    # I
    .param p2, "screenID"    # I

    .line 396
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/os/MegaScreenManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mega/nexus/IMegaNexusManager;->releaseScreenOff(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/mega/nexus/os/MegaScreenManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public releaseScreenOn(II)V
    .locals 3
    .param p1, "usage"    # I
    .param p2, "screenID"    # I

    .line 378
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/os/MegaScreenManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mega/nexus/IMegaNexusManager;->releaseScreenOn(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/mega/nexus/os/MegaScreenManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public requestScreenOff(IILcom/mega/nexus/os/IScreenRequestListener;)V
    .locals 3
    .param p1, "usage"    # I
    .param p2, "screenID"    # I
    .param p3, "listener"    # Lcom/mega/nexus/os/IScreenRequestListener;

    .line 388
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/os/MegaScreenManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1, p3, p2}, Lcom/mega/nexus/IMegaNexusManager;->requestScreenOff(ILcom/mega/nexus/os/IScreenRequestListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/mega/nexus/os/MegaScreenManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public requestScreenOn(IILcom/mega/nexus/os/IScreenRequestListener;)V
    .locals 3
    .param p1, "usage"    # I
    .param p2, "screenID"    # I
    .param p3, "listener"    # Lcom/mega/nexus/os/IScreenRequestListener;

    .line 370
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/os/MegaScreenManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1, p3, p2}, Lcom/mega/nexus/IMegaNexusManager;->requestScreenOn(ILcom/mega/nexus/os/IScreenRequestListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/mega/nexus/os/MegaScreenManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterScreenStateChangeListener(Lcom/mega/nexus/os/IScreenStateChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mega/nexus/os/IScreenStateChangeListener;

    .line 421
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/os/MegaScreenManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->unregisterScreenStateChangeListener(Lcom/mega/nexus/os/IScreenStateChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/mega/nexus/os/MegaScreenManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
