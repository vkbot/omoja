.class public final Lx7/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lz7/a;
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Li8/p;

.field public final c:Lx7/j;

.field public d:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Li8/p;Lx7/j;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx7/i;->b:Li8/p;

    .line 5
    .line 6
    iput-object p2, p0, Lx7/i;->c:Lx7/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 3

    .line 1
    iget-object v0, p0, Lx7/i;->d:Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-ne v0, v1, :cond_1d

    .line 8
    .line 9
    iget-object v0, p0, Lx7/i;->c:Lx7/j;

    .line 10
    .line 11
    instance-of v1, v0, Lm8/j;

    .line 12
    .line 13
    if-eqz v1, :cond_1d

    .line 14
    .line 15
    check-cast v0, Lm8/j;

    .line 16
    .line 17
    iget-boolean v1, v0, Lm8/j;->c:Z

    .line 18
    .line 19
    if-nez v1, :cond_1c

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, v0, Lm8/j;->c:Z

    .line 23
    .line 24
    iget-object v0, v0, Lm8/j;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 27
    .line 28
    .line 29
    :cond_1c
    return-void

    .line 30
    :cond_1d
    iget-object v0, p0, Lx7/i;->c:Lx7/j;

    .line 31
    .line 32
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final run()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lx7/i;->d:Ljava/lang/Thread;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_7
    iget-object v1, p0, Lx7/i;->b:Li8/p;

    .line 9
    .line 10
    invoke-virtual {v1}, Li8/p;->run()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_12

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lx7/i;->dispose()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lx7/i;->d:Ljava/lang/Thread;

    .line 17
    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    invoke-virtual {p0}, Lx7/i;->dispose()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lx7/i;->d:Ljava/lang/Thread;

    .line 24
    .line 25
    throw v1
.end method
