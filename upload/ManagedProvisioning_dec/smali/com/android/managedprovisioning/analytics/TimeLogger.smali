.class public Lcom/android/managedprovisioning/analytics/TimeLogger;
.super Ljava/lang/Object;
.source "TimeLogger.java"


# instance fields
.field private final mAnalyticsUtils:Lcom/android/managedprovisioning/analytics/AnalyticsUtils;

.field private final mCategory:I

.field private final mContext:Landroid/content/Context;

.field private final mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

.field private final mProvisioningTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

.field private mStartTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .line 63
    new-instance v3, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    invoke-direct {v3}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;-><init>()V

    new-instance v4, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;

    invoke-direct {v4}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;-><init>()V

    new-instance v5, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 65
    invoke-static {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v0

    new-instance v1, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v1, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v0, v1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 63
    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/analytics/TimeLogger;-><init>(Landroid/content/Context;ILcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;Lcom/android/managedprovisioning/analytics/AnalyticsUtils;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;Lcom/android/managedprovisioning/analytics/AnalyticsUtils;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mCategory:I

    .line 78
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    .line 79
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;

    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mAnalyticsUtils:Lcom/android/managedprovisioning/analytics/AnalyticsUtils;

    .line 80
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mProvisioningTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mAnalyticsUtils:Lcom/android/managedprovisioning/analytics/AnalyticsUtils;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->elapsedRealTime()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mStartTime:Ljava/lang/Long;

    return-void
.end method

.method public stop()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mAnalyticsUtils:Lcom/android/managedprovisioning/analytics/AnalyticsUtils;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->elapsedRealTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    .line 99
    iput-object v1, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mStartTime:Ljava/lang/Long;

    .line 100
    iget-object v1, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    iget-object v2, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mCategory:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;II)V

    .line 101
    iget v1, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mCategory:I

    .line 102
    invoke-static {v1}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getDevicePolicyEventForCategory(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 104
    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/TimeLogger;->mProvisioningTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    invoke-virtual {p0, v1, v0}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logTimeLoggerEvent(II)V

    :cond_0
    return-void
.end method
