.class public final Lcom/android/managedprovisioning/provisioning/FinancedDeviceProvisioningController;
.super Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;
.source "FinancedDeviceProvisioningController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)V

    return-void
.end method


# virtual methods
.method protected getErrorMsgId(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)I
    .locals 0

    const p0, 0x7f0d00b2

    return p0
.end method

.method protected getErrorTitle()I
    .locals 0

    const p0, 0x7f0d00c4

    return p0
.end method

.method protected getRequireFactoryReset(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected performCleanup()V
    .locals 0

    return-void
.end method

.method protected setUpTasks()V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    .line 46
    new-instance v2, Lcom/android/managedprovisioning/task/DeviceOwnerInitializeProvisioningTask;

    iget-object v3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v2, v3, v4, p0}, Lcom/android/managedprovisioning/task/DeviceOwnerInitializeProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    .line 48
    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v2, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    .line 49
    new-instance v2, Lcom/android/managedprovisioning/task/DownloadPackageTask;

    iget-object v5, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v1, p0}, Lcom/android/managedprovisioning/task/DownloadPackageTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    aput-object v2, v1, v3

    .line 50
    new-instance v5, Lcom/android/managedprovisioning/task/VerifyPackageTask;

    iget-object v6, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v5, v2, v6, v7, p0}, Lcom/android/managedprovisioning/task/VerifyPackageTask;-><init>(Lcom/android/managedprovisioning/task/DownloadPackageTask;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v5, v1, v0

    new-instance v5, Lcom/android/managedprovisioning/task/InstallPackageTask;

    iget-object v6, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v5, v2, v6, v7, p0}, Lcom/android/managedprovisioning/task/InstallPackageTask;-><init>(Lcom/android/managedprovisioning/task/DownloadPackageTask;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v5, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    :cond_0
    new-array v1, v4, [Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    .line 54
    new-instance v2, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;

    iget-object v4, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v2, v4, v5, p0}, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/managedprovisioning/task/DisallowAddUserTask;

    iget-object v3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v2, v3, v4, p0}, Lcom/android/managedprovisioning/task/DisallowAddUserTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    return-void
.end method
