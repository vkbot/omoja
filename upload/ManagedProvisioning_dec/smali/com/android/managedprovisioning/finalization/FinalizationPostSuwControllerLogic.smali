.class public Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;
.super Ljava/lang/Object;
.source "FinalizationPostSuwControllerLogic.java"

# interfaces
.implements Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

.field private final mProvisioningIntentProvider:Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;

.field private final mSendDpcBroadcastServiceUtils:Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .line 47
    new-instance v0, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    new-instance v1, Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;

    invoke-direct {v1}, Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;-><init>()V

    new-instance v2, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v3, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v3}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 49
    invoke-static {p1, v3}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v3

    new-instance v4, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v4, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3, v4}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    .line 47
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;-><init>(Landroid/app/Activity;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/managedprovisioning/common/Utils;Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mActivity:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 58
    new-instance p1, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;

    invoke-direct {p1}, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mProvisioningIntentProvider:Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;

    .line 59
    iput-object p3, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mSendDpcBroadcastServiceUtils:Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;

    .line 60
    iput-object p4, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    return-void
.end method


# virtual methods
.method public activityDestroyed(Z)V
    .locals 0

    return-void
.end method

.method public isReadyForFinalization(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyDpcManagedDeviceOrUser(Lcom/android/managedprovisioning/model/ProvisioningParams;I)I
    .locals 7

    .line 85
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 86
    iget-object p2, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mProvisioningIntentProvider:Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;

    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mActivity:Landroid/app/Activity;

    .line 87
    invoke-virtual {p2, p1, v2, v0, v1}, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;->createProvisioningCompleteIntent(Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/common/Utils;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    const/4 v6, 0x1

    if-nez p2, :cond_0

    return v6

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mProvisioningIntentProvider:Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;

    iget-object v3, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v4, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;->maybeLaunchDpc(Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/common/Utils;Landroid/content/Context;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return v6
.end method

.method public notifyDpcManagedProfile(Lcom/android/managedprovisioning/model/ProvisioningParams;I)I
    .locals 2

    .line 71
    iget-object p2, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mSendDpcBroadcastServiceUtils:Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;

    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lcom/android/managedprovisioning/finalization/SendDpcBroadcastServiceUtils;->startSendDpcBroadcastService(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    .line 73
    iget-object p2, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Lcom/android/managedprovisioning/common/Utils;->getManagedProfile(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 75
    iget-object v0, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mProvisioningIntentProvider:Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;

    iget-object v1, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;->canLaunchDpc(Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/common/Utils;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;Lcom/android/managedprovisioning/model/ProvisioningParams;)V
    .locals 0

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public shouldFinalizePrimaryProfile(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/managedprovisioning/finalization/FinalizationPostSuwControllerLogic;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->isAdminIntegratedFlow(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result p0

    return p0
.end method
