.class public Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;
.super Ljava/lang/Object;
.source "MegaDmcOtaUpdateImpl.java"

# interfaces
.implements Lcom/mega/update/sdk/MegaOtaUpdateInterface;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final CAR_INFO_UUID:Ljava/lang/String; = "persist.mega.vehicle_uuid"

.field private static final ECU_NAME:Ljava/lang/String; = "DMC"

.field private static final OTA_UPDATE_SERVICE:Ljava/lang/String; = "mega.ota.update"

.field public static final SYSTEM_PROPERTIES_HW_VERSION:Ljava/lang/String; = "persist.car.info.hwId"

.field public static final SYSTEM_PROPERTIES_OS_VERSION:Ljava/lang/String; = "persist.car.info.androidVer"

.field public static final SYSTEM_PROPERTIES_PART_NUM:Ljava/lang/String; = "persist.car.info.partNum"

.field public static final SYSTEM_PROPERTIES_SN:Ljava/lang/String; = "persist.car.info.sn"

.field public static final SYSTEM_PROPERTIES_VIN:Ljava/lang/String; = "persist.car.info.vin"

.field private static final TAG:Ljava/lang/String; = "MegaDmcOtaUpdateImpl"


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mOtaUpdateStatusCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mUpdateCallback:Lcom/mega/update/service/IUpdateCallback;

