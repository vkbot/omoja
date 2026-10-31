.class public final Lh8/i0;
.super Lh8/h0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final n:Le8/a;

.field public o:J


# direct methods
.method public constructor <init>(Le8/a;Lx7/j;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p2, p3}, Lh8/h0;-><init>(Lx7/j;I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh8/i0;->n:Le8/a;

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
    iget-object p1, p0, Lh8/i0;->n:Le8/a;

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
    iget-object v0, p0, Lh8/i0;->n:Le8/a;

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
    iget-object v0, p0, Lh8/i0;->n:Le8/a;

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
    .registers 15

    .line 1
    iget-object v0, p0, Lh8/i0;->n:Le8/a;

    .line 2
    .line 3
    iget-object v1, p0, Lh8/h0;->g:Le8/g;

    .line 4
    .line 5
    iget-wide v2, p0, Lh8/h0;->l:J

    .line 6
    .line 7
    iget-wide v4, p0, Lh8/i0;->o:J

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    move v7, v6

    .line 11
    :cond_a
    :goto_a
    iget-object v8, p0, Lh8/h0;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 14
    .line 15
    .line 16
    move-result-wide v8

    .line 17
    :cond_10
    :goto_10
    cmp-long v10, v2, v8

    .line 18
    .line 19
    if-eqz v10, :cond_57

    .line 20
    .line 21
    iget-boolean v11, p0, Lh8/h0;->i:Z

    .line 22
    .line 23
    :try_start_16
    invoke-interface {v1}, Le8/g;->poll()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v12
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_42

    .line 27
    if-nez v12, :cond_1e

    .line 28
    .line 29
    move v13, v6

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 v13, 0x0

    .line 32
    :goto_1f
    invoke-virtual {p0, v11, v13, v0}, Lh8/h0;->i(ZZLx7/d;)Z

    .line 33
    .line 34
    .line 35
    move-result v11

    .line 36
    if-eqz v11, :cond_26

    .line 37
    .line 38
    goto :goto_77

    .line 39
    :cond_26
    if-eqz v13, :cond_29

    .line 40
    .line 41
    goto :goto_57

    .line 42
    :cond_29
    invoke-interface {v0, v12}, Le8/a;->g(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    const-wide/16 v11, 0x1

    .line 47
    .line 48
    if-eqz v10, :cond_32

    .line 49
    .line 50
    add-long/2addr v2, v11

    .line 51
    :cond_32
    add-long/2addr v4, v11

    .line 52
    iget v10, p0, Lh8/h0;->d:I

    .line 53
    .line 54
    int-to-long v10, v10

    .line 55
    cmp-long v10, v4, v10

    .line 56
    .line 57
    if-nez v10, :cond_10

    .line 58
    .line 59
    iget-object v10, p0, Lh8/h0;->f:Ln9/b;

    .line 60
    .line 61
    invoke-interface {v10, v4, v5}, Ln9/b;->d(J)V

    .line 62
    .line 63
    .line 64
    const-wide/16 v4, 0x0

    .line 65
    .line 66
    goto :goto_10

    .line 67
    :catchall_42
    move-exception v2

    .line 68
    invoke-static {v2}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lh8/h0;->f:Ln9/b;

    .line 72
    .line 73
    invoke-interface {v3}, Ln9/b;->cancel()V

    .line 74
    .line 75
    .line 76
    invoke-interface {v1}, Le8/g;->clear()V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v2}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lh8/h0;->b:Lx7/j;

    .line 83
    .line 84
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_57
    :goto_57
    if-nez v10, :cond_66

    .line 89
    .line 90
    iget-boolean v8, p0, Lh8/h0;->i:Z

    .line 91
    .line 92
    invoke-interface {v1}, Le8/g;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    invoke-virtual {p0, v8, v9, v0}, Lh8/h0;->i(ZZLx7/d;)Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_66

    .line 101
    .line 102
    goto :goto_77

    .line 103
    :cond_66
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-ne v7, v8, :cond_78

    .line 108
    .line 109
    iput-wide v2, p0, Lh8/h0;->l:J

    .line 110
    .line 111
    iput-wide v4, p0, Lh8/i0;->o:J

    .line 112
    .line 113
    neg-int v7, v7

    .line 114
    invoke-virtual {p0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-nez v7, :cond_a

    .line 119
    .line 120
    :goto_77
    return-void

    .line 121
    :cond_78
    move v7, v8

    .line 122
    goto :goto_a
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
    iget-object v2, p0, Lh8/i0;->n:Le8/a;

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
    iget-object v1, p0, Lh8/i0;->n:Le8/a;

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
    iget-object v0, p0, Lh8/i0;->n:Le8/a;

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
    :cond_d
    :goto_d
    cmp-long v7, v2, v5

    .line 15
    .line 16
    if-eqz v7, :cond_41

    .line 17
    .line 18
    :try_start_11
    invoke-interface {v1}, Le8/g;->poll()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v7
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_2f

    .line 22
    iget-boolean v8, p0, Lh8/h0;->h:Z

    .line 23
    .line 24
    if-eqz v8, :cond_1a

    .line 25
    .line 26
    goto :goto_64

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
    invoke-interface {v0, v7}, Le8/a;->g(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_d

    .line 43
    .line 44
    const-wide/16 v7, 0x1

    .line 45
    .line 46
    add-long/2addr v2, v7

    .line 47
    goto :goto_d

    .line 48
    :catchall_2f
    move-exception v1

    .line 49
    invoke-static {v1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lh8/h0;->f:Ln9/b;

    .line 53
    .line 54
    invoke-interface {v2}, Ln9/b;->cancel()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lh8/h0;->b:Lx7/j;

    .line 61
    .line 62
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_41
    iget-boolean v5, p0, Lh8/h0;->h:Z

    .line 67
    .line 68
    if-eqz v5, :cond_46

    .line 69
    .line 70
    goto :goto_64

    .line 71
    :cond_46
    invoke-interface {v1}, Le8/g;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_55

    .line 76
    .line 77
    invoke-interface {v0}, Lx7/d;->a()V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lh8/h0;->b:Lx7/j;

    .line 81
    .line 82
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_55
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-ne v4, v5, :cond_65

    .line 91
    .line 92
    iput-wide v2, p0, Lh8/h0;->l:J

    .line 93
    .line 94
    neg-int v4, v4

    .line 95
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-nez v4, :cond_7

    .line 100
    .line 101
    :goto_64
    return-void

    .line 102
    :cond_65
    move v4, v5

    .line 103
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
    iget-wide v1, p0, Lh8/i0;->o:J

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
    iput-wide v3, p0, Lh8/i0;->o:J

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
    iput-wide v1, p0, Lh8/i0;->o:J

    .line 37
    .line 38
    :cond_25
    return-object v0
.end method
