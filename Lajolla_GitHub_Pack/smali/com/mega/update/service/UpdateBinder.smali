.class public Lcom/mega/update/service/UpdateBinder;
.super Lcom/mega/update/service/IUpdateService$Stub;
.source "UpdateBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/service/UpdateBinder$DeathHolder;
    }
.end annotation


# static fields
.field private static final BOOT_COMPLETE_DELAY:Ljava/lang/String; = "sys.boot_completed_delay"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/mega/update/service/UpdateBinder;


# instance fields
.field private mDeathHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/mega/update/service/IUpdateCallback;",
            "Lcom/mega/update/service/UpdateBinder$DeathHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mReady:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/mega/update/service/UpdateBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/update/service/UpdateBinder;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/mega/update/service/UpdateBinder;->sInstance:Lcom/mega/update/service/UpdateBinder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/mega/update/service/IUpdateService$Stub;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mega/update/service/UpdateBinder;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mega/update/service/UpdateBinder;->mLock:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mega/update/service/UpdateBinder;->mDeathHolders:Ljava/util/HashMap;

    .line 88
    invoke-static {}, Lcom/mega/update/manager/UpdateNotifier;->self()Lcom/mega/update/manager/UpdateNotifier;

    move-result-object v0

    new-instance v1, Lcom/mega/update/service/-$$Lambda$UpdateBinder$cKGYKbC41RbpjkpSO3P0sBRi0Oo;

    invoke-direct {v1, p0}, Lcom/mega/update/service/-$$Lambda$UpdateBinder$cKGYKbC41RbpjkpSO3P0sBRi0Oo;-><init>(Lcom/mega/update/service/UpdateBinder;)V

    invoke-virtual {v0, v1}, Lcom/mega/update/manager/UpdateNotifier;->bind(Lcom/mega/update/manager/UpdateCallback;)Z

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/mega/update/service/UpdateBinder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/service/UpdateBinder;

    .line 20
    iget-object v0, p0, Lcom/mega/update/service/UpdateBinder;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/mega/update/service/UpdateBinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mega/update/service/UpdateBinder;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/service/UpdateBinder;

    .line 20
    iget-object v0, p0, Lcom/mega/update/service/UpdateBinder;->mDeathHolders:Ljava/util/HashMap;

    return-object v0
.end method

