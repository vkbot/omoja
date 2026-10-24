.class public Lcom/android/managedprovisioning/task/DisallowAddUserTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "DisallowAddUserTask.java"


# instance fields
.field private final mIsSplitSystemUser:Z

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V
    .locals 6

    .line 44
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v1

    new-instance v5, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 46
    invoke-static {p1, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v0

    new-instance v2, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v2, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v0, v2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/task/DisallowAddUserTask;-><init>(ZLandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method public constructor <init>(ZLandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 56
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    .line 57
    iput-boolean p1, p0, Lcom/android/managedprovisioning/task/DisallowAddUserTask;->mIsSplitSystemUser:Z

    const-string p1, "user"

    .line 58
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/managedprovisioning/task/DisallowAddUserTask;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public run(I)V
    .locals 5

    .line 64
    iget-boolean v0, p0, Lcom/android/managedprovisioning/task/DisallowAddUserTask;->mIsSplitSystemUser:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string p1, "Not setting DISALLOW_ADD_USER as system device-owner detected."

    .line 65
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/android/managedprovisioning/task/DisallowAddUserTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 71
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/android/managedprovisioning/task/DisallowAddUserTask;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_add_user"

    invoke-virtual {v2, v3, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/managedprovisioning/task/DisallowAddUserTask;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DISALLOW_ADD_USER restriction set on user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void
.end method
