.class public Lcom/android/managedprovisioning/provisioning/ProvisioningManager;
.super Ljava/lang/Object;
.source "ProvisioningManager.java"

# interfaces
.implements Lcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;
.implements Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;


# static fields
.field private static sInstance:Lcom/android/managedprovisioning/provisioning/ProvisioningManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mFactory:Lcom/android/managedprovisioning/provisioning/ProvisioningControllerFactory;

.field private final mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

.field private final mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

.field private final mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 63
    new-instance v2, Landroid/os/Handler;

    .line 65
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/managedprovisioning/provisioning/ProvisioningControllerFactory;

    invoke-direct {v3}, Lcom/android/managedprovisioning/provisioning/ProvisioningControllerFactory;-><init>()V

    new-instance v4, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 68
    invoke-static {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v0

    new-instance v1, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v1, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v0, v1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    new-instance v5, Lcom/android/managedprovisioning/analytics/TimeLogger;

    const/16 v0, 0x273

    invoke-direct {v5, p1, v0}, Lcom/android/managedprovisioning/analytics/TimeLogger;-><init>(Landroid/content/Context;I)V

    move-object v0, p0

    move-object v1, p1

    .line 63
    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/managedprovisioning/provisioning/ProvisioningControllerFactory;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;Lcom/android/managedprovisioning/analytics/TimeLogger;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/managedprovisioning/provisioning/ProvisioningControllerFactory;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;Lcom/android/managedprovisioning/analytics/TimeLogger;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    iput-object p2, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/provisioning/ProvisioningControllerFactory;

    iput-object p2, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mFactory:Lcom/android/managedprovisioning/provisioning/ProvisioningControllerFactory;

    .line 82
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iput-object p2, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    .line 83
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/analytics/TimeLogger;

    iput-object p2, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

    .line 84
    new-instance p2, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    invoke-direct {p2, p1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    return-void
.end method

.method private clearControllerLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mController:Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;

    .line 158
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->clearResourcesLocked()V

    return-void
.end method

.method private getController(Lcom/android/managedprovisioning/model/ProvisioningParams;)Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mFactory:Lcom/android/managedprovisioning/provisioning/ProvisioningControllerFactory;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningControllerFactory;->createProvisioningController(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/managedprovisioning/provisioning/ProvisioningManager;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->sInstance:Lcom/android/managedprovisioning/provisioning/ProvisioningManager;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->sInstance:Lcom/android/managedprovisioning/provisioning/ProvisioningManager;

    .line 59
    :cond_0
    sget-object p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->sInstance:Lcom/android/managedprovisioning/provisioning/ProvisioningManager;

    return-object p0
.end method


# virtual methods
.method public cancelProvisioning()V
    .locals 3

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mController:Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->cancelProvisioning(Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logProvisioningCancelled(Landroid/content/Context;I)V

    .line 119
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cleanUpCompleted()V
    .locals 1

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->clearControllerLocked()V

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public error(IIZ)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->error(IIZ)V

    return-void
.end method

.method public maybeStartProvisioning(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 2

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mController:Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/analytics/TimeLogger;->start()V

    .line 92
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->getController(Lcom/android/managedprovisioning/model/ProvisioningParams;)Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mController:Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;

    .line 93
    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->startNewProvisioningLocked(Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;)V

    .line 94
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logProvisioningStarted(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    goto :goto_0

    :cond_0
    const-string p1, "Trying to start provisioning, but it\'s already running"

    .line 96
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public preFinalizationCompleted()V
    .locals 2

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->notifyPreFinalizationCompleted()V

    .line 134
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logProvisioningSessionCompleted(Landroid/content/Context;)V

    .line 135
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->clearControllerLocked()V

    const-string v0, "ProvisioningManager pre-finalization completed"

    .line 136
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public provisioningTasksCompleted()V
    .locals 1

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/analytics/TimeLogger;->stop()V

    .line 126
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->preFinalizationCompleted()V

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->registerListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V

    return-void
.end method

.method public unregisterListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->unregisterListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V

    return-void
.end method
