.class public Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareController;
.super Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;
.source "AdminIntegratedFlowPrepareController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)V

    return-void
.end method


# virtual methods
.method protected getErrorMsgId(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)I
    .locals 2

    .line 67
    instance-of p0, p1, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;

    if-eqz p0, :cond_0

    const p0, 0x7f0d0070

    return p0

    .line 69
    :cond_0
    instance-of p0, p1, Lcom/android/managedprovisioning/task/DownloadPackageTask;

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f0d006c

    return p0

    .line 76
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

    .line 83
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

    .line 97
    instance-of p0, p1, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected performCleanup()V
    .locals 0

    return-void
.end method

.method protected setUpTasks()V
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->wifiInfo:Lcom/android/managedprovisioning/model/WifiInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-array v1, v3, [Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    .line 47
    new-instance v4, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;

    iget-object v5, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0, p0}, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v4, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-boolean v1, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->useMobileData:Z

    if-eqz v1, :cond_1

    new-array v1, v3, [Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    .line 49
    new-instance v4, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;

    iget-object v5, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0, p0}, Lcom/android/managedprovisioning/task/ConnectMobileNetworkTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v4, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    .line 52
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    if-eqz v1, :cond_2

    .line 53
    new-instance v1, Lcom/android/managedprovisioning/task/DownloadPackageTask;

    iget-object v4, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v0, p0}, Lcom/android/managedprovisioning/task/DownloadPackageTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    aput-object v1, v0, v2

    .line 54
    new-instance v2, Lcom/android/managedprovisioning/task/VerifyPackageTask;

    iget-object v4, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v2, v1, v4, v5, p0}, Lcom/android/managedprovisioning/task/VerifyPackageTask;-><init>(Lcom/android/managedprovisioning/task/DownloadPackageTask;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v2, v0, v3

    const/4 v2, 0x2

    new-instance v3, Lcom/android/managedprovisioning/task/InstallPackageTask;

    iget-object v4, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-direct {v3, v1, v4, v5, p0}, Lcom/android/managedprovisioning/task/InstallPackageTask;-><init>(Lcom/android/managedprovisioning/task/DownloadPackageTask;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    :cond_2
    return-void
.end method
