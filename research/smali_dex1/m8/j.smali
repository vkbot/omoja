.class public Lm8/j;
.super Lx7/j;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lm8/n;->a:Z

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-boolean v0, Lm8/n;->a:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1a

    .line 14
    .line 15
    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 16
    .line 17
    if-eqz v0, :cond_1a

    .line 18
    .line 19
    move-object v0, p1

    .line 20
    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 21
    .line 22
    sget-object v1, Lm8/n;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1a
    iput-object p1, p0, Lm8/j;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)Lz7/a;
    .registers 4

    .line 1
    iget-boolean v0, p0, Lm8/j;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    sget-object p1, Lc8/b;->b:Lc8/b;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lm8/j;->c(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;Lc8/c;)Lm8/m;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final b(Lh8/h0;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lm8/j;->a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)Lz7/a;

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final c(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;Lc8/c;)Lm8/m;
    .registers 4

    .line 1
    new-instance p2, Lm8/m;

    .line 2
    .line 3
    invoke-direct {p2, p1, p3}, Lm8/m;-><init>(Ljava/lang/Runnable;Lc8/c;)V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_e

    .line 7
    .line 8
    invoke-virtual {p3, p2}, Lc8/c;->a(Lz7/a;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_e

    .line 13
    .line 14
    return-object p2

    .line 15
    :cond_e
    iget-object p1, p0, Lm8/j;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    .line 17
    :try_start_10
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2, p1}, Lm8/m;->a(Ljava/util/concurrent/Future;)V
    :try_end_17
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_10 .. :try_end_17} :catch_18

    .line 22
    .line 23
    .line 24
    return-object p2

    .line 25
    :catch_18
    move-exception p1

    .line 26
    if-eqz p3, :cond_1e

    .line 27
    .line 28
    invoke-virtual {p3, p2}, Lc8/c;->c(Lz7/a;)Z

    .line 29
    .line 30
    .line 31
    :cond_1e
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-object p2
.end method

.method public final dispose()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lm8/j;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lm8/j;->c:Z

    .line 7
    .line 8
    iget-object v0, p0, Lm8/j;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    :cond_c
    return-void
.end method
