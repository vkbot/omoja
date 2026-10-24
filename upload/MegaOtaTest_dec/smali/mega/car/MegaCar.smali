.class public final Lmega/car/MegaCar;
.super Ljava/lang/Object;
.source "MegaCar.java"


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

.field private static final STATE_DISCONNECTED:I

.field private static final TAG_CAR:Ljava/lang/String;

.field private static sInstance:Lmega/car/MegaCar;


# instance fields
.field private mConnectionRetryCount:I

.field private final mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

.field private final mConnectionRetryRunnable:Ljava/lang/Runnable;

.field private mConnectionState:I

.field private final mConstructionStack:Ljava/lang/Exception;

.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mMainThreadEventHandler:Landroid/os/Handler;

.field private mService:Lmega/car/ICar;

.field private mServiceBound:Z

.field private final mServiceConnectionListener:Landroid/content/ServiceConnection;

.field private final mServiceMap:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lmega/car/MegaCar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lmega/car/ICar;Lmega/car/MegaCar$CarServiceLifecycleListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lmega/car/ICar;
    .param p3, "statusChangeListener"    # Lmega/car/MegaCar$CarServiceLifecycleListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    .line 136
    new-instance v0, Lmega/car/MegaCar$1;

    invoke-direct {v0, p0}, Lmega/car/MegaCar$1;-><init>(Lmega/car/MegaCar;)V

    iput-object v0, p0, Lmega/car/MegaCar;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    .line 143
    new-instance v0, Lmega/car/MegaCar$2;

    invoke-direct {v0, p0}, Lmega/car/MegaCar$2;-><init>(Lmega/car/MegaCar;)V

    iput-object v0, p0, Lmega/car/MegaCar;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    .line 151
    new-instance v0, Lmega/car/MegaCar$3;

    invoke-direct {v0, p0}, Lmega/car/MegaCar$3;-><init>(Lmega/car/MegaCar;)V

    iput-object v0, p0, Lmega/car/MegaCar;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmega/car/MegaCar;->mServiceMap:Ljava/util/HashMap;

    .line 361
    iput-object p1, p0, Lmega/car/MegaCar;->mContext:Landroid/content/Context;

    .line 362
    invoke-direct {p0, p4}, Lmega/car/MegaCar;->determineEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmega/car/MegaCar;->mEventHandler:Landroid/os/Handler;

    .line 363
    invoke-static {v0}, Lmega/car/MegaCar;->determineMainThreadEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmega/car/MegaCar;->mMainThreadEventHandler:Landroid/os/Handler;

    .line 365
    iput-object p2, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    .line 366
    if-eqz p2, :cond_0

    .line 367
    const/4 v0, 0x2

    iput v0, p0, Lmega/car/MegaCar;->mConnectionState:I

    goto :goto_0

    .line 369
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmega/car/MegaCar;->mConnectionState:I

    .line 371
    :goto_0
    iput-object p3, p0, Lmega/car/MegaCar;->mStatusChangeCallback:Lmega/car/MegaCar$CarServiceLifecycleListener;

    .line 374
    if-nez p3, :cond_1

    .line 375
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object v0, p0, Lmega/car/MegaCar;->mConstructionStack:Ljava/lang/Exception;

    goto :goto_1

    .line 377
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmega/car/MegaCar;->mConstructionStack:Ljava/lang/Exception;

    .line 379
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lmega/car/MegaCar;)V
    .locals 0
    .param p0, "x0"    # Lmega/car/MegaCar;

    .line 41
    invoke-direct {p0}, Lmega/car/MegaCar;->startCarService()V

    return-void
.end method

.method static synthetic access$100(Lmega/car/MegaCar;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lmega/car/MegaCar;

    .line 41
    iget-object v0, p0, Lmega/car/MegaCar;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lmega/car/MegaCar;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lmega/car/MegaCar;

    .line 41
    iget-object v0, p0, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lmega/car/MegaCar;)Lmega/car/ICar;
    .locals 1
    .param p0, "x0"    # Lmega/car/MegaCar;

    .line 41
    iget-object v0, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    return-object v0
