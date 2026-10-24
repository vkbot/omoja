.class public final Lmega/car/input/CarInputManager;
.super Lmega/car/CarManagerBase;
.source "SourceFile"


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
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "mega.car.permission.KeyInput"
    .end annotation
.end field

.field public static final INPUT_TYPE_SYSTEM_KEYS:I = 0x64

.field private static final INVALID_LEVEL:I = -0x2

.field public static final LEVEL_PRIORITY_DEFAULT:I = 0x0

.field public static final LEVEL_PRIORITY_FORCE:I = -0x1

.field public static final LEVEL_PRIORITY_HIGH:I = 0x1

.field public static final LEVEL_PRIORITY_MAX:I = 0x2

.field public static final LEVEL_PRIORITY_TEMPORARY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CarInputManager"


# instance fields
.field private mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentLevel:I

.field private final mLock:Ljava/lang/Object;

.field private mLongPressTimeout:I

.field private mReleaseMethod2:Ljava/lang/reflect/Method;

.field private final mService:Lmega/car/input/ICarInput;

.field private final mServiceCallback:Lmega/car/input/ICarInputCallback;


# direct methods
.method public constructor <init>(Lmega/car/MegaCar;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0, p1}, Lmega/car/CarManagerBase;-><init>(Lmega/car/MegaCar;)V

    new-instance p1, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;-><init>(Lmega/car/input/CarInputManager;Lmega/car/input/CarInputManager$1;)V

    iput-object p1, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    const/4 p1, -0x2

    iput p1, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    iput-object v0, p0, Lmega/car/input/CarInputManager;->mReleaseMethod2:Ljava/lang/reflect/Method;

    invoke-static {p2}, Lmega/car/input/ICarInput$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/input/ICarInput;

    move-result-object p1

    iput-object p1, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    invoke-virtual {p0}, Lmega/car/CarManagerBase;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "custom_long_press_timeout"

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lmega/car/input/CarInputManager;->mLongPressTimeout:I

    invoke-direct {p0}, Lmega/car/input/CarInputManager;->checkReleaseMethod2()V

    return-void
.end method

