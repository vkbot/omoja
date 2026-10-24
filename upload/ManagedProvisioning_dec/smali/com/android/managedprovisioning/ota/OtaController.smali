.class public Lcom/android/managedprovisioning/ota/OtaController;
.super Ljava/lang/Object;
.source "OtaController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCrossProfileIntentFiltersSetter:Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mMissingSystemImeProvider:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

.field private final mTaskExecutor:Lcom/android/managedprovisioning/ota/TaskExecutor;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 74
    new-instance v2, Lcom/android/managedprovisioning/ota/TaskExecutor;

    invoke-direct {v2}, Lcom/android/managedprovisioning/ota/TaskExecutor;-><init>()V

    new-instance v3, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;

    invoke-direct {v3, p1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$zizxPgYOE2kkDp16WW4p-AIp30g;

    invoke-direct {v4, p1}, Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$zizxPgYOE2kkDp16WW4p-AIp30g;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 77
    invoke-static {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v0

    new-instance v1, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v1, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v0, v1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    move-object v0, p0

    move-object v1, p1

    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/ota/OtaController;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/ota/TaskExecutor;Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;Ljava/util/function/IntFunction;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/ota/TaskExecutor;Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;Ljava/util/function/IntFunction;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/managedprovisioning/ota/TaskExecutor;",
            "Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;",
            "Ljava/util/function/IntFunction<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/managedprovisioning/ota/OtaController;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/ota/TaskExecutor;

    iput-object p2, p0, Lcom/android/managedprovisioning/ota/OtaController;->mTaskExecutor:Lcom/android/managedprovisioning/ota/TaskExecutor;

    .line 88
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;

    iput-object p2, p0, Lcom/android/managedprovisioning/ota/OtaController;->mCrossProfileIntentFiltersSetter:Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;

    .line 89
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iput-object p2, p0, Lcom/android/managedprovisioning/ota/OtaController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    const-string p2, "user"

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/managedprovisioning/ota/OtaController;->mUserManager:Landroid/os/UserManager;

    const-string p2, "device_policy"

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/ota/OtaController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 95
    iput-object p4, p0, Lcom/android/managedprovisioning/ota/OtaController;->mMissingSystemImeProvider:Ljava/util/function/IntFunction;

    return-void
.end method

.method private static getInstalledSystemImePackages(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "android"

    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.view.InputMethod"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x100200

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 242
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 243
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 244
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 237
    :catch_0
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method private static getMissingSystemImePackages(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 215
    const-class v0, Landroid/os/UserManager;

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v0

    .line 215
    invoke-static {p0, v0}, Lcom/android/managedprovisioning/ota/OtaController;->getInstalledSystemImePackages(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/util/ArraySet;

    move-result-object v0

    .line 217
    invoke-static {p0, p1}, Lcom/android/managedprovisioning/ota/OtaController;->getInstalledSystemImePackages(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/util/ArraySet;

    move-result-object p0

    .line 218
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    return-object v0
.end method

.method private synthetic lambda$addManagedProfileTasks$1(ILandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;)V
    .locals 8

    .line 183
    iget-object v6, p0, Lcom/android/managedprovisioning/ota/OtaController;->mTaskExecutor:Lcom/android/managedprovisioning/ota/TaskExecutor;

    new-instance v7, Lcom/android/managedprovisioning/task/InstallExistingPackageTask;

    iget-object v5, p0, Lcom/android/managedprovisioning/ota/OtaController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    move-object v0, v7

    move-object v1, p4

    move-object v2, p2

    move-object v3, p3

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/task/InstallExistingPackageTask;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    invoke-virtual {v6, p1, v7}, Lcom/android/managedprovisioning/ota/TaskExecutor;->execute(ILcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;I)Landroid/util/ArraySet;
    .locals 0

    .line 75
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/managedprovisioning/ota/OtaController;->getMissingSystemImePackages(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method addDeviceOwnerTasks(ILandroid/content/Context;)V
    .locals 9

    .line 134
    iget-object v0, p0, Lcom/android/managedprovisioning/ota/OtaController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "No device owner found."

    .line 137
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_0
    new-instance v1, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    invoke-direct {v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;-><init>()V

    .line 143
    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminComponentName(Landroid/content/ComponentName;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    .line 144
    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningAction(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 145
    invoke-virtual {v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->build()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/android/managedprovisioning/ota/OtaController;->mTaskExecutor:Lcom/android/managedprovisioning/ota/TaskExecutor;

    new-instance v8, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/managedprovisioning/ota/OtaController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    move-object v2, v8

    move-object v4, p2

    move-object v5, v0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;-><init>(ZLandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    invoke-virtual {v1, p1, v8}, Lcom/android/managedprovisioning/ota/TaskExecutor;->execute(ILcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    .line 150
    iget-object v1, p0, Lcom/android/managedprovisioning/ota/OtaController;->mTaskExecutor:Lcom/android/managedprovisioning/ota/TaskExecutor;

    new-instance v8, Lcom/android/managedprovisioning/task/DisallowAddUserTask;

    .line 151
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    iget-object v6, p0, Lcom/android/managedprovisioning/ota/OtaController;->mTaskExecutor:Lcom/android/managedprovisioning/ota/TaskExecutor;

    iget-object v7, p0, Lcom/android/managedprovisioning/ota/OtaController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/managedprovisioning/task/DisallowAddUserTask;-><init>(ZLandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    .line 150
    invoke-virtual {v1, p1, v8}, Lcom/android/managedprovisioning/ota/TaskExecutor;->execute(ILcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    return-void
.end method

.method addManagedProfileTasks(ILandroid/content/Context;)V
    .locals 10

    .line 156
    iget-object v0, p0, Lcom/android/managedprovisioning/ota/OtaController;->mUserManager:Landroid/os/UserManager;

    .line 157
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "no_wallpaper"

    const/4 v3, 0x1

    .line 156
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 159
    iget-object v0, p0, Lcom/android/managedprovisioning/ota/OtaController;->mTaskExecutor:Lcom/android/managedprovisioning/ota/TaskExecutor;

    new-instance v1, Lcom/android/managedprovisioning/task/InstallExistingPackageTask;

    iget-object v9, p0, Lcom/android/managedprovisioning/ota/OtaController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    const-string v5, "com.android.server.telecom"

    const/4 v7, 0x0

    move-object v4, v1

    move-object v6, p2

    move-object v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/managedprovisioning/task/InstallExistingPackageTask;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/managedprovisioning/ota/TaskExecutor;->execute(ILcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    .line 163
    iget-object v0, p0, Lcom/android/managedprovisioning/ota/OtaController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No profile owner on managed profile "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return-void

    .line 171
    :cond_0
    new-instance v1, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    invoke-direct {v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;-><init>()V

    .line 172
    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminComponentName(Landroid/content/ComponentName;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    .line 173
    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningAction(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 174
    invoke-virtual {v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->build()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/android/managedprovisioning/ota/OtaController;->mTaskExecutor:Lcom/android/managedprovisioning/ota/TaskExecutor;

    new-instance v2, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;

    iget-object v3, p0, Lcom/android/managedprovisioning/ota/OtaController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    invoke-direct {v2, p2, v0, v1, v3}, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/managedprovisioning/ota/TaskExecutor;->execute(ILcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    .line 178
    iget-object v1, p0, Lcom/android/managedprovisioning/ota/OtaController;->mTaskExecutor:Lcom/android/managedprovisioning/ota/TaskExecutor;

    new-instance v8, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/managedprovisioning/ota/OtaController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    move-object v2, v8

    move-object v4, p2

    move-object v5, v0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;-><init>(ZLandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    invoke-virtual {v1, p1, v8}, Lcom/android/managedprovisioning/ota/TaskExecutor;->execute(ILcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    .line 183
    iget-object v1, p0, Lcom/android/managedprovisioning/ota/OtaController;->mMissingSystemImeProvider:Ljava/util/function/IntFunction;

    invoke-interface {v1, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    new-instance v2, Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$X2Edf3eL-trRMLDZCh6egdN4rpw;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/managedprovisioning/ota/-$$Lambda$OtaController$X2Edf3eL-trRMLDZCh6egdN4rpw;-><init>(Lcom/android/managedprovisioning/ota/OtaController;ILandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method addManagedUserTasks(ILandroid/content/Context;)V
    .locals 8

    .line 189
    iget-object v0, p0, Lcom/android/managedprovisioning/ota/OtaController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No profile owner on managed user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return-void

    .line 197
    :cond_0
    new-instance v1, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    invoke-direct {v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;-><init>()V

    .line 198
    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setDeviceAdminComponentName(Landroid/content/ComponentName;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    .line 199
    invoke-virtual {v1, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->setProvisioningAction(Ljava/lang/String;)Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;

    .line 200
    invoke-virtual {v1}, Lcom/android/managedprovisioning/model/ProvisioningParams$Builder;->build()Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object v5

    .line 201
    iget-object v0, p0, Lcom/android/managedprovisioning/ota/OtaController;->mTaskExecutor:Lcom/android/managedprovisioning/ota/TaskExecutor;

    new-instance v1, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/managedprovisioning/ota/OtaController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    move-object v2, v1

    move-object v4, p2

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;-><init>(ZLandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/managedprovisioning/ota/TaskExecutor;->execute(ILcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    return-void
.end method

.method public synthetic lambda$addManagedProfileTasks$1$OtaController(ILandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/managedprovisioning/ota/OtaController;->lambda$addManagedProfileTasks$1(ILandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 6

    .line 99
    iget-object v0, p0, Lcom/android/managedprovisioning/ota/OtaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/ota/OtaController;->mTaskExecutor:Lcom/android/managedprovisioning/ota/TaskExecutor;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/managedprovisioning/task/MigrateSystemAppsSnapshotTask;

    iget-object v3, p0, Lcom/android/managedprovisioning/ota/OtaController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/managedprovisioning/ota/OtaController;->mTaskExecutor:Lcom/android/managedprovisioning/ota/TaskExecutor;

    iget-object v5, p0, Lcom/android/managedprovisioning/ota/OtaController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/managedprovisioning/task/MigrateSystemAppsSnapshotTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/managedprovisioning/ota/TaskExecutor;->execute(ILcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    .line 108
    iget-object v0, p0, Lcom/android/managedprovisioning/ota/OtaController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/managedprovisioning/ota/OtaController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/managedprovisioning/ota/OtaController;->addDeviceOwnerTasks(ILandroid/content/Context;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/managedprovisioning/ota/OtaController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 114
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v2, p0, Lcom/android/managedprovisioning/ota/OtaController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2}, Lcom/android/managedprovisioning/ota/OtaController;->addManagedProfileTasks(ILandroid/content/Context;)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/android/managedprovisioning/ota/OtaController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 117
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v2, p0, Lcom/android/managedprovisioning/ota/OtaController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2}, Lcom/android/managedprovisioning/ota/OtaController;->addManagedUserTasks(ILandroid/content/Context;)V

    goto :goto_0

    .line 121
    :cond_3
    iget-object v2, p0, Lcom/android/managedprovisioning/ota/OtaController;->mCrossProfileIntentFiltersSetter:Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Lcom/android/managedprovisioning/task/CrossProfileIntentFiltersSetter;->resetFilters(I)V

    goto :goto_0

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/android/managedprovisioning/ota/OtaController;->mTaskExecutor:Lcom/android/managedprovisioning/ota/TaskExecutor;

    iget-object v1, p0, Lcom/android/managedprovisioning/ota/OtaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    new-instance v2, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;

    iget-object v3, p0, Lcom/android/managedprovisioning/ota/OtaController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/managedprovisioning/ota/OtaController;->mTaskExecutor:Lcom/android/managedprovisioning/ota/TaskExecutor;

    iget-object p0, p0, Lcom/android/managedprovisioning/ota/OtaController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    invoke-direct {v2, v3, v4, v5, p0}, Lcom/android/managedprovisioning/task/UpdateInteractAcrossProfilesAppOpTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/managedprovisioning/ota/TaskExecutor;->execute(ILcom/android/managedprovisioning/task/AbstractProvisioningTask;)V

    return-void
.end method
