.class Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;
.super Ljava/lang/Object;
.source "AdminIntegratedFlowPrepareManager.java"

# interfaces
.implements Lcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;
.implements Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;


# static fields
.field private static sInstance:Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

.field private final mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

.field private final mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 62
    new-instance v0, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    invoke-direct {v0, p1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v2, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v2}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 66
    invoke-static {p1, v2}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v2

    new-instance v3, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v3, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    new-instance v2, Lcom/android/managedprovisioning/analytics/TimeLogger;

    const/16 v3, 0x79

    invoke-direct {v2, p1, v3}, Lcom/android/managedprovisioning/analytics/TimeLogger;-><init>(Landroid/content/Context;I)V

    .line 62
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;Lcom/android/managedprovisioning/analytics/TimeLogger;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;Lcom/android/managedprovisioning/analytics/TimeLogger;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    .line 79
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    .line 80
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/analytics/TimeLogger;

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

    return-void
.end method

.method private clearControllerLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mController:Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;

    .line 155
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->clearResourcesLocked()V

    return-void
.end method

.method private getController(Lcom/android/managedprovisioning/model/ProvisioningParams;)Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;
    .locals 3

    .line 146
    new-instance v0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareController;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mContext:Landroid/content/Context;

    .line 149
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareController;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)V

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->sInstance:Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->sInstance:Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;

    .line 58
    :cond_0
    sget-object p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->sInstance:Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;

    return-object p0
.end method


# virtual methods
.method public cancelProvisioning()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mController:Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->cancelProvisioning(Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logProvisioningCancelled(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public cleanUpCompleted()V
    .locals 1

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->clearControllerLocked()V

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

.method public error(IIZ)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->error(IIZ)V

    return-void
.end method

.method public maybeStartProvisioning(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 1

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mController:Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->getController(Lcom/android/managedprovisioning/model/ProvisioningParams;)Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mController:Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;

    .line 88
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->startNewProvisioningLocked(Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;)V

    .line 89
    iget-object p1, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

    invoke-virtual {p1}, Lcom/android/managedprovisioning/analytics/TimeLogger;->start()V

    .line 90
    iget-object p1, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    invoke-virtual {p1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logProvisioningPrepareStarted()V

    goto :goto_0

    :cond_0
    const-string p1, "Trying to start admin integrated flow preparing, but it\'s already running"

    .line 92
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 95
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
    .locals 1

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->notifyPreFinalizationCompleted()V

    .line 127
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logProvisioningPrepareCompleted()V

    .line 128
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->clearControllerLocked()V

    const-string v0, "AdminIntegratedFlowPrepareManager pre-finalization completed"

    .line 129
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 130
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

    .line 119
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/analytics/TimeLogger;->stop()V

    .line 120
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->preFinalizationCompleted()V

    return-void
.end method

.method public registerListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->registerListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V

    return-void
.end method

.method public unregisterListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->mHelper:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerHelper;->unregisterListener(Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;)V

    return-void
.end method
