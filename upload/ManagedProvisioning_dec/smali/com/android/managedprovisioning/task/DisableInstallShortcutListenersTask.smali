.class public Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "DisableInstallShortcutListenersTask.java"


# instance fields
.field private final mPm:Landroid/content/pm/PackageManager;

.field private mUserId:I

.field private final mUtils:Lcom/android/managedprovisioning/common/Utils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V
    .locals 3

    .line 54
    new-instance v0, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v1, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v1}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 56
    invoke-static {p1, v1}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v1

    new-instance v2, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v2, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    .line 54
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    .line 48
    new-instance p2, Lcom/android/managedprovisioning/common/Utils;

    invoke-direct {p2}, Lcom/android/managedprovisioning/common/Utils;-><init>()V

    iput-object p2, p0, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private disableReceivers(Landroid/content/Intent;)V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;->mPm:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;->mUserId:I

    const/high16 v2, 0xc0000

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 101
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 108
    :goto_1
    iget-object v0, p0, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;->mUserId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/managedprovisioning/common/Utils;->disableComponent(Landroid/content/ComponentName;I)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public run(I)V
    .locals 3

    .line 73
    iput p1, p0, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;->mUserId:I

    const-string p1, "Disabling install shortcut listeners."

    .line 74
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 75
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;->mUtils:Lcom/android/managedprovisioning/common/Utils;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget v2, p0, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/managedprovisioning/common/Utils;->getCurrentSystemApps(Landroid/content/pm/IPackageManager;I)Ljava/util/Set;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/task/DisableInstallShortcutListenersTask;->disableReceivers(Landroid/content/Intent;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void
.end method
