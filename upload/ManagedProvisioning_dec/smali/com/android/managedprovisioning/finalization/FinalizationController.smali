.class public final Lcom/android/managedprovisioning/finalization/FinalizationController;
.super Ljava/lang/Object;
.source "FinalizationController.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDeferredMetricsReader:Lcom/android/managedprovisioning/analytics/DeferredMetricsReader;

.field private final mFinalizationControllerLogic:Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;

.field private final mNotificationHelper:Lcom/android/managedprovisioning/common/NotificationHelper;

.field private mProvisioningFinalizedResult:I

.field private final mProvisioningIntentProvider:Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;

.field private mProvisioningParamsUtils:Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;

.field private final mUserProvisioningStateHelper:Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;)V
    .locals 9

    .line 89
    new-instance v3, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v3}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    new-instance v4, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v4}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    new-instance v5, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

    invoke-direct {v5, p1}, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/android/managedprovisioning/common/NotificationHelper;

    invoke-direct {v6, p1}, Lcom/android/managedprovisioning/common/NotificationHelper;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/managedprovisioning/analytics/DeferredMetricsReader;

    .line 97
    invoke-static {p1}, Lcom/android/managedprovisioning/provisioning/Constants;->getDeferredMetricsFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/managedprovisioning/analytics/DeferredMetricsReader;-><init>(Ljava/io/File;)V

    new-instance v8, Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;

    invoke-direct {v8}, Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 89
    invoke-direct/range {v0 .. v8}, Lcom/android/managedprovisioning/finalization/FinalizationController;-><init>(Landroid/app/Activity;Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/SettingsFacade;Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;Lcom/android/managedprovisioning/common/NotificationHelper;Lcom/android/managedprovisioning/analytics/DeferredMetricsReader;Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/SettingsFacade;Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;Lcom/android/managedprovisioning/common/NotificationHelper;Lcom/android/managedprovisioning/analytics/DeferredMetricsReader;Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mActivity:Landroid/app/Activity;

    .line 111
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mFinalizationControllerLogic:Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;

    .line 112
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 113
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/SettingsFacade;

    .line 114
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mUserProvisioningStateHelper:Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

    .line 115
    new-instance p1, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;

    invoke-direct {p1}, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mProvisioningIntentProvider:Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;

    .line 116
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/NotificationHelper;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mNotificationHelper:Lcom/android/managedprovisioning/common/NotificationHelper;

    .line 117
    invoke-static {p7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/analytics/DeferredMetricsReader;

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mDeferredMetricsReader:Lcom/android/managedprovisioning/analytics/DeferredMetricsReader;

    .line 118
    iput-object p8, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mProvisioningParamsUtils:Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;

    return-void
.end method

.method private commitFinalizedState(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 3

    .line 217
    iget-object v0, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mNotificationHelper:Lcom/android/managedprovisioning/common/NotificationHelper;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/managedprovisioning/common/NotificationHelper;->showPrivacyReminderNotification(Landroid/content/Context;I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    const-string v1, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mFinalizationControllerLogic:Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;

    .line 221
    invoke-interface {v0, p1}, Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;->shouldFinalizePrimaryProfile(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/finalization/FinalizationController;->getPrimaryProfileFinalizationHelper(Lcom/android/managedprovisioning/model/ProvisioningParams;)Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;->finalizeProvisioningInPrimaryProfile(Landroid/content/Context;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;)V

    .line 226
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mUserProvisioningStateHelper:Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->markUserProvisioningStateFinalized(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    .line 228
    iget-object p1, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mDeferredMetricsReader:Lcom/android/managedprovisioning/analytics/DeferredMetricsReader;

    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/android/managedprovisioning/analytics/DeferredMetricsReader;->scheduleDumpMetrics(Landroid/content/Context;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/managedprovisioning/finalization/FinalizationController;->clearParamsFile()V

    return-void
.end method

.method private loadProvisioningParams()Lcom/android/managedprovisioning/model/ProvisioningParams;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mProvisioningParamsUtils:Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;

    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;->getProvisioningParamsFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 208
    invoke-static {p0}, Lcom/android/managedprovisioning/model/ProvisioningParams;->load(Ljava/io/File;)Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final activityDestroyed(Z)V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mFinalizationControllerLogic:Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;

    invoke-interface {p0, p1}, Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;->activityDestroyed(Z)V

    return-void
.end method

.method final clearParamsFile()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mProvisioningParamsUtils:Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;

    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/finalization/ProvisioningParamsUtils;->getProvisioningParamsFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method final commitFinalizedState()V
    .locals 1

    .line 238
    invoke-direct {p0}, Lcom/android/managedprovisioning/finalization/FinalizationController;->loadProvisioningParams()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Attempt to commitFinalizedState when params have already been deleted"

    .line 240
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/android/managedprovisioning/finalization/FinalizationController;->loadProvisioningParams()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/finalization/FinalizationController;->commitFinalizedState(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    :goto_0
    return-void
.end method

.method final getPrimaryProfileFinalizationHelper(Lcom/android/managedprovisioning/model/ProvisioningParams;)Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 124
    new-instance v7, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;

    iget-object v1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->accountToMigrate:Landroid/accounts/Account;

    iget-boolean v2, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->keepAccountMigrated:Z

    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v3, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mActivity:Landroid/app/Activity;

    .line 125
    invoke-virtual {v0, v3}, Lcom/android/managedprovisioning/common/Utils;->getManagedProfile(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object v3

    .line 126
    invoke-virtual {p1}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 127
    invoke-virtual {v5, p1}, Lcom/android/managedprovisioning/common/Utils;->isAdminIntegratedFlow(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/managedprovisioning/finalization/PrimaryProfileFinalizationHelper;-><init>(Landroid/accounts/Account;ZLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/managedprovisioning/common/Utils;Z)V

    return-object v7
.end method

.method final getProvisioningFinalizedResult()I
    .locals 1

    .line 192
    iget p0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mProvisioningFinalizedResult:I

    if-eqz p0, :cond_0

    return p0

    .line 193
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "provisioningFinalized() has not been called."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final provisioningFinalized()V
    .locals 4

    const/4 v0, 0x3

    .line 147
    iput v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mProvisioningFinalizedResult:I

    .line 149
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mUserProvisioningStateHelper:Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;->isStateUnmanagedOrFinalized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "provisioningFinalized called, but state is finalized or unmanaged"

    .line 150
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/android/managedprovisioning/finalization/FinalizationController;->loadProvisioningParams()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "FinalizationController invoked, but no stored params"

    .line 157
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mFinalizationControllerLogic:Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;

    invoke-interface {v1, v0}, Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;->isReadyForFinalization(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 165
    iput v1, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mProvisioningFinalizedResult:I

    .line 166
    iget-object v2, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {v2, v0}, Lcom/android/managedprovisioning/common/Utils;->isAdminIntegratedFlow(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v2, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/managedprovisioning/common/Utils;->isDeviceOwnerAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 170
    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mProvisioningIntentProvider:Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;

    iget-object v2, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;->launchFinalizationScreenForResult(Landroid/app/Activity;Lcom/android/managedprovisioning/model/ProvisioningParams;I)V

    .line 172
    iput v3, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mProvisioningFinalizedResult:I

    goto :goto_0

    .line 176
    :cond_3
    iget-object v2, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    const-string v3, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    iget-object v2, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mFinalizationControllerLogic:Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;

    .line 178
    invoke-interface {v2, v0, v1}, Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;->notifyDpcManagedProfile(Lcom/android/managedprovisioning/model/ProvisioningParams;I)I

    move-result v0

    iput v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mProvisioningFinalizedResult:I

    goto :goto_0

    .line 181
    :cond_4
    iget-object v2, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mFinalizationControllerLogic:Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;

    .line 182
    invoke-interface {v2, v0, v1}, Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;->notifyDpcManagedDeviceOrUser(Lcom/android/managedprovisioning/model/ProvisioningParams;I)I

    move-result v0

    iput v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mProvisioningFinalizedResult:I

    :cond_5
    :goto_0
    return-void
.end method

.method final restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mFinalizationControllerLogic:Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;

    .line 260
    invoke-direct {p0}, Lcom/android/managedprovisioning/finalization/FinalizationController;->loadProvisioningParams()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p0

    .line 259
    invoke-interface {v0, p1, p0}, Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;->restoreInstanceState(Landroid/os/Bundle;Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    return-void
.end method

.method final saveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalizationController;->mFinalizationControllerLogic:Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;

    invoke-interface {p0, p1}, Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
