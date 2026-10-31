.class public final Lm8/d;
.super Lx7/k;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final b:Lm8/b;

.field public static final c:Lm8/k;

.field public static final d:I

.field public static final e:Lm8/c;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "rx2.computation-threads"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_19

    .line 21
    .line 22
    if-le v1, v0, :cond_18

    .line 23
    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v0, v1

    .line 26
    :cond_19
    :goto_19
    sput v0, Lm8/d;->d:I

    .line 27
    .line 28
    new-instance v0, Lm8/c;

    .line 29
    .line 30
    new-instance v1, Lm8/k;

    .line 31
    .line 32
    const-string v3, "RxComputationShutdown"

    .line 33
    .line 34
    invoke-direct {v1, v3}, Lm8/k;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lm8/j;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lm8/d;->e:Lm8/c;

    .line 41
    .line 42
    invoke-virtual {v0}, Lm8/j;->dispose()V

    .line 43
    .line 44
    .line 45
    const-string v0, "rx2.computation-priority"

    .line 46
    .line 47
    const/4 v1, 0x5

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/16 v1, 0xa

    .line 57
    .line 58
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    new-instance v3, Lm8/k;

    .line 68
    .line 69
    const-string v4, "RxComputationThreadPool"

    .line 70
    .line 71
    invoke-direct {v3, v4, v0, v1}, Lm8/k;-><init>(Ljava/lang/String;IZ)V

    .line 72
    .line 73
    .line 74
    sput-object v3, Lm8/d;->c:Lm8/k;

    .line 75
    .line 76
    new-instance v0, Lm8/b;

    .line 77
    .line 78
    invoke-direct {v0, v2, v3}, Lm8/b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lm8/d;->b:Lm8/b;

    .line 82
    .line 83
    iget-object v0, v0, Lm8/b;->b:[Lm8/c;

    .line 84
    .line 85
    array-length v1, v0

    .line 86
    :goto_55
    if-ge v2, v1, :cond_5f

    .line 87
    .line 88
    aget-object v3, v0, v2

    .line 89
    .line 90
    invoke-virtual {v3}, Lm8/j;->dispose()V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_55

    .line 96
    :cond_5f
    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    sget-object v1, Lm8/d;->b:Lm8/b;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lm8/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    new-instance v2, Lm8/b;

    .line 14
    .line 15
    sget v3, Lm8/d;->d:I

    .line 16
    .line 17
    sget-object v4, Lm8/d;->c:Lm8/k;

    .line 18
    .line 19
    invoke-direct {v2, v3, v4}, Lm8/b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 20
    .line 21
    .line 22
    :cond_15
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1c

    .line 27
    .line 28
    goto :goto_30

    .line 29
    :cond_1c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eq v3, v1, :cond_15

    .line 34
    .line 35
    iget-object v0, v2, Lm8/b;->b:[Lm8/c;

    .line 36
    .line 37
    array-length v1, v0

    .line 38
    const/4 v2, 0x0

    .line 39
    :goto_26
    if-ge v2, v1, :cond_30

    .line 40
    .line 41
    aget-object v3, v0, v2

    .line 42
    .line 43
    invoke-virtual {v3}, Lm8/j;->dispose()V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_26

    .line 49
    :cond_30
    :goto_30
    return-void
.end method


# virtual methods
.method public final a()Lx7/j;
    .registers 9

    .line 1
    new-instance v0, Lm8/a;

    .line 2
    .line 3
    iget-object v1, p0, Lm8/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lm8/b;

    .line 10
    .line 11
    iget v2, v1, Lm8/b;->a:I

    .line 12
    .line 13
    if-nez v2, :cond_11

    .line 14
    .line 15
    sget-object v1, Lm8/d;->e:Lm8/c;

    .line 16
    .line 17
    goto :goto_1f

    .line 18
    :cond_11
    iget-object v3, v1, Lm8/b;->b:[Lm8/c;

    .line 19
    .line 20
    iget-wide v4, v1, Lm8/b;->c:J

    .line 21
    .line 22
    const-wide/16 v6, 0x1

    .line 23
    .line 24
    add-long/2addr v6, v4

    .line 25
    iput-wide v6, v1, Lm8/b;->c:J

    .line 26
    .line 27
    int-to-long v1, v2

    .line 28
    rem-long/2addr v4, v1

    .line 29
    long-to-int v1, v4

    .line 30
    aget-object v1, v3, v1

    .line 31
    .line 32
    :goto_1f
    invoke-direct {v0, v1}, Lm8/a;-><init>(Lm8/c;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final c(Li8/p;)Lz7/a;
    .registers 9

    .line 1
    iget-object v0, p0, Lm8/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm8/b;

    .line 8
    .line 9
    iget v1, v0, Lm8/b;->a:I

    .line 10
    .line 11
    if-nez v1, :cond_f

    .line 12
    .line 13
    sget-object v0, Lm8/d;->e:Lm8/c;

    .line 14
    .line 15
    goto :goto_1d

    .line 16
    :cond_f
    iget-object v2, v0, Lm8/b;->b:[Lm8/c;

    .line 17
    .line 18
    iget-wide v3, v0, Lm8/b;->c:J

    .line 19
    .line 20
    const-wide/16 v5, 0x1

    .line 21
    .line 22
    add-long/2addr v5, v3

    .line 23
    iput-wide v5, v0, Lm8/b;->c:J

    .line 24
    .line 25
    int-to-long v0, v1

    .line 26
    rem-long/2addr v3, v0

    .line 27
    long-to-int v0, v3

    .line 28
    aget-object v0, v2, v0

    .line 29
    .line 30
    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v1, Lm8/l;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Lm8/l;-><init>(Li8/p;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, v0, Lm8/j;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    .line 40
    :try_start_27
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Lm8/l;->a(Ljava/util/concurrent/Future;)V
    :try_end_2e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_27 .. :try_end_2e} :catch_2f

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :catch_2f
    move-exception p1

    .line 49
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lc8/b;->b:Lc8/b;

    .line 53
    .line 54
    return-object p1
.end method