.method public static synthetic a(Lmega/car/input/CarInputManager$CallbackHolder;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lmega/car/input/CarInputManager;->lambda$dispatchKeyEvent$0(Lmega/car/input/CarInputManager$CallbackHolder;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lmega/car/input/CarInputManager;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lmega/car/input/CarInputManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic access$300(Lmega/car/input/CarInputManager;Lmega/car/input/CustomInputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lmega/car/input/CarInputManager;->dispatchCustomInputEvent(Lmega/car/input/CustomInputEvent;)V

    return-void
.end method

.method public static synthetic access$400(Lmega/car/input/CarInputManager;Lmega/car/input/CustomRotaryEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lmega/car/input/CarInputManager;->dispatchCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V

    return-void
.end method

.method public static synthetic b(Lmega/car/input/CarInputManager;Lmega/car/input/CarInputManager$CallbackHolder;Lmega/car/input/CustomInputEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmega/car/input/CarInputManager;->lambda$dispatchCustomInputEvent$1(Lmega/car/input/CarInputManager$CallbackHolder;Lmega/car/input/CustomInputEvent;)V

    return-void
.end method

.method public static synthetic c(Lmega/car/input/CustomRotaryEvent;Lmega/car/input/CarInputManager$CallbackHolder;)V
    .locals 0

    invoke-static {p0, p1}, Lmega/car/input/CarInputManager;->lambda$dispatchCustomRotaryEvent$2(Lmega/car/input/CustomRotaryEvent;Lmega/car/input/CarInputManager$CallbackHolder;)V

    return-void
.end method

.method private checkReleaseMethod2()V
    .locals 6

    const-string v0, "mega.car_input_release_capture2"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ld/f;->z(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    const-string v0, "CarInputService does not have releaseInputEventCapture2"

    invoke-static {p0, v0}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "releaseInputEventCapture2"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Lmega/car/input/ICarInputCallback;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lmega/car/input/CarInputManager;->mReleaseMethod2:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mReleaseMethod2:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "got releaseInputEventCapture2 method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lmega/car/input/CarInputManager;->mReleaseMethod2:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    const-string v0, "can not get releaseInputEventCapture2 method by reflect"

    invoke-static {p0, v0}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private customEventDownReport(IZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    invoke-interface {v0, p1, p2}, Lmega/car/input/ICarInput;->customEventDownReport(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method private customRotaryEventInterceptReport(IZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    invoke-interface {v0, p1, p2}, Lmega/car/input/ICarInput;->customRotaryEventInterceptReport(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method private dispatchCustomInputEvent(Lmega/car/input/CustomInputEvent;)V
    .locals 9

    invoke-direct {p0}, Lmega/car/input/CarInputManager;->getCallback()Lmega/car/input/CarInputManager$CallbackHolder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    sget-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "warning, null callback"

    invoke-static {v0, v3}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getSeq()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lmega/car/input/CarInputManager;->forceCustomEventDownReport(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getSeq()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lmega/car/input/CarInputManager;->customEventDownReport(IZ)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v1, 0x1

    move v3, v1

    goto :goto_1

    :cond_2
    sget-object v3, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "start to ask onInterceptTouchEvent for events "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {v3, p1}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onInterceptTouchEvent(Lmega/car/input/CustomInputEvent;)Z

    move-result v3

    :goto_1
    const-string v4, ", for event: "

    if-nez v1, :cond_4

    sget-object v5, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    if-ne v7, v2, :cond_3

    const-string v7, "LEVEL_PRIORITY_FORCE dispatch for event: "

    goto :goto_2

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "start report to service intercept: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v5, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    if-ne v5, v2, :cond_5

    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getSeq()I

    move-result v2

    invoke-direct {p0, v2, v3}, Lmega/car/input/CarInputManager;->forceCustomEventDownReport(IZ)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lmega/car/input/CustomInputEvent;->getSeq()I

    move-result v2

    invoke-direct {p0, v2, v3}, Lmega/car/input/CarInputManager;->customEventDownReport(IZ)V

    sget-object v2, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "end report to service intercept: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-nez v3, :cond_6

    return-void

    :cond_6
    if-nez v1, :cond_7

    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "intercept true, ready to callBack onCustomInputEvent for event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ready to fire events "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mHandler:Landroid/os/Handler;

    new-instance v2, Lmega/car/input/a;

    invoke-direct {v2, p0, v0, p1}, Lmega/car/input/a;-><init>(Lmega/car/input/CarInputManager;Lmega/car/input/CarInputManager$CallbackHolder;Lmega/car/input/CustomInputEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V
    .locals 5

    invoke-direct {p0}, Lmega/car/input/CarInputManager;->getCallback()Lmega/car/input/CarInputManager$CallbackHolder;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "warning, null callback to fire event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lmega/car/input/CustomRotaryEvent;->getSeq()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmega/car/input/CarInputManager;->customRotaryEventInterceptReport(IZ)V

    return-void

    :cond_0
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start to ask dispatchCustomRotaryEvent for event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {v2, p1}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onInterceptRotaryEvent(Lmega/car/input/CustomRotaryEvent;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start report dispatchCustomRotaryEvent intercept: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", for event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lmega/car/input/CustomRotaryEvent;->getSeq()I

    move-result v3

    invoke-direct {p0, v3, v2}, Lmega/car/input/CarInputManager;->customRotaryEventInterceptReport(IZ)V

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ready to fire events "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lmega/car/input/CarInputManager$CallbackHolder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmega/car/input/c;

    invoke-direct {v1, p1, v0}, Lmega/car/input/c;-><init>(Lmega/car/input/CustomRotaryEvent;Lmega/car/input/CarInputManager$CallbackHolder;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-direct {p0}, Lmega/car/input/CarInputManager;->getCallback()Lmega/car/input/CarInputManager$CallbackHolder;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "warning, null callback"

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmega/car/input/b;

    invoke-direct {v1, p0, p1}, Lmega/car/input/b;-><init>(Lmega/car/input/CarInputManager$CallbackHolder;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private forceCustomEventDownReport(IZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    invoke-interface {v0, p1, p2}, Lmega/car/input/ICarInput;->forceCustomEventDownReport(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method private getCallback()Lmega/car/input/CarInputManager$CallbackHolder;
    .locals 1

    iget-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$dispatchCustomInputEvent$1(Lmega/car/input/CarInputManager$CallbackHolder;Lmega/car/input/CustomInputEvent;)V
    .locals 5

    invoke-virtual {p1, p2}, Lmega/car/input/CarInputManager$CallbackHolder;->hasPostedLongPress(Lmega/car/input/CustomInputEvent;)Z

    move-result v0

    invoke-virtual {p2}, Lmega/car/input/CustomInputEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Lmega/car/input/CustomInputEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget p0, p0, Lmega/car/input/CarInputManager;->mLongPressTimeout:I

    int-to-long v3, p0

    cmp-long p0, v1, v3

    const-string v1, " on callback "

    if-ltz p0, :cond_0

    if-nez v0, :cond_0

    sget-object p0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Firing long press events "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lmega/car/input/CarInputManager$CallbackHolder;->setLongPressPostMark(Lmega/car/input/CustomInputEvent;)V

    iget-object p0, p1, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {p0, p2}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onCustomerKeyLongPress(Lmega/car/input/CustomInputEvent;)V

    :cond_0
    invoke-virtual {p2}, Lmega/car/input/CustomInputEvent;->getAction()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    invoke-virtual {p1, p2}, Lmega/car/input/CarInputManager$CallbackHolder;->clearLongPressPostMark(Lmega/car/input/CustomInputEvent;)V

    :cond_1
    sget-object p0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Firing events "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {p0, p2}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onCustomInputEvent(Lmega/car/input/CustomInputEvent;)V

    return-void
.end method

.method private static synthetic lambda$dispatchCustomRotaryEvent$2(Lmega/car/input/CustomRotaryEvent;Lmega/car/input/CarInputManager$CallbackHolder;)V
    .locals 3

    sget-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing events "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {p1, p0}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V

    return-void
.end method

.method private static synthetic lambda$dispatchKeyEvent$0(Lmega/car/input/CarInputManager$CallbackHolder;Landroid/view/KeyEvent;)V
    .locals 0

    iget-object p0, p0, Lmega/car/input/CarInputManager$CallbackHolder;->mCallback:Lmega/car/input/CarInputManager$CarInputCaptureCallback;

    invoke-interface {p0, p1}, Lmega/car/input/CarInputManager$CarInputCaptureCallback;->onKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method


# virtual methods
.method public getLongPressTimeout()I
    .locals 0

    iget p0, p0, Lmega/car/input/CarInputManager;->mLongPressTimeout:I

    return p0
.end method

.method public onCarDisconnected()V
    .locals 2

    iget-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lmega/car/input/CarInputManager;->releaseInputEventCapture()V

    const/4 v1, 0x0

    iput-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public releaseInputEventCapture()V
    .locals 6

    const-string/jumbo v0, "use releaseInputEventCapture for "

    const-string v1, "call releaseInputEventCapture2 error: "

    const-string/jumbo v2, "use releaseInputEventCapture2 for "

    iget-object v3, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lmega/car/input/CarInputManager;->mReleaseMethod2:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v3, :cond_1

    :try_start_3
    sget-object v0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmega/car/input/CarInputManager;->mReleaseMethod2:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v2, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", use releaseInputEventCapture"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    iget-object p0, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    invoke-interface {v0, p0}, Lmega/car/input/ICarInput;->releaseInputEventCapture(Lmega/car/input/ICarInputCallback;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    iget-object p0, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    invoke-interface {v0, p0}, Lmega/car/input/ICarInput;->releaseInputEventCapture(Lmega/car/input/ICarInputCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public requestInputEventCapture(IILandroid/os/Handler;Lmega/car/input/CarInputManager$CarInputCaptureCallback;)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lmega/car/input/CarInputManager$CarInputCaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "mega.car.permission.KeyInput"
    .end annotation

    .line 13
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    new-instance v1, Lmega/car/input/CarInputManager$CallbackHolder;

    invoke-direct {v1, p4, p3}, Lmega/car/input/CarInputManager$CallbackHolder;-><init>(Lmega/car/input/CarInputManager$CarInputCaptureCallback;Landroid/os/Handler;)V

    iput-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p3, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    const/4 p4, -0x2

    if-eq p3, p4, :cond_0

    if-eq p3, p2, :cond_1

    sget-object p0, Lmega/car/input/CarInputManager;->TAG:Ljava/lang/String;

    const-string p1, "can not change request level!"

    .line 18
    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p2, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    :cond_1
    :try_start_1
    iget-object p3, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    iget-object p4, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    .line 19
    invoke-interface {p3, p4, p1, p2}, Lmega/car/input/ICarInput;->requestInputEventCaptureWithLevel(Lmega/car/input/ICarInputCallback;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p0, p1}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public requestInputEventCapture(IILmega/car/input/CarInputManager$CarInputCaptureCallback;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lmega/car/input/CarInputManager$CarInputCaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "mega.car.permission.KeyInput"
    .end annotation

    .line 3
    invoke-virtual {p0}, Lmega/car/CarManagerBase;->getMainThreadEventHandler()Landroid/os/Handler;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, p2, v0, p3}, Lmega/car/input/CarInputManager;->requestInputEventCapture(IILandroid/os/Handler;Lmega/car/input/CarInputManager$CarInputCaptureCallback;)V

    return-void
.end method

.method public requestInputEventCapture(ILandroid/os/Handler;Lmega/car/input/CarInputManager$CarInputCaptureCallback;)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lmega/car/input/CarInputManager$CarInputCaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "mega.car.permission.KeyInput"
    .end annotation

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmega/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Lmega/car/input/CarInputManager$CallbackHolder;

    invoke-direct {v1, p3, p2}, Lmega/car/input/CarInputManager$CallbackHolder;-><init>(Lmega/car/input/CarInputManager$CarInputCaptureCallback;Landroid/os/Handler;)V

    iput-object v1, p0, Lmega/car/input/CarInputManager;->mCarInputCaptureCallbacks:Lmega/car/input/CarInputManager$CallbackHolder;

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    iput p2, p0, Lmega/car/input/CarInputManager;->mCurrentLevel:I

    :try_start_1
    iget-object p2, p0, Lmega/car/input/CarInputManager;->mService:Lmega/car/input/ICarInput;

    iget-object p3, p0, Lmega/car/input/CarInputManager;->mServiceCallback:Lmega/car/input/ICarInputCallback;

    .line 10
    invoke-interface {p2, p3, p1}, Lmega/car/input/ICarInput;->requestInputEventCapture(Lmega/car/input/ICarInputCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p0, p1}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public requestInputEventCapture(ILmega/car/input/CarInputManager$CarInputCaptureCallback;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lmega/car/input/CarInputManager$CarInputCaptureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "mega.car.permission.KeyInput"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmega/car/CarManagerBase;->getMainThreadEventHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lmega/car/input/CarInputManager;->requestInputEventCapture(ILandroid/os/Handler;Lmega/car/input/CarInputManager$CarInputCaptureCallback;)V

    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 0

    iput p1, p0, Lmega/car/input/CarInputManager;->mLongPressTimeout:I

    return-void
.end method
