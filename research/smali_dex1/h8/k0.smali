.class public final Lh8/k0;
.super Lo8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/d;


# instance fields
.field public final b:Lx7/d;

.field public final c:Le8/f;

.field public final d:Lb8/a;

.field public e:Ln9/b;

.field public volatile f:Z

.field public volatile g:Z

.field public h:Ljava/lang/Throwable;

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public j:Z


# direct methods
.method public constructor <init>(Lx7/d;IZLw7/c;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lh8/k0;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    .line 11
    iput-object p1, p0, Lh8/k0;->b:Lx7/d;

    .line 12
    .line 13
    iput-object p4, p0, Lh8/k0;->d:Lb8/a;

    .line 14
    .line 15
    if-eqz p3, :cond_16

    .line 16
    .line 17
    new-instance p1, Ll8/b;

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ll8/b;-><init>(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1b

    .line 23
    :cond_16
    new-instance p1, Ll8/a;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ll8/a;-><init>(I)V

    .line 26
    .line 27
    .line 28
    :goto_1b
    iput-object p1, p0, Lh8/k0;->c:Le8/f;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lh8/k0;->g:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lh8/k0;->j:Z

    .line 5
    .line 6
    if-eqz v0, :cond_d

    .line 7
    .line 8
    iget-object v0, p0, Lh8/k0;->b:Lx7/d;

    .line 9
    .line 10
    invoke-interface {v0}, Lx7/d;->a()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    invoke-virtual {p0}, Lh8/k0;->j()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final cancel()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lh8/k0;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_17

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lh8/k0;->f:Z

    .line 7
    .line 8
    iget-object v0, p0, Lh8/k0;->e:Ln9/b;

    .line 9
    .line 10
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_17

    .line 18
    .line 19
    iget-object v0, p0, Lh8/k0;->c:Le8/f;

    .line 20
    .line 21
    invoke-interface {v0}, Le8/g;->clear()V

    .line 22
    .line 23
    .line 24
    :cond_17
    return-void
.end method

.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lh8/k0;->c:Le8/f;

    .line 2
    .line 3
    invoke-interface {v0}, Le8/g;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(J)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lh8/k0;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_12

    .line 4
    .line 5
    invoke-static {p1, p2}, Lo8/f;->c(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 10
    .line 11
    iget-object v0, p0, Lh8/k0;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-static {v0, p1, p2}, Le3/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lh8/k0;->j()V

    .line 17
    .line 18
    .line 19
    :cond_12
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lh8/k0;->c:Le8/f;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Le8/g;->offer(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_25

    .line 8
    .line 9
    iget-object p1, p0, Lh8/k0;->e:Ln9/b;

    .line 10
    .line 11
    invoke-interface {p1}, Ln9/b;->cancel()V

    .line 12
    .line 13
    .line 14
    new-instance p1, La8/d;

    .line 15
    .line 16
    const-string v0, "Buffer is full"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :try_start_14
    iget-object v0, p0, Lh8/k0;->d:Lb8/a;

    .line 22
    .line 23
    invoke-interface {v0}, Lb8/a;->run()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    .line 24
    .line 25
    .line 26
    goto :goto_21

    .line 27
    :catchall_1a
    move-exception v0

    .line 28
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 32
    .line 33
    .line 34
    :goto_21
    invoke-virtual {p0, p1}, Lh8/k0;->onError(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_25
    iget-boolean p1, p0, Lh8/k0;->j:Z

    .line 39
    .line 40
    if-eqz p1, :cond_30

    .line 41
    .line 42
    iget-object p1, p0, Lh8/k0;->b:Lx7/d;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-interface {p1, v0}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    invoke-virtual {p0}, Lh8/k0;->j()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final f(Ln9/b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lh8/k0;->e:Ln9/b;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lo8/f;->e(Ln9/b;Ln9/b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_17

    .line 8
    .line 9
    iput-object p1, p0, Lh8/k0;->e:Ln9/b;

    .line 10
    .line 11
    iget-object v0, p0, Lh8/k0;->b:Lx7/d;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lx7/d;->f(Ln9/b;)V

    .line 14
    .line 15
    .line 16
    const-wide v0, 0x7fffffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 22
    .line 23
    .line 24
    :cond_17
    return-void
.end method

.method public final h(I)I
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lh8/k0;->j:Z

    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    return p1
.end method

.method public final i(ZZLx7/d;)Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lh8/k0;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_b

    .line 5
    .line 6
    iget-object p1, p0, Lh8/k0;->c:Le8/f;

    .line 7
    .line 8
    invoke-interface {p1}, Le8/g;->clear()V

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_b
    if-eqz p1, :cond_20

    .line 13
    .line 14
    iget-object p1, p0, Lh8/k0;->h:Ljava/lang/Throwable;

    .line 15
    .line 16
    if-eqz p1, :cond_1a

    .line 17
    .line 18
    iget-object p2, p0, Lh8/k0;->c:Le8/f;

    .line 19
    .line 20
    invoke-interface {p2}, Le8/g;->clear()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p3, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_1a
    if-eqz p2, :cond_20

    .line 28
    .line 29
    invoke-interface {p3}, Lx7/d;->a()V

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lh8/k0;->c:Le8/f;

    .line 2
    .line 3
    invoke-interface {v0}, Le8/g;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final j()V
    .registers 15

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_6b

    .line 6
    .line 7
    iget-object v0, p0, Lh8/k0;->c:Le8/f;

    .line 8
    .line 9
    iget-object v1, p0, Lh8/k0;->b:Lx7/d;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    move v3, v2

    .line 13
    :cond_c
    iget-boolean v4, p0, Lh8/k0;->g:Z

    .line 14
    .line 15
    invoke-interface {v0}, Le8/g;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual {p0, v4, v5, v1}, Lh8/k0;->i(ZZLx7/d;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_19

    .line 24
    .line 25
    goto :goto_6b

    .line 26
    :cond_19
    iget-object v4, p0, Lh8/k0;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    const-wide/16 v6, 0x0

    .line 33
    .line 34
    move-wide v8, v6

    .line 35
    :goto_22
    cmp-long v10, v8, v4

    .line 36
    .line 37
    if-eqz v10, :cond_42

    .line 38
    .line 39
    iget-boolean v11, p0, Lh8/k0;->g:Z

    .line 40
    .line 41
    invoke-interface {v0}, Le8/g;->poll()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    if-nez v12, :cond_30

    .line 46
    .line 47
    move v13, v2

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    const/4 v13, 0x0

    .line 50
    :goto_31
    invoke-virtual {p0, v11, v13, v1}, Lh8/k0;->i(ZZLx7/d;)Z

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    if-eqz v11, :cond_38

    .line 55
    .line 56
    goto :goto_6b

    .line 57
    :cond_38
    if-eqz v13, :cond_3b

    .line 58
    .line 59
    goto :goto_42

    .line 60
    :cond_3b
    invoke-interface {v1, v12}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const-wide/16 v10, 0x1

    .line 64
    .line 65
    add-long/2addr v8, v10

    .line 66
    goto :goto_22

    .line 67
    :cond_42
    :goto_42
    if-nez v10, :cond_51

    .line 68
    .line 69
    iget-boolean v10, p0, Lh8/k0;->g:Z

    .line 70
    .line 71
    invoke-interface {v0}, Le8/g;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    invoke-virtual {p0, v10, v11, v1}, Lh8/k0;->i(ZZLx7/d;)Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-eqz v10, :cond_51

    .line 80
    .line 81
    goto :goto_6b

    .line 82
    :cond_51
    cmp-long v6, v8, v6

    .line 83
    .line 84
    if-eqz v6, :cond_64

    .line 85
    .line 86
    const-wide v6, 0x7fffffffffffffffL

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    cmp-long v4, v4, v6

    .line 92
    .line 93
    if-eqz v4, :cond_64

    .line 94
    .line 95
    iget-object v4, p0, Lh8/k0;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    .line 97
    neg-long v5, v8

    .line 98
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 99
    .line 100
    .line 101
    :cond_64
    neg-int v3, v3

    .line 102
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_c

    .line 107
    .line 108
    :cond_6b
    :goto_6b
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lh8/k0;->h:Ljava/lang/Throwable;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lh8/k0;->g:Z

    .line 5
    .line 6
    iget-boolean v0, p0, Lh8/k0;->j:Z

    .line 7
    .line 8
    if-eqz v0, :cond_f

    .line 9
    .line 10
    iget-object v0, p0, Lh8/k0;->b:Lx7/d;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    invoke-virtual {p0}, Lh8/k0;->j()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lh8/k0;->c:Le8/f;

    .line 2
    .line 3
    invoke-interface {v0}, Le8/g;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
