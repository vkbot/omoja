.class public Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwActivity;
.super Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;
.source "FinalizationInsideSuwActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;-><init>()V

    return-void
.end method

.method private logDpcSetupCompleted(I)V
    .locals 3

    .line 85
    new-instance v0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v1, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v1}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 87
    invoke-static {p0, v1}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v1

    new-instance v2, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v2, p0}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    .line 89
    invoke-virtual {v0, p0, p1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logDpcSetupCompleted(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected createFinalizationController()Lcom/android/managedprovisioning/finalization/FinalizationController;
    .locals 2

    .line 41
    new-instance v0, Lcom/android/managedprovisioning/finalization/FinalizationController;

    new-instance v1, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;

    invoke-direct {v1, p0}, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwControllerLogic;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, p0, v1}, Lcom/android/managedprovisioning/finalization/FinalizationController;-><init>(Landroid/app/Activity;Lcom/android/managedprovisioning/finalization/FinalizationControllerLogic;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onActivityResult: Unknown request code: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logw(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/managedprovisioning/finalization/FinalizationInsideSuwActivity;->logDpcSetupCompleted(I)V

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: received requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", resultCode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    if-eq p2, p3, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/android/managedprovisioning/finalization/FinalizationActivityBase;->getFinalizationController()Lcom/android/managedprovisioning/finalization/FinalizationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/managedprovisioning/finalization/FinalizationController;->commitFinalizedState()V

    .line 75
    :cond_2
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onFinalizationCompletedWithChildActivityLaunched()V
    .locals 0

    return-void
.end method
