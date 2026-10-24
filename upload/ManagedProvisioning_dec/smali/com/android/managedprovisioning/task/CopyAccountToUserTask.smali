.class public Lcom/android/managedprovisioning/task/CopyAccountToUserTask;
.super Lcom/android/managedprovisioning/task/AbstractProvisioningTask;
.source "CopyAccountToUserTask.java"


# instance fields
.field private final mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

.field private final mSourceUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;)V
    .locals 6

    .line 63
    new-instance v5, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 65
    invoke-static {p2, v0}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object v0

    new-instance v1, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {v1, p2}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v0, v1}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 63
    invoke-direct/range {v0 .. v5}, Lcom/android/managedprovisioning/task/CopyAccountToUserTask;-><init>(ILandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    return-void
.end method

.method constructor <init>(ILandroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 76
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;-><init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;)V

    .line 77
    iput p1, p0, Lcom/android/managedprovisioning/task/CopyAccountToUserTask;->mSourceUserId:I

    .line 78
    iput-object p5, p0, Lcom/android/managedprovisioning/task/CopyAccountToUserTask;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 0

    const/16 p0, 0x26b

    return p0
.end method

.method maybeCopyAccount(I)Z
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "Exception copying account to "

    .line 106
    iget-object v1, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mProvisioningParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    iget-object v3, v1, Lcom/android/managedprovisioning/model/ProvisioningParams;->accountToMigrate:Landroid/accounts/Account;

    .line 107
    iget v1, p0, Lcom/android/managedprovisioning/task/CopyAccountToUserTask;->mSourceUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 108
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v1, 0x0

    if-nez v3, :cond_0

    const-string p0, "No account to migrate."

    .line 111
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    return v1

    .line 114
    :cond_0
    invoke-virtual {v4, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "sourceUser and targetUser are the same, won\'t migrate account."

    .line 115
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    return v1

    .line 118
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to copy account from "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    const-string v5, "account"

    .line 121
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    .line 122
    invoke-virtual/range {v2 .. v7}, Landroid/accounts/AccountManager;->copyAccountToUser(Landroid/accounts/Account;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    const-wide/16 v3, 0xb4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 127
    invoke-interface {v2, v3, v4, v5}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copied account to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logi(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/android/managedprovisioning/task/CopyAccountToUserTask;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object v3, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logCopyAccountStatus(Landroid/content/Context;I)V

    return v4

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/android/managedprovisioning/task/CopyAccountToUserTask;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object v3, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logCopyAccountStatus(Landroid/content/Context;I)V

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not copy account to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 141
    iget-object v3, p0, Lcom/android/managedprovisioning/task/CopyAccountToUserTask;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object p0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-virtual {v3, p0, v4}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logCopyAccountStatus(Landroid/content/Context;I)V

    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 138
    iget-object v3, p0, Lcom/android/managedprovisioning/task/CopyAccountToUserTask;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object p0, p0, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v3, p0, v4}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logCopyAccountStatus(Landroid/content/Context;I)V

    .line 139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v1
.end method

.method public run(I)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->startTaskTimer()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/task/CopyAccountToUserTask;->maybeCopyAccount(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->stopTaskTimer()V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;->success()V

    return-void
.end method
