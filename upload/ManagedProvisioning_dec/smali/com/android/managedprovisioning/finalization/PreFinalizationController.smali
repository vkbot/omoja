.class public final Lcom/android/managedprovisioning/finalization/PreFinalizationController;
.super Ljava/lang/Object;
.source "PreFinalizationController.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mProvisioningParamsUtils:Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;

.field private final mSendDpcBroadcastServiceUtils:Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;

.field private final mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

.field private final mUserProvisioningStateHelper:Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/SettingsFacade;Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mActivity:Landroid/app/Activity;

    .line 83
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 84
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/SettingsFacade;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    .line 85
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mUserProvisioningStateHelper:Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

    .line 86
    iput-object p5, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mProvisioningParamsUtils:Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;

    .line 87
    iput-object p6, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mSendDpcBroadcastServiceUtils:Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;)V
    .locals 7

    .line 56
    new-instance v2, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v2}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    new-instance v3, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v3}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    new-instance v5, Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;

    invoke-direct {v5}, Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;-><init>()V

    new-instance v6, Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;

    invoke-direct {v6}, Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/managedprovisioning/finalization/PreFinalizationController;-><init>(Landroid/app/Activity;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/SettingsFacade;Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;)V

    return-void
.end method

.method private markIsProfileOwnerOnOrganizationOwnedDevice()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mActivity:Landroid/app/Activity;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 137
    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v2, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/managedprovisioning/common/Utils;->getManagedProfile(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 138
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mActivity:Landroid/app/Activity;

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    .line 143
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 141
    invoke-virtual {v2, p0, v3, v1}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 144
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 145
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 146
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->markProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error setting access to Device IDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private restrictRemovalOfManagedProfile()V
    .locals 2

    .line 131
    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    const-string v0, "no_remove_managed_profile"

    const/4 v1, 0x1

    .line 132
    invoke-virtual {p0, v0, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;Z)V

    return-void
.end method

.method private storeProvisioningParams(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mProvisioningParamsUtils:Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;

    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;->getProvisioningParamsFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->save(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final deviceManagementEstablished(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mUserProvisioningStateHelper:Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->isStateUnmanagedOrFinalized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "deviceManagementEstablished called, but state is not finalized or unmanaged"

    .line 108
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mUserProvisioningStateHelper:Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->markUserProvisioningStateInitiallyDone(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    .line 114
    iget-object v0, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    const-string v1, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-boolean v0, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->markIsProfileOwnerOnOrganizationOwnedDevice()V

    .line 117
    invoke-direct {p0}, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->restrictRemovalOfManagedProfile()V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/SettingsFacade;->isDuringSetupWizard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mSendDpcBroadcastServiceUtils:Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;->startSendDpcBroadcastService(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/SettingsFacade;->isDuringSetupWizard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->storeProvisioningParams(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    :cond_3
    return-void
.end method
