.class public final Li8/b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lz7/a;
.implements Lx7/f;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lh8/z;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Li8/b;->b:I

    .line 10
    iput-object p1, p0, Li8/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Lx7/f;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Li8/b;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Li8/b;->c:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget v0, p0, Li8/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li8/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lh8/z;

    .line 9
    .line 10
    iget v1, v0, Lh8/z;->c:I

    .line 11
    .line 12
    iget-object v2, v0, Lh8/z;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    iget-object v3, v0, Lh8/z;->e:Lc8/c;

    .line 15
    .line 16
    invoke-virtual {v3, p0}, Lc8/c;->b(Lz7/a;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const-wide/16 v4, 0x1

    .line 24
    .line 25
    const v6, 0x7fffffff

    .line 26
    .line 27
    .line 28
    if-nez v3, :cond_6

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v7, 0x1

    .line 32
    invoke-virtual {v0, v3, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-eqz v8, :cond_6

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    move v3, v7

    .line 45
    :cond_0
    iget-object v2, v0, Lh8/z;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ll8/b;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2}, Ll8/b;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    :cond_1
    iget-object v1, v0, Lh8/z;->g:Lp8/b;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v0, v0, Lh8/z;->b:Lx7/d;

    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    invoke-interface {v0, v1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-interface {v0}, Lx7/d;->a()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    if-eq v1, v6, :cond_4

    .line 85
    .line 86
    iget-object v1, v0, Lh8/z;->j:Ln9/b;

    .line 87
    .line 88
    invoke-interface {v1, v4, v5}, Ln9/b;->d(J)V

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_5

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual {v0}, Lh8/z;->h()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 103
    .line 104
    .line 105
    if-eq v1, v6, :cond_7

    .line 106
    .line 107
    iget-object v1, v0, Lh8/z;->j:Ln9/b;

    .line 108
    .line 109
    invoke-interface {v1, v4, v5}, Ln9/b;->d(J)V

    .line 110
    .line 111
    .line 112
    :cond_7
    invoke-virtual {v0}, Lh8/z;->c()V

    .line 113
    .line 114
    .line 115
    :goto_0
    return-void

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sget-object v1, Lc8/a;->b:Lc8/a;

    .line 121
    .line 122
    if-eq v0, v1, :cond_9

    .line 123
    .line 124
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lz7/a;

    .line 129
    .line 130
    if-eq v0, v1, :cond_9

    .line 131
    .line 132
    :try_start_0
    iget-object v1, p0, Li8/b;->c:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v1, Lx7/f;

    .line 135
    .line 136
    invoke-interface {v1}, Lx7/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    if-eqz v0, :cond_9

    .line 140
    .line 141
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catchall_0
    move-exception v1

    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 149
    .line 150
    .line 151
    :cond_8
    throw v1

    .line 152
    :cond_9
    :goto_1
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lz7/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc8/a;->d(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Li8/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh8/z;

    .line 4
    .line 5
    iget-object v1, v0, Lh8/z;->e:Lc8/c;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Lc8/c;->b(Lz7/a;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_6

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_6

    .line 23
    .line 24
    iget-object v3, v0, Lh8/z;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    move v1, v2

    .line 33
    :cond_0
    iget-object v2, v0, Lh8/z;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    cmp-long v2, v2, v4

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    iget-object v2, v0, Lh8/z;->b:Lx7/d;

    .line 46
    .line 47
    invoke-interface {v2, p1}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, v0, Lh8/z;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ll8/b;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Ll8/b;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    :cond_1
    iget-object p1, v0, Lh8/z;->g:Lp8/b;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object v0, v0, Lh8/z;->b:Lx7/d;

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    invoke-interface {v0, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    invoke-interface {v0}, Lx7/d;->a()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    iget-object p1, v0, Lh8/z;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 90
    .line 91
    const-wide/16 v1, 0x1

    .line 92
    .line 93
    invoke-static {p1, v1, v2}, Le3/d;->p(Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 94
    .line 95
    .line 96
    iget p1, v0, Lh8/z;->c:I

    .line 97
    .line 98
    const v3, 0x7fffffff

    .line 99
    .line 100
    .line 101
    if-eq p1, v3, :cond_5

    .line 102
    .line 103
    iget-object p1, v0, Lh8/z;->j:Ln9/b;

    .line 104
    .line 105
    invoke-interface {p1, v1, v2}, Ln9/b;->d(J)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {v0}, Lh8/z;->i()Ll8/b;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    monitor-enter v1

    .line 114
    :try_start_0
    invoke-virtual {v1, p1}, Ll8/b;->offer(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_7

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    throw p1

    .line 128
    :cond_6
    invoke-virtual {v0}, Lh8/z;->i()Ll8/b;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    monitor-enter v1

    .line 133
    :try_start_2
    invoke-virtual {v1, p1}, Ll8/b;->offer(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    iget-object p1, v0, Lh8/z;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_7

    .line 147
    .line 148
    :goto_1
    return-void

    .line 149
    :cond_7
    invoke-virtual {v0}, Lh8/z;->h()V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :catchall_1
    move-exception p1

    .line 154
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    throw p1
.end method

.method public final dispose()V
    .locals 1

    .line 1
    iget v0, p0, Li8/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lc8/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-static {p0}, Lc8/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget v0, p0, Li8/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li8/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lh8/z;

    .line 9
    .line 10
    iget-object v1, v0, Lh8/z;->e:Lc8/c;

    .line 11
    .line 12
    invoke-virtual {v1, p0}, Lc8/c;->b(Lz7/a;)Z

    .line 13
    .line 14
    .line 15
    iget-object v2, v0, Lh8/z;->g:Lp8/b;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {v2, p1}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object p1, v0, Lh8/z;->j:Ln9/b;

    .line 27
    .line 28
    invoke-interface {p1}, Ln9/b;->cancel()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lc8/c;->dispose()V

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Lh8/z;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lh8/z;->c()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :pswitch_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v1, Lc8/a;->b:Lc8/a;

    .line 52
    .line 53
    if-eq v0, v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lz7/a;

    .line 60
    .line 61
    if-eq v0, v1, :cond_2

    .line 62
    .line 63
    :try_start_0
    iget-object v1, p0, Li8/b;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Lx7/f;

    .line 66
    .line 67
    invoke-interface {v1, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 80
    .line 81
    .line 82
    :cond_1
    throw p1

    .line 83
    :cond_2
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_1
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Li8/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicReference;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    const-class v0, Li8/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicReference;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, "{"

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, "}"

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
