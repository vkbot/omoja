.class public Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;
.super Ljava/lang/Object;
.source "NetworkTypeLogger.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

.field private final mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

.field private final mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 45
    new-instance v2, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v2}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    new-instance v3, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    invoke-direct {v3}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;-><init>()V

    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 46
    invoke-static {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v4

    new-instance v5, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v5, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 59
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    .line 60
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/analytics/MetricsWriter;

    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    .line 61
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    return-void
.end method


# virtual methods
.method public log()V
    .locals 7

    .line 68
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v2, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/managedprovisioning/common/Utils;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x5d

    const/16 v3, 0x262

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    iget-object v6, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v3, v0}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;II)V

    .line 72
    iget-object v1, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    new-array v3, v5, [Landroid/app/admin/DevicePolicyEventLogger;

    .line 73
    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/String;

    .line 74
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 75
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    aput-object p0, v3, v4

    .line 72
    invoke-interface {v1, v3}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    iget-object v1, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mContext:Landroid/content/Context;

    const-string v6, "network_type_not_connected"

    invoke-virtual {v0, v1, v3, v6}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;ILjava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    new-array v1, v5, [Landroid/app/admin/DevicePolicyEventLogger;

    .line 80
    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 82
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    aput-object p0, v1, v4

    .line 79
    invoke-interface {v0, v1}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    :goto_0
    return-void
.end method
