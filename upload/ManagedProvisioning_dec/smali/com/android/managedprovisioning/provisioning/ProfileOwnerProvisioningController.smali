.class public Lcom/android/managedprovisioning/provisioning/ProfileOwnerProvisioningController;
.super Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;
.source "ProfileOwnerProvisioningController.java"


# instance fields
.field private final mParentUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)V

    .line 50
    iput p3, p0, Lcom/android/managedprovisioning/provisioning/ProfileOwnerProvisioningController;->mParentUserId:I

    return-void
.end method

.method private setUpTasksManagedProfile()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    .line 62
    new-instance v1, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;

    iget-object v2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/managedprovisioning/task/InstallExistingPackageTask;

    iget-object v2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    .line 64
    invoke-virtual {v2}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/managedprovisioning/task/InstallExistingPackageTask;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;

    iget-object v2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/managedprovisioning/task/ManagedProfileSettingsTask;

    iget-object v2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/managedprovisioning/task/ManagedProfileSettingsTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;

    iget-object v2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/managedprovisioning/task/StartManagedProfileTask;

    iget-object v2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/managedprovisioning/task/StartManagedProfileTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/managedprovisioning/task/CopyAccountToUserTask;

    iget v2, p0, Lcom/android/managedprovisioning/provisioning/ProfileOwnerProvisioningController;->mParentUserId:I

    iget-object v3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/managedprovisioning/task/CopyAccountToUserTask;-><init>(ILandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    return-void
.end method

.method private setUpTasksManagedUser()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    .line 74
    new-instance v1, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;

    iget-object v2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3, p0}, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;-><init>(ZLandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/managedprovisioning/task/InstallExistingPackageTask;

    iget-object v2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    .line 76
    invoke-virtual {v2}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v1, v2, v3, v5, p0}, Lcom/android/managedprovisioning/task/InstallExistingPackageTask;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;

    iget-object v2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    return-void
.end method


# virtual methods
.method protected getErrorMsgId(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)I
    .locals 0

    const p0, 0x7f0d008f

    return p0
.end method

.method protected getErrorTitle()I
    .locals 0

    const p0, 0x7f0d002f

    return p0
.end method

.method protected getRequireFactoryReset(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)Z
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized onSuccess(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    instance-of v0, p1, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;

    if-eqz v0, :cond_0

    .line 85
    move-object v0, p1

    check-cast v0, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/task/CreateManagedProfileTask;->getProfileUserId()I

    move-result v0

    iput v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mUserId:I

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->onSuccess(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected performCleanup()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    const-string v1, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mCurrentTaskIndex:I

    if-eqz v0, :cond_0

    const-string v0, "Removing managed profile"

    .line 94
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 96
    iget p0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->removeUserEvenWhenDisallowed(I)Z

    :cond_0
    return-void
.end method

.method protected setUpTasks()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    const-string v1, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProfileOwnerProvisioningController;->setUpTasksManagedProfile()V

    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProfileOwnerProvisioningController;->setUpTasksManagedUser()V

    :goto_0
    return-void
.end method
