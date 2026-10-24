.class public Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;
.super Ljava/lang/Object;
.source "UserProvisioningStateHelper.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mMyUserId:I

.field private final mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 53
    new-instance v0, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    new-instance v1, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v1}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/SettingsFacade;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/SettingsFacade;I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 64
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 65
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/SettingsFacade;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    .line 66
    iput p4, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mMyUserId:I

    return-void
.end method

.method private setUserProvisioningState(II)V
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting userProvisioningState for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setUserProvisioningState(II)V

    return-void
.end method


# virtual methods
.method public isStateUnmanagedOrFinalized()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 156
    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getUserProvisioningState()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public markUserProvisioningStateFinalized(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 144
    iget-object p1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/managedprovisioning/common/Utils;->getManagedProfile(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 147
    invoke-direct {p0, v0, p1}, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->setUserProvisioningState(II)V

    const/4 p1, 0x0

    .line 148
    iget v0, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mMyUserId:I

    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->setUserProvisioningState(II)V

    goto :goto_0

    .line 150
    :cond_0
    iget p1, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mMyUserId:I

    invoke-direct {p0, v0, p1}, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->setUserProvisioningState(II)V

    :goto_0
    return-void
.end method

.method public markUserProvisioningStateInitiallyDone(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/SettingsFacade;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result v0

    .line 91
    iget-object v1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    const-string v2, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, -0x2710

    if-eqz v1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/managedprovisioning/common/Utils;->getManagedProfile(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x4

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object p1, v3

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    .line 105
    iget-boolean p1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->isTransitioningFromRegularToChild:Z

    if-eqz p1, :cond_2

    const-string p1, "User transitioning to child, updating provisioning state."

    .line 109
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "user_setup_complete set, but provisioning was started"

    .line 113
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    move-object p1, v2

    goto :goto_1

    .line 115
    :cond_3
    iget-boolean p1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->skipUserSetup:Z

    if-eqz p1, :cond_4

    :goto_0
    move-object p1, v2

    move-object v2, v3

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    :goto_1
    if-eqz v2, :cond_5

    .line 124
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->mMyUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->setUserProvisioningState(II)V

    :cond_5
    if-eqz p1, :cond_6

    .line 127
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v4}, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->setUserProvisioningState(II)V

    :cond_6
    return-void
.end method
