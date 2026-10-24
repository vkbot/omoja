.class public Lcom/android/managedprovisioning/finalization/SendDpcBroadcastService;
.super Landroid/app/Service;
.source "SendDpcBroadcastService.java"

# interfaces
.implements Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;


# static fields
.field public static EXTRA_PROVISIONING_PARAMS:Ljava/lang/String; = "com.android.managedprovisioning.PROVISIONING_PARAMS"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 87
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 17

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 49
    sget-object v0, Lcom/android/managedprovisioning/finalization/SendDpcBroadcastService;->EXTRA_PROVISIONING_PARAMS:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/managedprovisioning/model/ProvisioningParams;

    .line 50
    new-instance v3, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v3}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    .line 51
    new-instance v0, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;

    invoke-direct {v0}, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;-><init>()V

    .line 52
    invoke-virtual {v3, v4}, Lcom/android/managedprovisioning/common/Utils;->getManagedProfile(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 55
    invoke-virtual {v0, v1, v14, v3, v4}, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;->createProvisioningCompleteIntent(Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/common/Utils;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v12

    .line 59
    new-instance v13, Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver;

    iget-object v6, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->accountToMigrate:Landroid/accounts/Account;

    iget-boolean v7, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->keepAccountMigrated:Z

    .line 62
    invoke-virtual {v1}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminPackageName()Ljava/lang/String;

    move-result-object v9

    .line 63
    invoke-virtual {v3, v1}, Lcom/android/managedprovisioning/common/Utils;->isAdminIntegratedFlow(Lcom/android/managedprovisioning/model/ProvisioningParams;)Z

    move-result v11

    move-object v5, v13

    move-object v8, v2

    move-object/from16 v10, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver;-><init>(Landroid/accounts/Account;ZLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/managedprovisioning/finalization/DpcReceivedSuccessReceiver$Callback;Z)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v5, p0

    move-object v6, v12

    move-object v7, v2

    move-object v9, v13

    move-object v12, v15

    move-object/from16 v13, v16

    .line 64
    invoke-virtual/range {v5 .. v13}, Landroid/app/Service;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provisioning complete broadcast has been sent to user "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 69
    new-instance v5, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v2, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v2}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 71
    invoke-static {v4, v2}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v2

    new-instance v6, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v6, v4}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v2, v6}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    move v2, v14

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/android/managedprovisioning/finalization/ProvisioningIntentProvider;->maybeLaunchDpc(Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/common/Utils;Landroid/content/Context;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    const/4 v0, 0x1

    return v0
.end method
