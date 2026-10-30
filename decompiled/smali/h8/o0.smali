.class public final Lh8/o0;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/d;
.implements Lz7/a;


# static fields
.field public static final j:[Lh8/n0;

.field public static final k:[Lh8/n0;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;

.field public volatile g:Ljava/io/Serializable;

.field public h:I

.field public volatile i:Le8/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Lh8/n0;

    .line 3
    .line 4
    sput-object v1, Lh8/o0;->j:[Lh8/n0;

    .line 5
    .line 6
    new-array v0, v0, [Lh8/n0;

    .line 7
    .line 8
    sput-object v0, Lh8/o0;->k:[Lh8/n0;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lh8/o0;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    sget-object v1, Lh8/o0;->j:[Lh8/n0;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lh8/o0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    iput-object p1, p0, Lh8/o0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lh8/o0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    iput p2, p0, Lh8/o0;->c:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh8/o0;->g:Ljava/io/Serializable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lp8/f;->b:Lp8/f;

    .line 6
    .line 7
    iput-object v0, p0, Lh8/o0;->g:Ljava/io/Serializable;

    .line 8
    .line 9
    invoke-virtual {p0}, Lh8/o0;->c()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Z)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_8

    .line 3
    .line 4
    sget-object v1, Lp8/f;->b:Lp8/f;

    .line 5
    .line 6
    sget-object v2, Lh8/o0;->k:[Lh8/n0;

    .line 7
    .line 8
    iget-object v3, p0, Lh8/o0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    iget-object v5, p0, Lh8/o0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    if-ne p1, v1, :cond_3

    .line 15
    .line 16
    if-eqz p2, :cond_8

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v5, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eq p1, p0, :cond_0

    .line 30
    .line 31
    :goto_0
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, [Lh8/n0;

    .line 36
    .line 37
    array-length p2, p1

    .line 38
    :goto_1
    if-ge v0, p2, :cond_2

    .line 39
    .line 40
    aget-object v1, p1, v0

    .line 41
    .line 42
    iget-object v1, v1, Lh8/n0;->b:Lx7/d;

    .line 43
    .line 44
    invoke-interface {v1}, Lx7/d;->a()V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    return v6

    .line 51
    :cond_3
    check-cast p1, Lp8/e;

    .line 52
    .line 53
    iget-object p1, p1, Lp8/e;->b:Ljava/lang/Throwable;

    .line 54
    .line 55
    :cond_4
    invoke-virtual {v5, p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_5

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    if-eq p2, p0, :cond_4

    .line 67
    .line 68
    :goto_2
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    check-cast p2, [Lh8/n0;

    .line 73
    .line 74
    array-length v1, p2

    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    array-length v1, p2

    .line 78
    :goto_3
    if-ge v0, v1, :cond_7

    .line 79
    .line 80
    aget-object v2, p2, v0

    .line 81
    .line 82
    iget-object v2, v2, Lh8/n0;->b:Lx7/d;

    .line 83
    .line 84
    invoke-interface {v2, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :cond_7
    return v6

    .line 94
    :cond_8
    return v0
.end method

.method public final c()V
    .locals 26

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
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_11

    .line 10
    .line 11
    :cond_0
    iget-object v2, v1, Lh8/o0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [Lh8/n0;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    move-object v4, v0

    .line 21
    move v5, v3

    .line 22
    :goto_0
    iget-object v0, v1, Lh8/o0;->g:Ljava/io/Serializable;

    .line 23
    .line 24
    iget-object v6, v1, Lh8/o0;->i:Le8/g;

    .line 25
    .line 26
    if-eqz v6, :cond_2

    .line 27
    .line 28
    invoke-interface {v6}, Le8/g;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    if-eqz v8, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v8, 0x0

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_1
    move v8, v3

    .line 38
    :goto_2
    invoke-virtual {v1, v0, v8}, Lh8/o0;->b(Ljava/lang/Object;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    goto/16 :goto_11

    .line 45
    .line 46
    :cond_3
    if-nez v8, :cond_15

    .line 47
    .line 48
    array-length v0, v4

    .line 49
    array-length v9, v4

    .line 50
    const/4 v12, 0x0

    .line 51
    const/4 v13, 0x0

    .line 52
    const-wide v14, 0x7fffffffffffffffL

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :goto_3
    const-wide/high16 v16, -0x8000000000000000L

    .line 58
    .line 59
    if-ge v12, v9, :cond_5

    .line 60
    .line 61
    aget-object v7, v4, v12

    .line 62
    .line 63
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 64
    .line 65
    .line 66
    move-result-wide v18

    .line 67
    cmp-long v16, v18, v16

    .line 68
    .line 69
    if-eqz v16, :cond_4

    .line 70
    .line 71
    const-wide v20, 0x7fffffffffffffffL

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    iget-wide v10, v7, Lh8/n0;->d:J

    .line 77
    .line 78
    sub-long v10, v18, v10

    .line 79
    .line 80
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 81
    .line 82
    .line 83
    move-result-wide v14

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    const-wide v20, 0x7fffffffffffffffL

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    add-int/lit8 v13, v13, 0x1

    .line 91
    .line 92
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    const-wide v20, 0x7fffffffffffffffL

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    const-wide/16 v9, 0x1

    .line 101
    .line 102
    if-ne v0, v13, :cond_9

    .line 103
    .line 104
    iget-object v0, v1, Lh8/o0;->g:Ljava/io/Serializable;

    .line 105
    .line 106
    :try_start_0
    invoke-interface {v6}, Le8/g;->poll()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    goto :goto_5

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    iget-object v6, v1, Lh8/o0;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Ln9/b;

    .line 122
    .line 123
    invoke-interface {v6}, Ln9/b;->cancel()V

    .line 124
    .line 125
    .line 126
    new-instance v6, Lp8/e;

    .line 127
    .line 128
    invoke-direct {v6, v0}, Lp8/e;-><init>(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    iput-object v6, v1, Lh8/o0;->g:Ljava/io/Serializable;

    .line 132
    .line 133
    move-object v0, v6

    .line 134
    const/4 v7, 0x0

    .line 135
    :goto_5
    if-nez v7, :cond_6

    .line 136
    .line 137
    move v7, v3

    .line 138
    goto :goto_6

    .line 139
    :cond_6
    const/4 v7, 0x0

    .line 140
    :goto_6
    invoke-virtual {v1, v0, v7}, Lh8/o0;->b(Ljava/lang/Object;Z)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    goto/16 :goto_11

    .line 147
    .line 148
    :cond_7
    iget v0, v1, Lh8/o0;->h:I

    .line 149
    .line 150
    if-eq v0, v3, :cond_8

    .line 151
    .line 152
    iget-object v0, v1, Lh8/o0;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Ln9/b;

    .line 159
    .line 160
    invoke-interface {v0, v9, v10}, Ln9/b;->d(J)V

    .line 161
    .line 162
    .line 163
    :cond_8
    move v10, v3

    .line 164
    move-object v3, v4

    .line 165
    goto/16 :goto_f

    .line 166
    .line 167
    :cond_9
    const/4 v11, 0x0

    .line 168
    :goto_7
    int-to-long v12, v11

    .line 169
    cmp-long v0, v12, v14

    .line 170
    .line 171
    if-gez v0, :cond_c

    .line 172
    .line 173
    iget-object v0, v1, Lh8/o0;->g:Ljava/io/Serializable;

    .line 174
    .line 175
    :try_start_1
    invoke-interface {v6}, Le8/g;->poll()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    goto :goto_8

    .line 180
    :catchall_1
    move-exception v0

    .line 181
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    iget-object v8, v1, Lh8/o0;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 185
    .line 186
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    check-cast v8, Ln9/b;

    .line 191
    .line 192
    invoke-interface {v8}, Ln9/b;->cancel()V

    .line 193
    .line 194
    .line 195
    new-instance v8, Lp8/e;

    .line 196
    .line 197
    invoke-direct {v8, v0}, Lp8/e;-><init>(Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    iput-object v8, v1, Lh8/o0;->g:Ljava/io/Serializable;

    .line 201
    .line 202
    move-object v0, v8

    .line 203
    const/4 v8, 0x0

    .line 204
    :goto_8
    if-nez v8, :cond_a

    .line 205
    .line 206
    move v7, v3

    .line 207
    goto :goto_9

    .line 208
    :cond_a
    const/4 v7, 0x0

    .line 209
    :goto_9
    invoke-virtual {v1, v0, v7}, Lh8/o0;->b(Ljava/lang/Object;Z)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_b

    .line 214
    .line 215
    goto/16 :goto_11

    .line 216
    .line 217
    :cond_b
    if-eqz v7, :cond_d

    .line 218
    .line 219
    move v8, v7

    .line 220
    :cond_c
    move-object v3, v4

    .line 221
    goto :goto_d

    .line 222
    :cond_d
    array-length v0, v4

    .line 223
    const/4 v12, 0x0

    .line 224
    const/4 v13, 0x0

    .line 225
    :goto_a
    if-ge v12, v0, :cond_10

    .line 226
    .line 227
    move-wide/from16 v22, v9

    .line 228
    .line 229
    aget-object v9, v4, v12

    .line 230
    .line 231
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 232
    .line 233
    .line 234
    move-result-wide v24

    .line 235
    cmp-long v10, v24, v16

    .line 236
    .line 237
    if-eqz v10, :cond_f

    .line 238
    .line 239
    cmp-long v10, v24, v20

    .line 240
    .line 241
    move-object/from16 v19, v4

    .line 242
    .line 243
    if-eqz v10, :cond_e

    .line 244
    .line 245
    iget-wide v3, v9, Lh8/n0;->d:J

    .line 246
    .line 247
    add-long v3, v3, v22

    .line 248
    .line 249
    iput-wide v3, v9, Lh8/n0;->d:J

    .line 250
    .line 251
    :cond_e
    iget-object v3, v9, Lh8/n0;->b:Lx7/d;

    .line 252
    .line 253
    invoke-interface {v3, v8}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    goto :goto_b

    .line 257
    :cond_f
    move-object/from16 v19, v4

    .line 258
    .line 259
    const/4 v13, 0x1

    .line 260
    :goto_b
    add-int/lit8 v12, v12, 0x1

    .line 261
    .line 262
    move-object/from16 v4, v19

    .line 263
    .line 264
    move-wide/from16 v9, v22

    .line 265
    .line 266
    const/4 v3, 0x1

    .line 267
    goto :goto_a

    .line 268
    :cond_10
    move-object/from16 v19, v4

    .line 269
    .line 270
    move-wide/from16 v22, v9

    .line 271
    .line 272
    add-int/lit8 v11, v11, 0x1

    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, [Lh8/n0;

    .line 279
    .line 280
    if-nez v13, :cond_12

    .line 281
    .line 282
    move-object/from16 v3, v19

    .line 283
    .line 284
    if-eq v0, v3, :cond_11

    .line 285
    .line 286
    goto :goto_c

    .line 287
    :cond_11
    move-object v4, v3

    .line 288
    move v8, v7

    .line 289
    move-wide/from16 v9, v22

    .line 290
    .line 291
    const/4 v3, 0x1

    .line 292
    goto :goto_7

    .line 293
    :cond_12
    :goto_c
    move-object v4, v0

    .line 294
    const/4 v3, 0x1

    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :goto_d
    if-lez v11, :cond_13

    .line 298
    .line 299
    iget v0, v1, Lh8/o0;->h:I

    .line 300
    .line 301
    const/4 v10, 0x1

    .line 302
    if-eq v0, v10, :cond_14

    .line 303
    .line 304
    iget-object v0, v1, Lh8/o0;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Ln9/b;

    .line 311
    .line 312
    invoke-interface {v0, v12, v13}, Ln9/b;->d(J)V

    .line 313
    .line 314
    .line 315
    goto :goto_e

    .line 316
    :cond_13
    const/4 v10, 0x1

    .line 317
    :cond_14
    :goto_e
    const-wide/16 v6, 0x0

    .line 318
    .line 319
    cmp-long v0, v14, v6

    .line 320
    .line 321
    if-eqz v0, :cond_16

    .line 322
    .line 323
    if-nez v8, :cond_16

    .line 324
    .line 325
    :goto_f
    move-object v4, v3

    .line 326
    :goto_10
    move v3, v10

    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_15
    move v10, v3

    .line 330
    :cond_16
    neg-int v0, v5

    .line 331
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    if-nez v5, :cond_17

    .line 336
    .line 337
    :goto_11
    return-void

    .line 338
    :cond_17
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    move-object v4, v0

    .line 343
    check-cast v4, [Lh8/n0;

    .line 344
    .line 345
    goto :goto_10
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lh8/o0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lh8/o0;->k:[Lh8/n0;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh8/o0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lh8/o0;->k:[Lh8/n0;

    .line 8
    .line 9
    if-eq v1, v2, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Lh8/n0;

    .line 16
    .line 17
    if-eq v0, v2, :cond_2

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lh8/o0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eq v0, p0, :cond_0

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lh8/o0;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    .line 37
    invoke-static {v0}, Lo8/f;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lh8/o0;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lh8/o0;->i:Le8/g;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Le8/g;->offer(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    new-instance p1, La8/d;

    .line 14
    .line 15
    const-string v0, "Prefetch queue is full?!"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lh8/o0;->onError(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Lh8/o0;->c()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final f(Ln9/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh8/o0;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lo8/f;->b(Ljava/util/concurrent/atomic/AtomicReference;Ln9/b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    instance-of v0, p1, Le8/d;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Le8/d;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-interface {v0, v1}, Le8/c;->h(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    iput v1, p0, Lh8/o0;->h:I

    .line 25
    .line 26
    iput-object v0, p0, Lh8/o0;->i:Le8/g;

    .line 27
    .line 28
    sget-object p1, Lp8/f;->b:Lp8/f;

    .line 29
    .line 30
    iput-object p1, p0, Lh8/o0;->g:Ljava/io/Serializable;

    .line 31
    .line 32
    invoke-virtual {p0}, Lh8/o0;->c()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const/4 v2, 0x2

    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    iput v1, p0, Lh8/o0;->h:I

    .line 40
    .line 41
    iput-object v0, p0, Lh8/o0;->i:Le8/g;

    .line 42
    .line 43
    iget v0, p0, Lh8/o0;->c:I

    .line 44
    .line 45
    int-to-long v0, v0

    .line 46
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    new-instance v0, Ll8/a;

    .line 51
    .line 52
    iget v1, p0, Lh8/o0;->c:I

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ll8/a;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lh8/o0;->i:Le8/g;

    .line 58
    .line 59
    iget v0, p0, Lh8/o0;->c:I

    .line 60
    .line 61
    int-to-long v0, v0

    .line 62
    invoke-interface {p1, v0, v1}, Ln9/b;->d(J)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public final h(Lh8/n0;)V
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Lh8/o0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, [Lh8/n0;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_4

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_1
    if-ge v4, v2, :cond_2

    .line 16
    .line 17
    aget-object v5, v1, v4

    .line 18
    .line 19
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v4, -0x1

    .line 30
    :goto_2
    if-gez v4, :cond_3

    .line 31
    .line 32
    goto :goto_4

    .line 33
    :cond_3
    const/4 v5, 0x1

    .line 34
    if-ne v2, v5, :cond_4

    .line 35
    .line 36
    sget-object v2, Lh8/o0;->j:[Lh8/n0;

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_4
    add-int/lit8 v6, v2, -0x1

    .line 40
    .line 41
    new-array v6, v6, [Lh8/n0;

    .line 42
    .line 43
    invoke-static {v1, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v4, 0x1

    .line 47
    .line 48
    sub-int/2addr v2, v4

    .line 49
    sub-int/2addr v2, v5

    .line 50
    invoke-static {v1, v3, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    move-object v2, v6

    .line 54
    :cond_5
    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_6

    .line 59
    .line 60
    :goto_4
    return-void

    .line 61
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eq v3, v1, :cond_5

    .line 66
    .line 67
    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh8/o0;->g:Ljava/io/Serializable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lp8/e;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lp8/e;-><init>(Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lh8/o0;->g:Ljava/io/Serializable;

    .line 11
    .line 12
    invoke-virtual {p0}, Lh8/o0;->c()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
