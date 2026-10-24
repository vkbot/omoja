.class public abstract Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;
.super Ljava/lang/Object;
.source "AbstractProvisioningController.java"

# interfaces
.implements Lcom/android/managedprovisioning/task/AbstractProvisioningTask$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController$ProvisioningTaskHandler;
    }
.end annotation


# static fields
.field static final MSG_RUN_TASK:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mCallback:Lcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;

.field protected final mContext:Landroid/content/Context;

.field protected mCurrentTaskIndex:I

.field protected final mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

.field private final mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

.field private mStatus:I

.field private mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/managedprovisioning/task/AbstractProvisioningTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserId:I

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/managedprovisioning/model/ProvisioningParams;ILcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mStatus:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mTasks:Ljava/util/List;

    .line 80
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/model/ProvisioningParams;

    iput-object p2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mParams:Lcom/android/managedprovisioning/model/ProvisioningParams;

    .line 82
    iput p3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mUserId:I

    .line 83
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;

    iput-object p2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mCallback:Lcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;

    .line 84
    new-instance p2, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object p3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    new-instance p4, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {p4}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    .line 85
    invoke-static {p3, p4}, Lcom/android/managedprovisioning/analytics/MetricsWriterFactory;->getMetricsWriter(Landroid/content/Context;Lcom/android/managedprovisioning/common/SettingsFacade;)Lcom/android/managedprovisioning/analytics/MetricsWriter;

    move-result-object p3

    new-instance p4, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;

    invoke-direct {p4, p1}, Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, p3, p4}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;-><init>(Lcom/android/managedprovisioning/analytics/MetricsWriter;Lcom/android/managedprovisioning/common/ManagedProvisioningSharedPreferences;)V

    iput-object p2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    .line 88
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->setUpTasks()V

    return-void
.end method

.method private cleanup(I)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/managedprovisioning/provisioning/-$$Lambda$AbstractProvisioningController$ISALgFsS39oSjUqshdYN_N4Jn3g;

    invoke-direct {v1, p0, p1}, Lcom/android/managedprovisioning/provisioning/-$$Lambda$AbstractProvisioningController$ISALgFsS39oSjUqshdYN_N4Jn3g;-><init>(Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$cleanup$0(I)V
    .locals 0

    .line 179
    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->performCleanup()V

    .line 180
    iput p1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mStatus:I

    .line 181
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mCallback:Lcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;

    invoke-interface {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;->cleanUpCompleted()V

    return-void
.end method

.method private runTask(I)V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->tasksCompleted()V

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/managedprovisioning/task/AbstractProvisioningTask;

    .line 141
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 143
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private tasksCompleted()V
    .locals 1

    const/4 v0, 0x2

    .line 147
    iput v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mStatus:I

    const/4 v0, -0x1

    .line 148
    iput v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mCurrentTaskIndex:I

    .line 149
    iget-object p0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mCallback:Lcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;

    invoke-interface {p0}, Lcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;->provisioningTasksCompleted()V

    return-void
.end method


# virtual methods
.method protected varargs declared-synchronized addTasks([Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V
    .locals 4

    monitor-enter p0

    .line 93
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 94
    iget-object v3, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mTasks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 130
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel called, current status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 131
    iput v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mStatus:I

    const/4 v0, 0x5

    .line 132
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->cleanup(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getErrorMsgId(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)I
.end method

.method protected abstract getErrorTitle()I
.end method

.method protected abstract getRequireFactoryReset(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)Z
.end method

.method public synthetic lambda$cleanup$0$AbstractProvisioningController(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->lambda$cleanup$0(I)V

    return-void
.end method

.method public declared-synchronized onError(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x3

    .line 170
    :try_start_0
    iput v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mStatus:I

    .line 171
    invoke-direct {p0, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->cleanup(I)V

    .line 172
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mProvisioningAnalyticsTracker:Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;

    iget-object v1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/managedprovisioning/analytics/ProvisioningAnalyticsTracker;->logProvisioningError(Landroid/content/Context;Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)V

    .line 173
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mCallback:Lcom/android/managedprovisioning/provisioning/ProvisioningControllerCallback;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->getErrorTitle()I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->getErrorMsgId(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)I

    move-result v2

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->getRequireFactoryReset(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;I)Z

    move-result p1

    .line 173
    invoke-interface {v0, v1, v2, p1}, Lcom/android/managedprovisioning/provisioning/ProvisioningManagerCallback;->error(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSuccess(Lcom/android/managedprovisioning/task/AbstractProvisioningTask;)V
    .locals 1

    monitor-enter p0

    .line 155
    :try_start_0
    iget p1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 156
    monitor-exit p0

    return-void

    .line 159
    :cond_0
    :try_start_1
    iget p1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mCurrentTaskIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mCurrentTaskIndex:I

    .line 160
    iget-object v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->tasksCompleted()V

    goto :goto_0

    .line 163
    :cond_1
    iget p1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mCurrentTaskIndex:I

    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->runTask(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract performCleanup()V
.end method

.method protected abstract setUpTasks()V
.end method

.method start(Landroid/os/Handler;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    iget v0, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mStatus:I

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mWorkerHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 120
    iput p1, p0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->mStatus:I

    const/4 p1, 0x0

    .line 121
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->runTask(I)V

    return-void
.end method

.method public declared-synchronized start(Landroid/os/Looper;)V
    .locals 1

    monitor-enter p0

    .line 110
    :try_start_0
    new-instance v0, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController$ProvisioningTaskHandler;

    invoke-direct {v0, p1}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController$ProvisioningTaskHandler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Lcom/android/managedprovisioning/provisioning/AbstractProvisioningController;->start(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
