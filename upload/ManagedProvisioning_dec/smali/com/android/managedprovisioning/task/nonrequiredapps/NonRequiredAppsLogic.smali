.class public Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;
.super Ljava/lang/Object;
.source "NonRequiredAppsLogic.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mNewProfile:Z

.field private final mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

.field private final mSnapshot:Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;ZLcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;Lcom/android/managedprovisioning/common/Utils;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/IPackageManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 91
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 92
    iput-boolean p4, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mNewProfile:Z

    .line 93
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/model/ProvisioningParams;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    .line 94
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mSnapshot:Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;

    .line 95
    invoke-static {p7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 8

    .line 72
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v0, "device_policy"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    new-instance v6, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;

    invoke-direct {v6, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v7}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 70
    invoke-direct/range {v0 .. v7}, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;ZLcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;Lcom/android/managedprovisioning/common/Utils;)V

    return-void
.end method

.method private filterOutSystemAppsFromOta(Ljava/util/Set;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0, v1, p2}, Lcom/android/managedprovisioning/common/Utils;->getCurrentSystemApps(Landroid/content/pm/IPackageManager;I)Ljava/util/Set;

    move-result-object v0

    .line 129
    iget-object p0, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mSnapshot:Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;

    invoke-virtual {p0, p2}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->getSnapshot(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 131
    invoke-interface {p1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private getCase(I)I
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mNewProfile:Z

    if-eqz v0, :cond_1

    .line 148
    iget-object p0, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->leaveAllSystemAppsEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    .line 154
    :cond_1
    iget-object p0, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mSnapshot:Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->hasSnapshot(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private shouldDeleteSystemApps(I)Z
    .locals 1

    .line 141
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->getCase(I)I

    move-result p0

    const/4 p1, 0x1

    const/4 v0, 0x3

    if-eq v0, p0, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public getSystemAppsToRemove(I)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->shouldDeleteSystemApps(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v2, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminComponentName(Lcom/android/managedprovisioning/common/Utils;Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    iget-object v1, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v2, v2, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v1, v0, p1, v2}, Landroid/app/admin/DevicePolicyManager;->getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 114
    iget-boolean v1, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mNewProfile:Z

    if-eqz v1, :cond_1

    return-object v0

    .line 117
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->filterOutSystemAppsFromOta(Ljava/util/Set;I)V

    return-object v0

    :catch_0
    move-exception p0

    .line 109
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to infer device admin component name"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public maybeTakeSystemAppsSnapshot(I)V
    .locals 1

    .line 135
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->shouldDeleteSystemApps(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object p0, p0, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->mSnapshot:Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/SystemAppsSnapshot;->takeNewSnapshot(I)V

    :cond_0
    return-void
.end method