.end method

.method static synthetic access$402(Lmega/car/MegaCar;Lmega/car/ICar;)Lmega/car/ICar;
    .locals 0
    .param p0, "x0"    # Lmega/car/MegaCar;
    .param p1, "x1"    # Lmega/car/ICar;

    .line 41
    iput-object p1, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    return-object p1
.end method

.method static synthetic access$500(Lmega/car/MegaCar;)I
    .locals 1
    .param p0, "x0"    # Lmega/car/MegaCar;

    .line 41
    iget v0, p0, Lmega/car/MegaCar;->mConnectionState:I

    return v0
.end method

.method static synthetic access$502(Lmega/car/MegaCar;I)I
    .locals 0
    .param p0, "x0"    # Lmega/car/MegaCar;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Lmega/car/MegaCar;->mConnectionState:I

    return p1
.end method

.method static synthetic access$600(Lmega/car/MegaCar;)Lmega/car/MegaCar$CarServiceLifecycleListener;
    .locals 1
    .param p0, "x0"    # Lmega/car/MegaCar;

    .line 41
    iget-object v0, p0, Lmega/car/MegaCar;->mStatusChangeCallback:Lmega/car/MegaCar$CarServiceLifecycleListener;

    return-object v0
.end method

.method static synthetic access$700(Lmega/car/MegaCar;)V
    .locals 0
    .param p0, "x0"    # Lmega/car/MegaCar;

    .line 41
    invoke-direct {p0}, Lmega/car/MegaCar;->handleCarDisconnectLocked()V

    return-void
.end method

.method static synthetic access$800(Lmega/car/MegaCar;)V
    .locals 0
    .param p0, "x0"    # Lmega/car/MegaCar;

    .line 41
    invoke-direct {p0}, Lmega/car/MegaCar;->finishClient()V

    return-void
.end method

