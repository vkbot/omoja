.class public Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;
.super Ljava/lang/Object;
.source "FinalizationInsideSuwControllerLogic.java"

# interfaces
.implements Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;


# static fields
.field static final EXTRA_DPC_INTENT_CATEGORY:Ljava/lang/String; = "android.intent.extra.dpc_intent_category"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mLastDpcIntentCategory:Ljava/lang/String;

.field private mLastRequestCode:I

.field private final mPolicyComplianceUtils:Lcom/android/managedprovisioning/common/PolicyComplianceUtils;

.field private final mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

.field private mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .line 58
    new-instance v0, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    new-instance v1, Lcom/android/managedprovisioning/common/PolicyComplianceUtils;

    invoke-direct {v1}, Lcom/android/managedprovisioning/common/PolicyComplianceUtils;-><init>()V

    new-instance v2, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v3, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v3}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 60
    invoke-static {p1, v3}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v3

    new-instance v4, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v4, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3, v4}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    .line 58
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;-><init>(Landroid/app/Activity;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/PolicyComplianceUtils;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/common/PolicyComplianceUtils;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mLastDpcIntentCategory:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mLastRequestCode:I

    .line 67
    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mActivity:Landroid/app/Activity;

    .line 68
    iput-object p2, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 69
    iput-object p3, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mPolicyComplianceUtils:Lcom/android/managedprovisioning/common/PolicyComplianceUtils;

    .line 70
    iput-object p4, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    return-void
.end method

.method private getDpcIntentCategory()Ljava/lang/String;
    .locals 3

    .line 159
    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    const-string v1, "android.intent.extra.dpc_intent_category"

    .line 161
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getDpcIntentSender(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;I)Ljava/lang/Runnable;
    .locals 1

    .line 191
    new-instance v0, Lcom/android/managedprovisioning/finalization/-$$Lambda$FinalizationInsideSuwControllerLogic$069GDJNUVBiRMJrOlpnT0XkHt_o;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/managedprovisioning/finalization/-$$Lambda$FinalizationInsideSuwControllerLogic$069GDJNUVBiRMJrOlpnT0XkHt_o;-><init>(Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;I)V

    return-object v0
.end method

.method private synthetic lambda$getDpcIntentSender$0(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;I)V
    .locals 7

    .line 192
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mPolicyComplianceUtils:Lcom/android/managedprovisioning/common/PolicyComplianceUtils;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v6, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/managedprovisioning/common/PolicyComplianceUtils;->startPolicyComplianceActivityForResultIfResolved(Landroid/app/Activity;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;ILcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)Z

    return-void
.end method

.method private startPolicyComplianceActivityForResultIfResolved(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;I)I
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mPolicyComplianceUtils:Lcom/android/managedprovisioning/common/PolicyComplianceUtils;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/managedprovisioning/common/PolicyComplianceUtils;->isPolicyComplianceActivityResolvable(Landroid/app/Activity;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;Lcom/android/managedprovisioning/common/Utils;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    if-eqz v0, :cond_1

    const-string p0, "Attempted to start DPC again before result received - ignoring"

    .line 174
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    return v1

    .line 179
    :cond_1
    new-instance v0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    .line 180
    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mActivity:Landroid/app/Activity;

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->getDpcIntentSender(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;I)Ljava/lang/Runnable;

    move-result-object p1

    .line 180
    invoke-virtual {v0, v1, p1}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->triggerDpcStart(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 183
    iput-object p2, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mLastDpcIntentCategory:Ljava/lang/String;

    .line 184
    iput p3, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mLastRequestCode:I

    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public activityDestroyed(Z)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->dpcFinished()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->unbind(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    :cond_1
    return-void
.end method

.method public isReadyForFinalization(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z
    .locals 4

    .line 78
    iget-boolean v0, p1, Lcom/android/managedprovisioning/model/ProvisioningParams;->isOrganizationOwnedProvisioning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->isAdminIntegratedFlow(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Skipping finalization during SUW for organization owned provisioning, which is not admin integrated flow"

    .line 80
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    return v1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mPolicyComplianceUtils:Lcom/android/managedprovisioning/common/PolicyComplianceUtils;

    iget-object v2, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mActivity:Landroid/app/Activity;

    .line 86
    invoke-direct {p0}, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->getDpcIntentCategory()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 85
    invoke-virtual {v0, v2, p1, v3, p0}, Lcom/android/managedprovisioning/common/PolicyComplianceUtils;->isPolicyComplianceActivityResolvable(Landroid/app/Activity;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;Lcom/android/managedprovisioning/common/Utils;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Skipping finalization during SUW for non-organization owned provisioning, because DPC doesn\'t implement intent handler"

    .line 87
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$getDpcIntentSender$0$FinalizationInsideSuwControllerLogic(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->lambda$getDpcIntentSender$0(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;I)V

    return-void
.end method

.method public notifyDpcManagedDeviceOrUser(Lcom/android/managedprovisioning/model/ProvisioningParams;I)I
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->getDpcIntentCategory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->startPolicyComplianceActivityForResultIfResolved(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public notifyDpcManagedProfile(Lcom/android/managedprovisioning/model/ProvisioningParams;I)I
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->getDpcIntentCategory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->startPolicyComplianceActivityForResultIfResolved(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 4

    const-string v0, "last_dpc_intent_category"

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mLastDpcIntentCategory:Ljava/lang/String;

    const-string v0, "last_request_code"

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mLastRequestCode:I

    const-string v0, "start_dpc_service_state"

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    new-instance v0, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mLastDpcIntentCategory:Ljava/lang/String;

    iget v3, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mLastRequestCode:I

    .line 139
    invoke-direct {p0, p2, v2, v3}, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->getDpcIntentSender(Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;I)Ljava/lang/Runnable;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mLastDpcIntentCategory:Ljava/lang/String;

    const-string v1, "last_dpc_intent_category"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mLastRequestCode:I

    const-string v1, "last_request_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "start_dpc_service_state"

    .line 122
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 123
    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;->mStartDpcInsideSuwServiceConnection:Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/common/StartDpcInsideSuwServiceConnection;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public shouldFinalizePrimaryProfile(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
