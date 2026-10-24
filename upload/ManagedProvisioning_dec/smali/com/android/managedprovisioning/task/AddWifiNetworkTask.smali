.class public Lcom/android/managedprovisioning/task/AddWifiNetworkTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "AddWifiNetworkTask.java"

# interfaces
.implements Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/task/AddWifiNetworkTask$Injector;
    }
.end annotation


# static fields
.field static final ADD_NETWORK_FAIL:I = -0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInjector:Lcom/android/managedprovisioning/task/AddWifiNetworkTask$Injector;

.field private final mNetworkMonitor:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

.field private mTaskDone:Z

.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;

.field private final mWifiConfigurationProvider:Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V
    .locals 9

    .line 67
    new-instance v1, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

    invoke-direct {v1, p1}, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;

    invoke-direct {v2}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;-><init>()V

    new-instance v6, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v6}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    new-instance v7, Lcom/android/managedprovisioning/task/AddWifiNetworkTask$Injector;

    invoke-direct {v7}, Lcom/android/managedprovisioning/task/AddWifiNetworkTask$Injector;-><init>()V

    new-instance v8, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 72
    invoke-static {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v0

    new-instance v3, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v3, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v8, v0, v3}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 67
    invoke-direct/range {v0 .. v8}, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;-><init>(Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/task/AddWifiNetworkTask$Injector;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method constructor <init>(Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/task/AddWifiNetworkTask$Injector;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 86
    invoke-direct {p0, p3, p4, p5, p8}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    const/4 p4, 0x0

    .line 57
    iput-boolean p4, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mTaskDone:Z

    .line 88
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mNetworkMonitor:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

    .line 89
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mWifiConfigurationProvider:Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;

    const-string p1, "wifi"

    .line 90
    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 91
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 92
    invoke-static {p7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/task/AddWifiNetworkTask$Injector;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mInjector:Lcom/android/managedprovisioning/task/AddWifiNetworkTask$Injector;

    return-void
.end method

.method private connectToProvidedNetwork()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mWifiConfigurationProvider:Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;

    iget-object v1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->wifiInfo:Lcom/android/managedprovisioning/model/WifiInfo;

    .line 126
    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/task/wifi/WifiConfigurationProvider;->generateWifiConfiguration(Lcom/android/managedprovisioning/model/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "WifiConfiguration is null"

    .line 129
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void

    .line 134
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->tryAddingNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string v0, "Unable to add network after trying 6 times."

    .line 137
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 144
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 147
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Unable to connect to wifi"

    .line 148
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void

    .line 155
    :cond_2
    new-instance v0, Lcom/android/managedprovisioning/task/-$$Lambda$AddWifiNetworkTask$EZZ-BoQKzJz6x5kL5FHTaeUQZSw;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/task/-$$Lambda$AddWifiNetworkTask$EZZ-BoQKzJz6x5kL5FHTaeUQZSw;-><init>(Lcom/android/managedprovisioning/task/AddWifiNetworkTask;)V

    iput-object v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 156
    iget-object p0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private enableWifi()Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private declared-synchronized finishTask(Z)V
    .locals 1

    monitor-enter p0

    .line 194
    :try_start_0
    iget-boolean v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mTaskDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 195
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 198
    :try_start_1
    iput-boolean v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mTaskDone:Z

    .line 199
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mNetworkMonitor:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->stopListening()V

    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isConnectedToSpecifiedWifi()Z
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/android/managedprovisioning/common/Utils;->isNetworkTypeConnected(Landroid/content/Context;[I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Not connected to WIFI"

    .line 209
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    return v4

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "connection info is null"

    .line 214
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    return v4

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->wifiInfo:Lcom/android/managedprovisioning/model/WifiInfo;

    iget-object v1, v1, Lcom/android/managedprovisioning/model/WifiInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wanted to connect SSID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->wifiInfo:Lcom/android/managedprovisioning/model/WifiInfo;

    iget-object p0, p0, Lcom/android/managedprovisioning/model/WifiInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", but it is now connected to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    return v4

    :cond_2
    return v2
.end method

.method private synthetic lambda$connectToProvidedNetwork$0()V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->finishTask(Z)V

    return-void
.end method

.method private tryAddingNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    const/4 v1, 0x6

    const/16 v2, 0x1f4

    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    if-lez v1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrying in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ms."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mInjector:Lcom/android/managedprovisioning/task/AddWifiNetworkTask$Injector;

    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Lcom/android/managedprovisioning/task/AddWifiNetworkTask$Injector;->threadSleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "Retry interrupted."

    .line 169
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    :goto_1
    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, -0x1

    .line 173
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public synthetic lambda$connectToProvidedNetwork$0$AddWifiNetworkTask()V
    .locals 0

    invoke-direct {p0}, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->lambda$connectToProvidedNetwork$0()V

    return-void
.end method

.method public onNetworkConnected()V
    .locals 1

    const-string v0, "onNetworkConnected"

    .line 184
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->isConnectedToSpecifiedWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connected to the correct network"

    .line 186
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 187
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->finishTask(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public run(I)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object p1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->wifiInfo:Lcom/android/managedprovisioning/model/WifiInfo;

    if-nez p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->enableWifi()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->isConnectedToSpecifiedWifi()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void

    .line 113
    :cond_2
    iput-boolean v0, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mTaskDone:Z

    .line 114
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mHandler:Landroid/os/Handler;

    .line 115
    iget-object p1, p0, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->mNetworkMonitor:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

    invoke-virtual {p1, p0}, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->startListening(Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;)V

    .line 116
    invoke-direct {p0}, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->connectToProvidedNetwork()V

    return-void

    :cond_3
    :goto_0
    const-string p1, "Failed to enable wifi"

    .line 103
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void
.end method
