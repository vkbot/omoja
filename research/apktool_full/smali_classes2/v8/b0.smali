.class public final Lv8/b0;
.super Lv8/n0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile _thread:Ljava/lang/Thread;

.field private static volatile debugStatus:I

.field public static final h:Lv8/b0;

.field public static final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv8/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Lv8/n0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv8/b0;->h:Lv8/b0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lv8/l0;->S(Z)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0x3e8

    .line 13
    .line 14
    :try_start_0
    const-string v2, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    .line 15
    .line 16
    invoke-static {v2, v0, v1}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    sput-wide v0, Lv8/b0;->i:J

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final c0()Ljava/lang/Thread;
    .locals 2

    .line 1
    sget-object v0, Lv8/b0;->_thread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, Lv8/b0;->_thread:Ljava/lang/Thread;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Thread;

    .line 11
    .line 12
    const-string v1, "v8.b0"

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lv8/b0;->_thread:Ljava/lang/Thread;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-object v0

    .line 31
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v0

    .line 33
    :cond_1
    return-object v0
.end method

.method public final d0(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget v0, Lv8/b0;->debugStatus:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1}, Lv8/n0;->d0(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 11
    .line 12
    const-string v0, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public final declared-synchronized g0()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Lv8/b0;->debugStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 14
    :goto_1
    if-nez v0, :cond_2

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_2
    :try_start_1
    sput v2, Lv8/b0;->debugStatus:I

    .line 19
    .line 20
    sget-object v0, Lv8/n0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lv8/n0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 27
    .line 28
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw v0
.end method

.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lv8/q1;->a:Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    sget v0, Lv8/b0;->debugStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x1

    .line 15
    if-eq v0, v5, :cond_1

    .line 16
    .line 17
    if-ne v0, v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v0, v6

    .line 23
    :goto_1
    if-eqz v0, :cond_2

    .line 24
    .line 25
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    sput-object v2, Lv8/b0;->_thread:Ljava/lang/Thread;

    .line 27
    .line 28
    invoke-virtual {v1}, Lv8/b0;->g0()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lv8/n0;->e0()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_8

    .line 36
    .line 37
    invoke-virtual {v1}, Lv8/b0;->c0()Ljava/lang/Thread;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    :try_start_3
    sput v6, Lv8/b0;->debugStatus:I

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 44
    .line 45
    .line 46
    :try_start_4
    monitor-exit p0

    .line 47
    const-wide v7, 0x7fffffffffffffffL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    move-wide v9, v7

    .line 53
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lv8/n0;->f0()J

    .line 57
    .line 58
    .line 59
    move-result-wide v11

    .line 60
    cmp-long v0, v11, v7

    .line 61
    .line 62
    const-wide/16 v13, 0x0

    .line 63
    .line 64
    if-nez v0, :cond_5

    .line 65
    .line 66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 67
    .line 68
    .line 69
    move-result-wide v15

    .line 70
    cmp-long v0, v9, v7

    .line 71
    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    sget-wide v9, Lv8/b0;->i:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    .line 76
    add-long/2addr v9, v15

    .line 77
    :cond_3
    move-object/from16 v17, v2

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    move-object/from16 v17, v2

    .line 82
    .line 83
    goto :goto_8

    .line 84
    :goto_3
    sub-long v2, v9, v15

    .line 85
    .line 86
    cmp-long v15, v2, v13

    .line 87
    .line 88
    if-gtz v15, :cond_4

    .line 89
    .line 90
    sput-object v17, Lv8/b0;->_thread:Ljava/lang/Thread;

    .line 91
    .line 92
    invoke-virtual {v1}, Lv8/b0;->g0()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lv8/n0;->e0()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_8

    .line 100
    .line 101
    invoke-virtual {v1}, Lv8/b0;->c0()Ljava/lang/Thread;

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_4
    :try_start_5
    invoke-static {v11, v12, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    .line 106
    .line 107
    .line 108
    move-result-wide v11

    .line 109
    goto :goto_4

    .line 110
    :catchall_1
    move-exception v0

    .line 111
    goto :goto_8

    .line 112
    :cond_5
    move-object/from16 v17, v2

    .line 113
    .line 114
    move-wide v9, v7

    .line 115
    :goto_4
    cmp-long v2, v11, v13

    .line 116
    .line 117
    if-lez v2, :cond_a

    .line 118
    .line 119
    sget v2, Lv8/b0;->debugStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    .line 121
    if-eq v2, v5, :cond_7

    .line 122
    .line 123
    if-ne v2, v4, :cond_6

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_6
    const/4 v2, 0x0

    .line 127
    goto :goto_6

    .line 128
    :cond_7
    :goto_5
    move v2, v6

    .line 129
    :goto_6
    if-eqz v2, :cond_9

    .line 130
    .line 131
    sput-object v17, Lv8/b0;->_thread:Ljava/lang/Thread;

    .line 132
    .line 133
    invoke-virtual {v1}, Lv8/b0;->g0()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Lv8/n0;->e0()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_8

    .line 141
    .line 142
    invoke-virtual {v1}, Lv8/b0;->c0()Ljava/lang/Thread;

    .line 143
    .line 144
    .line 145
    :cond_8
    return-void

    .line 146
    :cond_9
    :try_start_6
    invoke-static {v1, v11, v12}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 147
    .line 148
    .line 149
    :cond_a
    move-object/from16 v2, v17

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :catchall_2
    move-exception v0

    .line 153
    move-object/from16 v17, v2

    .line 154
    .line 155
    :goto_7
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 156
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 157
    :catchall_3
    move-exception v0

    .line 158
    goto :goto_7

    .line 159
    :goto_8
    sput-object v17, Lv8/b0;->_thread:Ljava/lang/Thread;

    .line 160
    .line 161
    invoke-virtual {v1}, Lv8/b0;->g0()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Lv8/n0;->e0()Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_b

    .line 169
    .line 170
    invoke-virtual {v1}, Lv8/b0;->c0()Ljava/lang/Thread;

    .line 171
    .line 172
    .line 173
    :cond_b
    throw v0
.end method

.method public final shutdown()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    sput v0, Lv8/b0;->debugStatus:I

    .line 3
    .line 4
    invoke-super {p0}, Lv8/n0;->shutdown()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
