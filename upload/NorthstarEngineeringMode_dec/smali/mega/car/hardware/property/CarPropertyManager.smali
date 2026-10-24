.class public Lmega/car/hardware/property/CarPropertyManager;
.super Lmega/car/CarManagerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;,
        Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;,
        Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_GENERIC_EVENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarPropertyManager"


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

.field private final mConfigCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lmega/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lmega/car/MegaCar;Landroid/os/IBinder;)V
    .locals 1
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lmega/car/CarManagerBase;-><init>(Lmega/car/MegaCar;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Lmega/car/hardware/property/ICarProperty$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/hardware/property/ICarProperty;

    move-result-object p2

    iput-object p2, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-virtual {p0}, Lmega/car/CarManagerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object p2

    if-nez p2, :cond_0

    iput-object p1, p0, Lmega/car/hardware/property/CarPropertyManager;->mHandler:Lmega/car/utils/SingleMessageHandler;

    return-void

    :cond_0
    new-instance p1, Lmega/car/hardware/property/CarPropertyManager$1;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lmega/car/hardware/property/CarPropertyManager$1;-><init>(Lmega/car/hardware/property/CarPropertyManager;Landroid/os/Looper;I)V

    iput-object p1, p0, Lmega/car/hardware/property/CarPropertyManager;->mHandler:Lmega/car/utils/SingleMessageHandler;

    return-void
.end method

.method public static synthetic a(Lmega/car/hardware/property/CarPropertyManager;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->lambda$registerCallback$0(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic access$000(Lmega/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lmega/car/hardware/property/CarPropertyManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lmega/car/hardware/property/CarPropertyManager;->handleEvent(Ljava/util/List;)V

    return-void
.end method

.method private doUnregisterListenerLocked(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lmega/car/hardware/property/CarRatedFloatListeners;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lmega/car/hardware/property/CarRatedFloatListeners;->remove(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lmega/car/hardware/property/CarRatedFloatListeners;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    iget-object v2, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    iget-object v3, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    invoke-interface {v2, v1, v3}, Lmega/car/hardware/property/ICarProperty;->unregisterCallback(ILmega/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {p0, v2}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_2
    iget-object v2, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lmega/car/hardware/property/CarRatedFloatListeners;->getRate()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    :goto_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lmega/car/hardware/property/CarPropertyManager;->registerOrUpdatePropertyListener(Landroid/util/SparseArray;)V

    goto :goto_0

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

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    invoke-virtual {v4}, Lmega/car/hardware/property/CarRatedFloatListeners;->getRate()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getAndDispatchPropertyInitValue(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->isSticky()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lmega/car/hardware/property/CarPropertyManager;->mConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    move v4, v2

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v1, v3}, Lmega/car/hardware/property/ICarProperty;->getPropertyConfigs([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmega/car/hardware/CarPropertyConfig;

    iget-object v4, p0, Lmega/car/hardware/property/CarPropertyManager;->mConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lmega/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :cond_3
    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_8

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lmega/car/hardware/property/CarPropertyManager;->mConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmega/car/hardware/CarPropertyConfig;

    if-nez v4, :cond_4

    sget-object v4, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "not found CarPropertyConfig for 0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lmega/car/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_4
    invoke-virtual {v4}, Lmega/car/hardware/CarPropertyConfig;->getAreaIds()[I

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_4
    if-ge v6, v5, :cond_7

    aget v7, v4, v6

    invoke-virtual {p0, v3, v7}, Lmega/car/hardware/property/CarPropertyManager;->getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lmega/car/hardware/CarPropertyValue;->getStatus()I

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {p1, v8}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V

    goto :goto_5

    :cond_5
    invoke-interface {p1, v3, v7}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onErrorEvent(II)V

    :cond_6
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private handleEvent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lmega/car/hardware/property/CarPropertyManager;->mHandler:Lmega/car/utils/SingleMessageHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmega/car/utils/SingleMessageHandler;->sendEvents(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$registerCallback$0(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->getAndDispatchPropertyInitValue(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
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

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [I

    new-array v3, v1, [F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object p1, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    invoke-interface {p1, v0, v2, v3}, Lmega/car/hardware/property/ICarProperty;->registerListener(Lmega/car/hardware/property/ICarPropertyEventListener;[I[F)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addBlacklist(Ljava/lang/String;[I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->addBlacklist(Ljava/lang/String;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public getConfigById(I)Lmega/car/hardware/CarPropertyConfig;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    sget-object p0, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getConfigById illegal propId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    filled-new-array {p1}, [I

    move-result-object v1

    invoke-interface {v0, v1}, Lmega/car/hardware/property/ICarProperty;->getPropertyConfigs([I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmega/car/hardware/CarPropertyConfig;

    invoke-virtual {v3}, Lmega/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/car/hardware/CarPropertyConfig;

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lmega/car/hardware/property/CarPropertyManager;->mConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/car/hardware/CarPropertyConfig;

    return-object p0
.end method

.method public getFloatProp(II)Ljava/lang/Float;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Lmega/car/hardware/CarPropertyValue;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getIntProp(II)I
    .locals 1

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Lmega/car/hardware/CarPropertyValue;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getProperty(Ljava/lang/Class;II)Lmega/car/hardware/CarPropertyValue;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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

    const-string v0, "Invalid property type: 0x"

    :try_start_0
    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v1, p2, p3}, Lmega/car/hardware/property/ICarProperty;->getProperty(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Expected: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but was: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-object p3

    :goto_1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/car/hardware/CarPropertyValue;

    return-object p0
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmega/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0}, Lmega/car/hardware/property/ICarProperty;->getPropertyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmega/car/hardware/CarPropertyConfig;

    iget-object v2, p0, Lmega/car/hardware/property/CarPropertyManager;->mConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lmega/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lmega/car/hardware/property/CarPropertyManager;->mConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lmega/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0}, Lmega/car/hardware/property/ICarProperty;->getPropertyList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->getProperty(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/car/hardware/CarPropertyValue;

    return-object p0
.end method

.method public injectEvent(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->injectEvent(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onCarDisconnected()V
    .locals 4

    sget-object v0, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCarDisconnected."

    invoke-static {v0, v1}, Lmega/car/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    invoke-interface {v0, v1}, Lmega/car/hardware/property/ICarProperty;->unregisterListener(Lmega/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to unregister listener: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmega/car/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    if-nez v1, :cond_1

    new-instance v1, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;

    invoke-direct {v1, p0, p0}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventListenerToService;-><init>(Lmega/car/hardware/property/CarPropertyManager;Lmega/car/hardware/property/CarPropertyManager;)V

    iput-object v1, p0, Lmega/car/hardware/property/CarPropertyManager;->mCarPropertyEventToService:Lmega/car/hardware/property/ICarPropertyEventListener;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    if-nez v6, :cond_2

    new-instance v6, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    invoke-direct {v6, p0, v5}, Lmega/car/hardware/property/CarPropertyManager$CarPropertyListeners;-><init>(Lmega/car/hardware/property/CarPropertyManager;F)V

    iget-object v7, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v6, p1, v5}, Lmega/car/hardware/property/CarRatedFloatListeners;->addAndUpdateRate(Ljava/lang/Object;F)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v1}, Lmega/car/hardware/property/CarPropertyManager;->registerOrUpdatePropertyListener(Landroid/util/SparseArray;)V

    :cond_5
    invoke-virtual {p0}, Lmega/car/CarManagerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lmega/car/hardware/property/a;

    invoke-direct {v3, p0, p1, v2, p2}, Lmega/car/hardware/property/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_3
    return-void
.end method

.method public removeBlacklist(Ljava/lang/String;[I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {p0, p1, p2}, Lmega/car/hardware/property/ICarProperty;->removeBlacklist(Ljava/lang/String;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "removeBlacklist: "

    invoke-static {p1, p2, p0}, Lmega/car/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setFloatProp(IIF)V
    .locals 1

    const-class v0, Ljava/lang/Float;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p0, v0, p1, p2, p3}, Lmega/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public setIntProp(III)V
    .locals 1

    const-class v0, Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, v0, p1, p2, p3}, Lmega/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/Class;IILjava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;IITE;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    new-instance v0, Lmega/car/hardware/CarPropertyValue;

    invoke-direct {v0, p2, p3, p4}, Lmega/car/hardware/CarPropertyValue;-><init>(IILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lmega/car/hardware/property/ICarProperty;->setProperty(Lmega/car/hardware/CarPropertyValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setPropertyRaw(Lmega/car/hardware/CarPropertyValue;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mService:Lmega/car/hardware/property/ICarProperty;

    invoke-interface {v0, p1}, Lmega/car/hardware/property/ICarProperty;->setProperty(Lmega/car/hardware/CarPropertyValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lmega/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmega/car/hardware/property/CarPropertyManager;->mActivePropertyListener:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->doUnregisterListenerLocked(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    sget-object p1, Lmega/car/hardware/property/CarPropertyManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "unregisterCallback: "

    invoke-static {p1, p2, p0}, Lmega/car/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
