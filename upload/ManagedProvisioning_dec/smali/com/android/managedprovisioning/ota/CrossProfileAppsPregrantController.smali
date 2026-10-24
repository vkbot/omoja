.class public Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;
.super Ljava/lang/Object;
.source "CrossProfileAppsPregrantController.java"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

.field private final mCrossProfileAppsSnapshot:Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 50
    const-class v0, Landroid/os/UserManager;

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/UserManager;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    const-class v0, Landroid/content/pm/CrossProfileApps;

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/CrossProfileApps;

    const-class v0, Landroid/app/AppOpsManager;

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/AppOpsManager;

    move-object v1, p0

    move-object v2, p1

    .line 50
    invoke-direct/range {v1 .. v7}, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;-><init>(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/PackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/CrossProfileApps;Landroid/app/AppOpsManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/PackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/CrossProfileApps;Landroid/app/AppOpsManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mUserManager:Landroid/os/UserManager;

    .line 67
    iput-object p3, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 68
    iput-object p4, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 69
    iput-object p5, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    .line 70
    iput-object p6, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 71
    new-instance p2, Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

    invoke-direct {p2, p1}, Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mCrossProfileAppsSnapshot:Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

    return-void
.end method

.method private appOpIsChangedFromDefault(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 95
    iget-object p0, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mAppOpsManager:Landroid/app/AppOpsManager;

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

    .line 103
    iget-object v0, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDefaultCrossProfilePackages()Ljava/util/Set;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    .line 105
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/managedprovisioning/ota/-$$Lambda$MnqtRHKFY0UWx7TydDNYRyXwPEM;

    invoke-direct {v1, p0}, Lcom/android/managedprovisioning/ota/-$$Lambda$MnqtRHKFY0UWx7TydDNYRyXwPEM;-><init>(Landroid/content/pm/CrossProfileApps;)V

    .line 104
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 105
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private isParentProfileOfManagedProfile()Z
    .locals 4

    .line 109
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 111
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 112
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mUserManager:Landroid/os/UserManager;

    .line 113
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public checkCrossProfileAppsPermissions()V
    .locals 6

    .line 75
    invoke-direct {p0}, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->isParentProfileOfManagedProfile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mCrossProfileAppsSnapshot:Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;

    iget-object v1, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/task/interactacrossprofiles/CrossProfileAppsSnapshot;->getSnapshot(I)Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 82
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-direct {p0}, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->getConfigurableDefaultCrossProfilePackages()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 84
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    invoke-direct {p0, v1, v3}, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->appOpIsChangedFromDefault(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/android/managedprovisioning/ota/CrossProfileAppsPregrantController;->mCrossProfileApps:Landroid/content/pm/CrossProfileApps;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/CrossProfileApps;->setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    return-void
.end method
