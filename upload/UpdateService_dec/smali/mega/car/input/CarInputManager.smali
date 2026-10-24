.class public final Lmega/car/input/CarInputManager;
.super Lmega/car/CarManagerBase;
.source "CarInputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/input/CarInputManager$CallbackHolder;,
        Lmega/car/input/CarInputManager$ICarInputCallbackImpl;,
        Lmega/car/input/CarInputManager$LevelEnum;,
        Lmega/car/input/CarInputManager$InputTypeEnum;,
        Lmega/car/input/CarInputManager$CarInputCaptureCallback;
    }
.end annotation


# static fields
.field public static final INPUT_TYPE_ALL_INPUTS:I = 0x1

.field public static final INPUT_TYPE_CUSTOM_INPUT_EVENT:I = 0xc8

.field public static final INPUT_TYPE_SYSTEM_KEYS:I = 0x64

.field private static final INVALID_LEVEL:I = -0x2

.field public static final LEVEL_PRIORITY_DEFAULT:I = 0x0

.field public static final LEVEL_PRIORITY_FORCE:I = -0x1

.field public static final LEVEL_PRIORITY_HIGH:I = 0x1

.field public static final LEVEL_PRIORITY_MAX:I = 0x2

.field public static final LEVEL_PRIORITY_TEMPORARY:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

.field private mCurrentLevel:I

.field private final mLock:Ljava/lang/Object;

.field private mLongPressTimeout:I

.field private mReleaseMethod2:Ljava/lang/reflect/Method;

.field private final mService:Lmega/car/input/ICarInput;

.field private final mServiceCallback:Lmega/car/input/ICarInputCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lmega/car/input/CarInputManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmega/car/MegaCar;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "car"    # Lmega/car/MegaCar;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 165
    invoke-direct {p0, p1}, Lmega/car/CarManagerBase;-><init>(Lmega/car/MegaCar;)V

    .line 149
    new-instance v0, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;-><init>(Lmega/car/input/CarInputManager;Lmega/car/input/CarInputManager$1;)V

    iput-object v0, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    .line 153
    iput-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 158
    const/4 v0, -0x2

    iput v0, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    .line 159
    iput-object v1, p0, Lmega/car/input/CarInputManager;->mReleaseMethod2:Ljava/lang/reflect/Method;

    .line 166
    invoke-static {p2}, Lmega/car/input/ICarInput$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/input/ICarInput;

    move-result-object v0

    iput-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    .line 167
    invoke-virtual {p0}, Lmega/car/input/CarInputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 168
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    .line 167
    const-string v2, "custom_long_press_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmega/car/input/CarInputManager;->mLongPressTimeout:I

    .line 169
    invoke-virtual {p0}, Lmega/car/input/CarInputManager;->checkReleaseMethod2()V

    .line 170
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmega/car/input/CarInputManager;Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lmega/car/input/CarInputManager;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .line 43
    invoke-direct {p0, p1}, Lmega/car/input/CarInputManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$300(Lmega/car/input/CarInputManager;Lmega/car/input/CustomInputEvent;)V
    .locals 0
    .param p0, "x0"    # Lmega/car/input/CarInputManager;
    .param p1, "x1"    # Lmega/car/input/CustomInputEvent;

    .line 43
    invoke-direct {p0, p1}, Lmega/car/input/CarInputManager;->dispatchCustomInputEvent(Lmega/car/input/CustomInputEvent;)V

    return-void
.end method

.method static synthetic access$400(Lmega/car/input/CarInputManager;Lmega/car/input/CustomRotaryEvent;)V
    .locals 0
    .param p0, "x0"    # Lmega/car/input/CarInputManager;
    .param p1, "x1"    # Lmega/car/input/CustomRotaryEvent;

    .line 43
    invoke-direct {p0, p1}, Lmega/car/input/CarInputManager;->dispatchCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V

    return-void
.end method

