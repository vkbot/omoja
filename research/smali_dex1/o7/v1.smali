.class public final Lo7/v1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/u;


# static fields
.field public static final F:Ln7/q0;

.field public static final G:Ln7/q0;

.field public static final H:Ln7/f1;

.field public static final I:Ljava/util/Random;


# instance fields
.field public A:Z

.field public final synthetic B:Ln7/x0;

.field public final synthetic C:Ln7/c;

.field public final synthetic D:Ln7/n;

.field public final synthetic E:Lc0/h;

.field public final b:Ln7/x0;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ln7/k1;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Ln7/v0;

.field public final g:Lo7/e4;

.field public final h:Lo7/a1;

.field public final i:Z

.field public final j:Ljava/lang/Object;

.field public final k:Lo7/f;

.field public final l:J

.field public final m:J

.field public final n:Lo7/d4;

.field public final o:Li7/i;

.field public volatile p:Lo7/z3;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final s:Ljava/util/concurrent/atomic/AtomicInteger;

.field public t:La5/h;

.field public u:J

.field public v:Lo7/w;

.field public w:Lcom/bumptech/glide/manager/t;

.field public x:Lcom/bumptech/glide/manager/t;

.field public y:J

.field public z:Ln7/f1;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ln7/v0;->d:Ln7/h;

    .line 2
    .line 3
    sget-object v1, Ln7/s0;->d:Ljava/util/BitSet;

    .line 4
    .line 5
    new-instance v1, Ln7/q0;

    .line 6
    .line 7
    const-string v2, "grpc-previous-rpc-attempts"

    .line 8
    .line 9
    invoke-direct {v1, v2, v0}, Ln7/q0;-><init>(Ljava/lang/String;Ln7/r0;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lo7/v1;->F:Ln7/q0;

    .line 13
    .line 14
    new-instance v1, Ln7/q0;

    .line 15
    .line 16
    const-string v2, "grpc-retry-pushback-ms"

    .line 17
    .line 18
    invoke-direct {v1, v2, v0}, Ln7/q0;-><init>(Ljava/lang/String;Ln7/r0;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lo7/v1;->G:Ln7/q0;

    .line 22
    .line 23
    sget-object v0, Ln7/f1;->f:Ln7/f1;

    .line 24
    .line 25
    const-string v1, "Stream thrown away because RetriableStream committed"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lo7/v1;->H:Ln7/f1;

    .line 32
    .line 33
    new-instance v0, Ljava/util/Random;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lo7/v1;->I:Ljava/util/Random;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(Lc0/h;Ln7/x0;Ln7/v0;Ln7/c;Lo7/e4;Lo7/a1;Ln7/n;)V
    .registers 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move-object/from16 v5, p6

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lo7/v1;->E:Lc0/h;

    .line 17
    .line 18
    iput-object v2, v0, Lo7/v1;->B:Ln7/x0;

    .line 19
    .line 20
    iput-object v3, v0, Lo7/v1;->C:Ln7/c;

    .line 21
    .line 22
    move-object/from16 v6, p7

    .line 23
    .line 24
    iput-object v6, v0, Lo7/v1;->D:Ln7/n;

    .line 25
    .line 26
    iget-object v6, v1, Lc0/h;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v6, Lo7/f2;

    .line 29
    .line 30
    iget-object v7, v6, Lo7/f2;->T:Lo7/f;

    .line 31
    .line 32
    iget-wide v8, v6, Lo7/f2;->U:J

    .line 33
    .line 34
    iget-wide v10, v6, Lo7/f2;->V:J

    .line 35
    .line 36
    iget-object v3, v3, Ln7/c;->b:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    if-nez v3, :cond_29

    .line 39
    .line 40
    iget-object v3, v6, Lo7/f2;->h:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    :cond_29
    iget-object v6, v6, Lo7/f2;->f:Lo7/l;

    .line 43
    .line 44
    iget-object v6, v6, Lo7/l;->b:Lp7/g;

    .line 45
    .line 46
    iget-object v6, v6, Lp7/g;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    .line 48
    iget-object v1, v1, Lc0/h;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lo7/d4;

    .line 51
    .line 52
    new-instance v12, Ln7/k1;

    .line 53
    .line 54
    new-instance v13, Lo7/o3;

    .line 55
    .line 56
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-direct {v12, v13}, Ln7/k1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 60
    .line 61
    .line 62
    iput-object v12, v0, Lo7/v1;->d:Ln7/k1;

    .line 63
    .line 64
    new-instance v12, Ljava/lang/Object;

    .line 65
    .line 66
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v12, v0, Lo7/v1;->j:Ljava/lang/Object;

    .line 70
    .line 71
    new-instance v12, Li7/i;

    .line 72
    .line 73
    const/4 v13, 0x1

    .line 74
    invoke-direct {v12, v13}, Li7/i;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iput-object v12, v0, Lo7/v1;->o:Li7/i;

    .line 78
    .line 79
    new-instance v14, Lo7/z3;

    .line 80
    .line 81
    new-instance v15, Ljava/util/ArrayList;

    .line 82
    .line 83
    const/16 v12, 0x8

    .line 84
    .line 85
    invoke-direct {v15, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .line 87
    .line 88
    sget-object v16, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 89
    .line 90
    const/16 v21, 0x0

    .line 91
    .line 92
    const/16 v22, 0x0

    .line 93
    .line 94
    const/16 v17, 0x0

    .line 95
    .line 96
    const/16 v18, 0x0

    .line 97
    .line 98
    const/16 v19, 0x0

    .line 99
    .line 100
    const/16 v20, 0x0

    .line 101
    .line 102
    invoke-direct/range {v14 .. v22}, Lo7/z3;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo7/c4;ZZZI)V

    .line 103
    .line 104
    .line 105
    iput-object v14, v0, Lo7/v1;->p:Lo7/z3;

    .line 106
    .line 107
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    .line 109
    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v12, v0, Lo7/v1;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    .line 114
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 115
    .line 116
    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v12, v0, Lo7/v1;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 120
    .line 121
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 122
    .line 123
    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object v12, v0, Lo7/v1;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 127
    .line 128
    iput-object v2, v0, Lo7/v1;->b:Ln7/x0;

    .line 129
    .line 130
    iput-object v7, v0, Lo7/v1;->k:Lo7/f;

    .line 131
    .line 132
    iput-wide v8, v0, Lo7/v1;->l:J

    .line 133
    .line 134
    iput-wide v10, v0, Lo7/v1;->m:J

    .line 135
    .line 136
    iput-object v3, v0, Lo7/v1;->c:Ljava/util/concurrent/Executor;

    .line 137
    .line 138
    iput-object v6, v0, Lo7/v1;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 139
    .line 140
    move-object/from16 v2, p3

    .line 141
    .line 142
    iput-object v2, v0, Lo7/v1;->f:Ln7/v0;

    .line 143
    .line 144
    iput-object v4, v0, Lo7/v1;->g:Lo7/e4;

    .line 145
    .line 146
    if-eqz v4, :cond_97

    .line 147
    .line 148
    iget-wide v2, v4, Lo7/e4;->b:J

    .line 149
    .line 150
    iput-wide v2, v0, Lo7/v1;->y:J

    .line 151
    .line 152
    :cond_97
    iput-object v5, v0, Lo7/v1;->h:Lo7/a1;

    .line 153
    .line 154
    const/4 v2, 0x1

    .line 155
    const/4 v3, 0x0

    .line 156
    if-eqz v4, :cond_a2

    .line 157
    .line 158
    if-nez v5, :cond_a0

    .line 159
    .line 160
    goto :goto_a2

    .line 161
    :cond_a0
    move v4, v3

    .line 162
    goto :goto_a3

    .line 163
    :cond_a2
    :goto_a2
    move v4, v2

    .line 164
    :goto_a3
    const-string v6, "Should not provide both retryPolicy and hedgingPolicy"

    .line 165
    .line 166
    invoke-static {v6, v4}, Lo4/b;->d(Ljava/lang/String;Z)V

    .line 167
    .line 168
    .line 169
    if-eqz v5, :cond_ab

    .line 170
    .line 171
    goto :goto_ac

    .line 172
    :cond_ab
    move v2, v3

    .line 173
    :goto_ac
    iput-boolean v2, v0, Lo7/v1;->i:Z

    .line 174
    .line 175
    iput-object v1, v0, Lo7/v1;->n:Lo7/d4;

    .line 176
    .line 177
    return-void
.end method

.method public static b(Lo7/v1;Ljava/lang/Integer;)V
    .registers 6

    .line 1
    if-nez p1, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-gez v0, :cond_d

    .line 9
    .line 10
    invoke-virtual {p0}, Lo7/v1;->q()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    iget-object v0, p0, Lo7/v1;->j:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_10
    iget-object v1, p0, Lo7/v1;->x:Lcom/bumptech/glide/manager/t;

    .line 18
    .line 19
    if-nez v1, :cond_18

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_16
    move-exception p0

    .line 24
    goto :goto_47

    .line 25
    :cond_18
    const/4 v2, 0x1

    .line 26
    iput-boolean v2, v1, Lcom/bumptech/glide/manager/t;->c:Z

    .line 27
    .line 28
    iget-object v1, v1, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Ljava/util/concurrent/Future;

    .line 31
    .line 32
    new-instance v2, Lcom/bumptech/glide/manager/t;

    .line 33
    .line 34
    iget-object v3, p0, Lo7/v1;->j:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-direct {v2, v3}, Lcom/bumptech/glide/manager/t;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lo7/v1;->x:Lcom/bumptech/glide/manager/t;

    .line 40
    .line 41
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_16

    .line 42
    if-eqz v1, :cond_2f

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 46
    .line 47
    .line 48
    :cond_2f
    iget-object v0, p0, Lo7/v1;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    .line 50
    new-instance v1, Lo7/e0;

    .line 51
    .line 52
    const/16 v3, 0x16

    .line 53
    .line 54
    invoke-direct {v1, v3, p0, v2}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    int-to-long p0, p0

    .line 62
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    .line 64
    invoke-interface {v0, v1, p0, p1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v2, p0}, Lcom/bumptech/glide/manager/t;->i(Ljava/util/concurrent/ScheduledFuture;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_47
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_16

    .line 73
    throw p0
.end method


# virtual methods
.method public final a(Ln7/h;)V
    .registers 4

    .line 1
    new-instance v0, Lo7/q3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1}, Lo7/q3;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lo7/v1;->l(Lo7/v3;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final c(I)V
    .registers 4

    .line 1
    new-instance v0, Lo7/s3;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, v1}, Lo7/s3;-><init>(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lo7/v1;->l(Lo7/v3;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final d(Lo7/w;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lo7/v1;->v:Lo7/w;

    .line 2
    .line 3
    iget-object p1, p0, Lo7/v1;->E:Lc0/h;

    .line 4
    .line 5
    iget-object p1, p1, Lc0/h;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lo7/f2;

    .line 8
    .line 9
    iget-object p1, p1, Lo7/f2;->F:Lb1/m;

    .line 10
    .line 11
    iget-object v0, p1, Lb1/m;->c:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_d
    iget-object v1, p1, Lb1/m;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ln7/f1;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_19

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    goto :goto_22

    .line 23
    :catchall_16
    move-exception p1

    .line 24
    goto/16 :goto_97

    .line 25
    .line 26
    :cond_19
    iget-object p1, p1, Lb1/m;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_16

    .line 34
    move-object v1, v2

    .line 35
    :goto_22
    if-eqz v1, :cond_28

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lo7/v1;->h(Ln7/f1;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_28
    iget-object p1, p0, Lo7/v1;->j:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p1

    .line 44
    :try_start_2b
    iget-object v0, p0, Lo7/v1;->p:Lo7/z3;

    .line 45
    .line 46
    iget-object v0, v0, Lo7/z3;->b:Ljava/util/List;

    .line 47
    .line 48
    new-instance v1, Lo7/y3;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lo7/y3;-><init>(Lo7/v1;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_94

    .line 57
    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1, p1}, Lo7/v1;->k(IZ)Lo7/c4;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-nez v0, :cond_40

    .line 63
    .line 64
    return-void

    .line 65
    :cond_40
    iget-boolean v1, p0, Lo7/v1;->i:Z

    .line 66
    .line 67
    if-eqz v1, :cond_90

    .line 68
    .line 69
    iget-object v1, p0, Lo7/v1;->j:Ljava/lang/Object;

    .line 70
    .line 71
    monitor-enter v1

    .line 72
    :try_start_47
    iget-object v3, p0, Lo7/v1;->p:Lo7/z3;

    .line 73
    .line 74
    invoke-virtual {v3, v0}, Lo7/z3;->a(Lo7/c4;)Lo7/z3;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iput-object v3, p0, Lo7/v1;->p:Lo7/z3;

    .line 79
    .line 80
    iget-object v3, p0, Lo7/v1;->p:Lo7/z3;

    .line 81
    .line 82
    invoke-virtual {p0, v3}, Lo7/v1;->r(Lo7/z3;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_74

    .line 87
    .line 88
    iget-object v3, p0, Lo7/v1;->n:Lo7/d4;

    .line 89
    .line 90
    if-eqz v3, :cond_68

    .line 91
    .line 92
    iget-object v4, v3, Lo7/d4;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    iget v3, v3, Lo7/d4;->b:I

    .line 99
    .line 100
    if-le v4, v3, :cond_66

    .line 101
    .line 102
    const/4 p1, 0x1

    .line 103
    :cond_66
    if-eqz p1, :cond_74

    .line 104
    .line 105
    :cond_68
    new-instance v2, Lcom/bumptech/glide/manager/t;

    .line 106
    .line 107
    iget-object p1, p0, Lo7/v1;->j:Ljava/lang/Object;

    .line 108
    .line 109
    invoke-direct {v2, p1}, Lcom/bumptech/glide/manager/t;-><init>(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iput-object v2, p0, Lo7/v1;->x:Lcom/bumptech/glide/manager/t;

    .line 113
    .line 114
    goto :goto_74

    .line 115
    :catchall_72
    move-exception p1

    .line 116
    goto :goto_8e

    .line 117
    :cond_74
    :goto_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_47 .. :try_end_75} :catchall_72

    .line 118
    if-eqz v2, :cond_90

    .line 119
    .line 120
    iget-object p1, p0, Lo7/v1;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 121
    .line 122
    new-instance v1, Lo7/e0;

    .line 123
    .line 124
    const/16 v3, 0x16

    .line 125
    .line 126
    invoke-direct {v1, v3, p0, v2}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object v3, p0, Lo7/v1;->h:Lo7/a1;

    .line 130
    .line 131
    iget-wide v3, v3, Lo7/a1;->b:J

    .line 132
    .line 133
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 134
    .line 135
    invoke-interface {p1, v1, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/manager/t;->i(Ljava/util/concurrent/ScheduledFuture;)V

    .line 140
    .line 141
    .line 142
    goto :goto_90

    .line 143
    :goto_8e
    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_72

    .line 144
    throw p1

    .line 145
    :cond_90
    :goto_90
    invoke-virtual {p0, v0}, Lo7/v1;->p(Lo7/c4;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :catchall_94
    move-exception v0

    .line 150
    :try_start_95
    monitor-exit p1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    .line 151
    throw v0

    .line 152
    :goto_97
    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_16

    .line 153
    throw p1
.end method

.method public final e(Li7/i;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lo7/v1;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    const-string v1, "closed"

    .line 5
    .line 6
    iget-object v2, p0, Lo7/v1;->o:Li7/i;

    .line 7
    .line 8
    invoke-virtual {p1, v2, v1}, Li7/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lo7/v1;->p:Lo7/z3;

    .line 12
    .line 13
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_57

    .line 14
    iget-object v0, v1, Lo7/z3;->f:Lo7/c4;

    .line 15
    .line 16
    if-eqz v0, :cond_24

    .line 17
    .line 18
    new-instance v0, Li7/i;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, v2}, Li7/i;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v1, Lo7/z3;->f:Lo7/c4;

    .line 25
    .line 26
    iget-object v1, v1, Lo7/c4;->a:Lo7/u;

    .line 27
    .line 28
    invoke-interface {v1, v0}, Lo7/u;->e(Li7/i;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "committed"

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Li7/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_24
    new-instance v0, Li7/i;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-direct {v0, v2}, Li7/i;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v1, Lo7/z3;->c:Ljava/util/Collection;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_51

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lo7/c4;

    .line 60
    .line 61
    new-instance v3, Li7/i;

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    invoke-direct {v3, v4}, Li7/i;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iget-object v2, v2, Lo7/c4;->a:Lo7/u;

    .line 68
    .line 69
    invoke-interface {v2, v3}, Lo7/u;->e(Li7/i;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, v0, Li7/i;->b:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_30

    .line 82
    :cond_51
    const-string v1, "open"

    .line 83
    .line 84
    invoke-virtual {p1, v0, v1}, Li7/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catchall_57
    move-exception p1

    .line 89
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    .line 90
    throw p1
.end method

.method public final f(Lt7/a;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "RetriableStream.writeMessage() should not be called directly"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final flush()V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/v1;->p:Lo7/z3;

    .line 2
    .line 3
    iget-boolean v1, v0, Lo7/z3;->a:Z

    .line 4
    .line 5
    if-eqz v1, :cond_e

    .line 6
    .line 7
    iget-object v0, v0, Lo7/z3;->f:Lo7/c4;

    .line 8
    .line 9
    iget-object v0, v0, Lo7/c4;->a:Lo7/u;

    .line 10
    .line 11
    invoke-interface {v0}, Lo7/u4;->flush()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    new-instance v0, Lo7/r3;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Lo7/r3;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lo7/v1;->l(Lo7/v3;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final g(Ln7/q;)V
    .registers 4

    .line 1
    new-instance v0, Lo7/q3;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p1}, Lo7/q3;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lo7/v1;->l(Lo7/v3;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final h(Ln7/f1;)V
    .registers 14

    .line 1
    new-instance v0, Lo7/c4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lo7/c4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lo7/u2;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2}, Lo7/u2;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Lo7/c4;->a:Lo7/u;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lo7/v1;->j(Lo7/c4;)Lo7/p3;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lo7/v1;->j:Ljava/lang/Object;

    .line 20
    .line 21
    if-eqz v1, :cond_32

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_17
    iget-object v3, p0, Lo7/v1;->p:Lo7/z3;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Lo7/z3;->e(Lo7/c4;)Lo7/z3;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lo7/v1;->p:Lo7/z3;

    .line 31
    .line 32
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_2e

    .line 33
    invoke-virtual {v1}, Lo7/p3;->run()V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lo7/v;->b:Lo7/v;

    .line 37
    .line 38
    new-instance v1, Ln7/v0;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v0, v1}, Lo7/v1;->s(Ln7/f1;Lo7/v;Ln7/v0;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_2e
    move-exception v0

    .line 48
    move-object p1, v0

    .line 49
    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2e

    .line 50
    throw p1

    .line 51
    :cond_32
    monitor-enter v2

    .line 52
    :try_start_33
    iget-object v0, p0, Lo7/v1;->p:Lo7/z3;

    .line 53
    .line 54
    iget-object v0, v0, Lo7/z3;->c:Ljava/util/Collection;

    .line 55
    .line 56
    iget-object v1, p0, Lo7/v1;->p:Lo7/z3;

    .line 57
    .line 58
    iget-object v1, v1, Lo7/z3;->f:Lo7/c4;

    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_49

    .line 65
    .line 66
    iget-object v0, p0, Lo7/v1;->p:Lo7/z3;

    .line 67
    .line 68
    iget-object v0, v0, Lo7/z3;->f:Lo7/c4;

    .line 69
    .line 70
    goto :goto_4c

    .line 71
    :catchall_46
    move-exception v0

    .line 72
    move-object p1, v0

    .line 73
    goto :goto_6d

    .line 74
    :cond_49
    iput-object p1, p0, Lo7/v1;->z:Ln7/f1;

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    :goto_4c
    iget-object v1, p0, Lo7/v1;->p:Lo7/z3;

    .line 78
    .line 79
    new-instance v3, Lo7/z3;

    .line 80
    .line 81
    iget-object v4, v1, Lo7/z3;->b:Ljava/util/List;

    .line 82
    .line 83
    iget-object v5, v1, Lo7/z3;->c:Ljava/util/Collection;

    .line 84
    .line 85
    iget-object v6, v1, Lo7/z3;->d:Ljava/util/Collection;

    .line 86
    .line 87
    iget-object v7, v1, Lo7/z3;->f:Lo7/c4;

    .line 88
    .line 89
    iget-boolean v9, v1, Lo7/z3;->a:Z

    .line 90
    .line 91
    iget-boolean v10, v1, Lo7/z3;->h:Z

    .line 92
    .line 93
    iget v11, v1, Lo7/z3;->e:I

    .line 94
    .line 95
    const/4 v8, 0x1

    .line 96
    invoke-direct/range {v3 .. v11}, Lo7/z3;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo7/c4;ZZZI)V

    .line 97
    .line 98
    .line 99
    iput-object v3, p0, Lo7/v1;->p:Lo7/z3;

    .line 100
    .line 101
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_33 .. :try_end_65} :catchall_46

    .line 102
    if-eqz v0, :cond_6c

    .line 103
    .line 104
    iget-object v0, v0, Lo7/c4;->a:Lo7/u;

    .line 105
    .line 106
    invoke-interface {v0, p1}, Lo7/u;->h(Ln7/f1;)V

    .line 107
    .line 108
    .line 109
    :cond_6c
    return-void

    .line 110
    :goto_6d
    :try_start_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_46

    .line 111
    throw p1
.end method

.method public final i()V
    .registers 3

    .line 1
    new-instance v0, Lo7/r3;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lo7/r3;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lo7/v1;->l(Lo7/v3;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final isReady()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/v1;->p:Lo7/z3;

    .line 2
    .line 3
    iget-object v0, v0, Lo7/z3;->c:Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1e

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lo7/c4;

    .line 20
    .line 21
    iget-object v1, v1, Lo7/c4;->a:Lo7/u;

    .line 22
    .line 23
    invoke-interface {v1}, Lo7/u4;->isReady()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_8

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    return v0
.end method

.method public final j(Lo7/c4;)Lo7/p3;
    .registers 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v6, v1, Lo7/v1;->j:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v6

    .line 6
    :try_start_5
    iget-object v0, v1, Lo7/v1;->p:Lo7/z3;

    .line 7
    .line 8
    iget-object v0, v0, Lo7/z3;->f:Lo7/c4;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_11

    .line 12
    .line 13
    monitor-exit v6

    .line 14
    return-object v2

    .line 15
    :catchall_e
    move-exception v0

    .line 16
    goto/16 :goto_84

    .line 17
    .line 18
    :cond_11
    iget-object v0, v1, Lo7/v1;->p:Lo7/z3;

    .line 19
    .line 20
    iget-object v0, v0, Lo7/z3;->c:Ljava/util/Collection;

    .line 21
    .line 22
    iget-object v3, v1, Lo7/v1;->p:Lo7/z3;

    .line 23
    .line 24
    iget-object v4, v3, Lo7/z3;->f:Lo7/c4;

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    const/4 v7, 0x0

    .line 28
    if-nez v4, :cond_1f

    .line 29
    .line 30
    move v4, v5

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v4, v7

    .line 33
    :goto_20
    const-string v8, "Already committed"

    .line 34
    .line 35
    invoke-static {v4, v8}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v4, v3, Lo7/z3;->b:Ljava/util/List;

    .line 39
    .line 40
    iget-object v8, v3, Lo7/z3;->c:Ljava/util/Collection;

    .line 41
    .line 42
    move-object/from16 v13, p1

    .line 43
    .line 44
    invoke-interface {v8, v13}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_39

    .line 49
    .line 50
    invoke-static {v13}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    move-object v10, v2

    .line 55
    move-object v11, v4

    .line 56
    move v15, v5

    .line 57
    goto :goto_3e

    .line 58
    :cond_39
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 59
    .line 60
    move-object v10, v4

    .line 61
    move v15, v7

    .line 62
    move-object v11, v8

    .line 63
    :goto_3e
    new-instance v9, Lo7/z3;

    .line 64
    .line 65
    iget-object v12, v3, Lo7/z3;->d:Ljava/util/Collection;

    .line 66
    .line 67
    iget-boolean v14, v3, Lo7/z3;->g:Z

    .line 68
    .line 69
    iget-boolean v4, v3, Lo7/z3;->h:Z

    .line 70
    .line 71
    iget v3, v3, Lo7/z3;->e:I

    .line 72
    .line 73
    move/from16 v17, v3

    .line 74
    .line 75
    move/from16 v16, v4

    .line 76
    .line 77
    invoke-direct/range {v9 .. v17}, Lo7/z3;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo7/c4;ZZZI)V

    .line 78
    .line 79
    .line 80
    iput-object v9, v1, Lo7/v1;->p:Lo7/z3;

    .line 81
    .line 82
    iget-object v3, v1, Lo7/v1;->k:Lo7/f;

    .line 83
    .line 84
    iget-wide v7, v1, Lo7/v1;->u:J

    .line 85
    .line 86
    neg-long v7, v7

    .line 87
    iget-object v3, v3, Lo7/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 88
    .line 89
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 90
    .line 91
    .line 92
    iget-object v3, v1, Lo7/v1;->w:Lcom/bumptech/glide/manager/t;

    .line 93
    .line 94
    if-eqz v3, :cond_69

    .line 95
    .line 96
    iput-boolean v5, v3, Lcom/bumptech/glide/manager/t;->c:Z

    .line 97
    .line 98
    iget-object v3, v3, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v3, Ljava/util/concurrent/Future;

    .line 101
    .line 102
    iput-object v2, v1, Lo7/v1;->w:Lcom/bumptech/glide/manager/t;

    .line 103
    .line 104
    move-object v4, v3

    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    move-object v4, v2

    .line 107
    :goto_6a
    iget-object v3, v1, Lo7/v1;->x:Lcom/bumptech/glide/manager/t;

    .line 108
    .line 109
    if-eqz v3, :cond_79

    .line 110
    .line 111
    iput-boolean v5, v3, Lcom/bumptech/glide/manager/t;->c:Z

    .line 112
    .line 113
    iget-object v3, v3, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v3, Ljava/util/concurrent/Future;

    .line 116
    .line 117
    iput-object v2, v1, Lo7/v1;->x:Lcom/bumptech/glide/manager/t;

    .line 118
    .line 119
    move-object v5, v3

    .line 120
    :goto_77
    move-object v2, v0

    .line 121
    goto :goto_7b

    .line 122
    :cond_79
    move-object v5, v2

    .line 123
    goto :goto_77

    .line 124
    :goto_7b
    new-instance v0, Lo7/p3;

    .line 125
    .line 126
    move-object/from16 v3, p1

    .line 127
    .line 128
    invoke-direct/range {v0 .. v5}, Lo7/p3;-><init>(Lo7/v1;Ljava/util/Collection;Lo7/c4;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    .line 129
    .line 130
    .line 131
    monitor-exit v6

    .line 132
    return-object v0

    .line 133
    :goto_84
    monitor-exit v6
    :try_end_85
    .catchall {:try_start_5 .. :try_end_85} :catchall_e

    .line 134
    throw v0
.end method

.method public final k(IZ)Lo7/c4;
    .registers 10

    .line 1
    :cond_0
    iget-object v0, p0, Lo7/v1;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gez v1, :cond_a

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_a
    add-int/lit8 v2, v1, 0x1

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lo7/c4;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lo7/c4;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lo7/w3;

    .line 25
    .line 26
    invoke-direct {v1, p0, v0}, Lo7/w3;-><init>(Lo7/v1;Lo7/c4;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lo7/u3;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Lo7/u3;-><init>(Lo7/w3;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ln7/v0;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lo7/v1;->f:Ln7/v0;

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ln7/v0;->d(Ln7/v0;)V

    .line 42
    .line 43
    .line 44
    if-lez p1, :cond_36

    .line 45
    .line 46
    sget-object v3, Lo7/v1;->F:Ln7/q0;

    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v1, v3, v4}, Ln7/v0;->e(Ln7/s0;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_36
    iget-object v3, p0, Lo7/v1;->C:Ln7/c;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v4, Ljava/util/ArrayList;

    .line 61
    .line 62
    iget-object v5, v3, Ln7/c;->d:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-static {v3}, Ln7/c;->b(Ln7/c;)Lc2/k;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iput-object v3, v2, Lc2/k;->g:Ljava/lang/Object;

    .line 88
    .line 89
    new-instance v3, Ln7/c;

    .line 90
    .line 91
    invoke-direct {v3, v2}, Ln7/c;-><init>(Lc2/k;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v3, v1, p1, p2}, Lo7/y0;->c(Ln7/c;Ln7/v0;IZ)[Ln7/e;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance p2, Lo7/g3;

    .line 99
    .line 100
    iget-object v2, p0, Lo7/v1;->B:Ln7/x0;

    .line 101
    .line 102
    invoke-direct {p2, v2, v1, v3}, Lo7/g3;-><init>(Ln7/x0;Ln7/v0;Ln7/c;)V

    .line 103
    .line 104
    .line 105
    iget-object v4, p0, Lo7/v1;->E:Lc0/h;

    .line 106
    .line 107
    invoke-virtual {v4, p2}, Lc0/h;->b(Lo7/g3;)Lo7/x;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    iget-object v4, p0, Lo7/v1;->D:Ln7/n;

    .line 112
    .line 113
    invoke-virtual {v4}, Ln7/n;->a()Ln7/n;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    :try_start_74
    invoke-interface {p2, v2, v1, v3, p1}, Lo7/x;->d(Ln7/x0;Ln7/v0;Ln7/c;[Ln7/e;)Lo7/u;

    .line 118
    .line 119
    .line 120
    move-result-object p1
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_7e

    .line 121
    invoke-virtual {v4, v5}, Ln7/n;->c(Ln7/n;)V

    .line 122
    .line 123
    .line 124
    iput-object p1, v0, Lo7/c4;->a:Lo7/u;

    .line 125
    .line 126
    return-object v0

    .line 127
    :catchall_7e
    move-exception p1

    .line 128
    invoke-virtual {v4, v5}, Ln7/n;->c(Ln7/n;)V

    .line 129
    .line 130
    .line 131
    throw p1
.end method

.method public final l(Lo7/v3;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo7/v1;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lo7/v1;->p:Lo7/z3;

    .line 5
    .line 6
    iget-boolean v1, v1, Lo7/z3;->a:Z

    .line 7
    .line 8
    if-nez v1, :cond_13

    .line 9
    .line 10
    iget-object v1, p0, Lo7/v1;->p:Lo7/z3;

    .line 11
    .line 12
    iget-object v1, v1, Lo7/z3;->b:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_13

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    goto :goto_2d

    .line 20
    :cond_13
    :goto_13
    iget-object v1, p0, Lo7/v1;->p:Lo7/z3;

    .line 21
    .line 22
    iget-object v1, v1, Lo7/z3;->c:Ljava/util/Collection;

    .line 23
    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_11

    .line 25
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2c

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lo7/c4;

    .line 40
    .line 41
    invoke-interface {p1, v1}, Lo7/v3;->a(Lo7/c4;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1c

    .line 45
    :cond_2c
    return-void

    .line 46
    :goto_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_11

    .line 47
    throw p1
.end method

.method public final m(I)V
    .registers 4

    .line 1
    new-instance v0, Lo7/s3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lo7/s3;-><init>(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lo7/v1;->l(Lo7/v3;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final n(Ln7/o;)V
    .registers 4

    .line 1
    new-instance v0, Lo7/q3;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p1}, Lo7/q3;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lo7/v1;->l(Lo7/v3;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final o()V
    .registers 3

    .line 1
    new-instance v0, Lo7/r3;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lo7/r3;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lo7/v1;->l(Lo7/v3;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final p(Lo7/c4;)V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v0

    .line 4
    move v4, v2

    .line 5
    move-object v3, v1

    .line 6
    :goto_5
    iget-object v5, p0, Lo7/v1;->j:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v5

    .line 9
    :try_start_8
    iget-object v6, p0, Lo7/v1;->p:Lo7/z3;

    .line 10
    .line 11
    iget-object v7, v6, Lo7/z3;->f:Lo7/c4;

    .line 12
    .line 13
    if-eqz v7, :cond_15

    .line 14
    .line 15
    if-eq v7, p1, :cond_15

    .line 16
    .line 17
    monitor-exit v5

    .line 18
    goto :goto_39

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    goto/16 :goto_b3

    .line 21
    .line 22
    :cond_15
    iget-boolean v7, v6, Lo7/z3;->g:Z

    .line 23
    .line 24
    if-eqz v7, :cond_1b

    .line 25
    .line 26
    monitor-exit v5

    .line 27
    goto :goto_39

    .line 28
    :cond_1b
    iget-object v7, v6, Lo7/z3;->b:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-ne v2, v7, :cond_5f

    .line 35
    .line 36
    invoke-virtual {v6, p1}, Lo7/z3;->e(Lo7/c4;)Lo7/z3;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lo7/v1;->p:Lo7/z3;

    .line 41
    .line 42
    invoke-virtual {p0}, Lo7/v1;->isReady()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_31

    .line 47
    .line 48
    monitor-exit v5

    .line 49
    return-void

    .line 50
    :cond_31
    new-instance v1, Lcom/bumptech/glide/m;

    .line 51
    .line 52
    const/16 v0, 0x14

    .line 53
    .line 54
    invoke-direct {v1, v0, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_12

    .line 58
    :goto_39
    if-eqz v1, :cond_41

    .line 59
    .line 60
    iget-object p1, p0, Lo7/v1;->d:Ln7/k1;

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_41
    if-nez v4, :cond_4e

    .line 67
    .line 68
    iget-object v0, p1, Lo7/c4;->a:Lo7/u;

    .line 69
    .line 70
    new-instance v1, Lo7/w4;

    .line 71
    .line 72
    const/4 v2, 0x5

    .line 73
    invoke-direct {v1, v2, p0, p1}, Lo7/w4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v1}, Lo7/u;->d(Lo7/w;)V

    .line 77
    .line 78
    .line 79
    :cond_4e
    iget-object v0, p1, Lo7/c4;->a:Lo7/u;

    .line 80
    .line 81
    iget-object v1, p0, Lo7/v1;->p:Lo7/z3;

    .line 82
    .line 83
    iget-object v1, v1, Lo7/z3;->f:Lo7/c4;

    .line 84
    .line 85
    if-ne v1, p1, :cond_59

    .line 86
    .line 87
    iget-object p1, p0, Lo7/v1;->z:Ln7/f1;

    .line 88
    .line 89
    goto :goto_5b

    .line 90
    :cond_59
    sget-object p1, Lo7/v1;->H:Ln7/f1;

    .line 91
    .line 92
    :goto_5b
    invoke-interface {v0, p1}, Lo7/u;->h(Ln7/f1;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_5f
    :try_start_5f
    iget-boolean v7, p1, Lo7/c4;->b:Z

    .line 97
    .line 98
    if-eqz v7, :cond_65

    .line 99
    .line 100
    monitor-exit v5

    .line 101
    return-void

    .line 102
    :cond_65
    add-int/lit16 v7, v2, 0x80

    .line 103
    .line 104
    iget-object v8, v6, Lo7/z3;->b:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-nez v3, :cond_7f

    .line 115
    .line 116
    new-instance v3, Ljava/util/ArrayList;

    .line 117
    .line 118
    iget-object v6, v6, Lo7/z3;->b:Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v6, v2, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    .line 126
    .line 127
    goto :goto_8b

    .line 128
    :cond_7f
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 129
    .line 130
    .line 131
    iget-object v6, v6, Lo7/z3;->b:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v6, v2, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    .line 139
    .line 140
    :goto_8b
    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_5f .. :try_end_8c} :catchall_12

    .line 141
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    move v5, v0

    .line 146
    :cond_91
    if-ge v5, v2, :cond_b0

    .line 147
    .line 148
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    add-int/lit8 v5, v5, 0x1

    .line 153
    .line 154
    check-cast v6, Lo7/v3;

    .line 155
    .line 156
    invoke-interface {v6, p1}, Lo7/v3;->a(Lo7/c4;)V

    .line 157
    .line 158
    .line 159
    instance-of v6, v6, Lo7/y3;

    .line 160
    .line 161
    if-eqz v6, :cond_a3

    .line 162
    .line 163
    const/4 v4, 0x1

    .line 164
    :cond_a3
    iget-object v6, p0, Lo7/v1;->p:Lo7/z3;

    .line 165
    .line 166
    iget-object v8, v6, Lo7/z3;->f:Lo7/c4;

    .line 167
    .line 168
    if-eqz v8, :cond_ac

    .line 169
    .line 170
    if-eq v8, p1, :cond_ac

    .line 171
    .line 172
    goto :goto_b0

    .line 173
    :cond_ac
    iget-boolean v6, v6, Lo7/z3;->g:Z

    .line 174
    .line 175
    if-eqz v6, :cond_91

    .line 176
    .line 177
    :cond_b0
    :goto_b0
    move v2, v7

    .line 178
    goto/16 :goto_5

    .line 179
    .line 180
    :goto_b3
    :try_start_b3
    monitor-exit v5
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_12

    .line 181
    throw p1
.end method

.method public final q()V
    .registers 14

    .line 1
    iget-object v1, p0, Lo7/v1;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_3
    iget-object v0, p0, Lo7/v1;->x:Lcom/bumptech/glide/manager/t;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_15

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    iput-boolean v3, v0, Lcom/bumptech/glide/manager/t;->c:Z

    .line 11
    .line 12
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/concurrent/Future;

    .line 15
    .line 16
    iput-object v2, p0, Lo7/v1;->x:Lcom/bumptech/glide/manager/t;

    .line 17
    .line 18
    move-object v2, v0

    .line 19
    goto :goto_15

    .line 20
    :catchall_13
    move-exception v0

    .line 21
    goto :goto_3b

    .line 22
    :cond_15
    :goto_15
    iget-object v0, p0, Lo7/v1;->p:Lo7/z3;

    .line 23
    .line 24
    iget-boolean v3, v0, Lo7/z3;->h:Z

    .line 25
    .line 26
    if-eqz v3, :cond_1c

    .line 27
    .line 28
    goto :goto_31

    .line 29
    :cond_1c
    new-instance v4, Lo7/z3;

    .line 30
    .line 31
    iget-object v5, v0, Lo7/z3;->b:Ljava/util/List;

    .line 32
    .line 33
    iget-object v6, v0, Lo7/z3;->c:Ljava/util/Collection;

    .line 34
    .line 35
    iget-object v7, v0, Lo7/z3;->d:Ljava/util/Collection;

    .line 36
    .line 37
    iget-object v8, v0, Lo7/z3;->f:Lo7/c4;

    .line 38
    .line 39
    iget-boolean v9, v0, Lo7/z3;->g:Z

    .line 40
    .line 41
    iget-boolean v10, v0, Lo7/z3;->a:Z

    .line 42
    .line 43
    iget v12, v0, Lo7/z3;->e:I

    .line 44
    .line 45
    const/4 v11, 0x1

    .line 46
    invoke-direct/range {v4 .. v12}, Lo7/z3;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo7/c4;ZZZI)V

    .line 47
    .line 48
    .line 49
    move-object v0, v4

    .line 50
    :goto_31
    iput-object v0, p0, Lo7/v1;->p:Lo7/z3;

    .line 51
    .line 52
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_13

    .line 53
    if-eqz v2, :cond_3a

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 57
    .line 58
    .line 59
    :cond_3a
    return-void

    .line 60
    :goto_3b
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_13

    .line 61
    throw v0
.end method

.method public final r(Lo7/z3;)Z
    .registers 4

    .line 1
    iget-object v0, p1, Lo7/z3;->f:Lo7/c4;

    .line 2
    .line 3
    if-nez v0, :cond_12

    .line 4
    .line 5
    iget v0, p1, Lo7/z3;->e:I

    .line 6
    .line 7
    iget-object v1, p0, Lo7/v1;->h:Lo7/a1;

    .line 8
    .line 9
    iget v1, v1, Lo7/a1;->a:I

    .line 10
    .line 11
    if-ge v0, v1, :cond_12

    .line 12
    .line 13
    iget-boolean p1, p1, Lo7/z3;->h:Z

    .line 14
    .line 15
    if-nez p1, :cond_12

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public final request()V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/v1;->p:Lo7/z3;

    .line 2
    .line 3
    iget-boolean v1, v0, Lo7/z3;->a:Z

    .line 4
    .line 5
    if-eqz v1, :cond_e

    .line 6
    .line 7
    iget-object v0, v0, Lo7/z3;->f:Lo7/c4;

    .line 8
    .line 9
    iget-object v0, v0, Lo7/c4;->a:Lo7/u;

    .line 10
    .line 11
    invoke-interface {v0}, Lo7/u4;->request()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    new-instance v0, Lo7/r3;

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-direct {v0, v1}, Lo7/r3;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lo7/v1;->l(Lo7/v3;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final s(Ln7/f1;Lo7/v;Ln7/v0;)V
    .registers 12

    .line 1
    new-instance v0, La5/h;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, v1}, La5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lo7/v1;->t:La5/h;

    .line 9
    .line 10
    iget-object v0, p0, Lo7/v1;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    const/high16 v1, -0x80000000

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v1, :cond_23

    .line 19
    .line 20
    new-instance v2, Lm0/r0;

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    move-object v4, p0

    .line 24
    move-object v5, p1

    .line 25
    move-object v6, p2

    .line 26
    move-object v7, p3

    .line 27
    invoke-direct/range {v2 .. v7}, Lm0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v4, Lo7/v1;->d:Ln7/k1;

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_23
    move-object v4, p0

    .line 37
    return-void
.end method

.method public final t(Ly5/g;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lo7/v1;->p:Lo7/z3;

    .line 2
    .line 3
    iget-boolean v1, v0, Lo7/z3;->a:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1c

    .line 6
    .line 7
    iget-object v0, v0, Lo7/z3;->f:Lo7/c4;

    .line 8
    .line 9
    iget-object v0, v0, Lo7/c4;->a:Lo7/u;

    .line 10
    .line 11
    iget-object v1, p0, Lo7/v1;->b:Ln7/x0;

    .line 12
    .line 13
    iget-object v1, v1, Ln7/x0;->d:Lt7/b;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v2, Lt7/a;

    .line 19
    .line 20
    iget-object v1, v1, Lt7/b;->a:Lcom/google/protobuf/x0;

    .line 21
    .line 22
    invoke-direct {v2, p1, v1}, Lt7/a;-><init>(Ly5/g;Lcom/google/protobuf/x0;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v2}, Lo7/u4;->f(Lt7/a;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1c
    new-instance v0, Lo7/t3;

    .line 30
    .line 31
    invoke-direct {v0, p0, p1}, Lo7/t3;-><init>(Lo7/v1;Ly5/g;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lo7/v1;->l(Lo7/v3;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
