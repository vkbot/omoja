.class public Lcom/android/managedprovisioning/common/PolicyComplianceUtils;
.super Ljava/lang/Object;
.source "PolicyComplianceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPolicyComplianceIntent(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 81
    invoke-virtual {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object p0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ADMIN_POLICY_COMPLIANCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    :cond_0
    iget-object p1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->adminExtrasBundle:Landroid/os/PersistableBundle;

    const-string p2, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getPolicyComplianceIntentIfResolvable(Landroid/app/Activity;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;Lcom/android/managedprovisioning/common/Utils;)Landroid/content/Intent;
    .locals 1

    .line 71
    invoke-direct {p0, p1, p2, p4}, Lcom/android/managedprovisioning/common/PolicyComplianceUtils;->getPolicyComplianceUserHandle(Landroid/app/Activity;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/common/Utils;)Landroid/os/UserHandle;

    move-result-object v0

    .line 72
    invoke-direct {p0, p2, p3}, Lcom/android/managedprovisioning/common/PolicyComplianceUtils;->getPolicyComplianceIntent(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 75
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 74
    invoke-virtual {p4, p1, p0, p2}, Lcom/android/managedprovisioning/common/Utils;->canResolveIntentAsUser(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getPolicyComplianceUserHandle(Landroid/app/Activity;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/common/Utils;)Landroid/os/UserHandle;
    .locals 0

    .line 98
    iget-object p0, p2, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    const-string p2, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p3, p1}, Lcom/android/managedprovisioning/common/Utils;->getManagedProfile(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object p0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public isPolicyComplianceActivityResolvable(Landroid/app/Activity;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;Lcom/android/managedprovisioning/common/Utils;)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/managedprovisioning/common/PolicyComplianceUtils;->getPolicyComplianceIntentIfResolvable(Landroid/app/Activity;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;Lcom/android/managedprovisioning/common/Utils;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startPolicyComplianceActivityForResultIfResolved(Landroid/app/Activity;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;ILcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)Z
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2, p5}, Lcom/android/managedprovisioning/common/PolicyComplianceUtils;->getPolicyComplianceUserHandle(Landroid/app/Activity;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/common/Utils;)Landroid/os/UserHandle;

    move-result-object v0

    .line 53
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/managedprovisioning/common/PolicyComplianceUtils;->getPolicyComplianceIntentIfResolvable(Landroid/app/Activity;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;Lcom/android/managedprovisioning/common/Utils;)Landroid/content/Intent;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p1, p0, p4, v0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 60
    invoke-virtual {p1, p2, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 62
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {p6, p1, p0}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logDpcSetupStarted(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p2
.end method
