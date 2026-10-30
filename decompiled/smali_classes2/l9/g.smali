.class public Ll9/g;
.super Ll9/j0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final Companion:Ll9/c;

.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field private static final condition:Ljava/util/concurrent/locks/Condition;

.field private static head:Ll9/g;

.field private static final lock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private inQueue:Z

.field private next:Ll9/g;

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ll9/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll9/g;->Companion:Ll9/c;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ll9/g;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sput-object v0, Ll9/g;->condition:Ljava/util/concurrent/locks/Condition;

    .line 23
    .line 24
    const-wide/32 v0, 0xea60

    .line 25
    .line 26
    .line 27
    sput-wide v0, Ll9/g;->IDLE_TIMEOUT_MILLIS:J

    .line 28
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
    sput-wide v0, Ll9/g;->IDLE_TIMEOUT_NANOS:J

    .line 36
    .line 37
    return-void
.end method

.method public static final synthetic access$getCondition$cp()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 1
    sget-object v0, Ll9/g;->condition:Ljava/util/concurrent/locks/Condition;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getHead$cp()Ll9/g;
    .locals 1

    .line 1
    sget-object v0, Ll9/g;->head:Ll9/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_MILLIS$cp()J
    .locals 2

    .line 1
    sget-wide v0, Ll9/g;->IDLE_TIMEOUT_MILLIS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_NANOS$cp()J
    .locals 2

    .line 1
    sget-wide v0, Ll9/g;->IDLE_TIMEOUT_NANOS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getInQueue$p(Ll9/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ll9/g;->inQueue:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    sget-object v0, Ll9/g;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getNext$p(Ll9/g;)Ll9/g;
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/g;->next:Ll9/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final access$remainingNanos(Ll9/g;J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Ll9/g;->timeoutAt:J

    .line 2
    .line 3
    sub-long/2addr v0, p1

    .line 4
    return-wide v0
.end method

.method public static final synthetic access$setHead$cp(Ll9/g;)V
    .locals 0

    .line 1
    sput-object p0, Ll9/g;->head:Ll9/g;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setInQueue$p(Ll9/g;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ll9/g;->inQueue:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setNext$p(Ll9/g;Ll9/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll9/g;->next:Ll9/g;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setTimeoutAt$p(Ll9/g;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ll9/g;->timeoutAt:J

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ll9/g;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final enter()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ll9/j0;->timeoutNanos()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Ll9/j0;->hasDeadline()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v3, v0, v3

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v4, Ll9/g;->Companion:Ll9/c;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ll9/g;->access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-static {p0}, Ll9/g;->access$getInQueue$p(Ll9/g;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_8

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    invoke-static {p0, v5}, Ll9/g;->access$setInQueue$p(Ll9/g;Z)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ll9/g;->access$getHead$cp()Ll9/g;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    if-nez v6, :cond_1

    .line 48
    .line 49
    new-instance v6, Ll9/g;

    .line 50
    .line 51
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {v6}, Ll9/g;->access$setHead$cp(Ll9/g;)V

    .line 55
    .line 56
    .line 57
    new-instance v6, Ll9/d;

    .line 58
    .line 59
    const-string v7, "Okio Watchdog"

    .line 60
    .line 61
    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 75
    .line 76
    .line 77
    move-result-wide v5

    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Ll9/j0;->deadlineNanoTime()J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    sub-long/2addr v2, v5

    .line 87
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    add-long/2addr v0, v5

    .line 92
    invoke-static {p0, v0, v1}, Ll9/g;->access$setTimeoutAt$p(Ll9/g;J)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    if-eqz v3, :cond_3

    .line 97
    .line 98
    add-long/2addr v0, v5

    .line 99
    invoke-static {p0, v0, v1}, Ll9/g;->access$setTimeoutAt$p(Ll9/g;J)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    if-eqz v2, :cond_7

    .line 104
    .line 105
    invoke-virtual {p0}, Ll9/j0;->deadlineNanoTime()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    invoke-static {p0, v0, v1}, Ll9/g;->access$setTimeoutAt$p(Ll9/g;J)V

    .line 110
    .line 111
    .line 112
    :goto_1
    invoke-static {p0, v5, v6}, Ll9/g;->access$remainingNanos(Ll9/g;J)J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    invoke-static {}, Ll9/g;->access$getHead$cp()Ll9/g;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    :goto_2
    invoke-static {v2}, Ll9/g;->access$getNext$p(Ll9/g;)Ll9/g;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-eqz v3, :cond_5

    .line 128
    .line 129
    invoke-static {v2}, Ll9/g;->access$getNext$p(Ll9/g;)Ll9/g;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {v3, v5, v6}, Ll9/g;->access$remainingNanos(Ll9/g;J)J

    .line 137
    .line 138
    .line 139
    move-result-wide v7

    .line 140
    cmp-long v3, v0, v7

    .line 141
    .line 142
    if-gez v3, :cond_4

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_4
    invoke-static {v2}, Ll9/g;->access$getNext$p(Ll9/g;)Ll9/g;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    :goto_3
    invoke-static {v2}, Ll9/g;->access$getNext$p(Ll9/g;)Ll9/g;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {p0, v0}, Ll9/g;->access$setNext$p(Ll9/g;Ll9/g;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v2, p0}, Ll9/g;->access$setNext$p(Ll9/g;Ll9/g;)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Ll9/g;->access$getHead$cp()Ll9/g;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    if-ne v2, v0, :cond_6

    .line 168
    .line 169
    sget-object v0, Ll9/g;->Companion:Ll9/c;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {}, Ll9/g;->access$getCondition$cp()Ljava/util/concurrent/locks/Condition;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 179
    .line 180
    .line 181
    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .line 183
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 188
    .line 189
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 190
    .line 191
    .line 192
    throw v0

    .line 193
    :cond_8
    const-string v0, "Unbalanced enter/exit"

    .line 194
    .line 195
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 196
    .line 197
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :goto_4
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 202
    .line 203
    .line 204
    throw v0
.end method

.method public final exit()Z
    .locals 4

    .line 1
    sget-object v0, Ll9/g;->Companion:Ll9/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ll9/g;->access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {p0}, Ll9/g;->access$getInQueue$p(Ll9/g;)Z

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    :try_start_1
    invoke-static {p0, v2}, Ll9/g;->access$setInQueue$p(Ll9/g;Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ll9/g;->access$getHead$cp()Ll9/g;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-static {v1}, Ll9/g;->access$getNext$p(Ll9/g;)Ll9/g;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-ne v3, p0, :cond_1

    .line 41
    .line 42
    invoke-static {p0}, Ll9/g;->access$getNext$p(Ll9/g;)Ll9/g;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v1, v3}, Ll9/g;->access$setNext$p(Ll9/g;Ll9/g;)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v1}, Ll9/g;->access$setNext$p(Ll9/g;Ll9/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 54
    .line 55
    .line 56
    return v2

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :try_start_2
    invoke-static {v1}, Ll9/g;->access$getNext$p(Ll9/g;)Ll9/g;

    .line 60
    .line 61
    .line 62
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    return v0

    .line 69
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 70
    .line 71
    .line 72
    throw v1
.end method

.method public newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 2
    .line 3
    const-string v1, "timeout"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final sink(Ll9/e0;)Ll9/e0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll9/e;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Ll9/e;-><init>(Ll9/g;Ll9/e0;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final source(Ll9/g0;)Ll9/g0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll9/f;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Ll9/f;-><init>(Ll9/g;Ll9/g0;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public timedOut()V
    .locals 0

    .line 1
    return-void
.end method

.method public final withTimeout(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ll9/g;->enter()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ll9/g;->exit()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Ll9/g;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    throw p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    :try_start_1
    invoke-virtual {p0}, Ll9/g;->exit()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0, p1}, Ll9/g;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ll9/g;->exit()Z

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method
