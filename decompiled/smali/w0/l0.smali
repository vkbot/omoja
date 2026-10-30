.class public final Lw0/l0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final b:Lz3/f;

.field public final c:Ln/p;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:J

.field public final f:Lw0/n0;

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile i:Z

.field public volatile j:Z

.field public volatile k:Z

.field public l:Ljava/lang/String;

.field public m:Lw0/j0;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:Lw0/w0;


# direct methods
.method public constructor <init>(Lz3/f;Ln/p;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lw0/n0;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lw0/m0;->b:Lw0/m0;

    .line 10
    .line 11
    iput-object v1, v0, Lw0/n0;->a:Lw0/m0;

    .line 12
    .line 13
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 14
    .line 15
    iput-object v1, v0, Lw0/n0;->b:Ljava/util/List;

    .line 16
    .line 17
    iput-object v1, v0, Lw0/n0;->d:Ljava/util/List;

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    iput-object v1, v0, Lw0/n0;->e:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, v0, Lw0/n0;->f:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, v0, Lw0/n0;->g:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p0, Lw0/l0;->f:Lw0/n0;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lw0/l0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lw0/l0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    .line 43
    iput-object v1, p0, Lw0/l0;->l:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v1, p0, Lw0/l0;->n:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lw0/l0;->q:I

    .line 49
    .line 50
    iput-object p1, p0, Lw0/l0;->b:Lz3/f;

    .line 51
    .line 52
    iput-object p2, p0, Lw0/l0;->c:Ln/p;

    .line 53
    .line 54
    iput-object p3, p0, Lw0/l0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 55
    .line 56
    const-wide/16 p1, 0x2710

    .line 57
    .line 58
    iput-wide p1, p0, Lw0/l0;->e:J

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final S()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lw0/l0;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lw0/l0;->k:Z

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lw0/l0;->s:Lw0/w0;

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lw0/l0;->m:Lw0/j0;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    iget-object v0, p0, Lw0/l0;->b:Lz3/f;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lz3/f;->j()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lw0/l0;->n:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p0, Lw0/l0;->b:Lz3/f;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lz3/f;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget v0, p0, Lw0/l0;->o:I

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    iput v0, p0, Lw0/l0;->o:I

    .line 50
    .line 51
    iget-object v1, p0, Lw0/l0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput v1, p0, Lw0/l0;->p:I

    .line 58
    .line 59
    iget-object v2, p0, Lw0/l0;->b:Lz3/f;

    .line 60
    .line 61
    iget-object v3, p0, Lw0/l0;->n:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {v3}, Lz3/f;->i(Ljava/lang/String;)Lw0/j0;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iput-object v2, p0, Lw0/l0;->m:Lw0/j0;

    .line 71
    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    iget-object v2, v2, Lw0/j0;->a:Lcom/example/navistart/cores/BTProxy;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    iput-boolean v3, p0, Lw0/l0;->r:Z

    .line 78
    .line 79
    new-instance v4, Lw0/i0;

    .line 80
    .line 81
    invoke-direct {v4, p0, v0, v1}, Lw0/i0;-><init>(Lw0/l0;II)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v2, v4}, Lcom/example/navistart/cores/BTProxy;->setListener(Lcom/example/navistart/cores/BTProxy$Listener;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0, v1, v3}, Lw0/l0;->h0(III)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    sget-object v2, Lw0/k0;->c:Lw0/k0;

    .line 92
    .line 93
    invoke-virtual {p0, v2, v0, v1}, Lw0/l0;->b(Lw0/k0;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catch_0
    iget v0, p0, Lw0/l0;->q:I

    .line 98
    .line 99
    invoke-virtual {p0}, Lw0/l0;->c0()V

    .line 100
    .line 101
    .line 102
    sget-object v1, Lw0/k0;->c:Lw0/k0;

    .line 103
    .line 104
    invoke-virtual {p0, v1, v0}, Lw0/l0;->V(Lw0/k0;I)V

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_0
    return-void
.end method

.method public final V(Lw0/k0;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Lw0/l0;->c(I)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lw0/l0;->i:Z

    .line 10
    .line 11
    const/4 p2, -0x1

    .line 12
    iput p2, p0, Lw0/l0;->q:I

    .line 13
    .line 14
    iget-object p2, p0, Lw0/l0;->f:Lw0/n0;

    .line 15
    .line 16
    invoke-virtual {p2}, Lw0/n0;->c()V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lw0/l0;->c:Ln/p;

    .line 20
    .line 21
    iget-object p2, p2, Ln/p;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p2, Lw0/x;

    .line 24
    .line 25
    invoke-virtual {p2}, Lw0/x;->r()Lw0/g1;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/16 v1, 0xd

    .line 30
    .line 31
    new-array v1, v1, [B

    .line 32
    .line 33
    fill-array-data v1, :array_0

    .line 34
    .line 35
    .line 36
    const/16 v2, 0x8

    .line 37
    .line 38
    new-array v3, v2, [B

    .line 39
    .line 40
    fill-array-data v3, :array_1

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v3, 0x6

    .line 48
    new-array v3, v3, [B

    .line 49
    .line 50
    fill-array-data v3, :array_2

    .line 51
    .line 52
    .line 53
    new-array v2, v2, [B

    .line 54
    .line 55
    fill-array-data v2, :array_3

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lw0/g1;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lw0/k0;->b:Lw0/k0;

    .line 74
    .line 75
    if-ne p1, v0, :cond_1

    .line 76
    .line 77
    const p1, 0x7f1304a3

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    sget-object v0, Lw0/k0;->d:Lw0/k0;

    .line 82
    .line 83
    if-ne p1, v0, :cond_2

    .line 84
    .line 85
    const p1, 0x7f1304a0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const p1, 0x7f1304a2

    .line 90
    .line 91
    .line 92
    :goto_0
    iget-object v0, p2, Lw0/x;->m:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p2, p1}, Lw0/x;->f(Lw0/x;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    nop

    .line 103
    :array_0
    .array-data 1
        0xbt
        0x4at
        0x57t
        -0x10t
        0x4et
        -0x63t
        -0x3ct
        -0x77t
        0x14t
        0x40t
        0x54t
        -0x5t
        0x46t
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    nop

    .line 115
    :array_1
    .array-data 1
        0x7bt
        0x22t
        0x38t
        -0x62t
        0x2bt
        -0x3et
        -0x4ct
        -0x5t
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_2
    .array-data 1
        0x31t
        -0x9t
        0x4bt
        0x24t
        -0x35t
        0x1ft
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    nop

    .line 131
    :array_3
    .array-data 1
        0x43t
        -0x6et
        0x2at
        0x57t
        -0x5ct
        0x71t
        -0x7ft
        0xet
    .end array-data
.end method

.method public final b(Lw0/k0;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Lw0/l0;->y(II)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget p2, p0, Lw0/l0;->q:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lw0/l0;->c0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lw0/l0;->V(Lw0/k0;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw0/l0;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lw0/l0;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lw0/l0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lw0/l0;->c:Ln/p;

    .line 18
    .line 19
    iget-object v0, p1, Ln/p;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lw0/x;

    .line 22
    .line 23
    iget-boolean v0, v0, Lw0/x;->T:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object p1, p1, Ln/p;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lw0/x;

    .line 30
    .line 31
    iget-boolean p1, p1, Lw0/x;->o:Z

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public final c0()V
    .locals 3

    .line 1
    iget v0, p0, Lw0/l0;->o:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lw0/l0;->o:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lw0/l0;->s:Lw0/w0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lw0/l0;->r:Z

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    iput-object v1, p0, Lw0/l0;->n:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Lw0/l0;->m:Lw0/j0;

    .line 18
    .line 19
    iput-object v0, p0, Lw0/l0;->m:Lw0/j0;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object v2, v1, Lw0/j0;->b:Ls1/x0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    :try_start_1
    iget-object v1, v1, Lw0/j0;->a:Lcom/example/navistart/cores/BTProxy;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Lcom/example/navistart/cores/BTProxy;->setListener(Lcom/example/navistart/cores/BTProxy$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :try_start_2
    invoke-virtual {v2}, Ls1/x0;->run()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    invoke-virtual {v2}, Ls1/x0;->run()V

    .line 36
    .line 37
    .line 38
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    :catch_0
    :cond_0
    return-void
.end method

.method public final declared-synchronized close()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lw0/l0;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lw0/l0;->i0()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lw0/l0;->j:Z

    .line 13
    .line 14
    iget-object v0, p0, Lw0/l0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lw0/l0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    .line 21
    new-instance v1, Lw0/e0;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p0, v2}, Lw0/e0;-><init>(Lw0/l0;I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lw0/l0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw v0
.end method

.method public final declared-synchronized d0(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object p2, p0, Lw0/l0;->l:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lw0/l0;->l:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lw0/l0;->f0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :cond_1
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public final declared-synchronized e0(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lw0/l0;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    :try_start_1
    const-string p1, ""

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    iget-boolean v0, p0, Lw0/l0;->k:Z

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lw0/l0;->l:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    new-instance p1, Lw0/e0;

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    invoke-direct {p1, p0, v0}, Lw0/e0;-><init>(Lw0/l0;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lw0/l0;->g0(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .line 48
    .line 49
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :try_start_5
    throw p1

    .line 55
    :cond_2
    iput-object p1, p0, Lw0/l0;->l:Ljava/lang/String;

    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lw0/l0;->k:Z

    .line 59
    .line 60
    iget-object p1, p0, Lw0/l0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p0}, Lw0/l0;->i0()V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lw0/f0;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-direct {v0, p0, p1, v1}, Lw0/f0;-><init>(Lw0/l0;II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lw0/l0;->g0(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    .line 77
    .line 78
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 81
    throw p1
.end method

.method public final declared-synchronized f0(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lw0/l0;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lw0/l0;->l:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lw0/l0;->l:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :try_start_2
    const-string p1, ""

    .line 37
    .line 38
    iput-object p1, p0, Lw0/l0;->l:Ljava/lang/String;

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lw0/l0;->k:Z

    .line 42
    .line 43
    iget-object p1, p0, Lw0/l0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0}, Lw0/l0;->i0()V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lw0/f0;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-direct {v0, p0, p1, v1}, Lw0/f0;-><init>(Lw0/l0;II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lw0/l0;->g0(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    throw p1
.end method

.method public final declared-synchronized g0(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lw0/l0;->j:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lw0/l0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1
.end method

.method public final h0(III)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lw0/l0;->y(II)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lw0/l0;->s:Lw0/w0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lw0/l0;->j0()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    sget-object p3, Lw0/k0;->c:Lw0/k0;

    .line 19
    .line 20
    invoke-virtual {p0, p3, p1, p2}, Lw0/l0;->b(Lw0/k0;II)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lw0/l0;->m:Lw0/j0;

    .line 25
    .line 26
    iget-object v0, v0, Lw0/j0;->a:Lcom/example/navistart/cores/BTProxy;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/example/navistart/cores/BTProxy;->requestContacts()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lw0/l0;->r:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    iget-object v2, p0, Lw0/l0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    const/16 v0, 0x14

    .line 41
    .line 42
    if-lt p3, v0, :cond_2

    .line 43
    .line 44
    :try_start_1
    sget-object p3, Lw0/k0;->c:Lw0/k0;

    .line 45
    .line 46
    invoke-virtual {p0, p3, p1, p2}, Lw0/l0;->b(Lw0/k0;II)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    new-instance v0, Lw0/g0;

    .line 51
    .line 52
    invoke-direct {v0, p0, p1, p2, p3}, Lw0/g0;-><init>(Lw0/l0;III)V

    .line 53
    .line 54
    .line 55
    const-wide/16 v3, 0x1f4

    .line 56
    .line 57
    invoke-interface {v2, v0, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    new-instance p3, Lp0/f;

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-direct {p3, p0, p1, p2, v0}, Lp0/f;-><init>(Ljava/lang/Object;III)V

    .line 65
    .line 66
    .line 67
    iget-wide v3, p0, Lw0/l0;->e:J

    .line 68
    .line 69
    invoke-interface {v2, p3, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catch_0
    sget-object p3, Lw0/k0;->c:Lw0/k0;

    .line 74
    .line 75
    invoke-virtual {p0, p3, p1, p2}, Lw0/l0;->b(Lw0/k0;II)V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_0
    return-void
.end method

.method public final declared-synchronized i0()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lw0/l0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lw0/l0;->i:Z

    .line 9
    .line 10
    new-instance v0, Lw0/e0;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, p0, v1}, Lw0/e0;-><init>(Lw0/l0;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lw0/l0;->g0(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v0
.end method

.method public final j0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lw0/l0;->n:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lw0/l0;->b:Lz3/f;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lz3/f;->j()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final y(II)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw0/l0;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lw0/l0;->k:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lw0/l0;->o:I

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lw0/l0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-ne p2, p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method
