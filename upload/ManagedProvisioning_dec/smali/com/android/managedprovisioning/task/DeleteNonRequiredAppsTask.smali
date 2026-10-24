.class public Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "DeleteNonRequiredAppsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask$PackageDeleteObserver;
    }
.end annotation


# instance fields
.field private final mLogic:Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    .line 93
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;->mLogic:Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;

    return-void
.end method

.method public constructor <init>(ZLandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V
    .locals 6

    .line 58
    new-instance v4, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;

    invoke-direct {v4, p2, p1, p3}, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;-><init>(Landroid/content/Context;ZLcom/android/managedprovisioning/model/ProvisioningParams;)V

    new-instance v5, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance p1, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {p1}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 64
    invoke-static {p2, p1}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object p1

    new-instance v0, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v0, p2}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, p1, v0}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method public constructor <init>(ZLandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 75
    new-instance v4, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;

    invoke-direct {v4, p2, p1, p3}, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;-><init>(Landroid/content/Context;ZLcom/android/managedprovisioning/model/ProvisioningParams;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method private removeNonInstalledPackages(Ljava/util/Set;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 120
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    :try_start_0
    iget-object v3, p0, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 126
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public run(I)V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;->mLogic:Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->getSystemAppsToRemove(I)Ljava/util/Set;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;->mLogic:Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;

    invoke-virtual {v1, p1}, Lcom/android/managedprovisioning/task/nonrequiredapps/NonRequiredAppsLogic;->maybeTakeSystemAppsSnapshot(I)V

    .line 102
    invoke-direct {p0, v0, p1}, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;->removeNonInstalledPackages(Ljava/util/Set;I)V

    .line 104
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void

    .line 109
    :cond_0
    new-instance v1, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask$PackageDeleteObserver;

    .line 110
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask$PackageDeleteObserver;-><init>(Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;I)V

    .line 111
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting package ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] as user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/android/managedprovisioning/task/DeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v1, v4, p1}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_0

    :cond_1
    return-void
.end method
