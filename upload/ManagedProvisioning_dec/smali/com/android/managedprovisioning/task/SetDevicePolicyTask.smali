.class public Lcom/android/managedprovisioning/task/SetDevicePolicyTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "SetDevicePolicyTask.java"


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V
    .locals 6

    .line 50
    new-instance v1, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {v1}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    new-instance v5, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 52
    invoke-static {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v0

    new-instance v2, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v2, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v0, v2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;-><init>(Lcom/android/managedprovisioning/common/Utils;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method constructor <init>(Lcom/android/managedprovisioning/common/Utils;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 62
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    .line 64
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/common/Utils;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 65
    iget-object p1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "device_policy"

    .line 66
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method private enableDevicePolicyApp(Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 110
    iget-object p0, p0, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method private setActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as active admin."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    return-void
.end method

.method private setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as device owner of user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private setProfileOwner(Landroid/content/ComponentName;I)Z
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as profile owner of user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object p0, p0, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public run(I)V
    .locals 4

    const/4 v0, 0x0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v2, p0, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v3, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/managedprovisioning/model/ProvisioningParams;->inferDeviceAdminComponentName(Lcom/android/managedprovisioning/common/Utils;Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-direct {p0, v2}, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->enableDevicePolicyApp(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, v1, p1}, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->setActiveAdmin(Landroid/content/ComponentName;I)V

    .line 85
    iget-object v2, p0, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    iget-object v3, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v3, v3, Lcom/android/managedprovisioning/model/ProvisioningParams;->provisioningAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/managedprovisioning/common/Utils;->isProfileOwnerAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-direct {p0, v1, p1}, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->setProfileOwner(Landroid/content/ComponentName;I)Z

    move-result p1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-direct {p0, v1, v2, p1}, Lcom/android/managedprovisioning/task/SetDevicePolicyTask;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    goto :goto_1

    :cond_1
    const-string p1, "Error when setting device or profile owner."

    .line 101
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    :goto_1
    return-void

    :catch_0
    move-exception p1

    const-string v1, "Failure setting device or profile owner"

    .line 93
    invoke-static {v1, p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->error(I)V

    return-void
.end method
