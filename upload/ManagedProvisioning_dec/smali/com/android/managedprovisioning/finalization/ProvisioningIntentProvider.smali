.class Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;
.super Ljava/lang/Object;
.source "ProvisioningIntentProvider.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addExtrasToIntent(Landroid/content/Intent;Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 0

    .line 83
    iget-object p0, p2, Lcom/android/managedprovisioning/model/ProvisioningParams;->adminExtrasBundle:Landroid/os/PersistableBundle;

    const-string p2, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method private createDpcLaunchIntent(Lcom/android/managedprovisioning/model/ProvisioningParams;)Landroid/content/Intent;
    .locals 2

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.PROVISIONING_SUCCESSFUL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "Device admin package name is null"

    .line 73
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    invoke-direct {p0, v0, p1}, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;->addExtrasToIntent(Landroid/content/Intent;Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    return-object v0
.end method


# virtual methods
.method canLaunchDpc(Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/common/Utils;Landroid/content/Context;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;->createDpcLaunchIntent(Lcom/android/managedprovisioning/model/ProvisioningParams;)Landroid/content/Intent;

    move-result-object p0

    .line 52
    invoke-virtual {p3, p4, p0, p2}, Lcom/android/managedprovisioning/common/Utils;->canResolveIntentAsUser(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result p0

    return p0
.end method

.method createProvisioningCompleteIntent(Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/common/Utils;Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.PROFILE_PROVISIONING_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    :try_start_0
    invoke-virtual {p1, p3, p4, p2}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminComponentName(Lcom/android/managedprovisioning/common/Utils;Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Lcom/android/managedprovisioning/common/IllegalProvisioningArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const p2, 0x10000020

    .line 64
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    invoke-direct {p0, v0, p1}, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;->addExtrasToIntent(Landroid/content/Intent;Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "Failed to infer the device admin component name"

    .line 61
    invoke-static {p1, p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method launchFinalizationScreenForResult(Landroid/app/Activity;Lcom/android/managedprovisioning/model/ProvisioningParams;I)V
    .locals 1

    .line 88
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/android/managedprovisioning/finalization/FinalScreenActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {v0, p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 95
    :cond_0
    sget-object v0, Lcom/android/managedprovisioning/finalization/FinalScreenActivity;->EXTRA_PROVISIONING_PARAMS:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1, p0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method maybeLaunchDpc(Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/common/Utils;Landroid/content/Context;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;->createDpcLaunchIntent(Lcom/android/managedprovisioning/model/ProvisioningParams;)Landroid/content/Intent;

    move-result-object v0

    .line 43
    invoke-virtual {p3, p4, v0, p2}, Lcom/android/managedprovisioning/common/Utils;->canResolveIntentAsUser(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;->createDpcLaunchIntent(Lcom/android/managedprovisioning/model/ProvisioningParams;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Dpc was launched for user: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p4, p0}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logDpcSetupStarted(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
