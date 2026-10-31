.class public final Lo7/b2;
.super Ln7/t;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final r:Lo7/g0;


# instance fields
.field public final d:Ljava/util/concurrent/ScheduledFuture;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ln7/n;

.field public volatile g:Z

.field public h:Ln7/e;

.field public i:Ln7/t;

.field public j:Ln7/f1;

.field public k:Ljava/util/List;

.field public l:Lo7/i0;

.field public final m:Ln7/n;

.field public final n:Ln7/x0;

.field public final o:Ln7/c;

.field public final p:J

.field public final synthetic q:Lo7/c2;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-class v0, Lo7/b2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lo7/g0;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Lo7/g0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lo7/b2;->r:Lo7/g0;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lo7/c2;Ln7/n;Ln7/x0;Ln7/c;)V
    .registers 15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/b2;->q:Lo7/c2;

    .line 5
    .line 6
    iget-object p1, p1, Lo7/c2;->d:Lo7/f2;

    .line 7
    .line 8
    sget-object v0, Lo7/f2;->c0:Ljava/util/logging/Logger;

    .line 9
    .line 10
    iget-object v0, p4, Ln7/c;->b:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    if-nez v0, :cond_f

    .line 13
    .line 14
    iget-object v0, p1, Lo7/f2;->h:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    :cond_f
    iget-object v1, p1, Lo7/f2;->g:Lo7/d2;

    .line 17
    .line 18
    iget-object v2, p4, Ln7/c;->a:Ln7/o;

    .line 19
    .line 20
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lo7/b2;->k:Ljava/util/List;

    .line 26
    .line 27
    const-string v3, "callExecutor"

    .line 28
    .line 29
    invoke-static {v0, v3}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lo7/b2;->e:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    const-string v0, "scheduler"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Ln7/n;->b()Ln7/n;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lo7/b2;->f:Ln7/n;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    if-nez v2, :cond_33

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    goto :goto_83

    .line 52
    :cond_33
    invoke-virtual {v2}, Ln7/o;->b()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    const-wide/32 v6, 0x3b9aca00

    .line 61
    .line 62
    .line 63
    div-long/2addr v4, v6

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v8

    .line 68
    rem-long/2addr v8, v6

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-wide/16 v6, 0x0

    .line 75
    .line 76
    cmp-long v6, v2, v6

    .line 77
    .line 78
    if-gez v6, :cond_55

    .line 79
    .line 80
    const-string v6, "ClientCall started after CallOptions deadline was exceeded. Deadline has been exceeded for "

    .line 81
    .line 82
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    goto :goto_5a

    .line 86
    :cond_55
    const-string v6, "Deadline CallOptions will be exceeded in "

    .line 87
    .line 88
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :goto_5a
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 95
    .line 96
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const-string v6, ".%09d"

    .line 105
    .line 106
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v4, "s. "

    .line 114
    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    new-instance v4, Lo7/e0;

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    invoke-direct {v4, v5, p0, v0}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, v1, Lo7/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 125
    .line 126
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 127
    .line 128
    invoke-interface {v0, v4, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :goto_83
    iput-object v0, p0, Lo7/b2;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 133
    .line 134
    iput-object p2, p0, Lo7/b2;->m:Ln7/n;

    .line 135
    .line 136
    iput-object p3, p0, Lo7/b2;->n:Ln7/x0;

    .line 137
    .line 138
    iput-object p4, p0, Lo7/b2;->o:Ln7/c;

    .line 139
    .line 140
    iget-object p1, p1, Lo7/f2;->X:Ln7/h;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 146
    .line 147
    .line 148
    move-result-wide p1

    .line 149
    iput-wide p1, p0, Lo7/b2;->p:J

    .line 150
    .line 151
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    sget-object v0, Ln7/f1;->f:Ln7/f1;

    .line 2
    .line 3
    if-eqz p1, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    const-string p1, "Call cancelled without message"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_f
    if-eqz p2, :cond_15

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_15
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo7/b2;->r(Ln7/f1;Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final g()V
    .registers 3

    .line 1
    new-instance v0, Lo7/f0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lo7/f0;-><init>(Lo7/b2;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lo7/b2;->s(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final k()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lo7/b2;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lo7/b2;->i:Ln7/t;

    .line 6
    .line 7
    invoke-virtual {v0}, Ln7/t;->k()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Lo7/f0;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lo7/f0;-><init>(Lo7/b2;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lo7/b2;->s(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final m(Ly5/g;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lo7/b2;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lo7/b2;->i:Ln7/t;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ln7/t;->m(Ly5/g;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Lo7/e0;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1, p0, p1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lo7/b2;->s(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final o(Ln7/e;Ln7/v0;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lo7/b2;->h:Ln7/e;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "already started"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_d
    iput-object p1, p0, Lo7/b2;->h:Ln7/e;

    .line 15
    .line 16
    iget-object v0, p0, Lo7/b2;->j:Ln7/f1;

    .line 17
    .line 18
    iget-boolean v1, p0, Lo7/b2;->g:Z

    .line 19
    .line 20
    if-nez v1, :cond_20

    .line 21
    .line 22
    new-instance v2, Lo7/i0;

    .line 23
    .line 24
    invoke-direct {v2, p1}, Lo7/i0;-><init>(Ln7/e;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lo7/b2;->l:Lo7/i0;

    .line 28
    .line 29
    move-object p1, v2

    .line 30
    goto :goto_20

    .line 31
    :catchall_1e
    move-exception p1

    .line 32
    goto :goto_40

    .line 33
    :cond_20
    :goto_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_1e

    .line 34
    if-eqz v0, :cond_2e

    .line 35
    .line 36
    iget-object p2, p0, Lo7/b2;->e:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    new-instance v1, Lo7/h0;

    .line 39
    .line 40
    invoke-direct {v1, p0, p1, v0}, Lo7/h0;-><init>(Lo7/b2;Ln7/e;Ln7/f1;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2e
    if-eqz v1, :cond_36

    .line 48
    .line 49
    iget-object v0, p0, Lo7/b2;->i:Ln7/t;

    .line 50
    .line 51
    invoke-virtual {v0, p1, p2}, Ln7/t;->o(Ln7/e;Ln7/v0;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_36
    new-instance v0, Lc3/e;

    .line 56
    .line 57
    const/4 v1, 0x2

    .line 58
    invoke-direct {v0, p0, p1, p2, v1}, Lc3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lo7/b2;->s(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_40
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_1e

    .line 66
    throw p1
.end method

.method public final r(Ln7/f1;Z)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lo7/b2;->i:Ln7/t;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-nez v0, :cond_23

    .line 6
    .line 7
    sget-object p2, Lo7/b2;->r:Lo7/g0;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_c

    .line 11
    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v1, v2

    .line 14
    :goto_d
    const-string v3, "realCall already set to %s"

    .line 15
    .line 16
    invoke-static {v3, v1, v0}, Lo4/b;->l(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lo7/b2;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 20
    .line 21
    if-eqz v0, :cond_19

    .line 22
    .line 23
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 24
    .line 25
    .line 26
    :cond_19
    iput-object p2, p0, Lo7/b2;->i:Ln7/t;

    .line 27
    .line 28
    iget-object p2, p0, Lo7/b2;->h:Ln7/e;

    .line 29
    .line 30
    iput-object p1, p0, Lo7/b2;->j:Ln7/f1;

    .line 31
    .line 32
    move v1, v2

    .line 33
    goto :goto_28

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    goto :goto_54

    .line 36
    :cond_23
    if-eqz p2, :cond_27

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :cond_27
    const/4 p2, 0x0

    .line 41
    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_21

    .line 42
    if-eqz v1, :cond_35

    .line 43
    .line 44
    new-instance p2, Lo7/e0;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-direct {p2, v0, p0, p1}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p2}, Lo7/b2;->s(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    goto :goto_44

    .line 54
    :cond_35
    if-eqz p2, :cond_41

    .line 55
    .line 56
    iget-object v0, p0, Lo7/b2;->e:Ljava/util/concurrent/Executor;

    .line 57
    .line 58
    new-instance v1, Lo7/h0;

    .line 59
    .line 60
    invoke-direct {v1, p0, p2, p1}, Lo7/h0;-><init>(Lo7/b2;Ln7/e;Ln7/f1;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    :cond_41
    invoke-virtual {p0}, Lo7/b2;->t()V

    .line 67
    .line 68
    .line 69
    :goto_44
    iget-object p1, p0, Lo7/b2;->q:Lo7/c2;

    .line 70
    .line 71
    iget-object p1, p1, Lo7/c2;->d:Lo7/f2;

    .line 72
    .line 73
    iget-object p1, p1, Lo7/f2;->m:Ln7/k1;

    .line 74
    .line 75
    new-instance p2, Lo7/f0;

    .line 76
    .line 77
    const/4 v0, 0x2

    .line 78
    invoke-direct {p2, p0, v0}, Lo7/f0;-><init>(Lo7/b2;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_54
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_21

    .line 86
    throw p1
.end method

.method public final s(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lo7/b2;->g:Z

    .line 3
    .line 4
    if-nez v0, :cond_e

    .line 5
    .line 6
    iget-object v0, p0, Lo7/b2;->k:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception p1

    .line 14
    goto :goto_13

    .line 15
    :cond_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_c

    .line 16
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_c

    .line 21
    throw p1
.end method

.method public final t()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_5
    monitor-enter p0

    .line 7
    :try_start_6
    iget-object v1, p0, Lo7/b2;->k:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_26

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lo7/b2;->k:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lo7/b2;->g:Z

    .line 20
    .line 21
    iget-object v0, p0, Lo7/b2;->l:Lo7/i0;

    .line 22
    .line 23
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_24

    .line 24
    if-eqz v0, :cond_23

    .line 25
    .line 26
    iget-object v1, p0, Lo7/b2;->e:Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    new-instance v2, Lo7/r;

    .line 29
    .line 30
    invoke-direct {v2, p0, v0}, Lo7/r;-><init>(Lo7/b2;Lo7/i0;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    :cond_23
    return-void

    .line 37
    :catchall_24
    move-exception v0

    .line 38
    goto :goto_44

    .line 39
    :cond_26
    :try_start_26
    iget-object v1, p0, Lo7/b2;->k:Ljava/util/List;

    .line 40
    .line 41
    iput-object v0, p0, Lo7/b2;->k:Ljava/util/List;

    .line 42
    .line 43
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_24

    .line 44
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3f

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/Runnable;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 61
    .line 62
    .line 63
    goto :goto_2f

    .line 64
    :cond_3f
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 65
    .line 66
    .line 67
    move-object v0, v1

    .line 68
    goto :goto_5

    .line 69
    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_24

    .line 70
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "realCall"

    .line 6
    .line 7
    iget-object v2, p0, Lo7/b2;->i:Ln7/t;

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final u()V
    .registers 8

    .line 1
    iget-object v0, p0, Lo7/b2;->m:Ln7/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln7/n;->a()Ln7/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_6
    iget-object v1, p0, Lo7/b2;->o:Ln7/c;

    .line 8
    .line 9
    sget-object v2, Ln7/e;->a:La9/w;

    .line 10
    .line 11
    iget-object v3, p0, Lo7/b2;->q:Lo7/c2;

    .line 12
    .line 13
    iget-object v3, v3, Lo7/c2;->d:Lo7/f2;

    .line 14
    .line 15
    iget-object v3, v3, Lo7/f2;->X:Ln7/h;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    iget-wide v5, p0, Lo7/b2;->p:J

    .line 25
    .line 26
    sub-long/2addr v3, v5

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v2, v3}, Ln7/c;->c(La9/w;Ljava/lang/Object;)Ln7/c;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lo7/b2;->q:Lo7/c2;

    .line 36
    .line 37
    iget-object v3, p0, Lo7/b2;->n:Ln7/x0;

    .line 38
    .line 39
    invoke-virtual {v2, v3, v1}, Lo7/c2;->g(Ln7/x0;Ln7/c;)Ln7/t;

    .line 40
    .line 41
    .line 42
    move-result-object v1
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_7c

    .line 43
    iget-object v2, p0, Lo7/b2;->m:Ln7/n;

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ln7/n;->c(Ln7/n;)V

    .line 46
    .line 47
    .line 48
    monitor-enter p0

    .line 49
    :try_start_30
    iget-object v0, p0, Lo7/b2;->i:Ln7/t;

    .line 50
    .line 51
    if-eqz v0, :cond_39

    .line 52
    .line 53
    monitor-exit p0

    .line 54
    const/4 v0, 0x0

    .line 55
    goto :goto_55

    .line 56
    :catchall_37
    move-exception v0

    .line 57
    goto :goto_7a

    .line 58
    :cond_39
    const/4 v2, 0x0

    .line 59
    if-nez v0, :cond_3e

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move v3, v2

    .line 64
    :goto_3f
    const-string v4, "realCall already set to %s"

    .line 65
    .line 66
    invoke-static {v4, v3, v0}, Lo4/b;->l(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lo7/b2;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 70
    .line 71
    if-eqz v0, :cond_4b

    .line 72
    .line 73
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 74
    .line 75
    .line 76
    :cond_4b
    iput-object v1, p0, Lo7/b2;->i:Ln7/t;

    .line 77
    .line 78
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_30 .. :try_end_4e} :catchall_37

    .line 79
    new-instance v0, Lo7/r;

    .line 80
    .line 81
    iget-object v1, p0, Lo7/b2;->f:Ln7/n;

    .line 82
    .line 83
    invoke-direct {v0, p0, v1}, Lo7/r;-><init>(Lo7/b2;Ln7/n;)V

    .line 84
    .line 85
    .line 86
    :goto_55
    iget-object v1, p0, Lo7/b2;->q:Lo7/c2;

    .line 87
    .line 88
    iget-object v1, v1, Lo7/c2;->d:Lo7/f2;

    .line 89
    .line 90
    if-nez v0, :cond_67

    .line 91
    .line 92
    iget-object v0, v1, Lo7/f2;->m:Ln7/k1;

    .line 93
    .line 94
    new-instance v1, Lo7/f0;

    .line 95
    .line 96
    const/4 v2, 0x2

    .line 97
    invoke-direct {v1, p0, v2}, Lo7/f0;-><init>(Lo7/b2;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_67
    iget-object v2, p0, Lo7/b2;->o:Ln7/c;

    .line 105
    .line 106
    iget-object v2, v2, Ln7/c;->b:Ljava/util/concurrent/Executor;

    .line 107
    .line 108
    if-nez v2, :cond_6f

    .line 109
    .line 110
    iget-object v2, v1, Lo7/f2;->h:Ljava/util/concurrent/Executor;

    .line 111
    .line 112
    :cond_6f
    new-instance v1, Lo7/e0;

    .line 113
    .line 114
    const/16 v3, 0x14

    .line 115
    .line 116
    invoke-direct {v1, v3, p0, v0}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :goto_7a
    :try_start_7a
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_37

    .line 124
    throw v0

    .line 125
    :catchall_7c
    move-exception v1

    .line 126
    iget-object v2, p0, Lo7/b2;->m:Ln7/n;

    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ln7/n;->c(Ln7/n;)V

    .line 129
    .line 130
    .line 131
    throw v1
.end method
