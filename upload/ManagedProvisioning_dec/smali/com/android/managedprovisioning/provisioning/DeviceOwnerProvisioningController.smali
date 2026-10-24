.class public Lcom/android/managedprovisioning/provisioning/DeviceOwnerProvisioningController;
.super Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;
.source "DeviceOwnerProvisioningController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)V

    return-void
.end method


# virtual methods
.method protected getErrorMsgId(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)I
    .locals 2

    .line 85
    instance-of p0, p1, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;

    if-eqz p0, :cond_0

    const p0, 0x7f0d0070

    return p0

    .line 87
    :cond_0
    instance-of p0, p1, Lcom/android/managedprovisioning/task/DownloadPackageTask;

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f0d006c

    return p0

    .line 94
    :cond_2
    instance-of p0, p1, Lcom/android/managedprovisioning/task/VerifyPackageTask;

    const v0, 0x7f0d006f

    const/4 v1, 0x1

    if-eqz p0, :cond_5

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    const p0, 0x7f0d006d

    return p0

    .line 101
    :cond_5
    instance-of p0, p1, Lcom/android/managedprovisioning/task/InstallPackageTask;

    if-eqz p0, :cond_8

    if-eqz p2, :cond_7

    if-eq p2, v1, :cond_6

    goto :goto_0

    :cond_6
    const p0, 0x7f0d006e

    return p0

    :cond_7
    return v0

    :cond_8
    :goto_0
    const p0, 0x7f0d002e

    return p0
.end method

.method protected getErrorTitle()I
    .locals 0

    const p0, 0x7f0d002e

    return p0
.end method

.method protected getRequireFactoryReset(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)Z
    .locals 0

    .line 115
    instance-of p0, p1, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;

    if-nez p0, :cond_0

    instance-of p0, p1, Lcom/android/managedprovisioning/task/DeviceOwnerInitializeProvisioningTask;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected performCleanup()V
    .locals 0

    return-void
.end method

.method protected setUpTasks()V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    .line 50
    new-instance v2, Lcom/android/managedprovisioning/task/DeviceOwnerInitializeProvisioningTask;

    iget-object v3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v2, v3, v4, p0}, Lcom/android/managedprovisioning/task/DeviceOwnerInitializeProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    .line 53
    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean v2, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-nez v2, :cond_2

    .line 54
    iget-object v2, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->wifiInfo:Lcom/android/managedprovisioning/model/WifiInfo;

    if-eqz v2, :cond_0

    new-array v2, v0, [Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    .line 55
    new-instance v6, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;

    iget-object v7, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v1, p0}, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v6, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-boolean v2, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->useMobileData:Z

    if-eqz v2, :cond_1

    new-array v2, v0, [Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    .line 57
    new-instance v6, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;

    iget-object v7, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v1, p0}, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v6, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    .line 60
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v2, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    if-eqz v2, :cond_2

    .line 61
    new-instance v2, Lcom/android/managedprovisioning/task/DownloadPackageTask;

    iget-object v6, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, v1, p0}, Lcom/android/managedprovisioning/task/DownloadPackageTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    new-array v1, v5, [Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    aput-object v2, v1, v3

    .line 62
    new-instance v6, Lcom/android/managedprovisioning/task/VerifyPackageTask;

    iget-object v7, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v6, v2, v7, v8, p0}, Lcom/android/managedprovisioning/task/VerifyPackageTask;-><init>(Lcom/android/managedprovisioning/task/DownloadPackageTask;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v6, v1, v0

    new-instance v6, Lcom/android/managedprovisioning/task/InstallPackageTask;

    iget-object v7, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v6, v2, v7, v8, p0}, Lcom/android/managedprovisioning/task/InstallPackageTask;-><init>(Lcom/android/managedprovisioning/task/DownloadPackageTask;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v6, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    :cond_2
    new-array v1, v5, [Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    .line 68
    new-instance v2, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;

    iget-object v5, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v2, v0, v5, v6, p0}, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;-><init>(ZLandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;

    iget-object v5, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v2, v5, v6, p0}, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v2, v1, v0

    new-instance v2, Lcom/android/managedprovisioning/task/DisallowAddUserTask;

    iget-object v5, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v2, v5, v6, p0}, Lcom/android/managedprovisioning/task/DisallowAddUserTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    .line 74
    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v2, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->accountToMigrate:Landroid/accounts/Account;

    if-eqz v2, :cond_3

    new-array v0, v0, [Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    .line 75
    new-instance v2, Lcom/android/managedprovisioning/task/CopyAccountToUserTask;

    iget-object v4, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v1, p0}, Lcom/android/managedprovisioning/task/CopyAccountToUserTask;-><init>(ILandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    :cond_3
    return-void
.end method