.method private static assertNonNullContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 336
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    .line 338
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ContextWrapper with null base passed as Context, forgot to set base Context?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized createCar(Landroid/content/Context;Landroid/os/Handler;)Lmega/car/MegaCar;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    const-class v0, Lmega/car/MegaCar;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Lmega/car/MegaCar;->sInstance:Lmega/car/MegaCar;

    if-nez v1, :cond_0

    .line 203
    const-string v1, "com.mega.car.CarService"

    invoke-static {v1}, Lcom/mega/nexus/os/MegaServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 204
    .local v1, "service":Landroid/os/IBinder;
    new-instance v2, Lmega/car/MegaCar;

    invoke-static {v1}, Lmega/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/ICar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4, p1}, Lmega/car/MegaCar;-><init>(Landroid/content/Context;Lmega/car/ICar;Lmega/car/MegaCar$CarServiceLifecycleListener;Landroid/os/Handler;)V

    sput-object v2, Lmega/car/MegaCar;->sInstance:Lmega/car/MegaCar;

    .line 206
    .end local v1    # "service":Landroid/os/IBinder;
    :cond_0
    sget-object v1, Lmega/car/MegaCar;->sInstance:Lmega/car/MegaCar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 201
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static createCar(Landroid/content/Context;Landroid/os/Handler;JLmega/car/MegaCar$CarServiceLifecycleListener;)Lmega/car/MegaCar;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "waitTimeoutMs"    # J
    .param p4, "statusChangeListener"    # Lmega/car/MegaCar$CarServiceLifecycleListener;

    .line 256
    move-wide/from16 v1, p2

    invoke-static/range {p0 .. p0}, Lmega/car/MegaCar;->assertNonNullContext(Landroid/content/Context;)V

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "car":Lmega/car/MegaCar;
    const/4 v3, 0x0

    .line 259
    .local v3, "service":Landroid/os/IBinder;
    const/4 v4, 0x0

    .line 260
    .local v4, "started":Z
    const/4 v5, 0x0

    .line 261
    .local v5, "retryCount":I
    const-wide/16 v6, 0x0

    .line 262
    .local v6, "maxRetryCount":J
    const-wide/16 v8, 0x0

    cmp-long v10, v1, v8

    const-wide/16 v11, 0x32

    if-lez v10, :cond_0

    .line 263
    div-long v6, v1, v11

    .line 265
    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    .line 266
    const-wide/16 v6, 0x1

    .line 269
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    if-ne v10, v13, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 271
    .local v10, "isMainThread":Z
    :goto_0
    const-string v13, "com.mega.car.CarService"

    invoke-static {v13}, Lcom/mega/nexus/os/MegaServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 272
    if-nez v0, :cond_2

    .line 274
    new-instance v13, Lmega/car/MegaCar;

    .line 275
    invoke-static {v3}, Lmega/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/ICar;

    move-result-object v14

    move-object/from16 v15, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    invoke-direct {v13, v15, v14, v9, v8}, Lmega/car/MegaCar;-><init>(Landroid/content/Context;Lmega/car/ICar;Lmega/car/MegaCar$CarServiceLifecycleListener;Landroid/os/Handler;)V

    move-object v0, v13

    goto :goto_1

    .line 272
    :cond_2
    move-object/from16 v15, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object v13, v0

    .line 279
    .end local v0    # "car":Lmega/car/MegaCar;
    .local v13, "car":Lmega/car/MegaCar;
    :goto_1
    if-eqz v3, :cond_5

    .line 280
    if-nez v4, :cond_3

    .line 281
    invoke-direct {v13, v10}, Lmega/car/MegaCar;->dispatchCarReadyToMainThread(Z)V

    .line 284
    invoke-direct {v13}, Lmega/car/MegaCar;->startCarService()V

    .line 285
    return-object v13

    .line 317
    :cond_3
    iget-object v14, v13, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 318
    :try_start_0
    sget-object v0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "waited for car_service (ms):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v8, v5

    const-wide/16 v16, 0x32

    mul-long v8, v8, v16

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, v13, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    if-eqz v0, :cond_4

    .line 323
    monitor-exit v14

    return-object v13

    .line 328
    :cond_4
    invoke-static {v3}, Lmega/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/ICar;

    move-result-object v0

    iput-object v0, v13, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    .line 329
    const/4 v0, 0x2

    iput v0, v13, Lmega/car/MegaCar;->mConnectionState:I

    .line 330
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-direct {v13, v10}, Lmega/car/MegaCar;->dispatchCarReadyToMainThread(Z)V

    .line 332
    return-object v13

    .line 330
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 290
    :cond_5
    if-nez v4, :cond_6

    .line 291
    invoke-direct {v13}, Lmega/car/MegaCar;->startCarService()V

    .line 292
    const/4 v0, 0x1

    move v4, v0

    .line 294
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 295
    const-wide/16 v8, 0x0

    cmp-long v0, v1, v8

    if-gez v0, :cond_7

    int-to-long v11, v5

    const-wide/16 v16, 0x64

    cmp-long v0, v11, v16

    if-ltz v0, :cond_7

    int-to-long v11, v5

    rem-long v11, v11, v16

    cmp-long v0, v11, v8

    if-nez v0, :cond_7

    .line 298
    sget-object v0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "car_service not ready, waited for car service (ms):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v11, v5

    const-wide/16 v18, 0x32

    mul-long v11, v11, v18

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    goto :goto_2

    .line 300
    :cond_7
    const-wide/16 v8, 0x0

    cmp-long v0, v1, v8

    if-ltz v0, :cond_9

    int-to-long v11, v5

    cmp-long v0, v11, v6

    if-lez v0, :cond_9

    .line 301
    cmp-long v0, v1, v8

    if-lez v0, :cond_8

    .line 302
    sget-object v0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "car_service not ready, waited for car service (ms):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_8
    return-object v13

    .line 309
    :cond_9
    :goto_2
    const-wide/16 v11, 0x32

    :try_start_2
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 314
    move-object v0, v13

    goto/16 :goto_0

    .line 310
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 311
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 312
    sget-object v8, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v9, "interrupted"

    invoke-static {v8, v9}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-object v13
.end method

