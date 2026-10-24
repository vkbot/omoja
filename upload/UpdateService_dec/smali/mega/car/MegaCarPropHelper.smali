.class public Lmega/car/MegaCarPropHelper;
.super Ljava/lang/Object;
.source "MegaCarPropHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/MegaCarPropHelper$OnConnectListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CAR_PROP_UNKNOWN:I = -0x1

.field private static final FORCE_RECONNECT:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lmega/car/MegaCarPropHelper;


# instance fields
.field private mConnectListener:Lmega/car/MegaCarPropHelper$OnConnectListener;

.field private mManager:Lmega/car/CarPropertyManager;

.field private mMegaCar:Lmega/car/MegaCar;

.field private final mStatusChangeListener:Lmega/car/MegaCar$CarServiceLifecycleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lmega/car/MegaCarPropHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmega/car/MegaCarPropHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "forceReconnect"    # Z

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lmega/car/-$$Lambda$MegaCarPropHelper$tKmWmdewmmss2t_VIm6XySjUKDM;

    invoke-direct {v0, p0, p3, p1, p2}, Lmega/car/-$$Lambda$MegaCarPropHelper$tKmWmdewmmss2t_VIm6XySjUKDM;-><init>(Lmega/car/MegaCarPropHelper;ZLandroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lmega/car/MegaCarPropHelper;->mStatusChangeListener:Lmega/car/MegaCar$CarServiceLifecycleListener;

    .line 64
    invoke-direct {p0, p1, p2}, Lmega/car/MegaCarPropHelper;->ensureCarServiceConnected(Landroid/content/Context;Landroid/os/Handler;)V

    .line 65
    return-void
.end method

.method private declared-synchronized ensureCarServiceConnected(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 74
    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lmega/car/MegaCarPropHelper;->mStatusChangeListener:Lmega/car/MegaCar$CarServiceLifecycleListener;

    invoke-static {p1, p2, v0, v1, v2}, Lmega/car/MegaCar;->createCar(Landroid/content/Context;Landroid/os/Handler;JLmega/car/MegaCar$CarServiceLifecycleListener;)Lmega/car/MegaCar;

    move-result-object v0

    iput-object v0, p0, Lmega/car/MegaCarPropHelper;->mMegaCar:Lmega/car/MegaCar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 73
    .end local p0    # "this":Lmega/car/MegaCarPropHelper;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lmega/car/MegaCarPropHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 93
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmega/car/MegaCarPropHelper;->getInstance(Landroid/content/Context;Landroid/os/Handler;Z)Lmega/car/MegaCarPropHelper;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;Z)Lmega/car/MegaCarPropHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "forceReconnect"    # Z

    .line 101
    sget-object v0, Lmega/car/MegaCarPropHelper;->sInstance:Lmega/car/MegaCarPropHelper;

    if-nez v0, :cond_1

    .line 102
    const-class v0, Lmega/car/MegaCarPropHelper;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lmega/car/MegaCarPropHelper;->sInstance:Lmega/car/MegaCarPropHelper;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lmega/car/MegaCarPropHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lmega/car/MegaCarPropHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    sput-object v1, Lmega/car/MegaCarPropHelper;->sInstance:Lmega/car/MegaCarPropHelper;

    .line 107
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 109
    :cond_1
    :goto_0
    sget-object v0, Lmega/car/MegaCarPropHelper;->sInstance:Lmega/car/MegaCarPropHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCarPropertyManager()Lmega/car/CarPropertyManager;
    .locals 4

    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Lmega/car/MegaCarPropHelper;->mManager:Lmega/car/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lmega/car/MegaCarPropHelper;->mManager:Lmega/car/CarPropertyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 338
    .end local p0    # "this":Lmega/car/MegaCarPropHelper;
    :cond_0
    :try_start_1
    new-instance v0, Lmega/car/CarPropertyManager;

    iget-object v1, p0, Lmega/car/MegaCarPropHelper;->mMegaCar:Lmega/car/MegaCar;

    iget-object v2, p0, Lmega/car/MegaCarPropHelper;->mMegaCar:Lmega/car/MegaCar;

    .line 339
    invoke-virtual {v2}, Lmega/car/MegaCar;->getService()Lmega/car/ICar;

    move-result-object v2

    const-string v3, "property"

    invoke-interface {v2, v3}, Lmega/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmega/car/CarPropertyManager;-><init>(Lmega/car/MegaCar;Landroid/os/IBinder;)V

    iput-object v0, p0, Lmega/car/MegaCarPropHelper;->mManager:Lmega/car/CarPropertyManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lmega/car/MegaCarPropHelper;->mManager:Lmega/car/CarPropertyManager;

    if-nez v0, :cond_1

    .line 344
    sget-object v0, Lmega/car/MegaCarPropHelper;->TAG:Ljava/lang/String;

    const-string v1, "Null CarPropertyManager"

    invoke-static {v0, v1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_1
    iget-object v0, p0, Lmega/car/MegaCarPropHelper;->mManager:Lmega/car/CarPropertyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFloatProp(I)F
    .locals 1
    .param p1, "propid"    # I

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarPropHelper;->getFloatProp(II)F

    move-result v0

    return v0
.end method

.method public getFloatProp(II)F
    .locals 3
    .param p1, "propid"    # I
    .param p2, "area"    # I

    .line 246
    const/high16 v0, -0x40800000    # -1.0f

    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v1

    .line 247
    .local v1, "manager":Lmega/car/CarPropertyManager;
    if-eqz v1, :cond_1

    .line 248
    invoke-virtual {v1, p1, p2}, Lmega/car/CarPropertyManager;->getFloatProp(II)Ljava/lang/Float;

    move-result-object v2

    .line 249
    .local v2, "value":Ljava/lang/Float;
    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    .line 253
    .end local v1    # "manager":Lmega/car/CarPropertyManager;
    .end local v2    # "value":Ljava/lang/Float;
    :cond_1
    goto :goto_1

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v1}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 254
    .end local v1    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_1
    return v0
.end method

.method public getIntProp(I)I
    .locals 1
    .param p1, "propid"    # I

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarPropHelper;->getIntProp(II)I

    move-result v0

    return v0
.end method

.method public getIntProp(II)I
    .locals 2
    .param p1, "propid"    # I
    .param p2, "area"    # I

    .line 194
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v0

    .line 195
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p1, p2}, Lmega/car/CarPropertyManager;->getIntProp(II)I

    move-result v1

    return v1

    .line 198
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getMegaCar()Lmega/car/MegaCar;
    .locals 1

    .line 113
    iget-object v0, p0, Lmega/car/MegaCarPropHelper;->mMegaCar:Lmega/car/MegaCar;

    return-object v0
