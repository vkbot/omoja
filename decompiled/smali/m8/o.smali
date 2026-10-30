.class public final Lm8/o;
.super Lx7/j;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Lc8/c;

.field public volatile d:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm8/o;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    new-instance p1, Lc8/c;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Lc8/c;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lm8/o;->c:Lc8/c;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)Lz7/a;
    .locals 2

    .line 1
    sget-object p2, Lc8/b;->b:Lc8/b;

    .line 2
    .line 3
    iget-boolean v0, p0, Lm8/o;->d:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    new-instance v0, Lm8/m;

    .line 9
    .line 10
    iget-object v1, p0, Lm8/o;->c:Lc8/c;

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Lm8/m;-><init>(Ljava/lang/Runnable;Lc8/c;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lm8/o;->c:Lc8/c;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lc8/c;->a(Lz7/a;)Z

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lm8/o;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lm8/m;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p0}, Lm8/o;->dispose()V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-object p2
.end method

.method public final dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm8/o;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lm8/o;->d:Z

    .line 7
    .line 8
    iget-object v0, p0, Lm8/o;->c:Lc8/c;

    .line 9
    .line 10
    invoke-virtual {v0}, Lc8/c;->dispose()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
