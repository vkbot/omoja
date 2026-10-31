.class public final Lh8/d;
.super Lh8/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final n:Lx7/d;

.field public final o:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lx7/d;Lf5/q;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lh8/b;-><init>(Lb8/c;I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh8/d;->n:Lx7/d;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lh8/d;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lh8/d;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lh8/b;->j:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_1
    iget-boolean v0, p0, Lh8/b;->l:Z

    .line 16
    .line 17
    if-nez v0, :cond_9

    .line 18
    .line 19
    iget-boolean v0, p0, Lh8/b;->i:Z

    .line 20
    .line 21
    :try_start_0
    iget-object v1, p0, Lh8/b;->h:Le8/g;

    .line 22
    .line 23
    invoke-interface {v1}, Le8/g;->poll()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    move v4, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move v4, v2

    .line 34
    :goto_1
    if-eqz v0, :cond_3

    .line 35
    .line 36
    if-eqz v4, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lh8/d;->n:Lx7/d;

    .line 39
    .line 40
    invoke-interface {v0}, Lx7/d;->a()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    if-nez v4, :cond_9

    .line 45
    .line 46
    :try_start_1
    iget-object v0, p0, Lh8/b;->c:Lb8/c;

    .line 47
    .line 48
    invoke-interface {v0, v1}, Lb8/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "The mapper returned a null Publisher"

    .line 53
    .line 54
    invoke-static {v0, v1}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    check-cast v0, Ln9/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .line 59
    iget v1, p0, Lh8/b;->m:I

    .line 60
    .line 61
    if-eq v1, v3, :cond_5

    .line 62
    .line 63
    iget v1, p0, Lh8/b;->g:I

    .line 64
    .line 65
    add-int/2addr v1, v3

    .line 66
    iget v4, p0, Lh8/b;->e:I

    .line 67
    .line 68
    if-ne v1, v4, :cond_4

    .line 69
    .line 70
    iput v2, p0, Lh8/b;->g:I

    .line 71
    .line 72
    iget-object v4, p0, Lh8/b;->f:Ln9/b;

    .line 73
    .line 74
    int-to-long v5, v1

    .line 75
    invoke-interface {v4, v5, v6}, Ln9/b;->d(J)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    iput v1, p0, Lh8/b;->g:I

    .line 80
    .line 81
    :cond_5
    :goto_2
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    .line 82
    .line 83
    if-eqz v1, :cond_8

    .line 84
    .line 85
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 86
    .line 87
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    if-nez v0, :cond_6

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_6
    iget-object v1, p0, Lh8/b;->b:Lh8/e;

    .line 95
    .line 96
    iget-boolean v1, v1, Lh8/e;->h:Z

    .line 97
    .line 98
    if-eqz v1, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_0

    .line 105
    .line 106
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_0

    .line 111
    .line 112
    iget-object v1, p0, Lh8/d;->n:Lx7/d;

    .line 113
    .line 114
    invoke-interface {v1, v0}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_0

    .line 122
    .line 123
    iget-object v0, p0, Lh8/d;->n:Lx7/d;

    .line 124
    .line 125
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {v1}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-interface {v0, v1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_7
    iput-boolean v3, p0, Lh8/b;->l:Z

    .line 139
    .line 140
    iget-object v1, p0, Lh8/b;->b:Lh8/e;

    .line 141
    .line 142
    new-instance v2, Lh8/f;

    .line 143
    .line 144
    invoke-direct {v2, v0, v1}, Lh8/f;-><init>(Ljava/lang/Object;Lx7/d;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lh8/e;->i(Ln9/b;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lh8/b;->f:Ln9/b;

    .line 156
    .line 157
    invoke-interface {v1}, Ln9/b;->cancel()V

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-static {v1, v0}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lh8/d;->n:Lx7/d;

    .line 169
    .line 170
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-static {v1}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-interface {v0, v1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_8
    iput-boolean v3, p0, Lh8/b;->l:Z

    .line 184
    .line 185
    iget-object v1, p0, Lh8/b;->b:Lh8/e;

    .line 186
    .line 187
    invoke-interface {v0, v1}, Ln9/a;->a(Lx7/d;)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :catchall_1
    move-exception v0

    .line 192
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, p0, Lh8/b;->f:Ln9/b;

    .line 196
    .line 197
    invoke-interface {v1}, Ln9/b;->cancel()V

    .line 198
    .line 199
    .line 200
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-static {v1, v0}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lh8/d;->n:Lx7/d;

    .line 209
    .line 210
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-static {v1}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-interface {v0, v1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :catchall_2
    move-exception v0

    .line 224
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    iget-object v1, p0, Lh8/b;->f:Ln9/b;

    .line 228
    .line 229
    invoke-interface {v1}, Ln9/b;->cancel()V

    .line 230
    .line 231
    .line 232
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-static {v1, v0}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lh8/d;->n:Lx7/d;

    .line 241
    .line 242
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-static {v1}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-interface {v0, v1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :cond_9
    :goto_3
    iget-object v0, p0, Lh8/d;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-nez v0, :cond_0

    .line 262
    .line 263
    :cond_a
    :goto_4
    return-void
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh8/b;->k:Lp8/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lh8/b;->f:Ln9/b;

    .line 13
    .line 14
    invoke-interface {p1}, Ln9/b;->cancel()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lh8/d;->n:Lx7/d;

    .line 24
    .line 25
    invoke-static {v0}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p1, v0}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh8/b;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lh8/b;->j:Z

    .line 7
    .line 8
    iget-object v0, p0, Lh8/b;->b:Lh8/e;

    .line 9
    .line 10
    invoke-virtual {v0}, Lh8/e;->cancel()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lh8/b;->f:Ln9/b;

    .line 14
    .line 15
    invoke-interface {v0}, Ln9/b;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final d(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh8/b;->b:Lh8/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lh8/e;->d(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lh8/d;->n:Lx7/d;

    .line 16
    .line 17
    invoke-interface {v2, p1}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lh8/b;->k:Lp8/b;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {v2, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh8/d;->n:Lx7/d;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lx7/d;->f(Ln9/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh8/b;->k:Lp8/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lh8/b;->b:Lh8/e;

    .line 13
    .line 14
    invoke-virtual {p1}, Lh8/e;->cancel()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lh8/d;->n:Lx7/d;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :cond_1
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
