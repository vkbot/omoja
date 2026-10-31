.class public final Lo7/s4;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final d:Lo7/s4;


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Lo7/u2;

.field public c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lo7/s4;

    .line 2
    .line 3
    new-instance v1, Lo7/u2;

    .line 4
    .line 5
    const/16 v2, 0x13

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lo7/u2;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lo7/s4;-><init>(Lo7/u2;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lo7/s4;->d:Lo7/s4;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lo7/u2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo7/s4;->a:Ljava/util/IdentityHashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lo7/s4;->b:Lo7/u2;

    .line 12
    .line 13
    return-void
.end method

.method public static a(Lo7/r4;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lo7/s4;->d:Lo7/s4;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lo7/s4;->a:Ljava/util/IdentityHashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lo7/q4;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lo7/q4;

    .line 15
    .line 16
    invoke-interface {p0}, Lo7/r4;->create()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Lo7/q4;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, Lo7/s4;->a:Ljava/util/IdentityHashMap;

    .line 24
    .line 25
    invoke-virtual {v2, p0, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object p0, v1, Lo7/q4;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-interface {p0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    iput-object p0, v1, Lo7/q4;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 41
    .line 42
    :cond_1
    iget p0, v1, Lo7/q4;->b:I

    .line 43
    .line 44
    add-int/lit8 p0, p0, 0x1

    .line 45
    .line 46
    iput p0, v1, Lo7/q4;->b:I

    .line 47
    .line 48
    iget-object p0, v1, Lo7/q4;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return-object p0

    .line 52
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p0
.end method

.method public static b(Lo7/r4;Ljava/lang/Object;)V
    .locals 8

    .line 1
    sget-object v2, Lo7/s4;->d:Lo7/s4;

    .line 2
    .line 3
    const-string v0, "No cached instance found for "

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v1, v2, Lo7/s4;->a:Ljava/util/IdentityHashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    move-object v3, v1

    .line 13
    check-cast v3, Lo7/q4;

    .line 14
    .line 15
    if-eqz v3, :cond_5

    .line 16
    .line 17
    iget-object v0, v3, Lo7/q4;->a:Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    move v0, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    :goto_0
    const-string v5, "Releasing the wrong instance"

    .line 27
    .line 28
    invoke-static {v5, v0}, Lo4/b;->d(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    iget v0, v3, Lo7/q4;->b:I

    .line 32
    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    move v0, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v0, v1

    .line 38
    :goto_1
    const-string v5, "Refcount has already reached zero"

    .line 39
    .line 40
    invoke-static {v0, v5}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v0, v3, Lo7/q4;->b:I

    .line 44
    .line 45
    sub-int/2addr v0, v4

    .line 46
    iput v0, v3, Lo7/q4;->b:I

    .line 47
    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    iget-object v0, v3, Lo7/q4;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    move v1, v4

    .line 55
    :cond_2
    const-string v0, "Destroy task already scheduled"

    .line 56
    .line 57
    invoke-static {v1, v0}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, v2, Lo7/s4;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    iget-object v0, v2, Lo7/s4;->b:Lo7/u2;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const-string v0, "grpc-shared-destroyer-%d"

    .line 70
    .line 71
    invoke-static {v0}, Lo7/y0;->e(Ljava/lang/String;)Lm4/p;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, v2, Lo7/s4;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    move-object p0, v0

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    :goto_2
    iget-object v6, v2, Lo7/s4;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 86
    .line 87
    new-instance v7, Lo7/q1;

    .line 88
    .line 89
    new-instance v0, Lm0/r0;

    .line 90
    .line 91
    const/4 v1, 0x4

    .line 92
    move-object v4, p0

    .line 93
    move-object v5, p1

    .line 94
    invoke-direct/range {v0 .. v5}, Lm0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v7, v0}, Lo7/q1;-><init>(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 101
    .line 102
    const-wide/16 v0, 0x1

    .line 103
    .line 104
    invoke-interface {v6, v7, v0, v1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    iput-object p0, v3, Lo7/q4;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    :cond_4
    monitor-exit v2

    .line 111
    return-void

    .line 112
    :cond_5
    move-object v4, p0

    .line 113
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    throw p0
.end method
