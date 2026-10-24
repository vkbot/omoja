.class public final Lmega/car/MegaCar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/MegaCar$StateTypeEnum;,
        Lmega/car/MegaCar$CarServiceLifecycleListener;
    }
.end annotation


# static fields
.field private static final CAR_SERVICE_BINDER_POLLING_INTERVAL_MS:J = 0x32L

.field private static final CAR_SERVICE_BINDER_POLLING_MAX_RETRY:J = 0x64L

.field public static final CAR_SERVICE_BINDER_SERVICE_NAME:Ljava/lang/String; = "com.mega.car.CarService"

.field private static final CAR_SERVICE_BIND_MAX_RETRY:J = 0x14L

.field private static final CAR_SERVICE_BIND_RETRY_INTERVAL_MS:J = 0x1f4L

.field private static final CAR_SERVICE_CLASS:Ljava/lang/String; = "com.mega.car.MegaCarService"

.field public static final CAR_SERVICE_PACKAGE:Ljava/lang/String; = "com.mega.car"

.field public static final CAR_WAIT_TIMEOUT_DO_NOT_WAIT:J = 0x0L

.field public static final CAR_WAIT_TIMEOUT_WAIT_FOREVER:J = -0x1L

.field public static final PROPERTY_SERVICE:Ljava/lang/String; = "property"

.field private static final STATE_CONNECTED:I = 0x2

.field private static final STATE_CONNECTING:I = 0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field private static final TAG_CAR:Ljava/lang/String; = "MegaCar"


# instance fields
.field private mConnectionRetryCount:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

.field private final mConnectionRetryRunnable:Ljava/lang/Runnable;

.field private mConnectionState:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mConstructionStack:Ljava/lang/Exception;

.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mMainThreadEventHandler:Landroid/os/Handler;

.field private mService:Lmega/car/ICar;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mServiceBound:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mServiceConnectionListener:Landroid/content/ServiceConnection;

.field private final mServiceMap:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmega/car/CarManagerBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusChangeCallback:Lmega/car/MegaCar$CarServiceLifecycleListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lmega/car/ICar;Lmega/car/MegaCar$CarServiceLifecycleListener;Landroid/os/Handler;)V
    .locals 1
    .param p2    # Lmega/car/ICar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lmega/car/MegaCar$CarServiceLifecycleListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    new-instance v0, Lmega/car/MegaCar$1;

    invoke-direct {v0, p0}, Lmega/car/MegaCar$1;-><init>(Lmega/car/MegaCar;)V

    iput-object v0, p0, Lmega/car/MegaCar;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    new-instance v0, Lmega/car/MegaCar$2;

    invoke-direct {v0, p0}, Lmega/car/MegaCar$2;-><init>(Lmega/car/MegaCar;)V

    iput-object v0, p0, Lmega/car/MegaCar;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lmega/car/MegaCar$3;

    invoke-direct {v0, p0}, Lmega/car/MegaCar$3;-><init>(Lmega/car/MegaCar;)V

    iput-object v0, p0, Lmega/car/MegaCar;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmega/car/MegaCar;->mServiceMap:Ljava/util/HashMap;

    iput-object p1, p0, Lmega/car/MegaCar;->mContext:Landroid/content/Context;

    invoke-direct {p0, p4}, Lmega/car/MegaCar;->determineEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lmega/car/MegaCar;->mEventHandler:Landroid/os/Handler;

    invoke-static {p1}, Lmega/car/MegaCar;->determineMainThreadEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lmega/car/MegaCar;->mMainThreadEventHandler:Landroid/os/Handler;

    iput-object p2, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lmega/car/MegaCar;->mConnectionState:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lmega/car/MegaCar;->mConnectionState:I

    :goto_0
    iput-object p3, p0, Lmega/car/MegaCar;->mStatusChangeCallback:Lmega/car/MegaCar$CarServiceLifecycleListener;

    if-nez p3, :cond_1

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lmega/car/MegaCar;->mConstructionStack:Ljava/lang/Exception;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lmega/car/MegaCar;->mConstructionStack:Ljava/lang/Exception;

    :goto_1
    return-void
.end method

