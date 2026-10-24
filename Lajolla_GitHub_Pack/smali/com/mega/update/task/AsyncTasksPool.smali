.class public Lcom/mega/update/task/AsyncTasksPool;
.super Ljava/lang/Object;
.source "AsyncTasksPool.java"


# static fields
.field private static sInstance:Lcom/mega/update/task/AsyncTasksPool;


# instance fields
.field private mStageExecutor:Ljava/util/concurrent/ExecutorService;

.field private mTaskExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/task/AsyncTasksPool;->mTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/task/AsyncTasksPool;->mStageExecutor:Ljava/util/concurrent/ExecutorService;

    .line 22
    return-void
.end method

.method public static declared-synchronized self()Lcom/mega/update/task/AsyncTasksPool;
    .locals 2

    const-class v0, Lcom/mega/update/task/AsyncTasksPool;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/mega/update/task/AsyncTasksPool;->sInstance:Lcom/mega/update/task/AsyncTasksPool;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/mega/update/task/AsyncTasksPool;

    invoke-direct {v1}, Lcom/mega/update/task/AsyncTasksPool;-><init>()V

    sput-object v1, Lcom/mega/update/task/AsyncTasksPool;->sInstance:Lcom/mega/update/task/AsyncTasksPool;

    .line 16
    :cond_0
    sget-object v1, Lcom/mega/update/task/AsyncTasksPool;->sInstance:Lcom/mega/update/task/AsyncTasksPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 12
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public executeStage(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 29
    iget-object v0, p0, Lcom/mega/update/task/AsyncTasksPool;->mStageExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method

.method public executeTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 25
    iget-object v0, p0, Lcom/mega/update/task/AsyncTasksPool;->mTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/mega/update/task/AsyncTasksPool;->mTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/mega/update/task/AsyncTasksPool;->mTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 35
    iput-object v1, p0, Lcom/mega/update/task/AsyncTasksPool;->mTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/mega/update/task/AsyncTasksPool;->mStageExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/mega/update/task/AsyncTasksPool;->mStageExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 39
    iput-object v1, p0, Lcom/mega/update/task/AsyncTasksPool;->mStageExecutor:Ljava/util/concurrent/ExecutorService;

    .line 41
    :cond_1
    sput-object v1, Lcom/mega/update/task/AsyncTasksPool;->sInstance:Lcom/mega/update/task/AsyncTasksPool;

    .line 42
    return-void
.end method
