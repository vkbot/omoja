.class public Lcom/mega/update/manager/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Lcom/mega/update/rpc/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/manager/DeviceManager$Device;
    }
.end annotation


# static fields
.field private static final HOST_QNX_READY:Ljava/lang/String; = "update/qnx/ready"

.field private static final TAG:Ljava/lang/String; = "DeviceManager"

.field private static sInstance:Lcom/mega/update/manager/DeviceManager;


# instance fields
.field private err:Lcom/mega/update/manager/Result;

.field private mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mUpdaters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mega/update/protocol/IUpdateProtocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance v0, Lcom/mega/update/manager/Result;

    const/16 v1, -0x9

    const-string v2, "device not found"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/mega/update/manager/DeviceManager;->err:Lcom/mega/update/manager/Result;

    .line 47
    invoke-direct {p0}, Lcom/mega/update/manager/DeviceManager;->init()V

    .line 48
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/qnx/ready"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private init()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    new-instance v1, Lcom/mega/update/protocol/QnxUpdateProtocol;

    invoke-direct {v1}, Lcom/mega/update/protocol/QnxUpdateProtocol;-><init>()V

    const-string v2, "soc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    new-instance v1, Lcom/mega/update/protocol/QnxUpdateProtocol;

    invoke-direct {v1}, Lcom/mega/update/protocol/QnxUpdateProtocol;-><init>()V

    const-string v2, "qnx"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    new-instance v1, Lcom/mega/update/protocol/AndroidUpdateProtocol;

    invoke-direct {v1}, Lcom/mega/update/protocol/AndroidUpdateProtocol;-><init>()V

    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    new-instance v1, Lcom/mega/update/protocol/McuUpdateProtocol;

    invoke-direct {v1}, Lcom/mega/update/protocol/McuUpdateProtocol;-><init>()V

    const-string v2, "mcu"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    new-instance v1, Lcom/mega/update/protocol/DisUpdateProtocol;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/mega/update/protocol/DisUpdateProtocol;-><init>(I)V

    const-string v2, "dis_ic"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    new-instance v1, Lcom/mega/update/protocol/DisUpdateProtocol;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/mega/update/protocol/DisUpdateProtocol;-><init>(I)V

    const-string v2, "dis_hu"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    new-instance v1, Lcom/mega/update/protocol/DisUpdateProtocol;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/mega/update/protocol/DisUpdateProtocol;-><init>(I)V

    const-string v2, "dis_fp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    new-instance v1, Lcom/mega/update/protocol/DisUpdateProtocol;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/mega/update/protocol/DisUpdateProtocol;-><init>(I)V

    const-string v2, "rotary"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    new-instance v1, Lcom/mega/update/protocol/HudUpdateProtocol;

    invoke-direct {v1}, Lcom/mega/update/protocol/HudUpdateProtocol;-><init>()V

    const-string v2, "hud"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    new-instance v1, Lcom/mega/update/protocol/DisUpdateProtocol;

    invoke-direct {v1}, Lcom/mega/update/protocol/DisUpdateProtocol;-><init>()V

    const-string v2, "dis"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    new-instance v1, Lcom/mega/update/protocol/TboxUpdateProtocol;

    invoke-direct {v1}, Lcom/mega/update/protocol/TboxUpdateProtocol;-><init>()V

    const-string v2, "tbox"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public static declared-synchronized self()Lcom/mega/update/manager/DeviceManager;
    .locals 2

    const-class v0, Lcom/mega/update/manager/DeviceManager;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/mega/update/manager/DeviceManager;->sInstance:Lcom/mega/update/manager/DeviceManager;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/mega/update/manager/DeviceManager;

    invoke-direct {v1}, Lcom/mega/update/manager/DeviceManager;-><init>()V

    sput-object v1, Lcom/mega/update/manager/DeviceManager;->sInstance:Lcom/mega/update/manager/DeviceManager;

    .line 65
    :cond_0
    sget-object v1, Lcom/mega/update/manager/DeviceManager;->sInstance:Lcom/mega/update/manager/DeviceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public connect()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getVersion(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 4
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getVersion enter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DeviceManager"

    invoke-static {v2, v0}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/update/protocol/IUpdateProtocol;

    invoke-virtual {v0, p1}, Lcom/mega/update/protocol/IUpdateProtocol;->version(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->err:Lcom/mega/update/manager/Result;

    return-object v0
.end method

.method public onDowngrade(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 2
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 113
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " come to downgrading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManager"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/update/protocol/IUpdateProtocol;

    invoke-virtual {v0, p1, p2}, Lcom/mega/update/protocol/IUpdateProtocol;->rollback(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->err:Lcom/mega/update/manager/Result;

    return-object v0
.end method

.method public onFlash(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 2
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 96
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " come to flashing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManager"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/update/protocol/IUpdateProtocol;

    invoke-virtual {v0, p1, p2}, Lcom/mega/update/protocol/IUpdateProtocol;->start(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->err:Lcom/mega/update/manager/Result;

    return-object v0
.end method

.method public onReboot(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 2
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 129
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " come to reboot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManager"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/update/protocol/IUpdateProtocol;

    invoke-virtual {v0, p1}, Lcom/mega/update/protocol/IUpdateProtocol;->reboot(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->err:Lcom/mega/update/manager/Result;

    return-object v0
.end method

.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "update/qnx/ready"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "DeviceManager"

    const-string v1, "update qnx ready!!"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    :cond_0
    return-void
.end method

.method public onReset(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 2
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 121
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " come to reset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManager"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/update/protocol/IUpdateProtocol;

    invoke-virtual {v0, p1}, Lcom/mega/update/protocol/IUpdateProtocol;->reset(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->err:Lcom/mega/update/manager/Result;

    return-object v0
.end method

.method public onUpgrade(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 4
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 104
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " come to upgrading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceManager"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info package_file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_file:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_offset:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->mUpdaters:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/update/protocol/IUpdateProtocol;

    invoke-virtual {v0, p1, p2}, Lcom/mega/update/protocol/IUpdateProtocol;->active(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/mega/update/manager/DeviceManager;->err:Lcom/mega/update/manager/Result;

    return-object v0
.end method

.method public rebootHost()V
    .locals 7

    .line 137
    const-string v0, "DeviceManager"

    const-string v1, "host safely reboot!!!"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "/data/ota_package"

    invoke-static {v0}, Lcom/mega/update/util/FileHelper;->clearDirectory(Ljava/lang/String;)Z

    .line 140
    :goto_0
    const-string v0, "{\"command\":\"8\", \"operation\":\"set\", \"id\":\"UpdateService\"}"

    .line 141
    .local v0, "command":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-byte v5, v2, v4

    .local v5, "b":B
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 143
    :cond_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v2

    const-string v3, "misc_service/command/update_request"

    invoke-virtual {v2, v3, v1}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 145
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_2

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 149
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_2
    goto :goto_0
.end method
