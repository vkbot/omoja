.class public Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;
.super Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;
.source "ProvisioningActivity.java"

# interfaces
.implements Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionAnimationCallback;


# static fields
.field private static final PROVISIONING_MODE_TO_PROGRESS_LABEL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNextButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mPolicyComplianceUtils:Lcom/android/managedprovisioning/common/PolicyComplianceUtils;

.field private mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

.field private mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

.field private mTransitionAnimationHelper:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

.field private mUserProvisioningStateHelper:Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity$1;

    invoke-direct {v0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity$1;-><init>()V

    .line 98
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->PROVISIONING_MODE_TO_PROGRESS_LABEL:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;-><init>(Lcom/android/managedprovisioning/common/Utils;)V

    .line 121
    new-instance v0, Lcom/android/managedprovisioning/common/PolicyComplianceUtils;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/PolicyComplianceUtils;-><init>()V

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mPolicyComplianceUtils:Lcom/android/managedprovisioning/common/PolicyComplianceUtils;

    return-void
.end method

.method public constructor <init>(Lcom/android/managedprovisioning/provisioning/ProvisioningManager;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;Lcom/android/managedprovisioning/common/PolicyComplianceUtils;)V
    .locals 0

    .line 128
    invoke-direct {p0, p2}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;-><init>(Lcom/android/managedprovisioning/common/Utils;)V

    .line 129
    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mProvisioningManager:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;

    .line 130
    iput-object p3, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mUserProvisioningStateHelper:Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

    .line 131
    iput-object p4, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mPolicyComplianceUtils:Lcom/android/managedprovisioning/common/PolicyComplianceUtils;

    return-void
.end method

.method private endSpinnerAnimation()V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    if-nez v0, :cond_0

    return-void

    .line 504
    :cond_0
    invoke-virtual {v0}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->stop()V

    const/4 v0, 0x0

    .line 505
    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    return-void
.end method

.method private endTransitionAnimation()V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mTransitionAnimationHelper:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->clean()V

    const/4 v0, 0x0

    .line 476
    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mTransitionAnimationHelper:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    return-void
.end method

.method private finishActivity()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    const-string v1, "android.app.action.PROVISION_FINANCED_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x79

    .line 223
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 225
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 227
    :goto_0
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->maybeLaunchNfcUserSetupCompleteIntent()V

    .line 228
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getDpcIntentSender()Ljava/lang/Runnable;
    .locals 1

    .line 216
    new-instance v0, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningActivity$_arnHLH5PvSiuhLATxJdaphWQ4E;

    invoke-direct {v0, p0}, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningActivity$_arnHLH5PvSiuhLATxJdaphWQ4E;-><init>(Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;)V

    return-object v0
.end method

.method private getProvisioningAnalyticsTracker()Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;
    .locals 3

    .line 515
    new-instance v0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v1, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v1}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 516
    invoke-static {p0, v1}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v1

    new-instance v2, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v2, p0}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    return-object v0
.end method

