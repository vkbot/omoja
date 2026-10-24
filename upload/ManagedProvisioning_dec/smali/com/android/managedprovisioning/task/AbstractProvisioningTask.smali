.class public abstract Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.super Ljava/lang/Object;
.source "AbstractProvisioningTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;

.field protected final mContext:Landroid/content/Context;

.field protected final mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

.field private mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V
    .locals 3

    .line 55
    new-instance v0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v1, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v1}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 57
    invoke-static {p1, v1}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v1

    new-instance v2, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v2, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    .line 69
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;

    iput-object p2, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mCallback:Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;

    .line 71
    new-instance p2, Lcom/android/managedprovisioning/analytics/TimeLogger;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->getMetricsCategory()I

    move-result v2

    new-instance v3, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    invoke-direct {v3}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;-><init>()V

    new-instance v4, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;

    invoke-direct {v4}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;-><init>()V

    .line 73
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/analytics/TimeLogger;-><init>(Landroid/content/Context;ILcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;Lcom/android/managedprovisioning/analytics/AnalyticsUtils;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    iput-object p2, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

    return-void
.end method


# virtual methods
.method protected final error(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mCallback:Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;

    invoke-interface {v0, p0, p1}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;->onError(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)V

    return-void
.end method

.method protected getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract run(I)V
.end method

.method protected startTaskTimer()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/analytics/TimeLogger;->start()V

    return-void
.end method

.method protected stopTaskTimer()V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mTimeLogger:Lcom/android/managedprovisioning/analytics/TimeLogger;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/analytics/TimeLogger;->stop()V

    return-void
.end method

.method protected final success()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mCallback:Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;

    invoke-interface {v0, p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;->onSuccess(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    return-void
.end method
