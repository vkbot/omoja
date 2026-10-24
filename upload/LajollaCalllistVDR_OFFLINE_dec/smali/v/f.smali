.class public final Lv/f;
.super Landroid/app/job/JobServiceEngine;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/core/app/JobIntentService;

.field public final b:Ljava/lang/Object;

.field public c:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Landroidx/core/app/JobIntentService;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv/f;->b:Ljava/lang/Object;

    iput-object p1, p0, Lv/f;->a:Landroidx/core/app/JobIntentService;

    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    iput-object p1, p0, Lv/f;->c:Landroid/app/job/JobParameters;

    iget-object p0, p0, Lv/f;->a:Landroidx/core/app/JobIntentService;

    iget-object p1, p0, Landroidx/core/app/JobIntentService;->b:Lv/d;

    if-nez p1, :cond_0

    new-instance p1, Lv/d;

    invoke-direct {p1, p0}, Lv/d;-><init>(Landroidx/core/app/JobIntentService;)V

    iput-object p1, p0, Landroidx/core/app/JobIntentService;->b:Lv/d;

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    iget-object p1, p0, Lv/f;->a:Landroidx/core/app/JobIntentService;

    iget-object p1, p1, Landroidx/core/app/JobIntentService;->b:Lv/d;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object p1, p0, Lv/f;->b:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lv/f;->c:Landroid/app/job/JobParameters;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
