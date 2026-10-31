.class public final Lh8/z;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/d;
.implements Ln9/b;


# instance fields
.field public final b:Lx7/d;

.field public final c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:Lc8/c;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Lp8/b;

.field public final h:Lb8/c;

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;

.field public j:Ln9/b;

.field public volatile k:Z


# direct methods
.method public constructor <init>(Lx7/d;Lb8/c;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh8/z;->b:Lx7/d;

    .line 5
    .line 6
    iput-object p2, p0, Lh8/z;->h:Lb8/c;

    .line 7
    .line 8
    iput p3, p0, Lh8/z;->c:I

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lh8/z;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 16
    .line 17
    new-instance p1, Lc8/c;

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    invoke-direct {p1, p2}, Lc8/c;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lh8/z;->e:Lc8/c;

    .line 24
    .line 25
    new-instance p1, Lp8/b;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lh8/z;->g:Lp8/b;

    .line 31
    .line 32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lh8/z;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lh8/z;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lh8/z;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lh8/z;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lh8/z;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ll8/b;

    .line 8
    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    invoke-virtual {v0}, Ll8/b;->clear()V

    .line 12
    .line 13
    .line 14
    :cond_d
    return-void
.end method

.method public final c()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0}, Lh8/z;->h()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public final cancel()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lh8/z;->k:Z

    .line 3
    .line 4
    iget-object v0, p0, Lh8/z;->j:Ln9/b;

    .line 5
    .line 6
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lh8/z;->e:Lc8/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lc8/c;->dispose()V

    .line 12
    .line 13
    .line 14
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
    iget-object v0, p0, Lh8/z;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-static {v0, p1, p2}, Le3/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lh8/z;->c()V

    .line 13
    .line 14
    .line 15
    :cond_e
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lh8/z;->h:Lb8/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lb8/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "The mapper returned a null MaybeSource"

    .line 8
    .line 9
    invoke-static {p1, v0}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast p1, Lx7/e;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_27

    .line 13
    .line 14
    iget-object v0, p0, Lh8/z;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 17
    .line 18
    .line 19
    new-instance v0, Li8/b;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Li8/b;-><init>(Lh8/z;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v1, p0, Lh8/z;->k:Z

    .line 25
    .line 26
    if-nez v1, :cond_26

    .line 27
    .line 28
    iget-object v1, p0, Lh8/z;->e:Lc8/c;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lc8/c;->a(Lz7/a;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_26

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lx7/e;->c(Lx7/f;)V

    .line 37
    .line 38
    .line 39
    :cond_26
    return-void

    .line 40
    :catchall_27
    move-exception p1

    .line 41
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lh8/z;->j:Ln9/b;

    .line 45
    .line 46
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lh8/z;->onError(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final f(Ln9/b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lh8/z;->j:Ln9/b;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lo8/f;->e(Ln9/b;Ln9/b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_23

    .line 8
    .line 9
    iput-object p1, p0, Lh8/z;->j:Ln9/b;

    .line 10
    .line 11
    iget-object v0, p0, Lh8/z;->b:Lx7/d;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lx7/d;->f(Ln9/b;)V

    .line 14
    .line 15
    .line 16
    const v0, 0x7fffffff

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lh8/z;->c:I

    .line 20
    .line 21
    if-ne v1, v0, :cond_1f

    .line 22
    .line 23
    const-wide v0, 0x7fffffffffffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    int-to-long v0, v1

    .line 33
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 34
    .line 35
    .line 36
    :cond_23
    return-void
.end method

.method public final h()V
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lh8/z;->b:Lx7/d;

    .line 4
    .line 5
    iget-object v2, v0, Lh8/z;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    iget-object v3, v0, Lh8/z;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    move v5, v4

    .line 11
    :cond_a
    iget-object v6, v0, Lh8/z;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    const-wide/16 v8, 0x0

    .line 18
    .line 19
    move-wide v10, v8

    .line 20
    :goto_13
    cmp-long v12, v10, v6

    .line 21
    .line 22
    const/4 v13, 0x0

    .line 23
    if-eqz v12, :cond_79

    .line 24
    .line 25
    iget-boolean v14, v0, Lh8/z;->k:Z

    .line 26
    .line 27
    if-eqz v14, :cond_20

    .line 28
    .line 29
    invoke-virtual {v0}, Lh8/z;->b()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_20
    iget-object v14, v0, Lh8/z;->g:Lp8/b;

    .line 34
    .line 35
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v14

    .line 39
    check-cast v14, Ljava/lang/Throwable;

    .line 40
    .line 41
    if-eqz v14, :cond_3a

    .line 42
    .line 43
    iget-object v2, v0, Lh8/z;->g:Lp8/b;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0}, Lh8/z;->b()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v2}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    if-nez v14, :cond_42

    .line 64
    .line 65
    move v14, v4

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v14, v13

    .line 68
    :goto_43
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v15

    .line 72
    check-cast v15, Ll8/b;

    .line 73
    .line 74
    if-eqz v15, :cond_50

    .line 75
    .line 76
    invoke-virtual {v15}, Ll8/b;->poll()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v15

    .line 80
    goto :goto_51

    .line 81
    :cond_50
    const/4 v15, 0x0

    .line 82
    :goto_51
    if-nez v15, :cond_56

    .line 83
    .line 84
    move/from16 v16, v4

    .line 85
    .line 86
    goto :goto_58

    .line 87
    :cond_56
    move/from16 v16, v13

    .line 88
    .line 89
    :goto_58
    if-eqz v14, :cond_6f

    .line 90
    .line 91
    if-eqz v16, :cond_6f

    .line 92
    .line 93
    iget-object v2, v0, Lh8/z;->g:Lp8/b;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {v2}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-eqz v2, :cond_6b

    .line 103
    .line 104
    invoke-interface {v1, v2}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_6b
    invoke-interface {v1}, Lx7/d;->a()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_6f
    if-eqz v16, :cond_72

    .line 113
    .line 114
    goto :goto_79

    .line 115
    :cond_72
    invoke-interface {v1, v15}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    const-wide/16 v12, 0x1

    .line 119
    .line 120
    add-long/2addr v10, v12

    .line 121
    goto :goto_13

    .line 122
    :cond_79
    :goto_79
    if-nez v12, :cond_cc

    .line 123
    .line 124
    iget-boolean v6, v0, Lh8/z;->k:Z

    .line 125
    .line 126
    if-eqz v6, :cond_83

    .line 127
    .line 128
    invoke-virtual {v0}, Lh8/z;->b()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_83
    iget-object v6, v0, Lh8/z;->g:Lp8/b;

    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Ljava/lang/Throwable;

    .line 139
    .line 140
    if-eqz v6, :cond_9d

    .line 141
    .line 142
    iget-object v2, v0, Lh8/z;->g:Lp8/b;

    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {v2}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v0}, Lh8/z;->b()V

    .line 152
    .line 153
    .line 154
    invoke-interface {v1, v2}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_9d
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-nez v6, :cond_a5

    .line 163
    .line 164
    move v6, v4

    .line 165
    goto :goto_a6

    .line 166
    :cond_a5
    move v6, v13

    .line 167
    :goto_a6
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    check-cast v7, Ll8/b;

    .line 172
    .line 173
    if-eqz v7, :cond_b4

    .line 174
    .line 175
    invoke-virtual {v7}, Ll8/b;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-eqz v7, :cond_b5

    .line 180
    .line 181
    :cond_b4
    move v13, v4

    .line 182
    :cond_b5
    if-eqz v6, :cond_cc

    .line 183
    .line 184
    if-eqz v13, :cond_cc

    .line 185
    .line 186
    iget-object v2, v0, Lh8/z;->g:Lp8/b;

    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-static {v2}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    if-eqz v2, :cond_c8

    .line 196
    .line 197
    invoke-interface {v1, v2}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_c8
    invoke-interface {v1}, Lx7/d;->a()V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_cc
    cmp-long v6, v10, v8

    .line 206
    .line 207
    if-eqz v6, :cond_e1

    .line 208
    .line 209
    iget-object v6, v0, Lh8/z;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 210
    .line 211
    invoke-static {v6, v10, v11}, Le3/d;->p(Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 212
    .line 213
    .line 214
    iget v6, v0, Lh8/z;->c:I

    .line 215
    .line 216
    const v7, 0x7fffffff

    .line 217
    .line 218
    .line 219
    if-eq v6, v7, :cond_e1

    .line 220
    .line 221
    iget-object v6, v0, Lh8/z;->j:Ln9/b;

    .line 222
    .line 223
    invoke-interface {v6, v10, v11}, Ln9/b;->d(J)V

    .line 224
    .line 225
    .line 226
    :cond_e1
    neg-int v5, v5

    .line 227
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-nez v5, :cond_a

    .line 232
    .line 233
    return-void
.end method

.method public final i()Ll8/b;
    .registers 4

    .line 1
    :goto_0
    iget-object v0, p0, Lh8/z;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ll8/b;

    .line 8
    .line 9
    if-eqz v1, :cond_b

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_b
    new-instance v1, Ll8/b;

    .line 13
    .line 14
    sget v2, Lx7/b;->b:I

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ll8/b;-><init>(I)V

    .line 17
    .line 18
    .line 19
    :cond_12
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1a

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_12

    .line 32
    .line 33
    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lh8/z;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh8/z;->g:Lp8/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_19

    .line 16
    .line 17
    iget-object p1, p0, Lh8/z;->e:Lc8/c;

    .line 18
    .line 19
    invoke-virtual {p1}, Lc8/c;->dispose()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lh8/z;->c()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_19
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
