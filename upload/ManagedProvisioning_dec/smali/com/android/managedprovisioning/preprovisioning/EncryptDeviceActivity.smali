.class public Lcom/android/managedprovisioning/preprovisioning/EncryptDeviceActivity;
.super Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;
.source "EncryptDeviceActivity.java"


# instance fields
.field private mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;-><init>()V

    return-void
.end method

.method private initializeUi(III)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptDeviceActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 88
    invoke-static {v0, p0, v1}, Lcom/android/managedprovisioning/model/CustomizationParams;->createInstance(Lcom/android/managedprovisioning/model/ProvisioningParams;Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)Lcom/android/managedprovisioning/model/CustomizationParams;

    move-result-object v0

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v1, 0x7f0c004a

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->initializeLayoutParams(ILjava/lang/Integer;Lcom/android/managedprovisioning/model/CustomizationParams;)V

    .line 90
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f0900f5

    .line 91
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/android/managedprovisioning/preprovisioning/EncryptDeviceActivity;->getEncryptionController()Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptDeviceActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-virtual {p1, v0}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->setEncryptionReminder(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    .line 77
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.app.action.START_ENCRYPTION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getEncryptionController()Lcom/android/managedprovisioning/preprovisioning/EncryptionController;
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/android/managedprovisioning/preprovisioning/EncryptionController;->getInstance(Landroid/content/Context;)Lcom/android/managedprovisioning/preprovisioning/EncryptionController;

    move-result-object p0

    return-object p0
.end method

.method protected getMetricsCategory()I
    .locals 0

    const/16 p0, 0x209

    return p0
.end method

.method public synthetic lambda$onCreate$0$EncryptDeviceActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/EncryptDeviceActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "provisioningParams"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/model/ProvisioningParams;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptDeviceActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    if-nez p1, :cond_0

    const-string p1, "Missing params in EncryptDeviceActivity activity"

    .line 53
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->getUtils()Lcom/android/managedprovisioning/common/Utils;

    move-result-object p1

    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptDeviceActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/managedprovisioning/common/Utils;->isProfileOwnerAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0d00c3

    const v0, 0x7f0d00be

    const v1, 0x7f0d006a

    .line 59
    invoke-direct {p0, p1, v0, v1}, Lcom/android/managedprovisioning/preprovisioning/EncryptDeviceActivity;->initializeUi(III)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->getUtils()Lcom/android/managedprovisioning/common/Utils;

    move-result-object p1

    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptDeviceActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/managedprovisioning/common/Utils;->isDeviceOwnerAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0d00c2

    const v0, 0x7f0d00ba

    const v1, 0x7f0d0069

    .line 63
    invoke-direct {p0, p1, v0, v1}, Lcom/android/managedprovisioning/preprovisioning/EncryptDeviceActivity;->initializeUi(III)V

    :goto_0
    const p1, 0x7f0900f4

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 73
    new-instance v0, Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$EncryptDeviceActivity$jP-ZjUPIryhEtemDTPesDQfUoXM;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$EncryptDeviceActivity$jP-ZjUPIryhEtemDTPesDQfUoXM;-><init>(Lcom/android/managedprovisioning/preprovisioning/EncryptDeviceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown provisioning action: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/EncryptDeviceActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
