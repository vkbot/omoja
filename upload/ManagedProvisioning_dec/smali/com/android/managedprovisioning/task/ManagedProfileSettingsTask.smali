.class public Lcom/android/managedprovisioning/task/ManagedProfileSettingsTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "ManagedProfileSettingsTask.java"


# static fields
.field static final DEFAULT_CONTACT_REMOTE_SEARCH:Z = true
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mCrossProfileIntentFiltersSetter:Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;

.field private final mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V
    .locals 7

    .line 50
    new-instance v1, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v1}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    new-instance v2, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;

    invoke-direct {v2, p1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 52
    invoke-static {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v0

    new-instance v3, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v3, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v6, v0, v3}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 50
    invoke-direct/range {v0 .. v6}, Lcom/android/managedprovisioning/task/ManagedProfileSettingsTask;-><init>(Lcom/android/managedprovisioning/common/SettingsFacade;Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method constructor <init>(Lcom/android/managedprovisioning/common/SettingsFacade;Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 64
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    .line 65
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/SettingsFacade;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/ManagedProfileSettingsTask;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    .line 66
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/ManagedProfileSettingsTask;->mCrossProfileIntentFiltersSetter:Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;

    return-void
.end method


# virtual methods
.method public run(I)V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/managedprovisioning/task/ManagedProfileSettingsTask;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    iget-object v1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/managedprovisioning/common/SettingsFacade;->setProfileContactRemoteSearch(Landroid/content/Context;ZI)V

    .line 75
    iget-object v0, p0, Lcom/android/managedprovisioning/task/ManagedProfileSettingsTask;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    iget-object v1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/managedprovisioning/common/SettingsFacade;->setCrossProfileCalendarEnabled(Landroid/content/Context;ZI)V

    .line 79
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 80
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string v3, "no_wallpaper"

    invoke-virtual {v0, v3, v2, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 83
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->mainColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 86
    iget-object v1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->mainColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setOrganizationColorForUser(II)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/task/ManagedProfileSettingsTask;->mCrossProfileIntentFiltersSetter:Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->setFilters(II)V

    .line 92
    iget-object v0, p0, Lcom/android/managedprovisioning/task/ManagedProfileSettingsTask;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    iget-object v1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/managedprovisioning/common/SettingsFacade;->setUserSetupCompleted(Landroid/content/Context;I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void
.end method