.method private createCarManagerLocked(Ljava/lang/String;Landroid/os/IBinder;)Lmega/car/CarManagerBase;
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 532
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x208050cb

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "KeyInput"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 536
    new-instance v0, Lmega/car/hardware/property/CarPropertyManager;

    invoke-direct {v0, p0, p2}, Lmega/car/hardware/property/CarPropertyManager;-><init>(Lmega/car/MegaCar;Landroid/os/IBinder;)V

    return-object v0

    .line 534
    :cond_2
    new-instance v0, Lmega/car/input/CarInputManager;

    invoke-direct {v0, p0, p2}, Lmega/car/input/CarInputManager;-><init>(Lmega/car/MegaCar;Landroid/os/IBinder;)V

    return-object v0
.end method

.method private determineEventHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 387
    if-nez p1, :cond_0

    .line 388
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 389
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p1, v1

    .line 390
    sget-object v1, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v2, "Handles events in main thread !"

    invoke-static {v1, v2}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    return-object p1
.end method

.method private static determineMainThreadEventHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2
    .param p0, "eventHandler"    # Landroid/os/Handler;

    .line 382
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 383
    .local v0, "mainLooper":Landroid/os/Looper;
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v1, v0, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    return-object v1
.end method

.method private dispatchCarReadyToMainThread(Z)V
    .locals 2
    .param p1, "isMainThread"    # Z

    .line 345
    iget-object v0, p0, Lmega/car/MegaCar;->mStatusChangeCallback:Lmega/car/MegaCar$CarServiceLifecycleListener;

    if-nez v0, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    if-eqz p1, :cond_1

    .line 349
    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lmega/car/MegaCar$CarServiceLifecycleListener;->onLifecycleChanged(Lmega/car/MegaCar;Z)V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lmega/car/MegaCar;->mMainThreadEventHandler:Landroid/os/Handler;

    new-instance v1, Lmega/car/-$$Lambda$MegaCar$yr5hzXsvkM8WivdhmGbdVH1q-6U;

    invoke-direct {v1, p0}, Lmega/car/-$$Lambda$MegaCar$yr5hzXsvkM8WivdhmGbdVH1q-6U;-><init>(Lmega/car/MegaCar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    :goto_0
    return-void
.end method

.method private finishClient()V
    .locals 4

    .line 502
    iget-object v0, p0, Lmega/car/MegaCar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 505
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 506
    check-cast v0, Landroid/app/Activity;

    .line 507
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    sget-object v1, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Car service crashed, client not handling it, finish Activity, created from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmega/car/MegaCar;->mConstructionStack:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 513
    :cond_0
    return-void

    .line 514
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    instance-of v1, v0, Landroid/app/Service;

    if-eqz v1, :cond_2

    .line 515
    check-cast v0, Landroid/app/Service;

    .line 516
    .local v0, "service":Landroid/app/Service;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmega/car/MegaCar;->killClient(Ljava/lang/String;)V

    .line 517
    .end local v0    # "service":Landroid/app/Service;
    goto :goto_0

    .line 518
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmega/car/MegaCar;->killClient(Ljava/lang/String;)V

    .line 520
    :goto_0
    return-void

    .line 503
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Car service has crashed, null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPropIdToNameMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 557
    invoke-static {}, Lmega/car/config/CarPropertyProvider;->getPropIdToNameMap()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method private handleCarDisconnectLocked()V
    .locals 2

    .line 396
    iget v0, p0, Lmega/car/MegaCar;->mConnectionState:I

    if-nez v0, :cond_0

    .line 398
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lmega/car/MegaCar;->mEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmega/car/MegaCar;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 401
    iget-object v0, p0, Lmega/car/MegaCar;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmega/car/MegaCar;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lmega/car/MegaCar;->mConnectionRetryCount:I

    .line 403
    invoke-direct {p0}, Lmega/car/MegaCar;->tearDownCarManagersLocked()V

    .line 404
    const/4 v1, 0x0

    iput-object v1, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    .line 405
    iput v0, p0, Lmega/car/MegaCar;->mConnectionState:I

    .line 406
    return-void
.end method

.method private killClient(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientInfo"    # Ljava/lang/String;

    .line 523
    sget-object v0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**Car service has crashed. Client("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is not handling it. Client should use Car.createCar(..., CarServiceLifecycleListener, ...) to handle it properly. Check pritned callstack to check where other version of Car.createCar() was called. Killing the client process**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmega/car/MegaCar;->mConstructionStack:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 528
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 529
    return-void
.end method

.method public static mgrIdToName(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .line 549
    invoke-static {p0}, Lmega/car/config/CarPropertyProvider;->mgrIdToName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mgrIdToPerm(I)Ljava/lang/String;
    .locals 1
    .param p0, "mgrId"    # I

    .line 541
    invoke-static {p0}, Lmega/car/config/CarPropertyProvider;->mgrIdToPerm(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mgrNameToId(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 545
    invoke-static {p0}, Lmega/car/config/CarPropertyProvider;->mgrNameToId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static propIdToName(I)Ljava/lang/String;
    .locals 1
    .param p0, "propId"    # I

    .line 553
    invoke-static {p0}, Lmega/car/config/CarPropertyProvider;->propIdToName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static propIdsToName([I)Ljava/lang/String;
    .locals 4
    .param p0, "propIds"    # [I

    .line 561
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 562
    .local v0, "indexMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 563
    const-string v1, "[]"

    return-object v1

    .line 565
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 567
    const/4 v2, 0x0

    .line 568
    .local v2, "i":I
    :goto_0
    aget v3, p0, v2

    invoke-static {v3}, Lmega/car/MegaCar;->propIdToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    if-ne v2, v0, :cond_1

    .line 570
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 572
    :cond_1
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private startCarService()V
    .locals 7

    .line 577
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 578
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mega.car"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mega.car"

    const-string v3, "com.mega.car.MegaCarService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 580
    iget-object v1, p0, Lmega/car/MegaCar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmega/car/MegaCar;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 584
    .local v1, "bound":Z
    iget-object v2, p0, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 585
    if-nez v1, :cond_1

    .line 586
    :try_start_0
    sget-object v4, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v5, "bind CarService failed, try again delayed"

    invoke-static {v4, v5}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget v4, p0, Lmega/car/MegaCar;->mConnectionRetryCount:I

    add-int/2addr v4, v3

    iput v4, p0, Lmega/car/MegaCar;->mConnectionRetryCount:I

    .line 588
    int-to-long v3, v4

    const-wide/16 v5, 0x14

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 589
    sget-object v3, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v4, "cannot bind to car service after max retry"

    invoke-static {v3, v4}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v3, p0, Lmega/car/MegaCar;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object v4, p0, Lmega/car/MegaCar;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 592
    :cond_0
    iget-object v3, p0, Lmega/car/MegaCar;->mEventHandler:Landroid/os/Handler;

    iget-object v4, p0, Lmega/car/MegaCar;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 596
    :cond_1
    iget-object v4, p0, Lmega/car/MegaCar;->mEventHandler:Landroid/os/Handler;

    iget-object v5, p0, Lmega/car/MegaCar;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 597
    iget-object v4, p0, Lmega/car/MegaCar;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object v5, p0, Lmega/car/MegaCar;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 598
    const/4 v4, 0x0

    iput v4, p0, Lmega/car/MegaCar;->mConnectionRetryCount:I

    .line 599
    iput-boolean v3, p0, Lmega/car/MegaCar;->mServiceBound:Z

    .line 601
    :goto_0
    monitor-exit v2

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private tearDownCarManagersLocked()V
    .locals 2

    .line 606
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

    .line 607
    .local v1, "manager":Lmega/car/CarManagerBase;
    invoke-virtual {v1}, Lmega/car/CarManagerBase;->onCarDisconnected()V

    .line 608
    .end local v1    # "manager":Lmega/car/CarManagerBase;
    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lmega/car/MegaCar;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 610
    return-void
.end method


# virtual methods
.method public declared-synchronized disconnect()V
    .locals 3

    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v0, p0, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 410
    :try_start_1
    sget-object v1, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v2, "app call disconnect."

    invoke-static {v1, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lmega/car/MegaCar;->handleCarDisconnectLocked()V

    .line 412
    iget-boolean v1, p0, Lmega/car/MegaCar;->mServiceBound:Z

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lmega/car/MegaCar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmega/car/MegaCar;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 414
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmega/car/MegaCar;->mServiceBound:Z

    .line 416
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    monitor-exit p0

    return-void

    .line 416
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lmega/car/MegaCar;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 408
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCarManager(Ljava/lang/String;)Lmega/car/CarManagerBase;
    .locals 7
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lmega/car/CarManagerBase;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_0
    iget-object v1, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 445
    sget-object v1, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v3, "getCarManager not working while car service not ready"

    invoke-static {v1, v3}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    monitor-exit v0

    return-object v2

    .line 448
    :cond_0
    iget-object v1, p0, Lmega/car/MegaCar;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmega/car/CarManagerBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    .local v1, "manager":Lmega/car/CarManagerBase;
    if-nez v1, :cond_3

    .line 451
    :try_start_1
    iget-object v3, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    invoke-interface {v3, p1}, Lmega/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 452
    .local v3, "binder":Landroid/os/IBinder;
    if-nez v3, :cond_1

    .line 453
    sget-object v4, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCarManager could not get binder for service:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 457
    :cond_1
    :try_start_3
    invoke-direct {p0, p1, v3}, Lmega/car/MegaCar;->createCarManagerLocked(Ljava/lang/String;Landroid/os/IBinder;)Lmega/car/CarManagerBase;

    move-result-object v4

    move-object v1, v4

    .line 458
    if-nez v1, :cond_2

    .line 459
    sget-object v4, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCarManager could not create manager for service:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 461
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v2

    .line 463
    :cond_2
    :try_start_5
    iget-object v2, p0, Lmega/car/MegaCar;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 466
    .end local v3    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 464
    :catch_0
    move-exception v2

    .line 465
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_6
    invoke-virtual {p0, v2}, Lmega/car/MegaCar;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 468
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    monitor-exit v0

    .line 469
    return-object v1

    .line 468
    .end local v1    # "manager":Lmega/car/CarManagerBase;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 473
    iget-object v0, p0, Lmega/car/MegaCar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEventHandler()Landroid/os/Handler;
    .locals 1

    .line 477
    iget-object v0, p0, Lmega/car/MegaCar;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMainThreadEventHandler()Landroid/os/Handler;
    .locals 1

    .line 481
    iget-object v0, p0, Lmega/car/MegaCar;->mMainThreadEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getService()Lmega/car/ICar;
    .locals 1

    .line 485
    iget-object v0, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    return-object v0
.end method

.method public handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "e"    # Landroid/os/RemoteException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/RemoteException;",
            "TT;)TT;"
        }
    .end annotation

    .line 489
    .local p2, "returnValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lmega/car/MegaCar;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 490
    return-object p2
.end method

.method handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 494
    instance-of v0, p1, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_0

    .line 495
    sget-object v0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v1, "Car service with TransactionTooLargeException"

    invoke-static {v0, v1, p1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 497
    :cond_0
    sget-object v0, Lmega/car/MegaCar;->TAG_CAR:Ljava/lang/String;

    const-string v1, "Car service has crashed"

    invoke-static {v0, v1, p1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    :goto_0
    return-void
.end method

.method public isConnected()Z
    .locals 2

    .line 420
    iget-object v0, p0, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iget-object v1, p0, Lmega/car/MegaCar;->mService:Lmega/car/ICar;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 422
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConnecting()Z
    .locals 3

    .line 426
    iget-object v0, p0, Lmega/car/MegaCar;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_0
    iget v1, p0, Lmega/car/MegaCar;->mConnectionState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 428
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$dispatchCarReadyToMainThread$0$MegaCar()V
    .locals 2

    .line 353
    iget-object v0, p0, Lmega/car/MegaCar;->mStatusChangeCallback:Lmega/car/MegaCar$CarServiceLifecycleListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lmega/car/MegaCar$CarServiceLifecycleListener;->onLifecycleChanged(Lmega/car/MegaCar;Z)V

    return-void
.end method
