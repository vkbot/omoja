.class public Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "ConnectMobileNetworkTask.java"

# interfaces
.implements Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mNetworkMonitor:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

.field private mTaskDone:Z

.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    const/4 p2, 0x0

    .line 40
    iput-boolean p2, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mTaskDone:Z

    .line 50
    new-instance p2, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

    invoke-direct {p2, p1}, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mNetworkMonitor:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

    .line 51
    new-instance p1, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {p1}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    return-void
.end method

.method private declared-synchronized finishTask(Z)V
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-boolean v0, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mTaskDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 112
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 115
    :try_start_1
    iput-boolean v0, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mTaskDone:Z

    .line 116
    iget-object v0, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mNetworkMonitor:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->stopListening()V

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isLegacyConnected()Z
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean v1, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isNfc:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isQrProvisioning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object p0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/common/Utils;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$run$0()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->finishTask(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$ConnectMobileNetworkTask()V
    .locals 0

    invoke-direct {p0}, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->lambda$run$0()V

    return-void
.end method

.method public onNetworkConnected()V
    .locals 2

    const-string v0, "onNetworkConnected"

    .line 93
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->isLegacyConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean v1, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isNfc:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isQrProvisioning:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->isMobileNetworkConnectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "Connected to mobile data"

    .line 97
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 98
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->finishTask(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public run(I)V
    .locals 2

    .line 61
    iget-object p1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_provisioning_mobile_data"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    invoke-direct {p0}, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->isLegacyConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean v0, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->isNfc:Z

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->isQrProvisioning:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1, v0}, Lcom/android/managedprovisioning/common/Utils;->isMobileNetworkConnectedToInternet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mTaskDone:Z

    .line 77
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mHandler:Landroid/os/Handler;

    .line 78
    iget-object p1, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mNetworkMonitor:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

    invoke-virtual {p1, p0}, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->startListening(Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;)V

    .line 82
    new-instance p1, Lcom/android/managedprovisioning/task/-$$Lambda$ConnectMobileNetworkTask$JHv6z25tbN5h-RxykwMeYBzl8h8;

    invoke-direct {p1, p0}, Lcom/android/managedprovisioning/task/-$$Lambda$ConnectMobileNetworkTask$JHv6z25tbN5h-RxykwMeYBzl8h8;-><init>(Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;)V

    iput-object p1, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 83
    iget-object p0, p0, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;->mHandler:Landroid/os/Handler;

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
