.class public Lcom/android/managedprovisioning/task/CreateManagedProfileTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "CreateManagedProfileTask.java"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

.field private final mCrossProfileAppsSnapshot:Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mNonRequiredAppsLogic:Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mProfileUserId:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V
    .locals 9

    .line 61
    const-class v0, Landroid/os/UserManager;

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/UserManager;

    new-instance v6, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;

    const/4 v0, 0x1

    invoke-direct {v6, p1, v0, p2}, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;-><init>(Landroid/content/Context;ZLcom/android/managedprovisioning/model/ProvisioningParams;)V

    new-instance v7, Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

    invoke-direct {v7, p1}, Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 69
    invoke-static {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v0

    new-instance v1, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v1, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v8, v0, v1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 61
    invoke-direct/range {v1 .. v8}, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Landroid/os/UserManager;Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Landroid/os/UserManager;Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    .line 83
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;

    iput-object p2, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mNonRequiredAppsLogic:Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;

    .line 84
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mUserManager:Landroid/os/UserManager;

    .line 85
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

    iput-object p2, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mCrossProfileAppsSnapshot:Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

    .line 86
    const-class p2, Landroid/content/pm/CrossProfileApps;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/CrossProfileApps;

    iput-object p2, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    .line 87
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 89
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method

.method private appOpIsChangedFromDefault(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 137
    iget-object p0, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private getConfigurableDefaultCrossProfilePackages()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDefaultCrossProfilePackages()Ljava/util/Set;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    .line 131
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/managedprovisioning/task/-$$Lambda$MnqtRHKFY0UWx7TydDNYRyXwPEM;

    invoke-direct {v1, p0}, Lcom/android/managedprovisioning/task/-$$Lambda$MnqtRHKFY0UWx7TydDNYRyXwPEM;-><init>(Landroid/content/pm/CrossProfileApps;)V

    .line 130
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 131
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private pregrantDefaultInteractAcrossProfilesAppOps()V
    .locals 5

    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 119
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-direct {p0}, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->getConfigurableDefaultCrossProfilePackages()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    invoke-direct {p0, v0, v2}, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->appOpIsChangedFromDefault(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/CrossProfileApps;->setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetInteractAcrossProfilesAppOps()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    invoke-virtual {v0}, Landroid/content/pm/CrossProfileApps;->clearInteractAcrossProfilesAppOps()V

    .line 114
    invoke-direct {p0}, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->pregrantDefaultInteractAcrossProfilesAppOps()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 0

    const/16 p0, 0x26c

    return p0
.end method

.method public getProfileUserId()I
    .locals 0

    .line 155
    iget p0, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mProfileUserId:I

    return p0
.end method

.method public run(I)V
    .locals 7

    .line 94
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->startTaskTimer()V

    .line 95
    iget-object v0, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mNonRequiredAppsLogic:Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->getSystemAppsToRemove(I)Ljava/util/Set;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0057

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    const-string v3, "android.os.usertype.profile.MANAGED"

    const/16 v4, 0x40

    move v5, p1

    .line 96
    invoke-virtual/range {v1 .. v6}, Landroid/os/UserManager;->createProfileForUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void

    .line 104
    :cond_0
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    iput p1, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mProfileUserId:I

    .line 105
    iget-object v0, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mNonRequiredAppsLogic:Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->maybeTakeSystemAppsSnapshot(I)V

    .line 106
    iget-object p1, p0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->mCrossProfileAppsSnapshot:Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

    iget-object v0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;->takeNewSnapshot(I)V

    .line 107
    invoke-direct {p0}, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->resetInteractAcrossProfilesAppOps()V

    .line 108
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->stopTaskTimer()V

    .line 109
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void
.end method
