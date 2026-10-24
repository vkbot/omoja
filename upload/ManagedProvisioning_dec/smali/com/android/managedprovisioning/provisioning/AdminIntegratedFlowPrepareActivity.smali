.class public Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareActivity;
.super Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;
.source "AdminIntegratedFlowPrepareActivity.java"


# instance fields
.field private mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareActivity;-><init>(Lcom/android/managedprovisioning/common/Utils;)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/managedprovisioning/common/Utils;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;-><init>(Lcom/android/managedprovisioning/common/Utils;)V

    return-void
.end method

.method public static shouldRunPrepareActivity(Lcom/android/managedprovisioning/common/Utils;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z
    .locals 2

    .line 50
    iget-object v0, p2, Lcom/android/managedprovisioning/model/ProvisioningParams;->wifiInfo:Lcom/android/managedprovisioning/model/WifiInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 53
    :cond_0
    iget-boolean v0, p2, Lcom/android/managedprovisioning/model/ProvisioningParams;->useMobileData:Z

    if-eqz v0, :cond_1

    return v1

    .line 56
    :cond_1
    iget-object v0, p2, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p2}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lcom/android/managedprovisioning/model/ProvisioningParams;->deviceAdminDownloadInfo:Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    iget p2, p2, Lcom/android/managedprovisioning/model/PackageDownloadInfo;->minVersion:I

    .line 58
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/managedprovisioning/common/Utils;->packageRequiresUpdate(Ljava/lang/String;ILandroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected decideCancelProvisioningDialog()V
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->showCancelProvisioningDialog(Z)V

    return-void
.end method

.method protected getProvisioningManager()Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mProvisioningManager:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;

    if-nez v0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;->getInstance(Landroid/content/Context;)Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mProvisioningManager:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mProvisioningManager:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;

    return-object p0
.end method

.method protected initializeUi(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 114
    invoke-static {p1, p0, v0}, Lcom/android/managedprovisioning/model/CustomizationParams;->createInstance(Lcom/android/managedprovisioning/model/ProvisioningParams;Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)Lcom/android/managedprovisioning/model/CustomizationParams;

    move-result-object p1

    const v0, 0x7f0d0067

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0c0076

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->initializeLayoutParams(ILjava/lang/Integer;Lcom/android/managedprovisioning/model/CustomizationParams;)V

    const p1, 0x7f0d00bb

    .line 116
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f090166

    .line 118
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    const v0, 0x7f090054

    .line 119
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 121
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 122
    new-instance v0, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    invoke-direct {v0, p1}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareActivity;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    .line 123
    invoke-virtual {v0}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->start()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 76
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareActivity;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->start()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 84
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AdminIntegratedFlowPrepareActivity;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->stop()V

    :cond_0
    return-void
.end method

.method public preFinalizationCompleted()V
    .locals 1

    const-string v0, "AdminIntegratedFlowPrepareActivity pre-finalization completed"

    .line 99
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 100
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
