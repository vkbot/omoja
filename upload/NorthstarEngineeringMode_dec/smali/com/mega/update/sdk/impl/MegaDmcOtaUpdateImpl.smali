.class public Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mega/update/sdk/MegaOtaUpdateInterface;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final OTA_UPDATE_SERVICE:Ljava/lang/String; = "mega.ota.update"

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$1;

    invoke-direct {v0, p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$1;-><init>(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)V

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateCallback:Lcom/mega/update/service/IUpdateCallback;

    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mApplicationContext:Landroid/content/Context;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mOtaUpdateStatusCallbacks:Ljava/util/List;

    invoke-direct {p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->startConnectThread()V

    return-void
.end method

.method public static synthetic access$000(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mOtaUpdateStatusCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateService;
    .locals 0

    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;Lcom/mega/update/service/IUpdateService;)Lcom/mega/update/service/IUpdateService;
    .locals 0

    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateCallback;
    .locals 0

    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateCallback:Lcom/mega/update/service/IUpdateCallback;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->notifyConnectState()V

    return-void
.end method

.method private notifyConnectState()V
    .locals 4

    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

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

    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;->onConnect(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private startConnectThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;

    invoke-direct {v1, p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;-><init>(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "MegaDmcOtaUpdateImpl"

    const-string/jumbo v1, "update service died!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-direct {p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->notifyConnectState()V

    invoke-direct {p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->startConnectThread()V

    return-void
.end method

.method public getDeviveInfo()Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lmega/car/MegaCarPropHelper;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lmega/car/MegaCarPropHelper;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    invoke-direct {v0}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;-><init>()V

    const v1, 0x3300000d

    invoke-virtual {p0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setHwVersion(Ljava/lang/String;)V

    const v1, 0x3300000f

    invoke-virtual {p0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v2}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSwVersion(Ljava/lang/String;)V

    const v1, 0x33000010

    invoke-virtual {p0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "7900040-DF03"

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setHwPartNumber(Ljava/lang/String;)V

    const v1, 0x33000016

    invoke-virtual {p0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "9211801-DF04"

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v1}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSwPartNumber(Ljava/lang/String;)V

    const v1, 0x3300000e

    invoke-virtual {p0, v1}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object p0

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSerialNumber(Ljava/lang/String;)V

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lmega/car/MegaCarPropHelper;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lmega/car/MegaCarPropHelper;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x3300000f

    invoke-virtual {p0, v0}, Lmega/car/MegaCarPropHelper;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public getState()Lcom/mega/update/service/UpdateState;
    .locals 2

    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {p0}, Lcom/mega/update/service/IUpdateService;->getState()Lcom/mega/update/service/UpdateState;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public getStoragePath()Ljava/lang/String;
    .locals 0

    const-string p0, "/data/ota_package/"

    return-object p0
.end method

.method public isConnect()Z
    .locals 0

    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public onFinishUpgrade(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance p1, Lcom/mega/update/service/UpdateOption;

    invoke-direct {p1}, Lcom/mega/update/service/UpdateOption;-><init>()V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/mega/update/service/UpdateOption;->setAction(I)V

    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {p0, p1}, Lcom/mega/update/service/IUpdateService;->applyAction(Lcom/mega/update/service/UpdateOption;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)Z
    .locals 2

    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mOtaUpdateStatusCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;->onConnect(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOtaMode(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->setOtaMode(II)Z

    move-result p0

    return p0
.end method

.method public setOtaMode(II)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mApplicationContext:Landroid/content/Context;

    .line 1
    invoke-static {p0, v0}, Lmega/car/MegaCarPropHelper;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lmega/car/MegaCarPropHelper;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    new-instance p0, Lmega/car/hardware/CarPropertyValue;

    const v1, 0x2300000d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lmega/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmega/car/hardware/CarPropertyValue;->setExtension(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0, p0}, Lmega/car/MegaCarPropHelper;->setRawProp(Lmega/car/hardware/CarPropertyValue;)V

    const/4 p0, 0x1

    return p0
.end method

.method public triggerActivate()I
    .locals 3

    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/mega/update/service/UpdateOption;

    invoke-direct {v0}, Lcom/mega/update/service/UpdateOption;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/mega/update/service/UpdateOption;->setAction(I)V

    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {p0, v0}, Lcom/mega/update/service/IUpdateService;->applyAction(Lcom/mega/update/service/UpdateOption;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public triggerFlash(Ljava/io/File;Landroid/os/Bundle;)I
    .locals 5

    const-string v0, "force"

    const-string/jumbo v1, "triggerFlash force:"

    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    new-instance v2, Lcom/mega/update/service/UpdateOption;

    invoke-direct {v2}, Lcom/mega/update/service/UpdateOption;-><init>()V

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/mega/update/service/UpdateOption;->setAction(I)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/mega/update/service/UpdateOption;->setFilename(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/mega/update/service/UpdateOption;->setForce(Z)V

    const-string p1, "MegaDmcOtaUpdateImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {p0, v2}, Lcom/mega/update/service/IUpdateService;->applyAction(Lcom/mega/update/service/UpdateOption;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v3
.end method

.method public triggerUpgrade(Ljava/io/File;Landroid/os/Bundle;)I
    .locals 4

    const-string v0, "force"

    const-string/jumbo v1, "triggerUpgrade force:"

    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    :try_start_0
    new-instance v2, Lcom/mega/update/service/UpdateOption;

    invoke-direct {v2}, Lcom/mega/update/service/UpdateOption;-><init>()V

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/mega/update/service/UpdateOption;->setAction(I)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/mega/update/service/UpdateOption;->setFilename(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/mega/update/service/UpdateOption;->setForce(Z)V

    const-string p1, "MegaDmcOtaUpdateImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mUpdateService:Lcom/mega/update/service/IUpdateService;

    invoke-interface {p0, v2}, Lcom/mega/update/service/IUpdateService;->applyAction(Lcom/mega/update/service/UpdateOption;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method public unregisterCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->mOtaUpdateStatusCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
