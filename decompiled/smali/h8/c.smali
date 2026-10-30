.class public final Lh8/c;
.super Lh8/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final n:Lx7/d;

.field public final o:Z


# direct methods
.method public constructor <init>(Lx7/d;Lf5/q;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lh8/b;-><init>(Lb8/c;I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh8/c;->n:Lx7/d;

    .line 5
    .line 6
    iput-boolean p4, p0, Lh8/c;->o:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_c

    .line 6
    .line 7
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lh8/b;->j:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_1
    iget-boolean v0, p0, Lh8/b;->l:Z

    .line 14
    .line 15
    if-nez v0, :cond_b

    .line 16
    .line 17
    iget-boolean v0, p0, Lh8/b;->i:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v1, p0, Lh8/c;->o:Z

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Throwable;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lh8/c;->n:Lx7/d;

    .line 36
    .line 37
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    :try_start_0
    iget-object v1, p0, Lh8/b;->h:Le8/g;

    .line 51
    .line 52
    invoke-interface {v1}, Le8/g;->poll()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x1

    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    move v4, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move v4, v2

    .line 63
    :goto_1
    if-eqz v0, :cond_5

    .line 64
    .line 65
    if-eqz v4, :cond_5

    .line 66
    .line 67
    iget-object v0, p0, Lh8/b;->k:Lp8/b;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lh8/c;->n:Lx7/d;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    invoke-interface {v1, v0}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    invoke-interface {v1}, Lx7/d;->a()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    if-nez v4, :cond_b

    .line 89
    .line 90
    :try_start_1
    iget-object v0, p0, Lh8/b;->c:Lb8/c;

    .line 91
    .line 92
    invoke-interface {v0, v1}, Lb8/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v1, "The mapper returned a null Publisher"

    .line 97
    .line 98
    invoke-static {v0, v1}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    check-cast v0, Ln9/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .line 103
    iget v1, p0, Lh8/b;->m:I

    .line 104
    .line 105
    if-eq v1, v3, :cond_7

    .line 106
    .line 107
    iget v1, p0, Lh8/b;->g:I

    .line 108
    .line 109
    add-int/2addr v1, v3

    .line 110
    iget v4, p0, Lh8/b;->e:I

    .line 111
    .line 112
    if-ne v1, v4, :cond_6

    .line 113
    .line 114
    iput v2, p0, Lh8/b;->g:I

    .line 115
    .line 116
    iget-object v2, p0, Lh8/b;->f:Ln9/b;

    .line 117
    .line 118
    int-to-long v4, v1

    .line 119
    invoke-interface {v2, v4, v5}, Ln9/b;->d(J)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    iput v1, p0, Lh8/b;->g:I

    .line 124
    .line 125
    :cond_7
    :goto_2
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    .line 126
    .line 127
    if-eqz v1, :cond_a

    .line 128
    .line 129
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 130
    .line 131
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    if-nez v0, :cond_8

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_8
    iget-object v1, p0, Lh8/b;->b:Lh8/e;

    .line 140
    .line 141
    iget-boolean v1, v1, Lh8/e;->h:Z

    .line 142
    .line 143
    if-eqz v1, :cond_9

    .line 144
    .line 145
    iget-object v1, p0, Lh8/c;->n:Lx7/d;

    .line 146
    .line 147
    invoke-interface {v1, v0}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_9
    iput-boolean v3, p0, Lh8/b;->l:Z

    .line 153
    .line 154
    iget-object v1, p0, Lh8/b;->b:Lh8/e;

    .line 155
    .line 156
    new-instance v2, Lh8/f;

    .line 157
    .line 158
    invoke-direct {v2, v0, v1}, Lh8/f;-><init>(Ljava/lang/Object;Lx7/d;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2}, Lh8/e;->i(Ln9/b;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, Lh8/b;->f:Ln9/b;

    .line 170
    .line 171
    invoke-interface {v1}, Ln9/b;->cancel()V

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v0}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lh8/c;->n:Lx7/d;

    .line 183
    .line 184
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-static {v1}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-interface {v0, v1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_a
    iput-boolean v3, p0, Lh8/b;->l:Z

    .line 198
    .line 199
    iget-object v1, p0, Lh8/b;->b:Lh8/e;

    .line 200
    .line 201
    invoke-interface {v0, v1}, Ln9/a;->a(Lx7/d;)V

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :catchall_1
    move-exception v0

    .line 206
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    iget-object v1, p0, Lh8/b;->f:Ln9/b;

    .line 210
    .line 211
    invoke-interface {v1}, Ln9/b;->cancel()V

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    invoke-static {v1, v0}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lh8/c;->n:Lx7/d;

    .line 223
    .line 224
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-static {v1}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-interface {v0, v1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :catchall_2
    move-exception v0

    .line 238
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 239
    .line 240
    .line 241
    iget-object v1, p0, Lh8/b;->f:Ln9/b;

    .line 242
    .line 243
    invoke-interface {v1}, Ln9/b;->cancel()V

    .line 244
    .line 245
    .line 246
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-static {v1, v0}, Lp8/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lh8/c;->n:Lx7/d;

    .line 255
    .line 256
    iget-object v1, p0, Lh8/b;->k:Lp8/b;

    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    invoke-static {v1}, Lp8/d;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-interface {v0, v1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :cond_b
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-nez v0, :cond_0

    .line 274
    .line 275
    :cond_c
    :goto_4
    return-void
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 1

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
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean p1, p0, Lh8/c;->o:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lh8/b;->f:Ln9/b;

    .line 17
    .line 18
    invoke-interface {p1}, Ln9/b;->cancel()V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lh8/b;->i:Z

    .line 23
    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lh8/b;->l:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Lh8/c;->b()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
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
    .locals 1

    .line 1
    iget-object v0, p0, Lh8/c;->n:Lx7/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh8/c;->n:Lx7/d;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lx7/d;->f(Ln9/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

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
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lh8/b;->i:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lh8/c;->b()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