.end method

.method public getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;
    .locals 1
    .param p1, "propid"    # I

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;
    .locals 2
    .param p1, "propid"    # I
    .param p2, "areaId"    # I

    .line 307
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v0

    .line 308
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, p1, p2}, Lmega/car/CarPropertyManager;->getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v1
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 313
    .end local v0    # "manager":Lmega/car/CarPropertyManager;
    :cond_0
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 314
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$new$0$MegaCarPropHelper(ZLandroid/content/Context;Landroid/os/Handler;Lmega/car/MegaCar;Z)V
    .locals 2
    .param p1, "forceReconnect"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "car"    # Lmega/car/MegaCar;
    .param p5, "ready"    # Z

    .line 48
    if-eqz p5, :cond_0

    .line 49
    sget-object v0, Lmega/car/MegaCarPropHelper;->TAG:Ljava/lang/String;

    const-string v1, "CarService connected"

    invoke-static {v0, v1}, Lmega/log/MLog;->simpleD(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lmega/car/MegaCarPropHelper;->mConnectListener:Lmega/car/MegaCarPropHelper$OnConnectListener;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lmega/car/MegaCar;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lmega/car/MegaCarPropHelper;->mConnectListener:Lmega/car/MegaCarPropHelper$OnConnectListener;

    invoke-interface {v0}, Lmega/car/MegaCarPropHelper$OnConnectListener;->onConnect()V

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lmega/car/MegaCarPropHelper;->TAG:Ljava/lang/String;

    const-string v1, "CarService disconnected"

    invoke-static {v0, v1}, Lmega/log/MLog;->simpleD(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lmega/car/MegaCarPropHelper;->mConnectListener:Lmega/car/MegaCarPropHelper$OnConnectListener;

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v0}, Lmega/car/MegaCarPropHelper$OnConnectListener;->onDisConnect()V

    .line 58
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmega/car/MegaCarPropHelper;->mManager:Lmega/car/CarPropertyManager;

    .line 59
    if-eqz p1, :cond_2

    .line 60
    invoke-direct {p0, p2, p3}, Lmega/car/MegaCarPropHelper;->ensureCarServiceConnected(Landroid/content/Context;Landroid/os/Handler;)V

    .line 63
    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized registerCallback(Ljava/lang/Object;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .local p1, "cb":Ljava/lang/Object;, "TT;"
    .local p2, "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    monitor-enter p0

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v0

    .line 154
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1, p2}, Lmega/car/CarPropertyManager;->registerCallback(Ljava/lang/Object;Landroid/util/SparseArray;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v0    # "manager":Lmega/car/CarPropertyManager;
    .end local p0    # "this":Lmega/car/MegaCarPropHelper;
    :cond_0
    goto :goto_0

    .line 152
    .end local p1    # "cb":Ljava/lang/Object;, "TT;"
    .end local p2    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 157
    .restart local p1    # "cb":Ljava/lang/Object;, "TT;"
    .restart local p2    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    :try_start_1
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    monitor-exit p0

    return-void

    .line 152
    .end local p1    # "cb":Ljava/lang/Object;, "TT;"
    .end local p2    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerCallback(Lmega/car/CarPropertyManager$CarPropChangeCallback;Ljava/util/Set;)V
    .locals 4
    .param p1, "cb"    # Lmega/car/CarPropertyManager$CarPropChangeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/CarPropertyManager$CarPropChangeCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 123
    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 127
    .local v0, "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 128
    .local v2, "id":I
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    .end local v2    # "id":I
    goto :goto_0

    .line 130
    .end local p0    # "this":Lmega/car/MegaCarPropHelper;
    :cond_1
    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarPropHelper;->registerCallback(Ljava/lang/Object;Landroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 122
    .end local v0    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    .end local p1    # "cb":Lmega/car/CarPropertyManager$CarPropChangeCallback;
    .end local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 124
    .restart local p0    # "this":Lmega/car/MegaCarPropHelper;
    .restart local p1    # "cb":Lmega/car/CarPropertyManager$CarPropChangeCallback;
    .restart local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerCallback(Lmega/car/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    .locals 4
    .param p1, "cb"    # Lmega/car/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/CarPropertyManager$CarPropertyEventCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 134
    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 138
    .local v0, "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 139
    .local v2, "id":I
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    .end local v2    # "id":I
    goto :goto_0

    .line 141
    .end local p0    # "this":Lmega/car/MegaCarPropHelper;
    :cond_1
    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarPropHelper;->registerCallback(Ljava/lang/Object;Landroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 133
    .end local v0    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    .end local p1    # "cb":Lmega/car/CarPropertyManager$CarPropertyEventCallback;
    .end local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 135
    .restart local p0    # "this":Lmega/car/MegaCarPropHelper;
    .restart local p1    # "cb":Lmega/car/CarPropertyManager$CarPropertyEventCallback;
    .restart local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public setFloatProp(IF)V
    .locals 1
    .param p1, "propid"    # I
    .param p2, "status"    # F

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lmega/car/MegaCarPropHelper;->setFloatProp(IIF)V

    .line 265
    return-void
.end method

.method public setFloatProp(IIF)V
    .locals 1
    .param p1, "propid"    # I
    .param p2, "area"    # I
    .param p3, "status"    # F

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v0

    .line 276
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p1, p2, p3}, Lmega/car/CarPropertyManager;->setFloatProp(IIF)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v0    # "manager":Lmega/car/CarPropertyManager;
    :cond_0
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 282
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    return-void
.end method

.method public setIntProp(II)V
    .locals 1
    .param p1, "propid"    # I
    .param p2, "status"    # I

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lmega/car/MegaCarPropHelper;->setIntProp(III)V

    .line 209
    return-void
.end method

.method public setIntProp(III)V
    .locals 1
    .param p1, "propid"    # I
    .param p2, "area"    # I
    .param p3, "status"    # I

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v0

    .line 220
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1, p2, p3}, Lmega/car/CarPropertyManager;->setIntProp(III)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v0    # "manager":Lmega/car/CarPropertyManager;
    :cond_0
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 226
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    return-void
.end method

.method public setOnConnectListener(Lmega/car/MegaCarPropHelper$OnConnectListener;)V
    .locals 0
    .param p1, "onConnectListener"    # Lmega/car/MegaCarPropHelper$OnConnectListener;

    .line 68
    iput-object p1, p0, Lmega/car/MegaCarPropHelper;->mConnectListener:Lmega/car/MegaCarPropHelper$OnConnectListener;

    .line 69
    return-void
.end method

.method public setRawProp(Lmega/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Lmega/car/hardware/CarPropertyValue;

    .line 324
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v0

    .line 325
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0, p1}, Lmega/car/CarPropertyManager;->setPropertyRaw(Lmega/car/hardware/CarPropertyValue;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0    # "manager":Lmega/car/CarPropertyManager;
    :cond_0
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 331
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    return-void
.end method

.method public declared-synchronized unregisterCallback(Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .local p1, "cb":Ljava/lang/Object;, "TT;"
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 169
    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lmega/car/MegaCarPropHelper;->getCarPropertyManager()Lmega/car/CarPropertyManager;

    move-result-object v0

    .line 171
    .local v0, "manager":Lmega/car/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1, p2}, Lmega/car/CarPropertyManager;->unregisterCallback(Ljava/lang/Object;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 168
    .end local v0    # "manager":Lmega/car/CarPropertyManager;
    .end local p0    # "this":Lmega/car/MegaCarPropHelper;
    .end local p1    # "cb":Ljava/lang/Object;, "TT;"
    .end local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 175
    .restart local p0    # "this":Lmega/car/MegaCarPropHelper;
    .restart local p1    # "cb":Ljava/lang/Object;, "TT;"
    .restart local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
