.class public Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;
.super Ljava/lang/Object;
.source "ProvisioningAnalyticsTracker.java"


# instance fields
.field private final mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

.field private final mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

.field private final mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    invoke-direct {v0}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    .line 106
    iput-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    .line 107
    iput-object p2, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    return-void
.end method

.method private logDpcPackageInformation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 420
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v1, 0x205

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;ILjava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v3, 0x54

    .line 422
    invoke-static {v3}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 423
    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 424
    invoke-static {v4}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v3

    aput-object v3, v2, v5

    .line 421
    invoke-interface {v0, v2}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    .line 428
    invoke-static {p1, p2}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getInstallerPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 429
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v2, 0x206

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;ILjava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    new-array v0, v1, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v2, 0x55

    .line 432
    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v5

    .line 433
    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p2

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 434
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    aput-object p0, v0, v5

    .line 431
    invoke-interface {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method private logNetworkType(Landroid/content/Context;)V
    .locals 0

    .line 443
    new-instance p0, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;-><init>(Landroid/content/Context;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/managedprovisioning/analytics/NetworkTypeLogger;->log()V

    return-void
.end method

.method private logProvisionedFromTrustedSource(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v1, 0x26a

    invoke-virtual {v0, p1, v1}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;I)V

    const-string v0, "android.app.extra.PROVISIONING_TRIGGER"

    const/4 v1, 0x0

    .line 401
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v2, 0x268

    invoke-virtual {v0, p1, v2}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;I)V

    .line 406
    :cond_0
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v2, 0x53

    .line 407
    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    .line 408
    invoke-virtual {v2, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p2

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 409
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    aput-object p0, v0, v1

    .line 406
    invoke-interface {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method private logProvisioningExtras(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 366
    invoke-static {p2}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getAllProvisioningExtras(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p2

    .line 367
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    iget-object v2, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v3, 0x264

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v1, 0x5f

    .line 371
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 372
    invoke-interface {p2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p2

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 373
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    aput-object p0, v0, v2

    .line 370
    invoke-interface {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method private maybeLogEntryPoint(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_6

    .line 383
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 386
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7970ba3b

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x6f35f57a

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    goto :goto_0

    :cond_2
    const-string v2, "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v5

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    goto :goto_1

    .line 394
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logProvisionedFromTrustedSource(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 388
    :cond_5
    iget-object p2, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v0, 0x267

    invoke-virtual {p2, p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;I)V

    .line 389
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    new-array p2, v5, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v0, 0x4f

    .line 390
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 391
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    aput-object p0, p2, v4

    .line 389
    invoke-interface {p1, p2}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private maybeLogManagedProfileOnFullyManagedDevice(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "device_policy"

    .line 450
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 451
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "android.app.action.PROVISION_MANAGED_PROFILE"

    .line 453
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 454
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/app/admin/DevicePolicyEventLogger;

    const/4 v0, 0x0

    const/16 v1, 0x4d

    .line 455
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 456
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    aput-object p0, p2, v0

    .line 454
    invoke-interface {p1, p2}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    :cond_0
    return-void
.end method

.method private maybeLogProvisioningFlowType(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 6

    .line 347
    iget-boolean v0, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    new-instance v0, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/common/Utils;->isAdminIntegratedFlow(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result p1

    .line 351
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/app/admin/DevicePolicyEventLogger;

    const/4 v3, 0x0

    const/16 v4, 0x7c

    .line 352
    invoke-static {v4}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v4

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 353
    :goto_0
    invoke-virtual {v4, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 356
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    aput-object p0, v2, v3

    .line 351
    invoke-interface {v0, v2}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method


# virtual methods
.method public logCopyAccountStatus(Landroid/content/Context;I)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v1, 0x272

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;II)V

    .line 141
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v1, 0x67

    .line 142
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    .line 143
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p2

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 144
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, v0, p2

    .line 141
    invoke-interface {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method public logDpcSetupCompleted(Landroid/content/Context;I)V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v1, 0x99

    invoke-virtual {v0, p1, v1}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;I)V

    .line 334
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/admin/DevicePolicyEventLogger;

    .line 335
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    .line 336
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p2

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 337
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, v0, p2

    .line 334
    invoke-interface {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method public logDpcSetupStarted(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 304
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;I)V

    .line 307
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x7ea1f40

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7a1101cc

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "android.app.action.ADMIN_POLICY_COMPLIANCE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_1
    const-string p1, "android.app.action.PROVISIONING_SUCCESSFUL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    const/4 p1, 0x3

    goto :goto_2

    :cond_4
    const/4 p1, 0x2

    .line 319
    :goto_2
    iget-object p2, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    new-array v0, v3, [Landroid/app/admin/DevicePolicyEventLogger;

    .line 320
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    .line 321
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 322
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    aput-object p0, v0, v2

    .line 319
    invoke-interface {p2, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method public logNumberOfTermsDisplayed(Landroid/content/Context;I)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v1, 0x32a

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;II)V

    .line 224
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v1, 0x6c

    .line 225
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    .line 226
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p2

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 227
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, v0, p2

    .line 224
    invoke-interface {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method public logNumberOfTermsRead(Landroid/content/Context;I)V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v1, 0x32b

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;II)V

    .line 238
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v1, 0x6d

    .line 239
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    .line 240
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p2

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 241
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, v0, p2

    .line 238
    invoke-interface {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method public logOrganizationOwnedManagedProfileProvisioning()V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v2, 0x9a

    .line 292
    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 293
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 291
    invoke-interface {v0, v1}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method public logPreProvisioningStarted(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logProvisioningExtras(Landroid/content/Context;Landroid/content/Intent;)V

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->maybeLogEntryPoint(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public logProvisioningAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 279
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v1, 0x263

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;ILjava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v3, 0x5e

    .line 281
    invoke-static {v3}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v1, v4

    .line 282
    invoke-virtual {v3, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    iget-object v3, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 283
    invoke-static {v3}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    aput-object v1, v2, v4

    .line 280
    invoke-interface {v0, v2}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->maybeLogManagedProfileOnFullyManagedDevice(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public logProvisioningCancelled(Landroid/content/Context;I)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v1, 0x270

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;II)V

    .line 155
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v1, 0x65

    .line 156
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    .line 157
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p2

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 158
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, v0, p2

    .line 155
    invoke-interface {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method public logProvisioningError(Landroid/content/Context;Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    .line 171
    invoke-static {p2, p3}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getErrorString(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x271

    .line 170
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;ILjava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v2, 0x66

    .line 173
    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/String;

    .line 174
    invoke-static {p2, p3}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getErrorString(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p2

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 175
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    aput-object p0, v1, p3

    .line 172
    invoke-interface {p1, v1}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method public logProvisioningNotAllowed(Landroid/content/Context;I)V
    .locals 6

    .line 185
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v1, 0x271

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;II)V

    .line 186
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v2, 0x66

    .line 187
    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/String;

    .line 188
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v0, v3

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p2

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 189
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    aput-object p0, v1, v3

    .line 186
    invoke-interface {p1, v1}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method public logProvisioningPrepareCompleted()V
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v2, 0x7b

    .line 262
    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 263
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 261
    invoke-interface {v0, v1}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method public logProvisioningPrepareStarted()V
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v2, 0x7a

    .line 251
    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 252
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 250
    invoke-interface {v0, v1}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method public logProvisioningSessionCompleted(Landroid/content/Context;)V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v1, 0x2df

    invoke-virtual {v0, p1, v1}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;I)V

    .line 211
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v1, 0x6a

    .line 212
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 213
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 211
    invoke-interface {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method public logProvisioningSessionStarted(Landroid/content/Context;)V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsLoggerWrapper:Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;

    const/16 v1, 0x2de

    invoke-virtual {v0, p1, v1}, Lcom/android/managedprovisioning/analytics/MetricsLoggerWrapper;->logAction(Landroid/content/Context;I)V

    .line 199
    iget-object p1, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/admin/DevicePolicyEventLogger;

    const/16 v1, 0x69

    .line 200
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 201
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 199
    invoke-interface {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method

.method public logProvisioningStarted(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 1

    .line 117
    invoke-virtual {p2}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logDpcPackageInformation(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logNetworkType(Landroid/content/Context;)V

    .line 119
    invoke-direct {p0, p2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->maybeLogProvisioningFlowType(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    return-void
.end method

.method public logTimeLoggerEvent(II)V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mMetricsWriter:Lcom/android/managedprovisioning/analytics/MetricsWriter;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/app/admin/DevicePolicyEventLogger;

    .line 268
    invoke-static {p1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 269
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->mSharedPreferences:Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    .line 270
    invoke-static {p0}, Lcom/android/managedprovisioning/analytics/AnalyticsUtils;->getProvisioningTime(Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    .line 267
    invoke-interface {v0, v1}, Lcom/android/managedprovisioning/analytics/MetricsWriter;->write([Landroid/app/admin/DevicePolicyEventLogger;)V

    return-void
.end method