.method private getProvisioningMode()I
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    .line 439
    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->isProfileOwnerAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    .line 443
    :cond_0
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->isDeviceOwnerAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    goto :goto_0

    .line 450
    :cond_3
    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object p0, p0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/common/Utils;->isFinancedDeviceAction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private handleSupportUrl(Lcom/google/android/setupdesign/GlifLayout;Lcom/android/managedprovisioning/model/CustomizationParams;)V
    .locals 8

    const v0, 0x7f090144

    .line 457
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/widget/TextView;

    const p1, 0x7f0d0098

    .line 458
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v6, p1, v0

    const v0, 0x7f0d0048

    .line 460
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 461
    new-instance v3, Lcom/android/managedprovisioning/common/ClickableSpanFactory;

    const p1, 0x7f060027

    .line 462
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-direct {v3, p1}, Lcom/android/managedprovisioning/common/ClickableSpanFactory;-><init>(I)V

    .line 463
    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    new-instance v4, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    invoke-direct {v4, p0}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;-><init>(Landroid/app/Activity;)V

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/managedprovisioning/common/Utils;->handleSupportUrl(Landroid/content/Context;Lcom/android/managedprovisioning/model/CustomizationParams;Lcom/android/managedprovisioning/common/ClickableSpanFactory;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getDpcIntentSender$0()V
    .locals 7

    .line 216
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mPolicyComplianceUtils:Lcom/android/managedprovisioning/common/PolicyComplianceUtils;

    iget-object v2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v5, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 218
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->getProvisioningAnalyticsTracker()Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    .line 216
    invoke-virtual/range {v0 .. v6}, Lcom/android/managedprovisioning/common/PolicyComplianceUtils;->startPolicyComplianceActivityForResultIfResolved(Landroid/app/Activity;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;ILcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)Z

    return-void
.end method

.method private synthetic lambda$initializeUi$1(Landroid/view/View;)V
    .locals 0

    .line 400
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->onNextButtonClicked()V

    return-void
.end method

.method private markDeviceManagementEstablishedAndGoToNextStep()V
    .locals 2

    .line 280
    new-instance v0, Lcom/android/managedprovisioning/finalization/PreFinalizationController;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mUserProvisioningStateHelper:Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

    invoke-direct {v0, p0, v1}, Lcom/android/managedprovisioning/finalization/PreFinalizationController;-><init>(Landroid/app/Activity;Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;)V

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    .line 281
    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/finalization/PreFinalizationController;->deviceManagementEstablished(Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    .line 283
    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->isAdminIntegratedFlow(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    :cond_0
    const v0, 0x7f090166

    .line 291
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->getDpcIntentSender()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->triggerDpcStart(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->finishActivity()V

    :goto_0
    return-void
.end method

.method private maybeLaunchNfcUserSetupCompleteIntent()V
    .locals 8

    .line 299
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isNfc:Z

    if-eqz v0, :cond_5

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.STATE_USER_SETUP_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 302
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 303
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 304
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 308
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 309
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const-string v6, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Component "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not protected by "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "android.permission.DISPATCH_PROVISIONING_MESSAGE"

    invoke-virtual {v1, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not have "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    const-string p0, "No activity accepts intent ACTION_STATE_USER_SETUP_COMPLETE"

    .line 326
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    return-void

    .line 330
    :cond_4
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 332
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Launched ACTION_STATE_USER_SETUP_COMPLETE with component "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private onNextButtonClicked()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->markDeviceManagementEstablishedAndGoToNextStep()V

    return-void
.end method

.method private setupEducationViews(Lcom/google/android/setupdesign/GlifLayout;)V
    .locals 3

    const v0, 0x7f09018c

    .line 407
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060061

    .line 408
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 410
    sget-object v1, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->PROVISIONING_MODE_TO_PROGRESS_LABEL:Ljava/util/Map;

    .line 411
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->getProvisioningMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x7f090145

    .line 412
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 413
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->shouldSkipEducationScreens()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 414
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 p0, 0x4

    .line 415
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f090181

    .line 416
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090144

    .line 417
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 p0, 0x0

    .line 420
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupTransitionAnimationHelper(Lcom/google/android/setupdesign/GlifLayout;)V
    .locals 5

    const v0, 0x7f09018c

    .line 425
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090181

    .line 426
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090054

    .line 427
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f090144

    .line 428
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 429
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->getProvisioningMode()I

    move-result v3

    .line 430
    new-instance v4, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;

    invoke-direct {v4, v0, v1, v2, p1}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 432
    new-instance p1, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    invoke-direct {p1, v3, v4, p0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;-><init>(ILcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$AnimationComponents;Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper$TransitionAnimationCallback;)V

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mTransitionAnimationHelper:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    return-void
.end method

.method private shouldSkipEducationScreens()Z
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->skipEducationScreens:Z

    if-nez v0, :cond_1

    .line 510
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->getProvisioningMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 511
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->getProvisioningMode()I

    move-result p0

    const/4 v0, 0x4

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

.method private startSpinnerAnimation()V
    .locals 3

    const v0, 0x7f090166

    .line 480
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    const v1, 0x7f090054

    .line 481
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 482
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v2, v2, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/managedprovisioning/common/Utils;->isFinancedDeviceAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v1, 0x7f081d2a

    .line 489
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f081d09

    .line 491
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 495
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 496
    new-instance v1, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    invoke-direct {v1, v0}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mRepeatingVectorAnimation:Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;

    .line 497
    invoke-virtual {v1}, Lcom/android/managedprovisioning/common/RepeatingVectorAnimation;->start()V

    return-void
.end method

.method private startTransitionAnimation()V
    .locals 1

    const v0, 0x7f090166

    .line 469
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 470
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->setupTransitionAnimationHelper(Lcom/google/android/setupdesign/GlifLayout;)V

    .line 471
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mTransitionAnimationHelper:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->start()V

    return-void
.end method

.method private updateProvisioningFinalizedScreen()V
    .locals 2

    .line 200
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->shouldSkipEducationScreens()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f090166

    .line 201
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    const v1, 0x7f090145

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mNextButton:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->shouldSkipEducationScreens()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    invoke-static {p0, v0}, Lcom/android/managedprovisioning/common/Utils;->isSilentProvisioning(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->onNextButtonClicked()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected decideCancelProvisioningDialog()V
    .locals 2

    .line 344
    iget v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->getUtils()Lcom/android/managedprovisioning/common/Utils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v1, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->isDeviceOwnerAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->showCancelProvisioningDialog(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->showCancelProvisioningDialog(Z)V

    :goto_1
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 0

    const/16 p0, 0x207

    return p0
.end method

.method protected getProvisioningManager()Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mProvisioningManager:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;

    if-nez v0, :cond_0

    .line 177
    invoke-static {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningManager;->getInstance(Landroid/content/Context;)Lcom/android/managedprovisioning/provisioning/ProvisioningManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mProvisioningManager:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;

    .line 179
    :cond_0
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mProvisioningManager:Lcom/android/managedprovisioning/provisioning/ProvisioningManagerInterface;

    return-object p0
.end method

.method protected initializeUi(Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 4

    .line 385
    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/Utils;->isProfileOwnerAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d00bf

    goto :goto_0

    :cond_0
    const v0, 0x7f0d00bb

    .line 389
    :goto_0
    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v2, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 390
    invoke-static {v1, p0, v2}, Lcom/android/managedprovisioning/model/CustomizationParams;->createInstance(Lcom/android/managedprovisioning/model/ProvisioningParams;Landroid/content/Context;Lcom/android/managedprovisioning/common/Utils;)Lcom/android/managedprovisioning/model/CustomizationParams;

    move-result-object v1

    const v2, 0x7f0c0077

    const/4 v3, 0x0

    .line 391
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/managedprovisioning/common/SetupGlifLayoutActivity;->initializeLayoutParams(ILjava/lang/Integer;Lcom/android/managedprovisioning/model/CustomizationParams;)V

    .line 392
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    const v0, 0x7f090166

    .line 394
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 395
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->setupEducationViews(Lcom/google/android/setupdesign/GlifLayout;)V

    .line 396
    iget-object v2, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object p1, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/android/managedprovisioning/common/Utils;->isFinancedDeviceAction(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x4

    if-eqz p1, :cond_1

    const p1, 0x7f09019b

    .line 398
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_1
    new-instance p1, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningActivity$cE3muCFF9YHixz3ck2qq73cGEis;

    invoke-direct {p1, p0}, Lcom/android/managedprovisioning/provisioning/-$$Lambda$ProvisioningActivity$cE3muCFF9YHixz3ck2qq73cGEis;-><init>(Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;)V

    invoke-static {v0, p1}, Lcom/android/managedprovisioning/common/Utils;->addNextButton(Lcom/google/android/setupdesign/GlifLayout;Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mNextButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 401
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 403
    invoke-direct {p0, v0, v1}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->handleSupportUrl(Lcom/google/android/setupdesign/GlifLayout;Lcom/android/managedprovisioning/model/CustomizationParams;)V

    return-void
.end method

.method public synthetic lambda$getDpcIntentSender$0$ProvisioningActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->lambda$getDpcIntentSender$0()V

    return-void
.end method

.method public synthetic lambda$initializeUi$1$ProvisioningActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->lambda$initializeUi$1(Landroid/view/View;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 p3, 0x2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v0, :cond_2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_6

    .line 273
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->markDeviceManagementEstablishedAndGoToNextStep()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x78

    .line 268
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 269
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 241
    :cond_2
    iget-object p1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    if-eqz p1, :cond_3

    .line 242
    invoke-virtual {p1}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->dpcFinished()V

    .line 243
    iget-object p1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    invoke-virtual {p1, p0}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->unbind(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 244
    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    .line 247
    :cond_3
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->getProvisioningAnalyticsTracker()Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logDpcSetupCompleted(Landroid/content/Context;I)V

    if-ne p2, v1, :cond_5

    .line 250
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->shouldShowTransitionScreen()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 251
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/android/managedprovisioning/transition/TransitionActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 253
    iget-object p2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    const-string v0, "provisioningParams"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 256
    :cond_4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 257
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 260
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid POLICY_COMPLIANCE result code. Expected -1 but got "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    const p1, 0x7f0d002e

    const p2, 0x7f0d0049

    .line 262
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->error(IIZ)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onAllTransitionsShown()V
    .locals 2

    .line 378
    iget v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->updateProvisioningFinalizedScreen()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 136
    invoke-super {p0, p1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "start_dpc_service_state"

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    new-instance v0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    .line 144
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->getDpcIntentSender()Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mUserProvisioningStateHelper:Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

    if-nez p1, :cond_1

    .line 149
    new-instance p1, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

    invoke-direct {p1, p0}, Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mUserProvisioningStateHelper:Lcom/android/managedprovisioning/finalization/UserProvisioningStateHelper;

    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->unbind(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    .line 171
    :cond_0
    invoke-super {p0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->onDestroy()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 155
    invoke-super {p0, p1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->saveInstanceState(Landroid/os/Bundle;)V

    const-string p0, "start_dpc_service_state"

    .line 160
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 358
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 359
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->shouldSkipEducationScreens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->startSpinnerAnimation()V

    goto :goto_0

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->startTransitionAnimation()V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 368
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 369
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->shouldSkipEducationScreens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->endSpinnerAnimation()V

    goto :goto_0

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->endTransitionAnimation()V

    :goto_0
    return-void
.end method

.method public preFinalizationCompleted()V
    .locals 2

    .line 184
    iget v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "ProvisioningActivity pre-finalization completed"

    .line 188
    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->shouldSkipEducationScreens()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->mTransitionAnimationHelper:Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;

    invoke-virtual {v0}, Lcom/android/managedprovisioning/provisioning/TransitionAnimationHelper;->areAllTransitionsShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningActivity;->updateProvisioningFinalizedScreen()V

    .line 196
    :cond_2
    iput v1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mState:I

    return-void
.end method

.method shouldShowTransitionScreen()Z
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningActivity;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-boolean v1, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 234
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/managedprovisioning/common/Utils;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
