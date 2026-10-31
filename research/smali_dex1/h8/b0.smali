.class public final Lh8/b0;
.super Lo8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/d;


# instance fields
.field public final b:Lx7/d;

.field public final c:Lb8/c;

.field public final d:I

.field public final e:I

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field public g:Ln9/b;

.field public h:Le8/g;

.field public volatile i:Z

.field public volatile j:Z

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;

.field public l:Ljava/util/Iterator;

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Lx7/d;Lc5/e;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh8/b0;->b:Lx7/d;

    .line 5
    .line 6
    iput-object p2, p0, Lh8/b0;->c:Lb8/c;

    .line 7
    .line 8
    iput p3, p0, Lh8/b0;->d:I

    .line 9
    .line 10
    shr-int/lit8 p1, p3, 0x2

    .line 11
    .line 12
    sub-int/2addr p3, p1

    .line 13
    iput p3, p0, Lh8/b0;->e:I

    .line 14
    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lh8/b0;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lh8/b0;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lh8/b0;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lh8/b0;->i:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lh8/b0;->j()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final cancel()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lh8/b0;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_17

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lh8/b0;->j:Z

    .line 7
    .line 8
    iget-object v0, p0, Lh8/b0;->g:Ln9/b;

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
    iget-object v0, p0, Lh8/b0;->h:Le8/g;

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
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lh8/b0;->l:Ljava/util/Iterator;

    .line 3
    .line 4
    iget-object v0, p0, Lh8/b0;->h:Le8/g;

    .line 5
    .line 6
    invoke-interface {v0}, Le8/g;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final d(J)V
    .registers 4

    .line 1
    invoke-static {p1, p2}, Lo8/f;->c(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    iget-object v0, p0, Lh8/b0;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-static {v0, p1, p2}, Le3/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lh8/b0;->j()V

    .line 13
    .line 14
    .line 15
    :cond_e
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lh8/b0;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget v0, p0, Lh8/b0;->n:I

    .line 7
    .line 8
    if-nez v0, :cond_1c

    .line 9
    .line 10
    iget-object v0, p0, Lh8/b0;->h:Le8/g;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Le8/g;->offer(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1c

    .line 17
    .line 18
    new-instance p1, La8/d;

    .line 19
    .line 20
    const-string v0, "Queue is full?!"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lh8/b0;->onError(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1c
    invoke-virtual {p0}, Lh8/b0;->j()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final f(Ln9/b;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lh8/b0;->g:Ln9/b;

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
    iput-object p1, p0, Lh8/b0;->g:Ln9/b;

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
    const/4 v1, 0x3

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
    iput v1, p0, Lh8/b0;->n:I

    .line 27
    .line 28
    iput-object v0, p0, Lh8/b0;->h:Le8/g;

    .line 29
    .line 30
    iput-boolean v2, p0, Lh8/b0;->i:Z

    .line 31
    .line 32
    iget-object p1, p0, Lh8/b0;->b:Lx7/d;

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
    iput v1, p0, Lh8/b0;->n:I

    .line 42
    .line 43
    iput-object v0, p0, Lh8/b0;->h:Le8/g;

    .line 44
    .line 45
    iget-object v0, p0, Lh8/b0;->b:Lx7/d;

    .line 46
    .line 47
    invoke-interface {v0, p0}, Lx7/d;->f(Ln9/b;)V

    .line 48
    .line 49
    .line 50
    iget v0, p0, Lh8/b0;->d:I

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
    iget v1, p0, Lh8/b0;->d:I

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ll8/a;-><init>(I)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lh8/b0;->h:Le8/g;

    .line 65
    .line 66
    iget-object v0, p0, Lh8/b0;->b:Lx7/d;

    .line 67
    .line 68
    invoke-interface {v0, p0}, Lx7/d;->f(Ln9/b;)V

    .line 69
    .line 70
    .line 71
    iget v0, p0, Lh8/b0;->d:I

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

.method public final h(I)I
    .registers 3

    .line 1
    iget p1, p0, Lh8/b0;->n:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_6

    .line 5
    .line 6
    return v0

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    return p1
.end method

.method public final i(ZZLx7/d;Le8/g;)Z
    .registers 8

    .line 1
    iget-boolean v0, p0, Lh8/b0;->j:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    iput-object v1, p0, Lh8/b0;->l:Ljava/util/Iterator;

    .line 8
    .line 9
    invoke-interface {p4}, Le8/g;->clear()V

    .line 10
    .line 11
    .line 12
    return v2

    .line 13
    :cond_c
    if-eqz p1, :cond_2d

    .line 14
    .line 15
    iget-object p1, p0, Lh8/b0;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Throwable;

    .line 22
    .line 23
    if-eqz p1, :cond_27

    .line 24
    .line 25
    iget-object p1, p0, Lh8/b0;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    .line 27
    invoke-static {p1}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object v1, p0, Lh8/b0;->l:Ljava/util/Iterator;

    .line 32
    .line 33
    invoke-interface {p4}, Le8/g;->clear()V

    .line 34
    .line 35
    .line 36
    invoke-interface {p3, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_27
    if-eqz p2, :cond_2d

    .line 41
    .line 42
    invoke-interface {p3}, Lx7/d;->a()V

    .line 43
    .line 44
    .line 45
    return v2

    .line 46
    :cond_2d
    const/4 p1, 0x0

    .line 47
    return p1
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lh8/b0;->l:Ljava/util/Iterator;

    .line 2
    .line 3
    if-nez v0, :cond_e

    .line 4
    .line 5
    iget-object v0, p0, Lh8/b0;->h:Le8/g;

    .line 6
    .line 7
    invoke-interface {v0}, Le8/g;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final j()V
    .registers 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    goto/16 :goto_15b

    .line 10
    .line 11
    :cond_a
    iget-object v2, v1, Lh8/b0;->b:Lx7/d;

    .line 12
    .line 13
    iget-object v3, v1, Lh8/b0;->h:Le8/g;

    .line 14
    .line 15
    iget v0, v1, Lh8/b0;->n:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eq v0, v5, :cond_16

    .line 20
    .line 21
    move v0, v5

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v0, v4

    .line 24
    :goto_17
    iget-object v6, v1, Lh8/b0;->l:Ljava/util/Iterator;

    .line 25
    .line 26
    move v7, v5

    .line 27
    :goto_1a
    const/4 v8, 0x0

    .line 28
    if-nez v6, :cond_92

    .line 29
    .line 30
    iget-boolean v9, v1, Lh8/b0;->i:Z

    .line 31
    .line 32
    :try_start_1f
    invoke-interface {v3}, Le8/g;->poll()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v10
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_75

    .line 36
    if-nez v10, :cond_27

    .line 37
    .line 38
    move v11, v5

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v11, v4

    .line 41
    :goto_28
    invoke-virtual {v1, v9, v11, v2, v3}, Lh8/b0;->i(ZZLx7/d;Le8/g;)Z

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    if-eqz v9, :cond_30

    .line 46
    .line 47
    goto/16 :goto_15b

    .line 48
    .line 49
    :cond_30
    if-eqz v10, :cond_92

    .line 50
    .line 51
    :try_start_32
    iget-object v6, v1, Lh8/b0;->c:Lb8/c;

    .line 52
    .line 53
    invoke-interface {v6, v10}, Lb8/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Ljava/lang/Iterable;

    .line 58
    .line 59
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v9
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_5d

    .line 67
    if-nez v9, :cond_5a

    .line 68
    .line 69
    if-eqz v0, :cond_58

    .line 70
    .line 71
    iget v6, v1, Lh8/b0;->m:I

    .line 72
    .line 73
    add-int/2addr v6, v5

    .line 74
    iget v9, v1, Lh8/b0;->e:I

    .line 75
    .line 76
    if-ne v6, v9, :cond_56

    .line 77
    .line 78
    iput v4, v1, Lh8/b0;->m:I

    .line 79
    .line 80
    iget-object v9, v1, Lh8/b0;->g:Ln9/b;

    .line 81
    .line 82
    int-to-long v10, v6

    .line 83
    invoke-interface {v9, v10, v11}, Ln9/b;->d(J)V

    .line 84
    .line 85
    .line 86
    goto :goto_58

    .line 87
    :cond_56
    iput v6, v1, Lh8/b0;->m:I

    .line 88
    .line 89
    :cond_58
    :goto_58
    move-object v6, v8

    .line 90
    goto :goto_1a

    .line 91
    :cond_5a
    iput-object v6, v1, Lh8/b0;->l:Ljava/util/Iterator;

    .line 92
    .line 93
    goto :goto_92

    .line 94
    :catchall_5d
    move-exception v0

    .line 95
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    iget-object v3, v1, Lh8/b0;->g:Ln9/b;

    .line 99
    .line 100
    invoke-interface {v3}, Ln9/b;->cancel()V

    .line 101
    .line 102
    .line 103
    iget-object v3, v1, Lh8/b0;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 104
    .line 105
    invoke-static {v3, v0}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 106
    .line 107
    .line 108
    iget-object v0, v1, Lh8/b0;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 109
    .line 110
    invoke-static {v0}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {v2, v0}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catchall_75
    move-exception v0

    .line 119
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    iget-object v4, v1, Lh8/b0;->g:Ln9/b;

    .line 123
    .line 124
    invoke-interface {v4}, Ln9/b;->cancel()V

    .line 125
    .line 126
    .line 127
    iget-object v4, v1, Lh8/b0;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 128
    .line 129
    invoke-static {v4, v0}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 130
    .line 131
    .line 132
    iget-object v0, v1, Lh8/b0;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 133
    .line 134
    invoke-static {v0}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v8, v1, Lh8/b0;->l:Ljava/util/Iterator;

    .line 139
    .line 140
    invoke-interface {v3}, Le8/g;->clear()V

    .line 141
    .line 142
    .line 143
    invoke-interface {v2, v0}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_92
    :goto_92
    if-eqz v6, :cond_152

    .line 148
    .line 149
    iget-object v9, v1, Lh8/b0;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 152
    .line 153
    .line 154
    move-result-wide v9

    .line 155
    const-wide/16 v11, 0x0

    .line 156
    .line 157
    move-wide v13, v11

    .line 158
    :goto_9d
    cmp-long v15, v13, v9

    .line 159
    .line 160
    if-eqz v15, :cond_11d

    .line 161
    .line 162
    iget-boolean v15, v1, Lh8/b0;->i:Z

    .line 163
    .line 164
    invoke-virtual {v1, v15, v4, v2, v3}, Lh8/b0;->i(ZZLx7/d;Le8/g;)Z

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    if-eqz v15, :cond_ab

    .line 169
    .line 170
    goto/16 :goto_15b

    .line 171
    .line 172
    :cond_ab
    :try_start_ab
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v15

    .line 176
    move/from16 v16, v5

    .line 177
    .line 178
    const-string v5, "The iterator returned a null value"

    .line 179
    .line 180
    invoke-static {v15, v5}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_ab .. :try_end_b6} :catchall_103

    .line 181
    .line 182
    .line 183
    invoke-interface {v2, v15}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iget-boolean v5, v1, Lh8/b0;->i:Z

    .line 187
    .line 188
    invoke-virtual {v1, v5, v4, v2, v3}, Lh8/b0;->i(ZZLx7/d;Le8/g;)Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_c3

    .line 193
    .line 194
    goto/16 :goto_15b

    .line 195
    .line 196
    :cond_c3
    const-wide/16 v17, 0x1

    .line 197
    .line 198
    add-long v13, v13, v17

    .line 199
    .line 200
    :try_start_c7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v5
    :try_end_cb
    .catchall {:try_start_c7 .. :try_end_cb} :catchall_e9

    .line 204
    if-nez v5, :cond_e6

    .line 205
    .line 206
    if-eqz v0, :cond_e2

    .line 207
    .line 208
    iget v5, v1, Lh8/b0;->m:I

    .line 209
    .line 210
    add-int/lit8 v5, v5, 0x1

    .line 211
    .line 212
    iget v6, v1, Lh8/b0;->e:I

    .line 213
    .line 214
    if-ne v5, v6, :cond_e0

    .line 215
    .line 216
    iput v4, v1, Lh8/b0;->m:I

    .line 217
    .line 218
    iget-object v6, v1, Lh8/b0;->g:Ln9/b;

    .line 219
    .line 220
    int-to-long v4, v5

    .line 221
    invoke-interface {v6, v4, v5}, Ln9/b;->d(J)V

    .line 222
    .line 223
    .line 224
    goto :goto_e2

    .line 225
    :cond_e0
    iput v5, v1, Lh8/b0;->m:I

    .line 226
    .line 227
    :cond_e2
    :goto_e2
    iput-object v8, v1, Lh8/b0;->l:Ljava/util/Iterator;

    .line 228
    .line 229
    move-object v6, v8

    .line 230
    goto :goto_11f

    .line 231
    :cond_e6
    move/from16 v5, v16

    .line 232
    .line 233
    goto :goto_9d

    .line 234
    :catchall_e9
    move-exception v0

    .line 235
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 236
    .line 237
    .line 238
    iput-object v8, v1, Lh8/b0;->l:Ljava/util/Iterator;

    .line 239
    .line 240
    iget-object v3, v1, Lh8/b0;->g:Ln9/b;

    .line 241
    .line 242
    invoke-interface {v3}, Ln9/b;->cancel()V

    .line 243
    .line 244
    .line 245
    iget-object v3, v1, Lh8/b0;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 246
    .line 247
    invoke-static {v3, v0}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 248
    .line 249
    .line 250
    iget-object v0, v1, Lh8/b0;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 251
    .line 252
    invoke-static {v0}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-interface {v2, v0}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :catchall_103
    move-exception v0

    .line 261
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 262
    .line 263
    .line 264
    iput-object v8, v1, Lh8/b0;->l:Ljava/util/Iterator;

    .line 265
    .line 266
    iget-object v3, v1, Lh8/b0;->g:Ln9/b;

    .line 267
    .line 268
    invoke-interface {v3}, Ln9/b;->cancel()V

    .line 269
    .line 270
    .line 271
    iget-object v3, v1, Lh8/b0;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 272
    .line 273
    invoke-static {v3, v0}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 274
    .line 275
    .line 276
    iget-object v0, v1, Lh8/b0;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 277
    .line 278
    invoke-static {v0}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-interface {v2, v0}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :cond_11d
    move/from16 v16, v5

    .line 287
    .line 288
    :goto_11f
    cmp-long v4, v13, v9

    .line 289
    .line 290
    if-nez v4, :cond_138

    .line 291
    .line 292
    iget-boolean v4, v1, Lh8/b0;->i:Z

    .line 293
    .line 294
    invoke-interface {v3}, Le8/g;->isEmpty()Z

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    if-eqz v5, :cond_130

    .line 299
    .line 300
    if-nez v6, :cond_130

    .line 301
    .line 302
    move/from16 v5, v16

    .line 303
    .line 304
    goto :goto_131

    .line 305
    :cond_130
    const/4 v5, 0x0

    .line 306
    :goto_131
    invoke-virtual {v1, v4, v5, v2, v3}, Lh8/b0;->i(ZZLx7/d;Le8/g;)Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-eqz v4, :cond_138

    .line 311
    .line 312
    goto :goto_15b

    .line 313
    :cond_138
    cmp-long v4, v13, v11

    .line 314
    .line 315
    if-eqz v4, :cond_14b

    .line 316
    .line 317
    const-wide v4, 0x7fffffffffffffffL

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    cmp-long v4, v9, v4

    .line 323
    .line 324
    if-eqz v4, :cond_14b

    .line 325
    .line 326
    iget-object v4, v1, Lh8/b0;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 327
    .line 328
    neg-long v8, v13

    .line 329
    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 330
    .line 331
    .line 332
    :cond_14b
    if-nez v6, :cond_154

    .line 333
    .line 334
    :cond_14d
    move/from16 v5, v16

    .line 335
    .line 336
    const/4 v4, 0x0

    .line 337
    goto/16 :goto_1a

    .line 338
    .line 339
    :cond_152
    move/from16 v16, v5

    .line 340
    .line 341
    :cond_154
    neg-int v4, v7

    .line 342
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    if-nez v7, :cond_14d

    .line 347
    .line 348
    :goto_15b
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lh8/b0;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_13

    .line 4
    .line 5
    iget-object v0, p0, Lh8/b0;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_13

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lh8/b0;->i:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lh8/b0;->j()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lh8/b0;->l:Ljava/util/Iterator;

    .line 2
    .line 3
    :goto_2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_24

    .line 5
    .line 6
    iget-object v0, p0, Lh8/b0;->h:Le8/g;

    .line 7
    .line 8
    invoke-interface {v0}, Le8/g;->poll()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_e

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_e
    iget-object v2, p0, Lh8/b0;->c:Lb8/c;

    .line 16
    .line 17
    invoke-interface {v2, v0}, Lb8/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Iterable;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_22

    .line 32
    .line 33
    move-object v0, v1

    .line 34
    goto :goto_2

    .line 35
    :cond_22
    iput-object v0, p0, Lh8/b0;->l:Ljava/util/Iterator;

    .line 36
    .line 37
    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "The iterator returned a null value"

    .line 42
    .line 43
    invoke-static {v2, v3}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_35

    .line 51
    .line 52
    iput-object v1, p0, Lh8/b0;->l:Ljava/util/Iterator;

    .line 53
    .line 54
    :cond_35
    return-object v2
.end method