.method public static synthetic a(Lmega/car/MegaCar;)V
    .locals 0

    invoke-direct {p0}, Lmega/car/MegaCar;->lambda$dispatchCarReadyToMainThread$0()V

    return-void
.end method

.method public static synthetic access$000(Lmega/car/MegaCar;)V
    .locals 0

    invoke-direct {p0}, Lmega/car/MegaCar;->startCarService()V

    return-void
.end method

.method public static synthetic access$100(Lmega/car/MegaCar;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lmega/car/MegaCar;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static synthetic access$200(Lmega/car/MegaCar;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Lmega/car/MegaCar;)Lmega/car/ICar;
    .locals 0

    iget-object p0, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    return-object p0
.end method

.method public static synthetic access$402(Lmega/car/MegaCar;Lmega/car/ICar;)Lmega/car/ICar;
    .locals 0

    iput-object p1, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    return-object p1
.end method

.method public static synthetic access$500(Lmega/car/MegaCar;)I
    .locals 0

    iget p0, p0, Lmega/car/MegaCar;->mConnectionState:I

    return p0
.end method

.method public static synthetic access$502(Lmega/car/MegaCar;I)I
    .locals 0

    iput p1, p0, Lmega/car/MegaCar;->mConnectionState:I

    return p1
.end method

.method public static synthetic access$600(Lmega/car/MegaCar;)Lmega/car/MegaCar$CarServiceLifecycleListener;
    .locals 0

    iget-object p0, p0, Lmega/car/MegaCar;->mStatusChangeCallback:Lmega/car/MegaCar$CarServiceLifecycleListener;

    return-object p0
.end method

.method public static synthetic access$700(Lmega/car/MegaCar;)V
    .locals 0

    invoke-direct {p0}, Lmega/car/MegaCar;->handleCarDisconnectLocked()V

    return-void
.end method

.method public static synthetic access$800(Lmega/car/MegaCar;)V
    .locals 0

    invoke-direct {p0}, Lmega/car/MegaCar;->finishClient()V

    return-void
.end method

.method private static assertNonNullContext(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "ContextWrapper with null base passed as Context, forgot to set base Context?"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static createCar(Landroid/content/Context;Landroid/os/Handler;JLmega/car/MegaCar$CarServiceLifecycleListener;)Lmega/car/MegaCar;
    .locals 21
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lmega/car/MegaCar$CarServiceLifecycleListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-wide/from16 v0, p2

    invoke-static/range {p0 .. p0}, Lmega/car/MegaCar;->assertNonNullContext(Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x32

    if-lez v4, :cond_0

    div-long v7, v0, v5

    cmp-long v9, v7, v2

    if-nez v9, :cond_1

    const-wide/16 v7, 0x1

    goto :goto_0

    :cond_0
    move-wide v7, v2

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    const/4 v12, 0x0

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    move v9, v12

    :goto_1
    const/4 v10, 0x0

    move v13, v12

    :goto_2
    const-string v14, "com.mega.car.CarService"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    if-nez v10, :cond_3

    new-instance v10, Lmega/car/MegaCar;

    invoke-static {v14}, Lmega/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/ICar;

    move-result-object v15

    move-object/from16 v11, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v10, v11, v15, v3, v2}, Lmega/car/MegaCar;-><init>(Landroid/content/Context;Lmega/car/ICar;Lmega/car/MegaCar$CarServiceLifecycleListener;Landroid/os/Handler;)V

    goto :goto_3

    :cond_3
    move-object/from16 v11, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    :goto_3
    if-eqz v14, :cond_6

    if-nez v12, :cond_4

    invoke-direct {v10, v9}, Lmega/car/MegaCar;->dispatchCarReadyToMainThread(Z)V

    invoke-direct {v10}, Lmega/car/MegaCar;->startCarService()V

    return-object v10

    :cond_4
    iget-object v15, v10, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    sget-object v0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waited for car_service (ms):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, v13

    mul-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v10, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    if-eqz v0, :cond_5

    monitor-exit v15

    return-object v10

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_5
    invoke-static {v14}, Lmega/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/ICar;

    move-result-object v0

    iput-object v0, v10, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    const/4 v0, 0x2

    iput v0, v10, Lmega/car/MegaCar;->mConnectionState:I

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {v10, v9}, Lmega/car/MegaCar;->dispatchCarReadyToMainThread(Z)V

    return-object v10

    :goto_4
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    if-nez v12, :cond_7

    invoke-direct {v10}, Lmega/car/MegaCar;->startCarService()V

    const/4 v12, 0x1

    :cond_7
    add-int/lit8 v13, v13, 0x1

    if-gez v4, :cond_9

    int-to-long v14, v13

    const-wide/16 v18, 0x64

    cmp-long v20, v14, v18

    if-ltz v20, :cond_9

    rem-long v18, v14, v18

    const-wide/16 v16, 0x0

    cmp-long v18, v18, v16

    if-nez v18, :cond_a

    sget-object v5, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v2, "car_service not ready, waited for car service (ms):"

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v18, 0x32

    mul-long v14, v14, v18

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-wide/16 v5, 0x32

    goto :goto_5

    :cond_9
    const-wide/16 v16, 0x0

    :cond_a
    if-ltz v4, :cond_8

    int-to-long v5, v13

    cmp-long v2, v5, v7

    if-lez v2, :cond_8

    if-lez v4, :cond_b

    sget-object v2, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "car_service not ready, waited for car service (ms):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-object v10

    :goto_5
    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-wide/from16 v2, v16

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    sget-object v0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v2, "interrupted"

    invoke-static {v0, v2, v1}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v10
.end method

.method private createCarManagerLocked(Ljava/lang/String;Landroid/os/IBinder;)Lmega/car/CarManagerBase;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyInput"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lmega/car/hardware/property/CarPropertyManager;

    invoke-direct {p1, p0, p2}, Lmega/car/hardware/property/CarPropertyManager;-><init>(Lmega/car/MegaCar;Landroid/os/IBinder;)V

    return-object p1

    :cond_0
    new-instance p1, Lmega/car/input/CarInputManager;

    invoke-direct {p1, p0, p2}, Lmega/car/input/CarInputManager;-><init>(Lmega/car/MegaCar;Landroid/os/IBinder;)V

    return-object p1
.end method

.method private determineEventHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object p0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v0, "Handles events in main thread !"

    invoke-static {p0, v0}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method

.method private static determineMainThreadEventHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    return-object p0
.end method

.method private dispatchCarReadyToMainThread(Z)V
    .locals 2

    iget-object v0, p0, Lmega/car/MegaCar;->mStatusChangeCallback:Lmega/car/MegaCar$CarServiceLifecycleListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-interface {v0, p0, p1}, Lmega/car/MegaCar$CarServiceLifecycleListener;->onLifecycleChanged(Lmega/car/MegaCar;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmega/car/MegaCar;->mMainThreadEventHandler:Landroid/os/Handler;

    new-instance v0, Ls0/b;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Ls0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private finishClient()V
    .locals 4

    iget-object v0, p0, Lmega/car/MegaCar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Car service crashed, client not handling it, finish Activity, created from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lmega/car/MegaCar;->mConstructionStack:Ljava/lang/Exception;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :cond_1
    instance-of v1, v0, Landroid/app/Service;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Service;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmega/car/MegaCar;->killClient(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmega/car/MegaCar;->killClient(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Car service has crashed, null Context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private handleCarDisconnectLocked()V
    .locals 2

    iget v0, p0, Lmega/car/MegaCar;->mConnectionState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmega/car/MegaCar;->mEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmega/car/MegaCar;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lmega/car/MegaCar;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmega/car/MegaCar;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Lmega/car/MegaCar;->mConnectionRetryCount:I

    invoke-direct {p0}, Lmega/car/MegaCar;->tearDownCarManagersLocked()V

    const/4 v1, 0x0

    iput-object v1, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    iput v0, p0, Lmega/car/MegaCar;->mConnectionState:I

    return-void
.end method

.method private killClient(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v1, "**Car service has crashed. Client("

    const-string v2, ") is not handling it. Client should use Car.createCar(..., CarServiceLifecycleListener, ...) to handle it properly. Check printed callstack to check where other version of Car.createCar() was called. Killing the client process**"

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lmega/car/MegaCar;->mConstructionStack:Ljava/lang/Exception;

    invoke-static {v0, p1, p0}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private synthetic lambda$dispatchCarReadyToMainThread$0()V
    .locals 2

    iget-object v0, p0, Lmega/car/MegaCar;->mStatusChangeCallback:Lmega/car/MegaCar$CarServiceLifecycleListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lmega/car/MegaCar$CarServiceLifecycleListener;->onLifecycleChanged(Lmega/car/MegaCar;Z)V

    return-void
.end method

.method public static propIdToName(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmega/car/MegaCarProperty;->getNameById(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startCarService()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.mega.car"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mega.car"

    const-string v3, "com.mega.car.MegaCarService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lmega/car/MegaCar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmega/car/MegaCar;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iget-object v1, p0, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_1

    :try_start_0
    sget-object v0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v2, "bind CarService failed, try again delayed"

    invoke-static {v0, v2}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lmega/car/MegaCar;->mConnectionRetryCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lmega/car/MegaCar;->mConnectionRetryCount:I

    int-to-long v2, v2

    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-string v2, "cannot bind to car service after max retry"

    invoke-static {v0, v2}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmega/car/MegaCar;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object p0, p0, Lmega/car/MegaCar;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmega/car/MegaCar;->mEventHandler:Landroid/os/Handler;

    iget-object p0, p0, Lmega/car/MegaCar;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmega/car/MegaCar;->mEventHandler:Landroid/os/Handler;

    iget-object v2, p0, Lmega/car/MegaCar;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lmega/car/MegaCar;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object v2, p0, Lmega/car/MegaCar;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Lmega/car/MegaCar;->mConnectionRetryCount:I

    iput-boolean v3, p0, Lmega/car/MegaCar;->mServiceBound:Z

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private tearDownCarManagersLocked()V
    .locals 2

    iget-object v0, p0, Lmega/car/MegaCar;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmega/car/CarManagerBase;

    invoke-virtual {v1}, Lmega/car/CarManagerBase;->onCarDisconnected()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmega/car/MegaCar;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public declared-synchronized disconnect()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v2, "app call disconnect."

    invoke-static {v1, v2}, Lmega/car/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmega/car/MegaCar;->handleCarDisconnectLocked()V

    iget-boolean v1, p0, Lmega/car/MegaCar;->mServiceBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmega/car/MegaCar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmega/car/MegaCar;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmega/car/MegaCar;->mServiceBound:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCarManager(Ljava/lang/String;)Lmega/car/CarManagerBase;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lmega/car/CarManagerBase;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "getCarManager could not create manager for service:"

    const-string v1, "getCarManager could not get binder for service:"

    iget-object v2, p0, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    sget-object p0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string p1, "getCarManager not working while car service not ready"

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lmega/car/MegaCar;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmega/car/CarManagerBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    :try_start_1
    iget-object v5, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    invoke-interface {v5, p1}, Lmega/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-direct {p0, p1, v5}, Lmega/car/MegaCar;->createCarManagerLocked(Ljava/lang/String;Landroid/os/IBinder;)Lmega/car/CarManagerBase;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v1, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v4

    :cond_2
    :try_start_5
    iget-object v0, p0, Lmega/car/MegaCar;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_6
    invoke-virtual {p0, p1}, Lmega/car/MegaCar;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :cond_3
    :goto_1
    monitor-exit v2

    return-object v3

    :goto_2
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lmega/car/MegaCar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getEventHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lmega/car/MegaCar;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getMainThreadEventHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lmega/car/MegaCar;->mMainThreadEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getService()Lmega/car/ICar;
    .locals 0

    iget-object p0, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    return-object p0
.end method

.method public handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/RemoteException;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lmega/car/MegaCar;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    return-object p2
.end method

.method public handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    .locals 1

    .line 2
    instance-of p0, p1, Landroid/os/TransactionTooLargeException;

    if-eqz p0, :cond_0

    sget-object p0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v0, "Car service with TransactionTooLargeException"

    .line 3
    invoke-static {p0, v0, p1}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object p0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v0, "Car service has crashed"

    .line 4
    invoke-static {p0, v0, p1}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isConnecting()Z
    .locals 2

    iget-object v0, p0, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lmega/car/MegaCar;->mConnectionState:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