.field private mUpdateService:Lcom/mega/update/service/IUpdateService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$1;

    invoke-direct {v0, p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$1;-><init>(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)V

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateCallback:Lcom/mega/update/service/IUpdateCallback;

    .line 70
    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mApplicationContext:Landroid/content/Context;

    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mOtaUpdateStatusCallbacks:Ljava/util/List;

    .line 72
    invoke-direct {p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->startConnectThread()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    .line 39
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mOtaUpdateStatusCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    .line 39
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateService;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    .line 39
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;Lcom/mega/update/service/IUpdateService;)Lcom/mega/update/service/IUpdateService;
    .locals 0
    .param p0, "x0"    # Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;
    .param p1, "x1"    # Lcom/mega/update/service/IUpdateService;

    .line 39
    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    .line 39
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateCallback:Lcom/mega/update/service/IUpdateCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    .line 39
    invoke-direct {p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->notifyConnectState()V

    return-void
.end method

.method private notifyConnectState()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mOtaUpdateStatusCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 154
    goto :goto_0

    .line 155
    :cond_0
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startConnectThread()V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;

    invoke-direct {v1, p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;-><init>(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 81
    const-string v0, "MegaDmcOtaUpdateImpl"

    const-string v1, "update service died!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {v0}, Lcom/mega/update/service/IUpdateService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    .line 85
    invoke-direct {p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->notifyConnectState()V

    .line 86
    invoke-direct {p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->startConnectThread()V

    .line 87
    return-void
.end method

.method public deleteNewLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 443
    move-object v0, p1

    .line 444
    .local v0, "value":Ljava/lang/String;
    move-object v1, v0

    .line 445
    .local v1, "tmpData":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 446
    .local v2, "index":I
    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 447
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 449
    :cond_0
    return-object v0
.end method

.method public getDeviceInfo()Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    .locals 16

    move-object/from16 v1, p0

    .line 312
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lmega/car/MegaCarPropHelper;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lmega/car/MegaCarPropHelper;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .local v0, "helper":Lmega/car/MegaCarPropHelper;
    goto :goto_0

    .line 313
    .end local v0    # "helper":Lmega/car/MegaCarPropHelper;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 315
    const/4 v3, 0x0

    move-object v0, v3

    .line 317
    .local v0, "helper":Lmega/car/MegaCarPropHelper;
    :goto_0
    if-nez v0, :cond_0

    return-object v2

    .line 318
    :cond_0
    new-instance v2, Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    invoke-direct {v2}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;-><init>()V

    .line 319
    .local v2, "otaDeviceInfo":Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v3, "hwVersionBuilder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v4, "swVersionBuilder":Ljava/lang/StringBuilder;
    const-string v5, "persist.car.info.hwId"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, "huHwVersion_sys":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "MegaDmcOtaUpdateImpl"

    if-eqz v6, :cond_2

    .line 323
    const v6, 0x33000015

    invoke-virtual {v0, v6}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v6

    .line 324
    .local v6, "huHwVersion":Lmega/car/hardware/CarPropertyValue;
    if-eqz v6, :cond_1

    .line 325
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " huHwVersion ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v6}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->deleteNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, "version":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .end local v6    # "huHwVersion":Lmega/car/hardware/CarPropertyValue;
    .end local v8    # "version":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 330
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " huHwVersion_sys ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setHwVersion(Ljava/lang/String;)V

    .line 335
    const v6, 0x3300000c

    invoke-virtual {v0, v6}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v6

    .line 337
    .local v6, "mcuHwVersion":Lmega/car/hardware/CarPropertyValue;
    const-string v8, "persist.car.info.androidVer"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 338
    .local v8, "osVerion_sys":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "_"

    if-eqz v9, :cond_4

    .line 339
    const v9, 0x3300000f

    invoke-virtual {v0, v9}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v9

    .line 340
    .local v9, "osVerion":Lmega/car/hardware/CarPropertyValue;
    if-eqz v9, :cond_3

    .line 341
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " osVerion ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v9}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->deleteNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 343
    .local v11, "version":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 344
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .end local v9    # "osVerion":Lmega/car/hardware/CarPropertyValue;
    .end local v11    # "version":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 348
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " osVerion_sys ="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :goto_2
    const v9, 0x3300000a

    invoke-virtual {v0, v9}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v9

    .line 353
    .local v9, "mcuSwaVersion":Lmega/car/hardware/CarPropertyValue;
    const v10, 0x3300000b

    invoke-virtual {v0, v10}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v10

    .line 354
    .local v10, "mcuSwmVersion":Lmega/car/hardware/CarPropertyValue;
    if-eqz v10, :cond_7

    .line 355
    invoke-virtual {v10}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->deleteNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 356
    .restart local v11    # "version":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/mega/update/sdk/utils/OtaUtil;->transformVersion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 357
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-nez v12, :cond_5

    goto :goto_3

    .line 360
    :cond_5
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 358
    :cond_6
    :goto_3
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 364
    .end local v11    # "version":Ljava/lang/String;
    :cond_7
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSwVersion(Ljava/lang/String;)V

    .line 367
    const-string v11, "persist.car.info.sn"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 368
    .local v11, "sn_sys":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v13, ""

    if-eqz v12, :cond_9

    .line 369
    const v12, 0x33000013

    invoke-virtual {v0, v12}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v12

    .line 370
    .local v12, "sn":Lmega/car/hardware/CarPropertyValue;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sn ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-nez v12, :cond_8

    .line 372
    invoke-virtual {v2, v13}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSerialNumber(Ljava/lang/String;)V

    goto :goto_5

    .line 374
    :cond_8
    invoke-virtual {v12}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSerialNumber(Ljava/lang/String;)V

    .line 376
    .end local v12    # "sn":Lmega/car/hardware/CarPropertyValue;
    :goto_5
    goto :goto_6

    .line 377
    :cond_9
    invoke-virtual {v2, v11}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSerialNumber(Ljava/lang/String;)V

    .line 380
    :goto_6
    const-string v12, "persist.car.info.partNum"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 381
    .local v12, "partNumber_sys":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 382
    const v14, 0x33000010

    invoke-virtual {v0, v14}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v14

    .line 383
    .local v14, "partNumber":Lmega/car/hardware/CarPropertyValue;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " partNumber ="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-nez v14, :cond_a

    .line 385
    invoke-virtual {v2, v13}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setPartNumber(Ljava/lang/String;)V

    goto :goto_7

    .line 387
    :cond_a
    invoke-virtual {v14}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setPartNumber(Ljava/lang/String;)V

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getPartNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", length "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->getPartNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v14    # "partNumber":Lmega/car/hardware/CarPropertyValue;
    :goto_7
    goto :goto_8

    .line 391
    :cond_b
    invoke-virtual {v2, v12}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setPartNumber(Ljava/lang/String;)V

    .line 394
    :goto_8
    const v1, 0x33000011

    invoke-virtual {v0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v1

    .line 395
    .local v1, "supplierCode":Lmega/car/hardware/CarPropertyValue;
    if-nez v1, :cond_c

    .line 396
    invoke-virtual {v2, v13}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSupplierCode(Ljava/lang/String;)V

    goto :goto_9

    .line 398
    :cond_c
    invoke-virtual {v1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSupplierCode(Ljava/lang/String;)V

    .line 400
    :goto_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " otaDeviceInfo ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-object v2
.end method

.method public getState()Lcom/mega/update/service/UpdateState;
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 407
    return-object v1

    .line 410
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {v0}, Lcom/mega/update/service/IUpdateService;->getState()Lcom/mega/update/service/UpdateState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .local v0, "state":Lcom/mega/update/service/UpdateState;
    return-object v0

    .line 412
    .end local v0    # "state":Lcom/mega/update/service/UpdateState;
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 414
    return-object v1
.end method

.method public getStoragePath()Ljava/lang/String;
    .locals 1

    .line 265
    const-string v0, "/data/ota_package/"

    return-object v0
.end method

.method public isConnect()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onFinishUpgrade(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 288
    return-void
.end method

.method public registerCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)Z
    .locals 2
    .param p1, "listener"    # Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 292
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mOtaUpdateStatusCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 294
    .local v1, "result":Z
    nop

    .line 297
    monitor-exit v0

    return v1

    .line 298
    .end local v1    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setEcuVersionCallback(Lcom/mega/update/sdk/MegaOtaAssistInterface$ecuVersionCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/mega/update/sdk/MegaOtaAssistInterface$ecuVersionCallback;

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public setOtaMode(II)Z
    .locals 6
    .param p1, "mode"    # I
    .param p2, "extension"    # I

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " start setOtaMode mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extension = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MegaDmcOtaUpdateImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mApplicationContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lmega/car/MegaCarPropHelper;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lmega/car/MegaCarPropHelper;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .local v0, "helper":Lmega/car/MegaCarPropHelper;
    goto :goto_0

    .line 424
    .end local v0    # "helper":Lmega/car/MegaCarPropHelper;
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 426
    const/4 v3, 0x0

    .line 427
    .local v3, "helper":Lmega/car/MegaCarPropHelper;
    const-string v4, " setOtaMode get helper exception "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 429
    .end local v3    # "helper":Lmega/car/MegaCarPropHelper;
    .local v0, "helper":Lmega/car/MegaCarPropHelper;
    :goto_0
    if-nez v0, :cond_0

    .line 430
    const-string v1, " setOtaMode helper is null "

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v1, 0x0

    return v1

    .line 433
    :cond_0
    new-instance v3, Lmega/car/hardware/CarPropertyValue;

    const v4, 0x2300000d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 434
    .local v3, "value":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_1

    .line 435
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmega/car/hardware/CarPropertyValue;->setExtension(Ljava/lang/Object;)V

    .line 437
    :cond_1
    invoke-virtual {v0, v3}, Lmega/car/MegaCarPropHelper;->setRawProp(Lmega/car/hardware/CarPropertyValue;)V

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " end setOtaMode mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v1, 0x1

    return v1
.end method

.method public triggerActivate()I
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 223
    return v1

    .line 226
    :cond_0
    :try_start_0
    new-instance v0, Lcom/mega/update/service/UpdateOption;

    invoke-direct {v0}, Lcom/mega/update/service/UpdateOption;-><init>()V

    .line 227
    .local v0, "updateOption":Lcom/mega/update/service/UpdateOption;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/mega/update/service/UpdateOption;->setAction(I)V

    .line 228
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {v2, v0}, Lcom/mega/update/service/IUpdateService;->applyAction(Lcom/mega/update/service/UpdateOption;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 229
    .end local v0    # "updateOption":Lcom/mega/update/service/UpdateOption;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 231
    return v1
.end method

.method public triggerFlash(Ljava/io/File;Landroid/os/Bundle;)I
    .locals 5
    .param p1, "f"    # Ljava/io/File;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 200
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 201
    return v1

    .line 204
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mApplicationContext:Landroid/content/Context;

    const-string v2, "com.mega.update.sdk"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 206
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 207
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "otaFile"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    new-instance v0, Lcom/mega/update/service/UpdateOption;

    invoke-direct {v0}, Lcom/mega/update/service/UpdateOption;-><init>()V

    .line 211
    .local v0, "updateOption":Lcom/mega/update/service/UpdateOption;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/mega/update/service/UpdateOption;->setAction(I)V

    .line 212
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mega/update/service/UpdateOption;->setFilename(Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {v2, v0}, Lcom/mega/update/service/IUpdateService;->applyAction(Lcom/mega/update/service/UpdateOption;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 214
    .end local v0    # "updateOption":Lcom/mega/update/service/UpdateOption;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 216
    return v1
.end method

.method public triggerResume()I
    .locals 6

    .line 238
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "force":Z
    const-string v2, "com.mega.update.sdk"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 242
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "otaFile"

    const-string v4, ""

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "otaFile":Ljava/lang/String;
    const-string v5, "otaForce"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TriggerResume, otaFile: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", otaForce: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "MegaDmcOtaUpdateImpl"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    :try_start_0
    new-instance v3, Lcom/mega/update/service/UpdateOption;

    invoke-direct {v3}, Lcom/mega/update/service/UpdateOption;-><init>()V

    .line 248
    .local v3, "updateOption":Lcom/mega/update/service/UpdateOption;
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/mega/update/service/UpdateOption;->setAction(I)V

    .line 249
    invoke-virtual {v3, v2}, Lcom/mega/update/service/UpdateOption;->setFilename(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v3, v1}, Lcom/mega/update/service/UpdateOption;->setForce(Z)V

    .line 251
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {v4, v3}, Lcom/mega/update/service/IUpdateService;->applyAction(Lcom/mega/update/service/UpdateOption;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 252
    .end local v3    # "updateOption":Lcom/mega/update/service/UpdateOption;
    :catch_0
    move-exception v3

    .line 253
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 254
    const/4 v4, 0x2

    return v4

    .line 257
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    const/16 v3, 0x46

    return v3

    .line 260
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "force":Z
    .end local v2    # "otaFile":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public triggerUpgrade(Ljava/io/File;Landroid/os/Bundle;)I
    .locals 6
    .param p1, "f"    # Ljava/io/File;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerUpgrade called with:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " File="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, " File=null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v1, "mega_ota_2.0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    const/4 v0, 0x2

    return v0

    .line 171
    :cond_1
    const/4 v0, 0x0

    .line 172
    .local v0, "force":Z
    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 173
    :try_start_0
    const-string v2, "force"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mApplicationContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 176
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mApplicationContext:Landroid/content/Context;

    const-string v3, "com.mega.update.sdk"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 177
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 178
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "otaFile"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v4, "otaForce"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    new-instance v2, Lcom/mega/update/service/UpdateOption;

    invoke-direct {v2}, Lcom/mega/update/service/UpdateOption;-><init>()V

    .line 183
    .local v2, "updateOption":Lcom/mega/update/service/UpdateOption;
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/mega/update/service/UpdateOption;->setAction(I)V

    .line 184
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mega/update/service/UpdateOption;->setFilename(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2, v0}, Lcom/mega/update/service/UpdateOption;->setForce(Z)V

    .line 187
    const-string v3, "/data/ota_package"

    .line 188
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->createDirectoryIfNotExists(Ljava/lang/String;)Z

    .line 189
    invoke-static {v3, p1, v1}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->clearDirectory(Ljava/lang/String;Ljava/io/File;Z)Z

    .line 191
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {v4, v2}, Lcom/mega/update/service/IUpdateService;->applyAction(Lcom/mega/update/service/UpdateOption;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 192
    .end local v0    # "force":Z
    .end local v2    # "updateOption":Lcom/mega/update/service/UpdateOption;
    .end local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 194
    return v1
.end method

.method public unregisterCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)V
    .locals 2
    .param p1, "listener"    # Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 303
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mOtaUpdateStatusCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 305
    monitor-exit v0

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
