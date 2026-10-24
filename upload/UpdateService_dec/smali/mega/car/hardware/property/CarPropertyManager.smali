.class public Lmega/car/hardware/property/CarPropertyManager;
.super Lmega/car/CarManagerBase;
.source "CarPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;,
        Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;,
        Lmega/car/hardware/property/CarPropertyManager$CarSetPropertyErrorCode;,
        Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    }
.end annotation


# static fields
.field public static final CAR_SET_PROPERTY_ERROR_CODE_ACCESS_DENIED:I = 0x4

.field public static final CAR_SET_PROPERTY_ERROR_CODE_INVALID_ARG:I = 0x2

.field public static final CAR_SET_PROPERTY_ERROR_CODE_PROPERTY_NOT_AVAILABLE:I = 0x3

.field public static final CAR_SET_PROPERTY_ERROR_CODE_TRY_AGAIN:I = 0x1

.field public static final CAR_SET_PROPERTY_ERROR_CODE_UNKNOWN:I = 0x5

.field private static final DBG:Z = false

.field private static final MSG_GENERIC_EVENT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivePropertyListener:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;",
            ">;"
        }
    .end annotation
.end field

.field private mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

.field private final mHandler:Lmega/car/utils/SingleMessageHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmega/car/utils/SingleMessageHandler<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lmega/car/hardware/property/ICarProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lmega/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmega/car/MegaCar;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "car"    # Lmega/car/MegaCar;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 126
    invoke-direct {p0, p1}, Lmega/car/CarManagerBase;-><init>(Lmega/car/MegaCar;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    .line 43
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    .line 127
    invoke-static {p2}, Lmega/car/hardware/property/ICarProperty$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/hardware/property/ICarProperty;

    move-result-object v1

    iput-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    .line 128
    invoke-virtual {p0}, Lmega/car/hardware/property/CarPropertyManager;->getEventHandler()Landroid/os/Handler;

    move-result-object v1

    .line 129
    .local v1, "eventHandler":Landroid/os/Handler;
    if-nez v1, :cond_0

    .line 130
    iput-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mHandler:Lmega/car/utils/SingleMessageHandler;

    .line 131
    return-void

    .line 133
    :cond_0
    new-instance v0, Lmega/car/hardware/property/CarPropertyManager$1;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lmega/car/hardware/property/CarPropertyManager$1;-><init>(Lmega/car/hardware/property/CarPropertyManager;Landroid/os/Looper;I)V

    iput-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mHandler:Lmega/car/utils/SingleMessageHandler;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lmega/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lmega/car/hardware/property/CarPropertyManager;

    .line 31
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmega/car/hardware/property/CarPropertyManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lmega/car/hardware/property/CarPropertyManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 31
    invoke-direct {p0, p1}, Lmega/car/hardware/property/CarPropertyManager;->handleEvent(Ljava/util/List;)V

    return-void
.end method

.method private doUnregisterListenerLocked(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    .locals 7
    .param p1, "listener"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 383
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 384
    .local v0, "needUpdateIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 385
    .local v2, "propertyId":I
    iget-object v3, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    .line 386
    .local v3, "listeners":Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;
    if-eqz v3, :cond_2

    .line 387
    const/4 v4, 0x0

    .line 388
    .local v4, "needsServerUpdate":Z
    invoke-virtual {v3, p1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 389
    invoke-virtual {v3, p1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 391
    :cond_0
    invoke-virtual {v3}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 393
    :try_start_0
    iget-object v5, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    iget-object v6, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    invoke-interface {v5, v2, v6}, Lmega/car/hardware/property/ICarProperty;->unregisterCallback(ILmega/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_1

    .line 394
    :catch_0
    move-exception v5

    .line 395
    .local v5, "ex":Landroid/os/RemoteException;
    invoke-virtual {p0, v5}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 397
    .end local v5    # "ex":Landroid/os/RemoteException;
    :goto_1
    iget-object v5, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 398
    :cond_1
    if-eqz v4, :cond_2

    .line 399
    invoke-virtual {v3}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->getRate()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 402
    .end local v4    # "needsServerUpdate":Z
    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 403
    invoke-direct {p0, v0}, Lmega/car/hardware/property/CarPropertyManager;->registerOrUpdatePropertyListener(Landroid/util/SparseArray;)V

    .line 405
    .end local v2    # "propertyId":I
    .end local v3    # "listeners":Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;
    :cond_3
    goto :goto_0

    .line 406
    :cond_4
    return-void
.end method

.method private getAllPropRateMap()Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 433
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 434
    .local v0, "propRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v1

    .line 435
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 436
    iget-object v3, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    .line 437
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    .line 438
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    invoke-virtual {v4}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->getRate()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 436
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    .end local v2    # "i":I
    :cond_0
    monitor-exit v1

    .line 441
    return-object v0

    .line 440
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getAndDispatchPropertyInitValue(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    .locals 11
    .param p1, "callback"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 319
    .local p2, "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    invoke-interface {p1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->isSticky()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 320
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 322
    .local v0, "size":I
    invoke-static {}, Lmega/car/config/CarPropertyProvider;->getAllProperties()Landroid/util/SparseArray;

    move-result-object v1

    .line 323
    .local v1, "allProperties":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmega/car/hardware/CarPropertyConfig<*>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 324
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 325
    .local v3, "propertyId":I
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmega/car/hardware/CarPropertyConfig;

    .line 326
    .local v4, "propertyConfig":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<*>;"
    if-nez v4, :cond_0

    .line 327
    sget-object v5, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not found CarPropertyConfig for 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 327
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    goto :goto_3

    .line 331
    :cond_0
    invoke-virtual {v4}, Lmega/car/hardware/CarPropertyConfig;->getAreaIds()[I

    move-result-object v5

    .line 332
    .local v5, "areaIds":[I
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget v8, v5, v7

    .line 333
    .local v8, "area":I
    invoke-virtual {p0, v3, v8}, Lmega/car/hardware/property/CarPropertyManager;->getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v9

    .line 334
    .local v9, "areaProp":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<*>;"
    if-eqz v9, :cond_2

    .line 335
    invoke-virtual {v9}, Lmega/car/hardware/CarPropertyValue;->getStatus()I

    move-result v10

    if-nez v10, :cond_1

    .line 336
    invoke-interface {p1, v9}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V

    goto :goto_2

    .line 338
    :cond_1
    invoke-interface {p1, v3, v8}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onErrorEvent(II)V

    .line 332
    .end local v8    # "area":I
    .end local v9    # "areaProp":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<*>;"
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 323
    .end local v3    # "propertyId":I
    .end local v4    # "propertyConfig":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<*>;"
    .end local v5    # "areaIds":[I
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "size":I
    .end local v1    # "allProperties":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmega/car/hardware/CarPropertyConfig<*>;>;"
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private handleEvent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .line 504
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyEvent;>;"
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mHandler:Lmega/car/utils/SingleMessageHandler;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0, p1}, Lmega/car/utils/SingleMessageHandler;->sendEvents(Ljava/util/List;)V

    .line 507
    :cond_0
    return-void
.end method

.method private declared-synchronized registerOrUpdatePropertyListener(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .local p1, "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 351
    :try_start_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 352
    .local v1, "size":I
    new-array v2, v1, [I

    .line 353
    .local v2, "propIds":[I
    new-array v3, v1, [F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 354
    .local v3, "rates":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 355
    :try_start_2
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v4

    .line 356
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 358
    .end local v1    # "size":I
    .end local v2    # "propIds":[I
    .end local v3    # "rates":[F
    .end local v4    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .restart local v2    # "propIds":[I
    .restart local v3    # "rates":[F
    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 359
    :try_start_4
    array-length v0, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v0, :cond_1

    .line 361
    monitor-exit p0

    return-void

    .line 364
    :cond_1
    :try_start_5
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    invoke-interface {v0, v1, v2, v3}, Lmega/car/hardware/property/ICarProperty;->registerListener(Lmega/car/hardware/property/ICarPropertyEventListener;[I[F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 367
    goto :goto_1

    .line 365
    .end local p0    # "this":Lmega/car/hardware/property/CarPropertyManager;
    :catch_0
    move-exception v0

    .line 366
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_6
    invoke-virtual {p0, v0}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 368
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    monitor-exit p0

    return-void

    .line 358
    .end local v2    # "propIds":[I
    .end local v3    # "rates":[F
    :catchall_1
    move-exception v1

    :goto_2
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 349
    .end local p1    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addBlacklist(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "propIds"    # [I

    .line 418
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->addBlacklist(Ljava/lang/String;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 422
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getFloatProp(II)Ljava/lang/Float;
    .locals 2
    .param p1, "prop"    # I
    .param p2, "area"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 173
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 174
    .local v0, "carProp":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<Ljava/lang/Float;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public getIntProp(II)I
    .locals 2
    .param p1, "prop"    # I
    .param p2, "area"    # I

    .line 163
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 164
    .local v0, "carProp":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getProperty(Ljava/lang/Class;II)Lmega/car/hardware/CarPropertyValue;
    .locals 5
    .param p2, "propId"    # I
    .param p3, "areaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;II)",
            "Lmega/car/hardware/CarPropertyValue<",
            "TE;>;"
        }
    .end annotation

    .line 222
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p2, p3}, Lmega/car/hardware/property/ICarProperty;->getProperty(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 223
    .local v0, "propVal":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TE;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 225
    .local v1, "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid property type. Expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", but was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lmega/car/hardware/property/CarPropertyManager;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .end local p2    # "propId":I
    .end local p3    # "areaId":I
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1    # "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "this":Lmega/car/hardware/property/CarPropertyManager;
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .restart local p2    # "propId":I
    .restart local p3    # "areaId":I
    :cond_1
    :goto_0
    return-object v0

    .line 231
    .end local v0    # "propVal":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TE;>;"
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmega/car/hardware/CarPropertyValue;

    return-object v1
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmega/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 244
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0}, Lmega/car/hardware/property/ICarProperty;->getPropertyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;
    .locals 2
    .param p1, "id"    # I
    .param p2, "area"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 252
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->getProperty(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmega/car/hardware/CarPropertyValue;

    return-object v1
.end method

.method public injectEvent(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .line 410
    .local p2, "events":Ljava/util/List;, "Ljava/util/List<Lmega/car/hardware/property/CarPropertyEvent;>;"
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->injectEvent(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 414
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public synthetic lambda$registerCallback$0$CarPropertyManager(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "callback"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .param p2, "propIdRateMap"    # Landroid/util/SparseArray;

    .line 307
    :try_start_0
    invoke-direct {p0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->getAndDispatchPropertyInitValue(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    nop

    .line 311
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCarDisconnected()V
    .locals 4

    .line 511
    sget-object v0, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    const-string v1, "onCarDisconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    invoke-interface {v0, v1}, Lmega/car/hardware/property/ICarProperty;->unregisterListener(Lmega/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0

    .line 518
    :try_start_1
    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 519
    const/4 v1, 0x0

    iput-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    .line 520
    monitor-exit v0

    .line 521
    return-void

    .line 520
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    .locals 7
    .param p1, "callback"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 280
    .local p2, "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    if-nez v1, :cond_1

    .line 285
    new-instance v1, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;

    invoke-direct {v1, p0, p0}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;-><init>(Lmega/car/hardware/property/CarPropertyManager;Lmega/car/hardware/property/CarPropertyManager;)V

    iput-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    .line 287
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 289
    .local v1, "needUpdateIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 290
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 291
    .local v3, "propertyId":I
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 292
    .local v4, "rate":F
    iget-object v5, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    .line 293
    .local v5, "listeners":Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;
    if-nez v5, :cond_2

    .line 294
    new-instance v6, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    invoke-direct {v6, p0, v4}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;-><init>(Lmega/car/hardware/property/CarPropertyManager;F)V

    move-object v5, v6

    .line 295
    iget-object v6, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    :cond_2
    invoke-virtual {v5, p1, v4}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;->addAndUpdateRate(Ljava/lang/Object;F)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 299
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    .end local v3    # "propertyId":I
    .end local v4    # "rate":F
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v2    # "i":I
    .end local v5    # "listeners":Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;
    :cond_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 303
    invoke-direct {p0, v1}, Lmega/car/hardware/property/CarPropertyManager;->registerOrUpdatePropertyListener(Landroid/util/SparseArray;)V

    .line 305
    :cond_5
    invoke-virtual {p0}, Lmega/car/hardware/property/CarPropertyManager;->getEventHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$y0ioezB4STiPTSDsBpZW3EkAQIg;

    invoke-direct {v3, p0, p1, p2}, Lmega/car/hardware/property/-$$Lambda$CarPropertyManager$y0ioezB4STiPTSDsBpZW3EkAQIg;-><init>(Lmega/car/hardware/property/CarPropertyManager;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    nop

    .end local v1    # "needUpdateIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
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

    .line 281
    :cond_6
    :goto_1
    return-void
.end method

.method public removeBlacklist(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "propIds"    # [I

    .line 426
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->removeBlacklist(Ljava/lang/String;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 430
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setFloatProp(IIF)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "area"    # I
    .param p3, "status"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 168
    const-class v0, Ljava/lang/Float;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lmega/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    .line 169
    return-void
.end method

.method public setIntProp(III)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "area"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 159
    const-class v0, Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lmega/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    .line 160
    return-void
.end method

.method public setProperty(Ljava/lang/Class;IILjava/lang/Object;)V
    .locals 2
    .param p2, "propId"    # I
    .param p3, "areaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;IITE;)V"
        }
    .end annotation

    .line 199
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p4, "val":Ljava/lang/Object;, "TE;"
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    new-instance v1, Lmega/car/hardware/CarPropertyValue;

    invoke-direct {v1, p2, p3, p4}, Lmega/car/hardware/CarPropertyValue;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lmega/car/hardware/property/ICarProperty;->setProperty(Lmega/car/hardware/CarPropertyValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setPropertyRaw(Lmega/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Lmega/car/hardware/CarPropertyValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmega/car/utils/CarStateErrorException;
        }
    .end annotation

    .line 260
    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1}, Lmega/car/hardware/property/ICarProperty;->setProperty(Lmega/car/hardware/CarPropertyValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmega/car/hardware/property/CarPropertyManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    .locals 2
    .param p1, "callback"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 371
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0

    .line 374
    :try_start_0
    invoke-direct {p0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->doUnregisterListenerLocked(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    goto :goto_0

    .line 378
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Lmega/car/utils/CarStateErrorException;
    :try_start_1
    invoke-virtual {v1}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 378
    .end local v1    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
