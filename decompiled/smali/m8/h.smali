.class public final Lm8/h;
.super Lx7/k;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final b:Lm8/k;

.field public static final c:Lm8/k;

.field public static final d:Lm8/g;

.field public static final e:Lm8/e;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lm8/g;

    .line 2
    .line 3
    new-instance v1, Lm8/k;

    .line 4
    .line 5
    const-string v2, "RxCachedThreadSchedulerShutdown"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lm8/k;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lm8/g;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lm8/h;->d:Lm8/g;

    .line 14
    .line 15
    invoke-virtual {v0}, Lm8/j;->dispose()V

    .line 16
    .line 17
    .line 18
    const-string v0, "rx2.io-priority"

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0xa

    .line 30
    .line 31
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    new-instance v2, Lm8/k;

    .line 41
    .line 42
    const-string v3, "RxCachedThreadScheduler"

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-direct {v2, v3, v0, v4}, Lm8/k;-><init>(Ljava/lang/String;IZ)V

    .line 46
    .line 47
    .line 48
    sput-object v2, Lm8/h;->b:Lm8/k;

    .line 49
    .line 50
    new-instance v3, Lm8/k;

    .line 51
    .line 52
    const-string v5, "RxCachedWorkerPoolEvictor"

    .line 53
    .line 54
    invoke-direct {v3, v5, v0, v4}, Lm8/k;-><init>(Ljava/lang/String;IZ)V

    .line 55
    .line 56
    .line 57
    sput-object v3, Lm8/h;->c:Lm8/k;

    .line 58
    .line 59
    new-instance v0, Lm8/e;

    .line 60
    .line 61
    const-wide/16 v3, 0x0

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-direct {v0, v3, v4, v5, v2}, Lm8/e;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lm8/h;->e:Lm8/e;

    .line 68
    .line 69
    iget-object v2, v0, Lm8/e;->d:Lc8/c;

    .line 70
    .line 71
    invoke-virtual {v2}, Lc8/c;->dispose()V

    .line 72
    .line 73
    .line 74
    iget-object v2, v0, Lm8/e;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 75
    .line 76
    if-eqz v2, :cond_0

    .line 77
    .line 78
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 79
    .line 80
    .line 81
    :cond_0
    iget-object v0, v0, Lm8/e;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    sget-object v1, Lm8/h;->e:Lm8/e;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lm8/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    new-instance v2, Lm8/e;

    .line 14
    .line 15
    const-wide/16 v3, 0x3c

    .line 16
    .line 17
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    sget-object v6, Lm8/h;->b:Lm8/k;

    .line 20
    .line 21
    invoke-direct {v2, v3, v4, v5, v6}, Lm8/e;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eq v3, v1, :cond_0

    .line 36
    .line 37
    iget-object v0, v2, Lm8/e;->d:Lc8/c;

    .line 38
    .line 39
    invoke-virtual {v0}, Lc8/c;->dispose()V

    .line 40
    .line 41
    .line 42
    iget-object v0, v2, Lm8/e;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, v2, Lm8/e;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Lx7/j;
    .locals 2

    .line 1
    new-instance v0, Lm8/f;

    .line 2
    .line 3
    iget-object v1, p0, Lm8/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lm8/e;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lm8/f;-><init>(Lm8/e;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