.method private delayInit(I)V
    .locals 2
    .param p1, "delay"    # I

    .line 73
    invoke-static {}, Lcom/mega/update/task/AsyncTasksPool;->self()Lcom/mega/update/task/AsyncTasksPool;

    move-result-object v0

    new-instance v1, Lcom/mega/update/service/UpdateBinder$1;

    invoke-direct {v1, p0, p1}, Lcom/mega/update/service/UpdateBinder$1;-><init>(Lcom/mega/update/service/UpdateBinder;I)V

    invoke-virtual {v0, v1}, Lcom/mega/update/task/AsyncTasksPool;->executeTask(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method private isMounted()Z
    .locals 3

    .line 30
    const-string v0, "sys.boot_completed_delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static declared-synchronized self()Lcom/mega/update/service/UpdateBinder;
    .locals 2

    const-class v0, Lcom/mega/update/service/UpdateBinder;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/mega/update/service/UpdateBinder;->sInstance:Lcom/mega/update/service/UpdateBinder;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/mega/update/service/UpdateBinder;

    invoke-direct {v1}, Lcom/mega/update/service/UpdateBinder;-><init>()V

    sput-object v1, Lcom/mega/update/service/UpdateBinder;->sInstance:Lcom/mega/update/service/UpdateBinder;

    .line 37
    :cond_0
    sget-object v1, Lcom/mega/update/service/UpdateBinder;->sInstance:Lcom/mega/update/service/UpdateBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public applyAction(Lcom/mega/update/service/UpdateOption;)I
    .locals 3
    .param p1, "option"    # Lcom/mega/update/service/UpdateOption;

    .line 104
    sget-object v0, Lcom/mega/update/service/UpdateBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mega/update/service/UpdateBinder;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    sget-object v0, Lcom/mega/update/service/UpdateBinder;->TAG:Ljava/lang/String;

    const-string v1, "applyAction failed, service not ready!!"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x2

    return v0

    .line 109
    :cond_0
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mega/update/manager/TaskScheduler;->applyAction(Lcom/mega/update/service/UpdateOption;)I

    move-result v0

    return v0
.end method

.method public bind(Lcom/mega/update/service/IUpdateCallback;)Z
    .locals 4
    .param p1, "callback"    # Lcom/mega/update/service/IUpdateCallback;

    .line 124
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/mega/update/service/UpdateBinder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/mega/update/service/UpdateBinder;->mDeathHolders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 129
    :try_start_1
    iget-object v2, p0, Lcom/mega/update/service/UpdateBinder;->mDeathHolders:Ljava/util/HashMap;

    new-instance v3, Lcom/mega/update/service/UpdateBinder$DeathHolder;

    invoke-direct {v3, p0, p1}, Lcom/mega/update/service/UpdateBinder$DeathHolder;-><init>(Lcom/mega/update/service/UpdateBinder;Lcom/mega/update/service/IUpdateCallback;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-interface {p1}, Lcom/mega/update/service/IUpdateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/mega/update/service/UpdateBinder;->mDeathHolders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 136
    :cond_1
    monitor-exit v1

    return v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getPackagePath()Ljava/lang/String;
    .locals 1

    .line 114
    const-string v0, "/data/ota_package"

    return-object v0
.end method

.method public getState()Lcom/mega/update/service/UpdateState;
    .locals 1

    .line 119
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mega/update/manager/TaskScheduler;->getState()Lcom/mega/update/service/UpdateState;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/mega/update/service/UpdateBinder;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/mega/update/manager/DeviceManager;->self()Lcom/mega/update/manager/DeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mega/update/manager/DeviceManager;->connect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mega/update/manager/TaskScheduler;->restore()Z

    .line 64
    iget-object v0, p0, Lcom/mega/update/service/UpdateBinder;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    const-string v0, "sys.update.ready"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 69
    :cond_1
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/mega/update/service/UpdateBinder;->delayInit(I)V

    .line 70
    return-void
.end method

.method public synthetic lambda$new$0$UpdateBinder(Lcom/mega/update/service/UpdateState;)V
    .locals 6
    .param p1, "state"    # Lcom/mega/update/service/UpdateState;

    .line 89
    iget-object v0, p0, Lcom/mega/update/service/UpdateBinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/mega/update/service/UpdateBinder;->mDeathHolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/service/IUpdateCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .local v2, "callback":Lcom/mega/update/service/IUpdateCallback;
    :try_start_1
    invoke-interface {v2, p1}, Lcom/mega/update/service/IUpdateCallback;->onStatusUpdate(Lcom/mega/update/service/UpdateState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    goto :goto_1

    .line 93
    :catch_0
    move-exception v3

    .line 94
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 95
    sget-object v4, Lcom/mega/update/service/UpdateBinder;->TAG:Ljava/lang/String;

    const-string v5, "callback onStatusUpdate error"

    invoke-static {v4, v5}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v2    # "callback":Lcom/mega/update/service/IUpdateCallback;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 98
    :cond_0
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unbind(Lcom/mega/update/service/IUpdateCallback;)Z
    .locals 4
    .param p1, "callback"    # Lcom/mega/update/service/IUpdateCallback;

    .line 143
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/mega/update/service/UpdateBinder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/mega/update/service/UpdateBinder;->mDeathHolders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-interface {p1}, Lcom/mega/update/service/IUpdateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/mega/update/service/UpdateBinder;->mDeathHolders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 148
    iget-object v0, p0, Lcom/mega/update/service/UpdateBinder;->mDeathHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 151
    :cond_1
    monitor-exit v1

    return v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
