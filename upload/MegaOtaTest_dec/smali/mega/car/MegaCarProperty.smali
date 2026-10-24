.class public Lmega/car/MegaCarProperty;
.super Ljava/lang/Object;
.source "MegaCarProperty.java"


# static fields
.field public static final CAR_PROP_UNKNOWN:I = -0x1

.field private static final FORCE_RECONNECT:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lmega/car/MegaCarProperty;


# instance fields
.field private mManager:Lmega/car/hardware/property/CarPropertyManager;

.field private mMegaCar:Lmega/car/MegaCar;

.field private final mStatusChangeListener:Lmega/car/MegaCar$CarServiceLifecycleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lmega/car/MegaCarProperty;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "forceReconnect"    # Z

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lmega/car/-$$Lambda$MegaCarProperty$6LuDud_z0pANm7lvYQ4HqENOzoU;

    invoke-direct {v0, p0, p3, p1, p2}, Lmega/car/-$$Lambda$MegaCarProperty$6LuDud_z0pANm7lvYQ4HqENOzoU;-><init>(Lmega/car/MegaCarProperty;ZLandroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lmega/car/MegaCarProperty;->mStatusChangeListener:Lmega/car/MegaCar$CarServiceLifecycleListener;

    .line 61
    invoke-direct {p0, p1, p2}, Lmega/car/MegaCarProperty;->ensureCarServiceConnected(Landroid/content/Context;Landroid/os/Handler;)V

    .line 62
    return-void
.end method

.method private declared-synchronized ensureCarServiceConnected(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 67
    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lmega/car/MegaCarProperty;->mStatusChangeListener:Lmega/car/MegaCar$CarServiceLifecycleListener;

    invoke-static {p1, p2, v0, v1, v2}, Lmega/car/MegaCar;->createCar(Landroid/content/Context;Landroid/os/Handler;JLmega/car/MegaCar$CarServiceLifecycleListener;)Lmega/car/MegaCar;

    move-result-object v0

    iput-object v0, p0, Lmega/car/MegaCarProperty;->mMegaCar:Lmega/car/MegaCar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 66
    .end local p0    # "this":Lmega/car/MegaCarProperty;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lmega/car/MegaCarProperty;
    .locals 1

    .line 75
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmega/car/MegaCarProperty;->getInstance(Landroid/content/Context;)Lmega/car/MegaCarProperty;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lmega/car/MegaCarProperty;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 86
    sget-object v0, Lmega/car/MegaCarProperty;->sInstance:Lmega/car/MegaCarProperty;

    if-nez v0, :cond_1

    .line 87
    const-class v0, Lmega/car/MegaCarProperty;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lmega/car/MegaCarProperty;->sInstance:Lmega/car/MegaCarProperty;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "megaCarThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lmega/car/MegaCarProperty;

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v5}, Lmega/car/MegaCarProperty;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    sput-object v3, Lmega/car/MegaCarProperty;->sInstance:Lmega/car/MegaCarProperty;

    .line 98
    .end local v1    # "megaCarThread":Landroid/os/HandlerThread;
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 100
    :cond_1
    :goto_0
    sget-object v0, Lmega/car/MegaCarProperty;->sInstance:Lmega/car/MegaCarProperty;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;
    .locals 2

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mManager:Lmega/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mManager:Lmega/car/hardware/property/CarPropertyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 113
    .end local p0    # "this":Lmega/car/MegaCarProperty;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mMegaCar:Lmega/car/MegaCar;

    if-nez v0, :cond_1

    .line 114
    sget-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v1, "Null MegaCar"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 117
    :cond_1
    :try_start_2
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mMegaCar:Lmega/car/MegaCar;

    const-string v1, "property"

    invoke-virtual {v0, v1}, Lmega/car/MegaCar;->getCarManager(Ljava/lang/String;)Lmega/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Lmega/car/hardware/property/CarPropertyManager;

    iput-object v0, p0, Lmega/car/MegaCarProperty;->mManager:Lmega/car/hardware/property/CarPropertyManager;

    .line 118
    if-nez v0, :cond_2

    .line 119
    sget-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v1, "Null CarPropertyManager"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_2
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mManager:Lmega/car/hardware/property/CarPropertyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefValueOfCarProperty(I)Ljava/lang/Object;
    .locals 4
    .param p1, "propId"    # I

    .line 310
    invoke-static {}, Lmega/car/config/CarPropertyProvider;->getAllProperties()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/car/hardware/CarPropertyConfig;

    .line 311
    .local v0, "propertyConfig":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<*>;"
    if-eqz v0, :cond_c

    .line 312
    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyConfig;->getPropertyType()Ljava/lang/Class;

    move-result-object v1

    .line 313
    .local v1, "propertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 314
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 315
    :cond_0
    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_1

    .line 316
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 317
    :cond_1
    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_2

    .line 318
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 319
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    .line 320
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 321
    :cond_3
    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_4

    .line 322
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    .line 323
    :cond_4
    const-class v2, [I

    if-ne v1, v2, :cond_5

    .line 324
    new-array v2, v3, [I

    return-object v2

    .line 325
    :cond_5
    const-class v2, [Ljava/lang/Integer;

    if-ne v1, v2, :cond_6

    .line 326
    new-array v2, v3, [Ljava/lang/Integer;

    return-object v2

    .line 327
    :cond_6
    const-class v2, [F

    if-ne v1, v2, :cond_7

    .line 328
    new-array v2, v3, [F

    return-object v2

    .line 329
    :cond_7
    const-class v2, [Ljava/lang/Float;

    if-ne v1, v2, :cond_8

    .line 330
    new-array v2, v3, [Ljava/lang/Float;

    return-object v2

    .line 331
    :cond_8
    const-class v2, [J

    if-ne v1, v2, :cond_9

    .line 332
    new-array v2, v3, [J

    return-object v2

    .line 333
    :cond_9
    const-class v2, [Ljava/lang/Long;

    if-ne v1, v2, :cond_a

    .line 334
    new-array v2, v3, [Ljava/lang/Long;

    return-object v2

    .line 335
    :cond_a
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_b

    .line 336
    const-string v2, ""

    return-object v2

    .line 337
    :cond_b
    const-class v2, [B

    if-ne v1, v2, :cond_c

    .line 338
    new-array v2, v3, [B

    return-object v2

    .line 341
    .end local v1    # "propertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFloatProp(I)F
    .locals 4
    .param p1, "propid"    # I

    .line 232
    const/high16 v0, -0x40800000    # -1.0f

    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v1

    .line 233
    .local v1, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v1, :cond_1

    .line 234
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lmega/car/hardware/property/CarPropertyManager;->getFloatProp(II)Ljava/lang/Float;

    move-result-object v2

    .line 235
    .local v2, "value":Ljava/lang/Float;
    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    .line 237
    .end local v2    # "value":Ljava/lang/Float;
    :cond_1
    sget-object v2, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v3, "getFloatProp manager Null"

    invoke-static {v2, v3}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v1    # "manager":Lmega/car/hardware/property/CarPropertyManager;
    goto :goto_1

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v1}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 241
    sget-object v2, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v3, "getFloatProp CarStateErrorException"

    invoke-static {v2, v3}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v1    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_1
    return v0
.end method

.method public getIntProp(I)I
    .locals 3
    .param p1, "propid"    # I

    .line 195
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 196
    .local v0, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmega/car/hardware/property/CarPropertyManager;->getIntProp(II)I

    move-result v1

    return v1

    .line 199
    :cond_0
    sget-object v1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v2, "getIntProp manager Null"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v1, -0x1

    return v1
.end method

.method public getMegaCar()Lmega/car/MegaCar;
    .locals 1

    .line 105
    iget-object v0, p0, Lmega/car/MegaCarProperty;->mMegaCar:Lmega/car/MegaCar;

    return-object v0
.end method

.method public getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;
    .locals 3
    .param p1, "propid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmega/car/hardware/CarPropertyValue<",
            "*>;"
        }
    .end annotation

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 276
    .local v0, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 277
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmega/car/hardware/property/CarPropertyManager;->getPropertyRaw(II)Lmega/car/hardware/CarPropertyValue;

    move-result-object v1

    return-object v1

    .line 279
    :cond_0
    sget-object v1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v2, "getPropertyRaw manager Null"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v0    # "manager":Lmega/car/hardware/property/CarPropertyManager;
    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 283
    sget-object v1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v2, "getPropertyRaw CarStateErrorException"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$new$0$MegaCarProperty(ZLandroid/content/Context;Landroid/os/Handler;Lmega/car/MegaCar;Z)V
    .locals 2
    .param p1, "forceReconnect"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "car"    # Lmega/car/MegaCar;
    .param p5, "ready"    # Z

    .line 51
    if-eqz p5, :cond_0

    .line 52
    sget-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v1, "CarService connected"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v1, "CarService disconnected"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lmega/car/MegaCarProperty;->mManager:Lmega/car/hardware/property/CarPropertyManager;

    .line 56
    if-eqz p1, :cond_1

    .line 57
    invoke-direct {p0, p2, p3}, Lmega/car/MegaCarProperty;->ensureCarServiceConnected(Landroid/content/Context;Landroid/os/Handler;)V

    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    .locals 3
    .param p1, "cb"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .local p2, "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    monitor-enter p0

    .line 155
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 156
    .local v0, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V

    goto :goto_0

    .line 159
    .end local p0    # "this":Lmega/car/MegaCarProperty;
    :cond_0
    sget-object v1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v2, "registerCallback manager null"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v0    # "manager":Lmega/car/hardware/property/CarPropertyManager;
    :goto_0
    goto :goto_1

    .line 154
    .end local p1    # "cb":Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .end local p2    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 161
    .restart local p1    # "cb":Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .restart local p2    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    :try_start_1
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 163
    sget-object v1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v2, "registerCallback CarStateErrorException"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_1
    monitor-exit p0

    return-void

    .line 154
    .end local p1    # "cb":Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .end local p2    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    .locals 4
    .param p1, "cb"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 133
    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 137
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

    .line 138
    .local v2, "id":I
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    .end local v2    # "id":I
    goto :goto_0

    .line 140
    .end local p0    # "this":Lmega/car/MegaCarProperty;
    :cond_1
    invoke-virtual {p0, p1, v0}, Lmega/car/MegaCarProperty;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 132
    .end local v0    # "propIdRateMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    .end local p1    # "cb":Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .end local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 134
    .restart local p0    # "this":Lmega/car/MegaCarProperty;
    .restart local p1    # "cb":Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .restart local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public setFloatProp(IF)V
    .locals 3
    .param p1, "propid"    # I
    .param p2, "status"    # F

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 255
    .local v0, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 256
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lmega/car/hardware/property/CarPropertyManager;->setFloatProp(IIF)V

    goto :goto_0

    .line 258
    :cond_0
    sget-object v1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v2, "setFloatProp manager Null"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0    # "manager":Lmega/car/hardware/property/CarPropertyManager;
    :goto_0
    goto :goto_1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 262
    sget-object v1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v2, "setFloatProp CarStateErrorException"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_1
    return-void
.end method

.method public setIntProp(II)V
    .locals 3
    .param p1, "propid"    # I
    .param p2, "status"    # I

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 213
    .local v0, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 214
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lmega/car/hardware/property/CarPropertyManager;->setIntProp(III)V

    goto :goto_0

    .line 216
    :cond_0
    sget-object v1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v2, "setIntProp manager Null"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v0    # "manager":Lmega/car/hardware/property/CarPropertyManager;
    :goto_0
    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 220
    sget-object v1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v2, "setIntProp CarStateErrorException"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_1
    return-void
.end method

.method public setRawProp(Lmega/car/hardware/CarPropertyValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 295
    .local p1, "value":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<*>;"
    :try_start_0
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 296
    .local v0, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, p1}, Lmega/car/hardware/property/CarPropertyManager;->setPropertyRaw(Lmega/car/hardware/CarPropertyValue;)V

    goto :goto_0

    .line 299
    :cond_0
    sget-object v1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v2, "setRawProp manager Null"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lmega/car/utils/CarStateErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0    # "manager":Lmega/car/hardware/property/CarPropertyManager;
    :goto_0
    goto :goto_1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Lmega/car/utils/CarStateErrorException;
    invoke-virtual {v0}, Lmega/car/utils/CarStateErrorException;->printStackTrace()V

    .line 303
    sget-object v1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v2, "setRawProp CarStateErrorException"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v0    # "e":Lmega/car/utils/CarStateErrorException;
    :goto_1
    return-void
.end method

.method public declared-synchronized unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    .locals 3
    .param p1, "cb"    # Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 176
    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lmega/car/MegaCarProperty;->getCarPropertyManager()Lmega/car/hardware/property/CarPropertyManager;

    move-result-object v0

    .line 178
    .local v0, "manager":Lmega/car/hardware/property/CarPropertyManager;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p1, p2}, Lmega/car/hardware/property/CarPropertyManager;->unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    goto :goto_0

    .line 181
    .end local p0    # "this":Lmega/car/MegaCarProperty;
    :cond_0
    sget-object v1, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v2, "unregisterCallback manager null"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v0    # "manager":Lmega/car/hardware/property/CarPropertyManager;
    :goto_0
    goto :goto_1

    .line 184
    :cond_1
    sget-object v0, Lmega/car/MegaCarProperty;->TAG:Ljava/lang/String;

    const-string v1, "unregisterCallback ids Null"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_1
    monitor-exit p0

    return-void

    .line 175
    .end local p1    # "cb":Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
    .end local p2    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
