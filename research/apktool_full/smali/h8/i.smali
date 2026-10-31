.class public final Lh8/i;
.super Lh8/h;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic d:I

.field public e:Ljava/lang/Throwable;

.field public volatile f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lx7/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lh8/i;->d:I

    .line 22
    invoke-direct {p0, p1}, Lh8/h;-><init>(Lx7/d;)V

    .line 23
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lh8/i;->h:Ljava/lang/Object;

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lh8/i;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lx7/d;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lh8/i;->d:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lh8/h;-><init>(Lx7/d;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ll8/b;

    .line 8
    .line 9
    invoke-direct {p1, p2}, Ll8/b;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lh8/i;->h:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lh8/i;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    iget v0, p0, Lh8/i;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lh8/i;->g()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p0}, Lh8/i;->g()V

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

.method public final e()V
    .locals 2

    .line 1
    iget v0, p0, Lh8/i;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh8/i;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lh8/i;->h:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :pswitch_0
    iget-object v0, p0, Lh8/i;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lh8/i;->h:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ll8/b;

    .line 34
    .line 35
    invoke-virtual {v0}, Ll8/b;->clear()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    iget v0, p0, Lh8/i;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lh8/i;->f:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lh8/h;->c:Lc8/d;

    .line 11
    .line 12
    invoke-virtual {v0}, Lc8/d;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-object p1, p0, Lh8/i;->e:Ljava/lang/Throwable;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lh8/i;->f:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Lh8/i;->g()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 29
    :goto_1
    return p1

    .line 30
    :pswitch_0
    iget-boolean v0, p0, Lh8/i;->f:Z

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lh8/h;->c:Lc8/d;

    .line 35
    .line 36
    invoke-virtual {v0}, Lc8/d;->c()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iput-object p1, p0, Lh8/i;->e:Ljava/lang/Throwable;

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lh8/i;->f:Z

    .line 47
    .line 48
    invoke-virtual {p0}, Lh8/i;->g()V

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 53
    :goto_3
    return p1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lh8/i;->d:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lh8/i;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    iget-object v1, v0, Lh8/h;->b:Lx7/d;

    .line 19
    .line 20
    iget-object v2, v0, Lh8/i;->h:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    move v4, v3

    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    const-wide/16 v7, 0x0

    .line 31
    .line 32
    move-wide v9, v7

    .line 33
    :goto_0
    cmp-long v11, v9, v5

    .line 34
    .line 35
    const/4 v12, 0x0

    .line 36
    const/4 v13, 0x0

    .line 37
    if-eqz v11, :cond_7

    .line 38
    .line 39
    iget-object v14, v0, Lh8/h;->c:Lc8/d;

    .line 40
    .line 41
    invoke-virtual {v14}, Lc8/d;->c()Z

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    if-eqz v14, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_2
    iget-boolean v14, v0, Lh8/i;->f:Z

    .line 53
    .line 54
    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v15

    .line 58
    if-nez v15, :cond_3

    .line 59
    .line 60
    move/from16 v16, v3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move/from16 v16, v12

    .line 64
    .line 65
    :goto_1
    if-eqz v14, :cond_5

    .line 66
    .line 67
    if-eqz v16, :cond_5

    .line 68
    .line 69
    iget-object v1, v0, Lh8/i;->e:Ljava/lang/Throwable;

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lh8/h;->b(Ljava/lang/Throwable;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    invoke-virtual {v0}, Lh8/h;->a()V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    if-eqz v16, :cond_6

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_6
    invoke-interface {v1, v15}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    const-wide/16 v11, 0x1

    .line 88
    .line 89
    add-long/2addr v9, v11

    .line 90
    goto :goto_0

    .line 91
    :cond_7
    :goto_2
    if-nez v11, :cond_b

    .line 92
    .line 93
    iget-object v5, v0, Lh8/h;->c:Lc8/d;

    .line 94
    .line 95
    invoke-virtual {v5}, Lc8/d;->c()Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_8

    .line 100
    .line 101
    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_8
    iget-boolean v5, v0, Lh8/i;->f:Z

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    if-nez v6, :cond_9

    .line 112
    .line 113
    move v12, v3

    .line 114
    :cond_9
    if-eqz v5, :cond_b

    .line 115
    .line 116
    if-eqz v12, :cond_b

    .line 117
    .line 118
    iget-object v1, v0, Lh8/i;->e:Ljava/lang/Throwable;

    .line 119
    .line 120
    if-eqz v1, :cond_a

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lh8/h;->b(Ljava/lang/Throwable;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_a
    invoke-virtual {v0}, Lh8/h;->a()V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_b
    cmp-long v5, v9, v7

    .line 131
    .line 132
    if-eqz v5, :cond_c

    .line 133
    .line 134
    invoke-static {v0, v9, v10}, Le3/d;->p(Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 135
    .line 136
    .line 137
    :cond_c
    iget-object v5, v0, Lh8/i;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    .line 139
    neg-int v4, v4

    .line 140
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-nez v4, :cond_1

    .line 145
    .line 146
    :goto_3
    return-void

    .line 147
    :pswitch_0
    iget-object v1, v0, Lh8/i;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_d

    .line 154
    .line 155
    goto/16 :goto_7

    .line 156
    .line 157
    :cond_d
    iget-object v1, v0, Lh8/h;->b:Lx7/d;

    .line 158
    .line 159
    iget-object v2, v0, Lh8/i;->h:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v2, Ll8/b;

    .line 162
    .line 163
    const/4 v3, 0x1

    .line 164
    move v4, v3

    .line 165
    :cond_e
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 166
    .line 167
    .line 168
    move-result-wide v5

    .line 169
    const-wide/16 v7, 0x0

    .line 170
    .line 171
    move-wide v9, v7

    .line 172
    :goto_4
    cmp-long v11, v9, v5

    .line 173
    .line 174
    if-eqz v11, :cond_14

    .line 175
    .line 176
    iget-object v12, v0, Lh8/h;->c:Lc8/d;

    .line 177
    .line 178
    invoke-virtual {v12}, Lc8/d;->c()Z

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    if-eqz v12, :cond_f

    .line 183
    .line 184
    invoke-virtual {v2}, Ll8/b;->clear()V

    .line 185
    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_f
    iget-boolean v12, v0, Lh8/i;->f:Z

    .line 189
    .line 190
    invoke-virtual {v2}, Ll8/b;->poll()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    if-nez v13, :cond_10

    .line 195
    .line 196
    move v14, v3

    .line 197
    goto :goto_5

    .line 198
    :cond_10
    const/4 v14, 0x0

    .line 199
    :goto_5
    if-eqz v12, :cond_12

    .line 200
    .line 201
    if-eqz v14, :cond_12

    .line 202
    .line 203
    iget-object v1, v0, Lh8/i;->e:Ljava/lang/Throwable;

    .line 204
    .line 205
    if-eqz v1, :cond_11

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Lh8/h;->b(Ljava/lang/Throwable;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_11
    invoke-virtual {v0}, Lh8/h;->a()V

    .line 212
    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_12
    if-eqz v14, :cond_13

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_13
    invoke-interface {v1, v13}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    const-wide/16 v11, 0x1

    .line 222
    .line 223
    add-long/2addr v9, v11

    .line 224
    goto :goto_4

    .line 225
    :cond_14
    :goto_6
    if-nez v11, :cond_17

    .line 226
    .line 227
    iget-object v5, v0, Lh8/h;->c:Lc8/d;

    .line 228
    .line 229
    invoke-virtual {v5}, Lc8/d;->c()Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-eqz v5, :cond_15

    .line 234
    .line 235
    invoke-virtual {v2}, Ll8/b;->clear()V

    .line 236
    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_15
    iget-boolean v5, v0, Lh8/i;->f:Z

    .line 240
    .line 241
    invoke-virtual {v2}, Ll8/b;->isEmpty()Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-eqz v5, :cond_17

    .line 246
    .line 247
    if-eqz v6, :cond_17

    .line 248
    .line 249
    iget-object v1, v0, Lh8/i;->e:Ljava/lang/Throwable;

    .line 250
    .line 251
    if-eqz v1, :cond_16

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Lh8/h;->b(Ljava/lang/Throwable;)Z

    .line 254
    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_16
    invoke-virtual {v0}, Lh8/h;->a()V

    .line 258
    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_17
    cmp-long v5, v9, v7

    .line 262
    .line 263
    if-eqz v5, :cond_18

    .line 264
    .line 265
    invoke-static {v0, v9, v10}, Le3/d;->p(Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 266
    .line 267
    .line 268
    :cond_18
    iget-object v5, v0, Lh8/i;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 269
    .line 270
    neg-int v4, v4

    .line 271
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-nez v4, :cond_e

    .line 276
    .line 277
    :goto_7
    return-void

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
