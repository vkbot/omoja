.class public final Lh8/d0;
.super Lo8/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Ljava/util/Iterator;

.field public volatile c:Z

.field public d:Z

.field public final synthetic e:I

.field public final f:Lx7/d;


# direct methods
.method public constructor <init>(Lx7/d;Ljava/util/Iterator;I)V
    .locals 0

    .line 1
    iput p3, p0, Lh8/d0;->e:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 7
    .line 8
    iput-object p1, p0, Lh8/d0;->f:Lx7/d;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lh8/d0;->c:Z

    .line 3
    .line 4
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 3
    .line 4
    return-void
.end method

.method public final d(J)V
    .locals 8

    .line 1
    invoke-static {p1, p2}, Lo8/f;->c(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1c

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Le3/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-nez v0, :cond_1c

    .line 16
    .line 17
    const-wide v0, 0x7fffffffffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-nez v0, :cond_b

    .line 25
    .line 26
    iget p1, p0, Lh8/d0;->e:I

    .line 27
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 32
    .line 33
    iget-object p2, p0, Lh8/d0;->f:Lx7/d;

    .line 34
    .line 35
    :cond_0
    iget-boolean v0, p0, Lh8/d0;->c:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    iget-boolean v1, p0, Lh8/d0;->c:Z

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_2
    if-nez v0, :cond_3

    .line 52
    .line 53
    new-instance p1, Ljava/lang/NullPointerException;

    .line 54
    .line 55
    const-string v0, "Iterator.next() returned a null value"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_3
    invoke-interface {p2, v0}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v0, p0, Lh8/d0;->c:Z

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :cond_4
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    if-nez v0, :cond_0

    .line 79
    .line 80
    iget-boolean p1, p0, Lh8/d0;->c:Z

    .line 81
    .line 82
    if-nez p1, :cond_a

    .line 83
    .line 84
    invoke-interface {p2}, Lx7/d;->a()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p2, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_1
    move-exception p1

    .line 97
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p2, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :pswitch_0
    iget-object p1, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 105
    .line 106
    iget-object p2, p0, Lh8/d0;->f:Lx7/d;

    .line 107
    .line 108
    check-cast p2, Le8/a;

    .line 109
    .line 110
    :cond_5
    iget-boolean v0, p0, Lh8/d0;->c:Z

    .line 111
    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    :try_start_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 119
    iget-boolean v1, p0, Lh8/d0;->c:Z

    .line 120
    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_7
    if-nez v0, :cond_8

    .line 125
    .line 126
    new-instance p1, Ljava/lang/NullPointerException;

    .line 127
    .line 128
    const-string v0, "Iterator.next() returned a null value"

    .line 129
    .line 130
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p2, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_8
    invoke-interface {p2, v0}, Le8/a;->g(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    iget-boolean v0, p0, Lh8/d0;->c:Z

    .line 141
    .line 142
    if-eqz v0, :cond_9

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_9
    :try_start_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 149
    if-nez v0, :cond_5

    .line 150
    .line 151
    iget-boolean p1, p0, Lh8/d0;->c:Z

    .line 152
    .line 153
    if-nez p1, :cond_a

    .line 154
    .line 155
    invoke-interface {p2}, Lx7/d;->a()V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :catchall_2
    move-exception p1

    .line 160
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {p2, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :catchall_3
    move-exception p1

    .line 168
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {p2, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    :cond_a
    :goto_0
    return-void

    .line 175
    :cond_b
    iget v0, p0, Lh8/d0;->e:I

    .line 176
    .line 177
    packed-switch v0, :pswitch_data_1

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 181
    .line 182
    iget-object v1, p0, Lh8/d0;->f:Lx7/d;

    .line 183
    .line 184
    const-wide/16 v2, 0x0

    .line 185
    .line 186
    :cond_c
    move-wide v4, v2

    .line 187
    :cond_d
    :goto_1
    cmp-long v6, v4, p1

    .line 188
    .line 189
    if-eqz v6, :cond_13

    .line 190
    .line 191
    iget-boolean v6, p0, Lh8/d0;->c:Z

    .line 192
    .line 193
    if-eqz v6, :cond_e

    .line 194
    .line 195
    goto/16 :goto_3

    .line 196
    .line 197
    :cond_e
    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 201
    iget-boolean v7, p0, Lh8/d0;->c:Z

    .line 202
    .line 203
    if-eqz v7, :cond_f

    .line 204
    .line 205
    goto/16 :goto_3

    .line 206
    .line 207
    :cond_f
    if-nez v6, :cond_10

    .line 208
    .line 209
    new-instance p1, Ljava/lang/NullPointerException;

    .line 210
    .line 211
    const-string p2, "Iterator.next() returned a null value"

    .line 212
    .line 213
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v1, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_3

    .line 220
    .line 221
    :cond_10
    invoke-interface {v1, v6}, Lx7/d;->e(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    iget-boolean v6, p0, Lh8/d0;->c:Z

    .line 225
    .line 226
    if-eqz v6, :cond_11

    .line 227
    .line 228
    goto/16 :goto_3

    .line 229
    .line 230
    :cond_11
    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 234
    if-nez v6, :cond_12

    .line 235
    .line 236
    iget-boolean p1, p0, Lh8/d0;->c:Z

    .line 237
    .line 238
    if-nez p1, :cond_1c

    .line 239
    .line 240
    invoke-interface {v1}, Lx7/d;->a()V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_3

    .line 244
    .line 245
    :cond_12
    const-wide/16 v6, 0x1

    .line 246
    .line 247
    add-long/2addr v4, v6

    .line 248
    goto :goto_1

    .line 249
    :catchall_4
    move-exception p1

    .line 250
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    invoke-interface {v1, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_3

    .line 257
    .line 258
    :catchall_5
    move-exception p1

    .line 259
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 260
    .line 261
    .line 262
    invoke-interface {v1, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_3

    .line 266
    .line 267
    :cond_13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 268
    .line 269
    .line 270
    move-result-wide p1

    .line 271
    cmp-long v6, v4, p1

    .line 272
    .line 273
    if-nez v6, :cond_d

    .line 274
    .line 275
    neg-long p1, v4

    .line 276
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 277
    .line 278
    .line 279
    move-result-wide p1

    .line 280
    cmp-long v4, p1, v2

    .line 281
    .line 282
    if-nez v4, :cond_c

    .line 283
    .line 284
    goto/16 :goto_3

    .line 285
    .line 286
    :pswitch_1
    iget-object v0, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 287
    .line 288
    iget-object v1, p0, Lh8/d0;->f:Lx7/d;

    .line 289
    .line 290
    check-cast v1, Le8/a;

    .line 291
    .line 292
    const-wide/16 v2, 0x0

    .line 293
    .line 294
    :cond_14
    move-wide v4, v2

    .line 295
    :cond_15
    :goto_2
    cmp-long v6, v4, p1

    .line 296
    .line 297
    if-eqz v6, :cond_1b

    .line 298
    .line 299
    iget-boolean v6, p0, Lh8/d0;->c:Z

    .line 300
    .line 301
    if-eqz v6, :cond_16

    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_16
    :try_start_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 308
    iget-boolean v7, p0, Lh8/d0;->c:Z

    .line 309
    .line 310
    if-eqz v7, :cond_17

    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_17
    if-nez v6, :cond_18

    .line 314
    .line 315
    new-instance p1, Ljava/lang/NullPointerException;

    .line 316
    .line 317
    const-string p2, "Iterator.next() returned a null value"

    .line 318
    .line 319
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-interface {v1, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 323
    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_18
    invoke-interface {v1, v6}, Le8/a;->g(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v6

    .line 330
    iget-boolean v7, p0, Lh8/d0;->c:Z

    .line 331
    .line 332
    if-eqz v7, :cond_19

    .line 333
    .line 334
    goto :goto_3

    .line 335
    :cond_19
    :try_start_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 339
    if-nez v7, :cond_1a

    .line 340
    .line 341
    iget-boolean p1, p0, Lh8/d0;->c:Z

    .line 342
    .line 343
    if-nez p1, :cond_1c

    .line 344
    .line 345
    invoke-interface {v1}, Lx7/d;->a()V

    .line 346
    .line 347
    .line 348
    goto :goto_3

    .line 349
    :cond_1a
    if-eqz v6, :cond_15

    .line 350
    .line 351
    const-wide/16 v6, 0x1

    .line 352
    .line 353
    add-long/2addr v4, v6

    .line 354
    goto :goto_2

    .line 355
    :catchall_6
    move-exception p1

    .line 356
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 357
    .line 358
    .line 359
    invoke-interface {v1, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 360
    .line 361
    .line 362
    goto :goto_3

    .line 363
    :catchall_7
    move-exception p1

    .line 364
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 365
    .line 366
    .line 367
    invoke-interface {v1, p1}, Lx7/d;->onError(Ljava/lang/Throwable;)V

    .line 368
    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_1b
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 372
    .line 373
    .line 374
    move-result-wide p1

    .line 375
    cmp-long v6, v4, p1

    .line 376
    .line 377
    if-nez v6, :cond_15

    .line 378
    .line 379
    neg-long p1, v4

    .line 380
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 381
    .line 382
    .line 383
    move-result-wide p1

    .line 384
    cmp-long v4, p1, v2

    .line 385
    .line 386
    if-nez v4, :cond_14

    .line 387
    .line 388
    :cond_1c
    :goto_3
    return-void

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final h(I)I
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lh8/d0;->d:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lh8/d0;->d:Z

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    :goto_0
    const/4 v0, 0x0

    .line 21
    return-object v0

    .line 22
    :cond_2
    :goto_1
    iget-object v0, p0, Lh8/d0;->b:Ljava/util/Iterator;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "Iterator.next() returned a null value"

    .line 29
    .line 30
    invoke-static {v0, v1}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
