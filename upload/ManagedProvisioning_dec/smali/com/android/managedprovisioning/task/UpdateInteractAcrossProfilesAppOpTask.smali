.class public Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "UpdateInteractAcrossProfilesAppOpTask.java"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

.field private final mCrossProfileAppsSnapshot:Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    .line 57
    new-instance p2, Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

    invoke-direct {p2, p1}, Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mCrossProfileAppsSnapshot:Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

    .line 58
    const-class p2, Landroid/content/pm/CrossProfileApps;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/CrossProfileApps;

    iput-object p2, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    .line 59
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    .line 60
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private appOpIsChangedFromDefault(I)Z
    .locals 0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private appOpIsChangedFromDefault(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getAllInstalledApps()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getAllProfiles()Ljava/util/List;

    move-result-object v1

    .line 137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 138
    iget-object v3, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 139
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 138
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getConsolidatedModeForPackagesInUid(I[Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 160
    array-length v0, p2

    const/4 v1, 0x3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 161
    iget-object v4, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    invoke-virtual {v4, v3}, Landroid/content/pm/CrossProfileApps;->canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    iget-object v4, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v4, p3, p1, v3}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 163
    invoke-direct {p0, v3, v1}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->shouldUpdateUidMode(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getUidsWithNonDefaultMode()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 122
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 125
    invoke-direct {p0}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->getAllInstalledApps()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 126
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->appOpIsChangedFromDefault(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private grantNewConfigurableDefaultCrossProfilePackages(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 90
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    invoke-virtual {v2, v1}, Landroid/content/pm/CrossProfileApps;->canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    .line 98
    invoke-direct {p0, v0, v2, v1}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->appOpIsChangedFromDefault(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/CrossProfileApps;->setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Missing package, this should not happen."

    .line 102
    invoke-static {v2, v1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private reapplyCrossProfileAppsPermission()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->getUidsWithNonDefaultMode()Ljava/util/Set;

    move-result-object v0

    .line 118
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->reapplyCrossProfileAppsPermissionForUids(Ljava/util/Set;)V

    return-void
.end method

.method private reapplyCrossProfileAppsPermissionForUid(I)V
    .locals 2

    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 151
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-direct {p0, p1, v1, v0}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->getConsolidatedModeForPackagesInUid(I[Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 155
    invoke-direct {p0, p1, v1, v0}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->setAppOpForPackagesInUid(I[Ljava/lang/String;I)V

    return-void
.end method

.method private reapplyCrossProfileAppsPermissionForUids(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 146
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->reapplyCrossProfileAppsPermissionForUid(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setAppOpForPackagesInUid(I[Ljava/lang/String;I)V
    .locals 3

    .line 186
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 187
    invoke-direct {p0, p1, v2, p3}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->setInteractAcrossProfilesAppOpForPackage(ILjava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setInteractAcrossProfilesAppOpForPackage(ILjava/lang/String;I)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x5d

    .line 198
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    .line 196
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 199
    iget-object p0, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1, p1, p3}, Landroid/app/AppOpsManager;->setUidMode(III)V

    return-void
.end method

.method private shouldUpdateUidMode(II)Z
    .locals 2

    .line 172
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->appOpIsChangedFromDefault(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->appOpIsChangedFromDefault(I)Z

    move-result p0

    const/4 p2, 0x1

    if-nez p0, :cond_1

    return p2

    :cond_1
    if-nez p1, :cond_2

    return p2

    :cond_2
    return v1
.end method

.method private updateAfterOtaChanges(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/CrossProfileApps;->resetInteractAcrossProfilesAppOps(Ljava/util/Collection;Ljava/util/Set;)V

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 81
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 83
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->grantNewConfigurableDefaultCrossProfilePackages(Ljava/util/Set;)V

    .line 84
    invoke-direct {p0}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->reapplyCrossProfileAppsPermission()V

    return-void
.end method


# virtual methods
.method public run(I)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mCrossProfileAppsSnapshot:Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;->hasSnapshot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mCrossProfileAppsSnapshot:Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;->getSnapshot(I)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mCrossProfileAppsSnapshot:Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

    invoke-virtual {v1, p1}, Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;->takeNewSnapshot(I)V

    .line 71
    iget-object v1, p0, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->mCrossProfileAppsSnapshot:Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

    invoke-virtual {v1, p1}, Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;->getSnapshot(I)Ljava/util/Set;

    move-result-object p1

    .line 73
    invoke-direct {p0, v0, p1}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;->updateAfterOtaChanges(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method
