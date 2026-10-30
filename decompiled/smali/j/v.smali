.class public final Lj/v;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ld0/e;


# static fields
.field public static final w:Lp2/e;


# instance fields
.field public final b:Lj/u;

.field public final c:Ld0/h;

.field public final d:Lj/r;

.field public final e:Landroidx/core/util/Pools$Pool;

.field public final f:Lp2/e;

.field public final g:Lj/r;

.field public final h:Lm/e;

.field public final i:Lm/e;

.field public final j:Lm/e;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public l:Lj/w;

.field public m:Z

.field public n:Z

.field public o:Lj/d0;

.field public p:I

.field public q:Z

.field public r:Lj/z;

.field public s:Z

.field public t:Lj/x;

.field public u:Lj/k;

.field public volatile v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp2/e;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lp2/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lj/v;->w:Lp2/e;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lm/e;Lm/e;Lm/e;Lm/e;Lj/r;Lj/r;Ld0/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lj/u;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p3, v0}, Lj/u;-><init>(Ljava/util/ArrayList;)V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lj/v;->b:Lj/u;

    .line 16
    .line 17
    new-instance p3, Ld0/h;

    .line 18
    .line 19
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, Lj/v;->c:Ld0/h;

    .line 23
    .line 24
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p3, p0, Lj/v;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    iput-object p1, p0, Lj/v;->h:Lm/e;

    .line 32
    .line 33
    iput-object p2, p0, Lj/v;->i:Lm/e;

    .line 34
    .line 35
    iput-object p4, p0, Lj/v;->j:Lm/e;

    .line 36
    .line 37
    iput-object p5, p0, Lj/v;->g:Lj/r;

    .line 38
    .line 39
    iput-object p6, p0, Lj/v;->d:Lj/r;

    .line 40
    .line 41
    iput-object p7, p0, Lj/v;->e:Landroidx/core/util/Pools$Pool;

    .line 42
    .line 43
    sget-object p1, Lj/v;->w:Lp2/e;

    .line 44
    .line 45
    iput-object p1, p0, Lj/v;->f:Lp2/e;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ly/f;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lj/v;->c:Ld0/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Ld0/h;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lj/v;->b:Lj/u;

    .line 8
    .line 9
    iget-object v0, v0, Lj/u;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v1, Lj/t;

    .line 12
    .line 13
    invoke-direct {v1, p1, p2}, Lj/t;-><init>(Ly/f;Ljava/util/concurrent/Executor;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lj/v;->q:Z

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lj/v;->d(I)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lj/s;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, p0, p1, v1}, Lj/s;-><init>(Lj/v;Ly/f;I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-boolean v0, p0, Lj/v;->s:Z

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lj/v;->d(I)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lj/s;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-direct {v0, p0, p1, v1}, Lj/s;-><init>(Lj/v;Ly/f;I)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-boolean p1, p0, Lj/v;->v:Z

    .line 57
    .line 58
    xor-int/2addr p1, v1

    .line 59
    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    .line 60
    .line 61
    invoke-static {p2, p1}, Lc0/g;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    :goto_0
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p1
.end method

.method public final b()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lj/v;->c:Ld0/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Ld0/h;->a()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lj/v;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "Not yet complete!"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lc0/g;->a(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lj/v;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    const-string v2, "Can\'t decrement below 0"

    .line 28
    .line 29
    invoke-static {v2, v1}, Lc0/g;->a(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lj/v;->t:Lj/x;

    .line 35
    .line 36
    invoke-virtual {p0}, Lj/v;->f()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lj/x;->c()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void

    .line 50
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v0
.end method

.method public final c()Ld0/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/v;->c:Ld0/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized d(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lj/v;->e()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const-string v1, "Not yet complete!"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lc0/g;->a(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lj/v;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lj/v;->t:Lj/x;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lj/x;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/v;->s:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lj/v;->q:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lj/v;->v:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public final declared-synchronized f()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lj/v;->l:Lj/w;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lj/v;->b:Lj/u;

    .line 7
    .line 8
    iget-object v0, v0, Lj/u;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lj/v;->l:Lj/w;

    .line 15
    .line 16
    iput-object v0, p0, Lj/v;->t:Lj/x;

    .line 17
    .line 18
    iput-object v0, p0, Lj/v;->o:Lj/d0;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lj/v;->s:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Lj/v;->v:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lj/v;->q:Z

    .line 26
    .line 27
    iget-object v2, p0, Lj/v;->u:Lj/k;

    .line 28
    .line 29
    iget-object v3, v2, Lj/k;->h:Lj/j;

    .line 30
    .line 31
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const/4 v4, 0x1

    .line 33
    :try_start_1
    iput-boolean v4, v3, Lj/j;->a:Z

    .line 34
    .line 35
    invoke-virtual {v3}, Lj/j;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    monitor-exit v3

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Lj/k;->k()V

    .line 43
    .line 44
    .line 45
    :cond_0
    iput-object v0, p0, Lj/v;->u:Lj/k;

    .line 46
    .line 47
    iput-object v0, p0, Lj/v;->r:Lj/z;

    .line 48
    .line 49
    iput v1, p0, Lj/v;->p:I

    .line 50
    .line 51
    iget-object v0, p0, Lj/v;->e:Landroidx/core/util/Pools$Pool;

    .line 52
    .line 53
    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_0

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :try_start_4
    throw v0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    throw v0
.end method

.method public final declared-synchronized g(Ly/f;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lj/v;->c:Ld0/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Ld0/h;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lj/v;->b:Lj/u;

    .line 8
    .line 9
    iget-object v0, v0, Lj/u;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v1, Lj/t;

    .line 12
    .line 13
    sget-object v2, Lc0/g;->b:Lc0/f;

    .line 14
    .line 15
    invoke-direct {v1, p1, v2}, Lj/t;-><init>(Ly/f;Ljava/util/concurrent/Executor;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lj/v;->b:Lj/u;

    .line 22
    .line 23
    iget-object p1, p1, Lj/u;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p0}, Lj/v;->e()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lj/v;->v:Z

    .line 40
    .line 41
    iget-object v0, p0, Lj/v;->u:Lj/k;

    .line 42
    .line 43
    iput-boolean p1, v0, Lj/k;->B:Z

    .line 44
    .line 45
    iget-object p1, v0, Lj/k;->z:Lj/g;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-interface {p1}, Lj/g;->cancel()V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lj/v;->g:Lj/r;

    .line 53
    .line 54
    iget-object v0, p0, Lj/v;->l:Lj/w;

    .line 55
    .line 56
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    iget-object v1, p1, Lj/r;->a:Lcom/bumptech/glide/f;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object v1, v1, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .line 76
    .line 77
    :cond_2
    :try_start_2
    monitor-exit p1

    .line 78
    :goto_0
    iget-boolean p1, p0, Lj/v;->q:Z

    .line 79
    .line 80
    if-nez p1, :cond_3

    .line 81
    .line 82
    iget-boolean p1, p0, Lj/v;->s:Z

    .line 83
    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    :goto_1
    iget-object p1, p0, Lj/v;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    invoke-virtual {p0}, Lj/v;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    :cond_4
    :goto_2
    monitor-exit p0

    .line 105
    return-void

    .line 106
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 107
    throw p1
.end method