.method private customEventDownReport(IZ)V
    .locals 1
    .param p1, "eventSeq"    # I
    .param p2, "intercept"    # Z

    .line 390
    :try_start_0
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    invoke-interface {v0, p1, p2}, Lmega/car/input/ICarInput;->customEventDownReport(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/input/CarInputManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 394
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private customRotaryEventInterceptReport(IZ)V
    .locals 1
    .param p1, "eventSeq"    # I
    .param p2, "intercept"    # Z

    .line 429
    :try_start_0
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    invoke-interface {v0, p1, p2}, Lmega/car/input/ICarInput;->customRotaryEventInterceptReport(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/input/CarInputManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 433
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private dispatchCustomInputEvent(Lmega/car/input/CustomInputEvent;)V
    .locals 9
    .param p1, "event"    # Lmega/car/input/CustomInputEvent;

    .line 331
    invoke-direct {p0}, Lmega/car/input/CarInputManager;->getCallback()Lmega/car/input/CarInputManager$CallbackHolder;

    move-result-object v0

    .line 332
    .local v0, "callbackHolder":Lmega/car/input/CarInputManager$CallbackHolder;
    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 333
    sget-object v2, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    const-string v3, "warning, null callback"

    invoke-static {v2, v3}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget v2, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    .line 335
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getSeq()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lmega/car/input/CarInputManager;->forceCustomEventDownReport(IZ)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getSeq()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lmega/car/input/CarInputManager;->customEventDownReport(IZ)V

    .line 339
    :goto_0
    return-void

    .line 342
    :cond_1
    const/4 v2, 0x0

    .line 343
    .local v2, "repeatedKeyEvent":Z
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 344
    const/4 v3, 0x1

    .line 345
    .local v3, "intercept":Z
    const/4 v2, 0x1

    goto :goto_1

    .line 347
    .end local v3    # "intercept":Z
    :cond_2
    sget-object v3, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start to ask onInterceptTouchEvent for events "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v3, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {v3, p1}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onInterceptTouchEvent(Lmega/car/input/CustomInputEvent;)Z

    move-result v3

    .line 350
    .restart local v3    # "intercept":Z
    :goto_1
    const-string v4, ", for event: "

    if-nez v2, :cond_4

    .line 351
    sget-object v5, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    if-ne v7, v1, :cond_3

    .line 352
    const-string v7, "LEVEL_PRIORITY_FORCE dispatch for event: "

    goto :goto_2

    .line 353
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start report to service intercept: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 351
    invoke-static {v5, v6}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_4
    iget v5, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    if-ne v5, v1, :cond_5

    .line 357
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getSeq()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lmega/car/input/CarInputManager;->forceCustomEventDownReport(IZ)V

    goto :goto_3

    .line 359
    :cond_5
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getSeq()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lmega/car/input/CarInputManager;->customEventDownReport(IZ)V

    .line 360
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end report to service intercept: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_3
    if-nez v3, :cond_6

    .line 364
    return-void

    .line 366
    :cond_6
    if-nez v2, :cond_7

    .line 367
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intercept true, ready to callBack onCustomInputEvent for event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_7
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ready to fire events "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v1, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mHandler:Landroid/os/Handler;

    new-instance v4, Lmega/car/input/-$$Lambda$CarInputManager$eziwCdFA1qK-jyijmxcNgV-Famk;

    invoke-direct {v4, p0, v0, p1}, Lmega/car/input/-$$Lambda$CarInputManager$eziwCdFA1qK-jyijmxcNgV-Famk;-><init>(Lmega/car/input/CarInputManager;Lmega/car/input/CarInputManager$CallbackHolder;Lmega/car/input/CustomInputEvent;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    return-void
.end method

.method private dispatchCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V
    .locals 5
    .param p1, "customRotaryEvent"    # Lmega/car/input/CustomRotaryEvent;

    .line 405
    invoke-direct {p0}, Lmega/car/input/CarInputManager;->getCallback()Lmega/car/input/CarInputManager$CallbackHolder;

    move-result-object v0

    .line 406
    .local v0, "callbackHolder":Lmega/car/input/CarInputManager$CallbackHolder;
    if-nez v0, :cond_0

    .line 407
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "warning, null callback to fire event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Lmega/car/input/CustomRotaryEvent;->getSeq()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lmega/car/input/CarInputManager;->customRotaryEventInterceptReport(IZ)V

    .line 409
    return-void

    .line 411
    :cond_0
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start to ask dispatchCustomRotaryEvent for event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v1, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {v1, p1}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onInterceptRotaryEvent(Lmega/car/input/CustomRotaryEvent;)Z

    move-result v1

    .line 413
    .local v1, "intercept":Z
    sget-object v2, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start report dispatchCustomRotaryEvent intercept: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", for event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1}, Lmega/car/input/CustomRotaryEvent;->getSeq()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lmega/car/input/CarInputManager;->customRotaryEventInterceptReport(IZ)V

    .line 416
    if-nez v1, :cond_1

    .line 417
    return-void

    .line 419
    :cond_1
    sget-object v2, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ready to fire events "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v2, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mHandler:Landroid/os/Handler;

    new-instance v3, Lmega/car/input/-$$Lambda$CarInputManager$4gtUIXoB2ixpjHAz1MZKZvEvH-8;

    invoke-direct {v3, p1, v0}, Lmega/car/input/-$$Lambda$CarInputManager$4gtUIXoB2ixpjHAz1MZKZvEvH-8;-><init>(Lmega/car/input/CustomRotaryEvent;Lmega/car/input/CarInputManager$CallbackHolder;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void
.end method

.method private dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 322
    invoke-direct {p0}, Lmega/car/input/CarInputManager;->getCallback()Lmega/car/input/CarInputManager$CallbackHolder;

    move-result-object v0

    .line 323
    .local v0, "callbackHolder":Lmega/car/input/CarInputManager$CallbackHolder;
    if-nez v0, :cond_0

    .line 324
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    const-string v2, "warning, null callback"

    invoke-static {v1, v2}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void

    .line 327
    :cond_0
    iget-object v1, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mHandler:Landroid/os/Handler;

    new-instance v2, Lmega/car/input/-$$Lambda$CarInputManager$NLMh4BhzbGwhSym8hW9_0Cn7ioU;

    invoke-direct {v2, v0, p1}, Lmega/car/input/-$$Lambda$CarInputManager$NLMh4BhzbGwhSym8hW9_0Cn7ioU;-><init>(Lmega/car/input/CarInputManager$CallbackHolder;Landroid/view/KeyEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    return-void
.end method

.method private forceCustomEventDownReport(IZ)V
    .locals 1
    .param p1, "eventSeq"    # I
    .param p2, "intercept"    # Z

    .line 398
    :try_start_0
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    invoke-interface {v0, p1, p2}, Lmega/car/input/ICarInput;->forceCustomEventDownReport(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/input/CarInputManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 402
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private getCallback()Lmega/car/input/CarInputManager$CallbackHolder;
    .locals 2

    .line 316
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    monitor-exit v0

    return-object v1

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$dispatchCustomRotaryEvent$2(Lmega/car/input/CustomRotaryEvent;Lmega/car/input/CarInputManager$CallbackHolder;)V
    .locals 3
    .param p0, "customRotaryEvent"    # Lmega/car/input/CustomRotaryEvent;
    .param p1, "callbackHolder"    # Lmega/car/input/CarInputManager$CallbackHolder;

    .line 421
    sget-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing events "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p1, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {v0, p0}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V

    .line 424
    return-void
.end method

.method static synthetic lambda$dispatchKeyEvent$0(Lmega/car/input/CarInputManager$CallbackHolder;Landroid/view/KeyEvent;)V
    .locals 1
    .param p0, "callbackHolder"    # Lmega/car/input/CarInputManager$CallbackHolder;
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 327
    iget-object v0, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {v0, p1}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method


# virtual methods
.method public checkReleaseMethod2()V
    .locals 7

    .line 507
    const-string v0, "mega.car_input_release_capture2"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/mega/nexus/os/MegaSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 508
    .local v0, "reTag":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 509
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    const-string v2, "CarInputService does not have releaseInputEventCapture2"

    invoke-static {v1, v2}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 512
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "releaseInputEventCapture2"

    new-array v4, v1, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lmega/car/input/ICarInputCallback;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lmega/car/input/CarInputManager;->mReleaseMethod2:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    goto :goto_0

    .line 514
    :catch_0
    move-exception v2

    .line 515
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 517
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    iget-object v2, p0, Lmega/car/input/CarInputManager;->mReleaseMethod2:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 518
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 519
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got releaseInputEventCapture2 method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmega/car/input/CarInputManager;->mReleaseMethod2:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 521
    :cond_1
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    const-string v2, "can not get releaseInputEventCapture2 method by reflect"

    invoke-static {v1, v2}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :goto_1
    return-void
.end method

.method public getLongPressTimeout()I
    .locals 1

    .line 173
    iget v0, p0, Lmega/car/input/CarInputManager;->mLongPressTimeout:I

    return v0
.end method

.method public synthetic lambda$dispatchCustomInputEvent$1$CarInputManager(Lmega/car/input/CarInputManager$CallbackHolder;Lmega/car/input/CustomInputEvent;)V
    .locals 5
    .param p1, "callbackHolder"    # Lmega/car/input/CarInputManager$CallbackHolder;
    .param p2, "event"    # Lmega/car/input/CustomInputEvent;

    .line 372
    invoke-virtual {p1, p2}, Lmega/car/input/CarInputManager$CallbackHolder;->hasPostedLongPress(Lmega/car/input/CustomInputEvent;)Z

    move-result v0

    .line 373
    .local v0, "hasPostLongPress":Z
    invoke-virtual {p2}, Lmega/car/input/CustomInputEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Lmega/car/input/CustomInputEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget v3, p0, Lmega/car/input/CarInputManager;->mLongPressTimeout:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    const-string v2, " on callback "

    if-ltz v1, :cond_0

    if-nez v0, :cond_0

    .line 375
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing long press events "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1, p2}, Lmega/car/input/CarInputManager$CallbackHolder;->setLongPressPostMark(Lmega/car/input/CustomInputEvent;)V

    .line 378
    iget-object v1, p1, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {v1, p2}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onCustomerKeyLongPress(Lmega/car/input/CustomInputEvent;)V

    .line 380
    :cond_0
    invoke-virtual {p2}, Lmega/car/input/CustomInputEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 381
    invoke-virtual {p1, p2}, Lmega/car/input/CarInputManager$CallbackHolder;->clearLongPressPostMark(Lmega/car/input/CustomInputEvent;)V

    .line 383
    :cond_1
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing events "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v1, p1, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {v1, p2}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onCustomInputEvent(Lmega/car/input/CustomInputEvent;)V

    .line 385
    return-void
.end method

.method protected onCarDisconnected()V
    .locals 2

    .line 309
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lmega/car/input/CarInputManager;->releaseInputEventCapture()V

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 312
    monitor-exit v0

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseInputEventCapture()V
    .locals 6

    .line 278
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 280
    .local v1, "callbackHolder":Lmega/car/input/CarInputManager$CallbackHolder;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 281
    if-nez v1, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    iget-object v2, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 285
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 286
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :try_start_2
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mReleaseMethod2:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_1

    .line 290
    :try_start_3
    sget-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use releaseInputEventCapture2 for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mReleaseMethod2:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :try_start_4
    sget-object v2, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call releaseInputEventCapture2 error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", use releaseInputEventCapture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    iget-object v3, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    invoke-interface {v2, v3}, Lmega/car/input/ICarInput;->releaseInputEventCapture(Lmega/car/input/ICarInputCallback;)V

    .line 296
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    goto :goto_1

    .line 298
    :cond_1
    sget-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use releaseInputEventCapture for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    iget-object v2, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    invoke-interface {v0, v2}, Lmega/car/input/ICarInput;->releaseInputEventCapture(Lmega/car/input/ICarInputCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 303
    :goto_1
    goto :goto_2

    .line 301
    :catch_1
    move-exception v0

    .line 304
    :goto_2
    return-void

    .line 286
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 280
    .end local v1    # "callbackHolder":Lmega/car/input/CarInputManager$CallbackHolder;
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public requestInputEventCapture(IILandroid/os/Handler;Lmega/car/input/CarInputManager$CarInputCaptureCallback;)V
    .locals 2
    .param p1, "inputType"    # I
    .param p2, "requestLevel"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "callback"    # Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    .line 253
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    new-instance v1, Lmega/car/input/CarInputManager$CallbackHolder;

    invoke-direct {v1, p4, p3}, Lmega/car/input/CarInputManager$CallbackHolder;-><init>(Lmega/car/input/CarInputManager$CarInputCaptureCallback;Landroid/os/Handler;)V

    iput-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 257
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget v0, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 259
    if-eq v0, p2, :cond_1

    .line 260
    sget-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    const-string v1, "can not change request level!"

    invoke-static {v0, v1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void

    .line 264
    :cond_0
    iput p2, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    .line 267
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    iget-object v1, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    invoke-interface {v0, v1, p1, p2}, Lmega/car/input/ICarInput;->requestInputEventCaptureWithLevel(Lmega/car/input/ICarInputCallback;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/input/CarInputManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 271
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 257
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestInputEventCapture(IILmega/car/input/CarInputManager$CarInputCaptureCallback;)V
    .locals 1
    .param p1, "inputType"    # I
    .param p2, "requestLevel"    # I
    .param p3, "callback"    # Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    .line 200
    invoke-virtual {p0}, Lmega/car/input/CarInputManager;->getMainThreadEventHandler()Landroid/os/Handler;

    move-result-object v0

    .line 201
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0, p1, p2, v0, p3}, Lmega/car/input/CarInputManager;->requestInputEventCapture(IILandroid/os/Handler;Lmega/car/input/CarInputManager$CarInputCaptureCallback;)V

    .line 202
    return-void
.end method

.method public requestInputEventCapture(ILandroid/os/Handler;Lmega/car/input/CarInputManager$CarInputCaptureCallback;)V
    .locals 2
    .param p1, "inputType"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    .line 220
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    new-instance v1, Lmega/car/input/CarInputManager$CallbackHolder;

    invoke-direct {v1, p3, p2}, Lmega/car/input/CarInputManager$CallbackHolder;-><init>(Lmega/car/input/CarInputManager$CarInputCaptureCallback;Landroid/os/Handler;)V

    iput-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    .line 227
    :try_start_1
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    iget-object v1, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    invoke-interface {v0, v1, p1}, Lmega/car/input/ICarInput;->requestInputEventCapture(Lmega/car/input/ICarInputCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/input/CarInputManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 231
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 224
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestInputEventCapture(ILmega/car/input/CarInputManager$CarInputCaptureCallback;)V
    .locals 1
    .param p1, "inputType"    # I
    .param p2, "callback"    # Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    .line 184
    invoke-virtual {p0}, Lmega/car/input/CarInputManager;->getMainThreadEventHandler()Landroid/os/Handler;

    move-result-object v0

    .line 185
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0, p1, v0, p2}, Lmega/car/input/CarInputManager;->requestInputEventCapture(ILandroid/os/Handler;Lmega/car/input/CarInputManager$CarInputCaptureCallback;)V

    .line 186
    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 0
    .param p1, "longPressTimeout"    # I

    .line 177
    iput p1, p0, Lmega/car/input/CarInputManager;->mLongPressTimeout:I

    .line 178
    return-void
.end method
