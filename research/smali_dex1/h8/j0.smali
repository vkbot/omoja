.class public final Lh8/j0;
.super Lh8/h0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final n:Lx7/d;


# direct methods
.method public constructor <init>(Lx7/d;Lx7/j;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p2, p3}, Lh8/h0;-><init>(Lx7/j;I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh8/j0;->n:Lx7/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Ln9/b;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lh8/h0;->f:Ln9/b;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lo8/f;->e(Ln9/b;Ln9/b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4c

    .line 8
    .line 9
    iput-object p1, p0, Lh8/h0;->f:Ln9/b;

    .line 10
    .line 11
    instance-of v0, p1, Le8/d;

    .line 12
    .line 13
    if-eqz v0, :cond_38

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Le8/d;

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    invoke-interface {v0, v1}, Le8/c;->h(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_25

    .line 25
    .line 26
    iput v2, p0, Lh8/h0;->k:I

    .line 27
    .line 28
    iput-object v0, p0, Lh8/h0;->g:Le8/g;

    .line 29
    .line 30
    iput-boolean v2, p0, Lh8/h0;->i:Z

    .line 31
    .line 32
    iget-object p1, p0, Lh8/j0;->n:Lx7/d;

    .line 33
    .line 34
    invoke-interface {p1, p0}, Lx7/d;->f(Ln9/b;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_25
    const/4 v2, 0x2

    .line 39
    if-ne v1, v2, :cond_38

    .line 40
    .line 41
    iput v2, p0, Lh8/h0;->k:I

    .line 42
    .line 43
    iput-object v0, p0, Lh8/h0;->g:Le8/g;

    .line 44
    .line 45
    iget-object v0, p0, Lh8/j0;->n:Lx7/d;

    .line 46
    .line 47
    invoke-interface {v0, p0}, Lx7/d;->f(Ln9/b;)V

    .line 48
    .line 49
    .line 50
    iget v0, p0, Lh8/h0;->c:I

    .line 51
    .line 52
    int-to-long v0, v0

    .line 53
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_38
    new-instance v0, Ll8/a;

    .line 58
    .line 59
    iget v1, p0, Lh8/h0;->c:I

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ll8/a;-><init>(I)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lh8/h0;->g:Le8/g;

    .line 65
    .line 66
    iget-object v0, p0, Lh8/j0;->n:Lx7/d;

    .line 67
    .line 68
    invoke-interface {v0, p0}, Lx7/d;->f(Ln9/b;)V

    .line 69
    .line 70
    .line 71
    iget v0, p0, Lh8/h0;->c:I

    .line 72
    .line 73
    int-to-long v0, v0

    .line 74
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 75
    .line 76
    .line 77
    :cond_4c
    return-void
.end method

.method public final j()V
    .registers 13

    .line 1
    iget-object v0, p0, Lh8/j0;->n:Lx7/d;

    .line 2
    .line 3
    iget-object v1, p0, Lh8/h0;->g:Le8/g;

    .line 4
    .line 5
    iget-wide v2, p0, Lh8/h0;->l:J

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    move v5, v4

    .line 9
    :cond_8
    :goto_8
    iget-object v6, p0, Lh8/h0;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    .line 11
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 12
    .line 13
    .line 14
    move-result-wide v6

    .line 15
    :cond_e
    :goto_e
    cmp-long v8, v2, v6

    .line 16
    .line 17
    if-eqz v8, :cond_61

    .line 18
    .line 19
    iget-boolean v9, p0, Lh8/h0;->i:Z

    .line 20
    .line 21
    :try_start_14
    invoke-interface {v1}, Le8/g;->poll()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v10
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_4c

    .line 25
    if-nez v10, :cond_1c

    .line 26
    .line 27
    move v11, v4

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v11, 0x0

    .line 30
    :goto_1d
    invoke-virtual {p0, v9, v11, v0}, Lh8/h0;->i(ZZLx7/d;)Z

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    if-eqz v9, :cond_24

    .line 35
    .line 36
    goto :goto_7f

    .line 37
    :cond_24
    if-eqz v11, :cond_27

    .line 38
    .line 39
    goto :goto_61

    .line 40
    :cond_27
    invoke-interface {v0, v10}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v8, 0x1

    .line 44
    .line 45
    add-long/2addr v2, v8

    .line 46
    iget v8, p0, Lh8/h0;->d:I

    .line 47
    .line 48
    int-to-long v8, v8

    .line 49
    cmp-long v8, v2, v8

    .line 50
    .line 51
    if-nez v8, :cond_e

    .line 52
    .line 53
    const-wide v8, 0x7fffffffffffffffL

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    cmp-long v8, v6, v8

    .line 59
    .line 60
    if-eqz v8, :cond_44

    .line 61
    .line 62
    iget-object v6, p0, Lh8/h0;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 63
    .line 64
    neg-long v7, v2

    .line 65
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v6

    .line 69
    :cond_44
    iget-object v8, p0, Lh8/h0;->f:Ln9/b;

    .line 70
    .line 71
    invoke-interface {v8, v2, v3}, Ln9/b;->d(J)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v2, 0x0

    .line 75
    .line 76
    goto :goto_e

    .line 77
    :catchall_4c
    move-exception v2

    .line 78
    invoke-static {v2}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lh8/h0;->f:Ln9/b;

    .line 82
    .line 83
    invoke-interface {v3}, Ln9/b;->cancel()V

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Le8/g;->clear()V

    .line 87
    .line 88
    .line 89
    invoke-interface {v0, v2}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lh8/h0;->b:Lx7/j;

    .line 93
    .line 94
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_61
    :goto_61
    if-nez v8, :cond_70

    .line 99
    .line 100
    iget-boolean v6, p0, Lh8/h0;->i:Z

    .line 101
    .line 102
    invoke-interface {v1}, Le8/g;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    invoke-virtual {p0, v6, v7, v0}, Lh8/h0;->i(ZZLx7/d;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_70

    .line 111
    .line 112
    goto :goto_7f

    .line 113
    :cond_70
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-ne v5, v6, :cond_80

    .line 118
    .line 119
    iput-wide v2, p0, Lh8/h0;->l:J

    .line 120
    .line 121
    neg-int v5, v5

    .line 122
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-nez v5, :cond_8

    .line 127
    .line 128
    :goto_7f
    return-void

    .line 129
    :cond_80
    move v5, v6

    .line 130
    goto :goto_8
.end method

.method public final k()V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    :cond_1
    iget-boolean v1, p0, Lh8/h0;->h:Z

    .line 3
    .line 4
    if-eqz v1, :cond_6

    .line 5
    .line 6
    goto :goto_2a

    .line 7
    :cond_6
    iget-boolean v1, p0, Lh8/h0;->i:Z

    .line 8
    .line 9
    iget-object v2, p0, Lh8/j0;->n:Lx7/d;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-interface {v2, v3}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    if-eqz v1, :cond_23

    .line 16
    .line 17
    iget-object v0, p0, Lh8/h0;->j:Ljava/lang/Throwable;

    .line 18
    .line 19
    iget-object v1, p0, Lh8/j0;->n:Lx7/d;

    .line 20
    .line 21
    if-eqz v0, :cond_1a

    .line 22
    .line 23
    invoke-interface {v1, v0}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    invoke-interface {v1}, Lx7/d;->a()V

    .line 28
    .line 29
    .line 30
    :goto_1d
    iget-object v0, p0, Lh8/h0;->b:Lx7/j;

    .line 31
    .line 32
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_23
    neg-int v0, v0

    .line 37
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    :goto_2a
    return-void
.end method

.method public final l()V
    .registers 10

    .line 1
    iget-object v0, p0, Lh8/j0;->n:Lx7/d;

    .line 2
    .line 3
    iget-object v1, p0, Lh8/h0;->g:Le8/g;

    .line 4
    .line 5
    iget-wide v2, p0, Lh8/h0;->l:J

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    :cond_7
    :goto_7
    iget-object v5, p0, Lh8/h0;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 11
    .line 12
    .line 13
    move-result-wide v5

    .line 14
    :goto_d
    cmp-long v7, v2, v5

    .line 15
    .line 16
    if-eqz v7, :cond_3e

    .line 17
    .line 18
    :try_start_11
    invoke-interface {v1}, Le8/g;->poll()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v7
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_2c

    .line 22
    iget-boolean v8, p0, Lh8/h0;->h:Z

    .line 23
    .line 24
    if-eqz v8, :cond_1a

    .line 25
    .line 26
    goto :goto_61

    .line 27
    :cond_1a
    if-nez v7, :cond_25

    .line 28
    .line 29
    invoke-interface {v0}, Lx7/d;->a()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lh8/h0;->b:Lx7/j;

    .line 33
    .line 34
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_25
    invoke-interface {v0, v7}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const-wide/16 v7, 0x1

    .line 42
    .line 43
    add-long/2addr v2, v7

    .line 44
    goto :goto_d

    .line 45
    :catchall_2c
    move-exception v1

    .line 46
    invoke-static {v1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lh8/h0;->f:Ln9/b;

    .line 50
    .line 51
    invoke-interface {v2}, Ln9/b;->cancel()V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lh8/h0;->b:Lx7/j;

    .line 58
    .line 59
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3e
    iget-boolean v5, p0, Lh8/h0;->h:Z

    .line 64
    .line 65
    if-eqz v5, :cond_43

    .line 66
    .line 67
    goto :goto_61

    .line 68
    :cond_43
    invoke-interface {v1}, Le8/g;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_52

    .line 73
    .line 74
    invoke-interface {v0}, Lx7/d;->a()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lh8/h0;->b:Lx7/j;

    .line 78
    .line 79
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_52
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-ne v4, v5, :cond_62

    .line 88
    .line 89
    iput-wide v2, p0, Lh8/h0;->l:J

    .line 90
    .line 91
    neg-int v4, v4

    .line 92
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_7

    .line 97
    .line 98
    :goto_61
    return-void

    .line 99
    :cond_62
    move v4, v5

    .line 100
    goto :goto_7
.end method

.method public final poll()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lh8/h0;->g:Le8/g;

    .line 2
    .line 3
    invoke-interface {v0}, Le8/g;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_25

    .line 8
    .line 9
    iget v1, p0, Lh8/h0;->k:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v1, v2, :cond_25

    .line 13
    .line 14
    iget-wide v1, p0, Lh8/h0;->l:J

    .line 15
    .line 16
    const-wide/16 v3, 0x1

    .line 17
    .line 18
    add-long/2addr v1, v3

    .line 19
    iget v3, p0, Lh8/h0;->d:I

    .line 20
    .line 21
    int-to-long v3, v3

    .line 22
    cmp-long v3, v1, v3

    .line 23
    .line 24
    if-nez v3, :cond_23

    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    iput-wide v3, p0, Lh8/h0;->l:J

    .line 29
    .line 30
    iget-object v3, p0, Lh8/h0;->f:Ln9/b;

    .line 31
    .line 32
    invoke-interface {v3, v1, v2}, Ln9/b;->d(J)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_23
    iput-wide v1, p0, Lh8/h0;->l:J

    .line 37
    .line 38
    :cond_25
    return-object v0
.end method
