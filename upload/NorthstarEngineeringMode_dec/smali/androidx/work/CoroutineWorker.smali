.class public abstract Landroidx/work/CoroutineWorker;
.super Landroidx/work/ListenableWorker;
.source "SourceFile"


# instance fields
.field private final coroutineContext:Lv3/w;

.field private final future:Landroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final job:Lv3/x0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lo3/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-static {p2, v0}, Lo3/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    new-instance p1, Lv3/a1;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lv3/a1;-><init>(Lv3/x0;)V

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->job:Lv3/x0;

    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object p1

    const-string p2, "SettableFuture.create()"

    invoke-static {p1, p2}, Lo3/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    new-instance p2, Landroidx/work/CoroutineWorker$1;

    invoke-direct {p2, p0}, Landroidx/work/CoroutineWorker$1;-><init>(Landroidx/work/CoroutineWorker;)V

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v0

    const-string/jumbo v1, "taskExecutor"

    invoke-static {v0, v1}, Lo3/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getBackgroundExecutor()Landroidx/work/impl/utils/SerialExecutor;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sget-object p1, Lv3/k0;->a:Ly3/c;

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->coroutineContext:Lv3/w;

    return-void
.end method

.method public static synthetic coroutineContext$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract doWork(Lh3/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/d<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public getCoroutineContext()Lv3/w;
    .locals 0

    iget-object p0, p0, Landroidx/work/CoroutineWorker;->coroutineContext:Lv3/w;

    return-object p0
.end method

.method public final getFuture$work_runtime_ktx_release()Landroidx/work/impl/utils/futures/SettableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/CoroutineWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object p0
.end method

.method public final getJob$work_runtime_ktx_release()Lv3/x0;
    .locals 0

    iget-object p0, p0, Landroidx/work/CoroutineWorker;->job:Lv3/x0;

    return-object p0
.end method

.method public final onStopped()V
    .locals 1

    invoke-super {p0}, Landroidx/work/ListenableWorker;->onStopped()V

    iget-object p0, p0, Landroidx/work/CoroutineWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->cancel(Z)Z

    return-void
.end method

.method public final startWork()Lh0/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh0/a<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/work/CoroutineWorker;->getCoroutineContext()Lv3/w;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/CoroutineWorker;->job:Lv3/x0;

    invoke-virtual {v0, v1}, Lh3/a;->q(Lh3/f;)Lh3/f;

    move-result-object v0

    new-instance v1, Lx3/d;

    sget-object v2, Lv3/x0$b;->c:Lv3/x0$b;

    invoke-interface {v0, v2}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lv3/a1;

    invoke-direct {v2, v3}, Lv3/a1;-><init>(Lv3/x0;)V

    invoke-interface {v0, v2}, Lh3/f;->q(Lh3/f;)Lh3/f;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lx3/d;-><init>(Lh3/f;)V

    new-instance v0, Landroidx/work/CoroutineWorker$startWork$1;

    invoke-direct {v0, p0, v3}, Landroidx/work/CoroutineWorker$startWork$1;-><init>(Landroidx/work/CoroutineWorker;Lh3/d;)V

    invoke-static {v1, v0}, Ld/f;->S(Lx3/d;Ln3/p;)V

    iget-object p0, p0, Landroidx/work/CoroutineWorker;->future:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object p0
.end method
