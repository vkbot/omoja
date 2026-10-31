.class public final Lo7/e0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 18
    iput p1, p0, Lo7/e0;->b:I

    iput-object p2, p0, Lo7/e0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lo7/e0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo7/c2;Lo7/b2;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lo7/e0;->b:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo7/e0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lo7/e0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo7/p0;Ln7/t;)V
    .locals 1

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    iput v0, p0, Lo7/e0;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lo7/e0;->c:Ljava/lang/Object;

    .line 9
    .line 10
    const-string p1, "savedListener"

    .line 11
    .line 12
    invoke-static {p2, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lo7/e0;->d:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo7/e0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo7/w4;

    .line 4
    .line 5
    iget-object v0, v0, Lo7/w4;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lo7/v1;

    .line 8
    .line 9
    iget-object v0, v0, Lo7/v1;->v:Lo7/w;

    .line 10
    .line 11
    iget-object v1, p0, Lo7/e0;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Ln7/v0;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lo7/w;->l(Ln7/v0;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lo7/e0;->b:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/16 v3, 0x16

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lo7/w4;

    .line 18
    .line 19
    iget-object v0, v0, Lo7/w4;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lo7/v1;

    .line 22
    .line 23
    iget-object v0, v0, Lo7/v1;->v:Lo7/w;

    .line 24
    .line 25
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Lo7/o2;

    .line 28
    .line 29
    invoke-interface {v0, v2}, Lo7/w;->k(Lo7/o2;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    invoke-direct {v1}, Lo7/e0;->a()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lo7/v1;

    .line 40
    .line 41
    iget-object v2, v0, Lo7/v1;->p:Lo7/z3;

    .line 42
    .line 43
    iget v2, v2, Lo7/z3;->e:I

    .line 44
    .line 45
    invoke-virtual {v0, v2, v6}, Lo7/v1;->k(IZ)Lo7/c4;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lo7/v1;

    .line 55
    .line 56
    iget-object v2, v2, Lo7/v1;->c:Ljava/util/concurrent/Executor;

    .line 57
    .line 58
    new-instance v3, Lo7/e0;

    .line 59
    .line 60
    const/16 v4, 0x15

    .line 61
    .line 62
    invoke-direct {v3, v4, v1, v0}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void

    .line 69
    :pswitch_2
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lo7/e0;

    .line 72
    .line 73
    iget-object v0, v0, Lo7/e0;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Lo7/v1;

    .line 76
    .line 77
    iget-object v2, v0, Lo7/v1;->j:Ljava/lang/Object;

    .line 78
    .line 79
    monitor-enter v2

    .line 80
    :try_start_0
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lo7/e0;

    .line 83
    .line 84
    iget-object v4, v0, Lo7/e0;->d:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v4, Lcom/bumptech/glide/manager/t;

    .line 87
    .line 88
    iget-boolean v4, v4, Lcom/bumptech/glide/manager/t;->c:Z

    .line 89
    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    move v6, v7

    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_1
    iget-object v0, v0, Lo7/e0;->c:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Lo7/v1;

    .line 98
    .line 99
    iget-object v4, v0, Lo7/v1;->p:Lo7/z3;

    .line 100
    .line 101
    iget-object v8, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v8, Lo7/c4;

    .line 104
    .line 105
    invoke-virtual {v4, v8}, Lo7/z3;->a(Lo7/c4;)Lo7/z3;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    iput-object v4, v0, Lo7/v1;->p:Lo7/z3;

    .line 110
    .line 111
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Lo7/e0;

    .line 114
    .line 115
    iget-object v0, v0, Lo7/e0;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Lo7/v1;

    .line 118
    .line 119
    iget-object v4, v0, Lo7/v1;->p:Lo7/z3;

    .line 120
    .line 121
    invoke-virtual {v0, v4}, Lo7/v1;->r(Lo7/z3;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Lo7/e0;

    .line 130
    .line 131
    iget-object v0, v0, Lo7/e0;->c:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v0, Lo7/v1;

    .line 134
    .line 135
    iget-object v0, v0, Lo7/v1;->n:Lo7/d4;

    .line 136
    .line 137
    if-eqz v0, :cond_3

    .line 138
    .line 139
    iget-object v4, v0, Lo7/d4;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    iget v0, v0, Lo7/d4;->b:I

    .line 146
    .line 147
    if-le v4, v0, :cond_2

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    move v7, v6

    .line 151
    :goto_1
    if-eqz v7, :cond_4

    .line 152
    .line 153
    :cond_3
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v0, Lo7/e0;

    .line 156
    .line 157
    iget-object v0, v0, Lo7/e0;->c:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v0, Lo7/v1;

    .line 160
    .line 161
    new-instance v5, Lcom/bumptech/glide/manager/t;

    .line 162
    .line 163
    iget-object v4, v0, Lo7/v1;->j:Ljava/lang/Object;

    .line 164
    .line 165
    invoke-direct {v5, v4}, Lcom/bumptech/glide/manager/t;-><init>(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iput-object v5, v0, Lo7/v1;->x:Lcom/bumptech/glide/manager/t;

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :catchall_0
    move-exception v0

    .line 172
    goto/16 :goto_5

    .line 173
    .line 174
    :cond_4
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, Lo7/e0;

    .line 177
    .line 178
    iget-object v0, v0, Lo7/e0;->c:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Lo7/v1;

    .line 181
    .line 182
    iget-object v4, v0, Lo7/v1;->p:Lo7/z3;

    .line 183
    .line 184
    iget-boolean v7, v4, Lo7/z3;->h:Z

    .line 185
    .line 186
    if-eqz v7, :cond_5

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_5
    new-instance v8, Lo7/z3;

    .line 190
    .line 191
    iget-object v9, v4, Lo7/z3;->b:Ljava/util/List;

    .line 192
    .line 193
    iget-object v10, v4, Lo7/z3;->c:Ljava/util/Collection;

    .line 194
    .line 195
    iget-object v11, v4, Lo7/z3;->d:Ljava/util/Collection;

    .line 196
    .line 197
    iget-object v12, v4, Lo7/z3;->f:Lo7/c4;

    .line 198
    .line 199
    iget-boolean v13, v4, Lo7/z3;->g:Z

    .line 200
    .line 201
    iget-boolean v14, v4, Lo7/z3;->a:Z

    .line 202
    .line 203
    iget v4, v4, Lo7/z3;->e:I

    .line 204
    .line 205
    const/4 v15, 0x1

    .line 206
    move/from16 v16, v4

    .line 207
    .line 208
    invoke-direct/range {v8 .. v16}, Lo7/z3;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo7/c4;ZZZI)V

    .line 209
    .line 210
    .line 211
    move-object v4, v8

    .line 212
    :goto_2
    iput-object v4, v0, Lo7/v1;->p:Lo7/z3;

    .line 213
    .line 214
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v0, Lo7/e0;

    .line 217
    .line 218
    iget-object v0, v0, Lo7/e0;->c:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v0, Lo7/v1;

    .line 221
    .line 222
    iput-object v5, v0, Lo7/v1;->x:Lcom/bumptech/glide/manager/t;

    .line 223
    .line 224
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    if-eqz v6, :cond_6

    .line 226
    .line 227
    iget-object v0, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v0, Lo7/c4;

    .line 230
    .line 231
    iget-object v2, v0, Lo7/c4;->a:Lo7/u;

    .line 232
    .line 233
    new-instance v3, Lo7/w4;

    .line 234
    .line 235
    iget-object v4, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v4, Lo7/e0;

    .line 238
    .line 239
    iget-object v4, v4, Lo7/e0;->c:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v4, Lo7/v1;

    .line 242
    .line 243
    const/4 v5, 0x5

    .line 244
    invoke-direct {v3, v5, v4, v0}, Lo7/w4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    invoke-interface {v2, v3}, Lo7/u;->d(Lo7/w;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v0, Lo7/c4;

    .line 253
    .line 254
    iget-object v0, v0, Lo7/c4;->a:Lo7/u;

    .line 255
    .line 256
    sget-object v2, Ln7/f1;->f:Ln7/f1;

    .line 257
    .line 258
    const-string v3, "Unneeded hedging"

    .line 259
    .line 260
    invoke-virtual {v2, v3}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-interface {v0, v2}, Lo7/u;->h(Ln7/f1;)V

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_6
    if-eqz v5, :cond_7

    .line 269
    .line 270
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v0, Lo7/e0;

    .line 273
    .line 274
    iget-object v0, v0, Lo7/e0;->c:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v0, Lo7/v1;

    .line 277
    .line 278
    iget-object v2, v0, Lo7/v1;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 279
    .line 280
    new-instance v4, Lo7/e0;

    .line 281
    .line 282
    invoke-direct {v4, v3, v0, v5}, Lo7/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, v0, Lo7/v1;->h:Lo7/a1;

    .line 286
    .line 287
    iget-wide v6, v0, Lo7/a1;->b:J

    .line 288
    .line 289
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 290
    .line 291
    invoke-interface {v2, v4, v6, v7, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v5, v0}, Lcom/bumptech/glide/manager/t;->i(Ljava/util/concurrent/ScheduledFuture;)V

    .line 296
    .line 297
    .line 298
    :cond_7
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v0, Lo7/e0;

    .line 301
    .line 302
    iget-object v0, v0, Lo7/e0;->c:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v0, Lo7/v1;

    .line 305
    .line 306
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v2, Lo7/c4;

    .line 309
    .line 310
    invoke-virtual {v0, v2}, Lo7/v1;->p(Lo7/c4;)V

    .line 311
    .line 312
    .line 313
    :goto_4
    return-void

    .line 314
    :goto_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    throw v0

    .line 316
    :pswitch_3
    iget-object v0, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v0, Lo7/r;

    .line 319
    .line 320
    invoke-virtual {v0}, Lo7/d0;->run()V

    .line 321
    .line 322
    .line 323
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v0, Lo7/b2;

    .line 326
    .line 327
    iget-object v2, v0, Lo7/b2;->q:Lo7/c2;

    .line 328
    .line 329
    iget-object v2, v2, Lo7/c2;->d:Lo7/f2;

    .line 330
    .line 331
    iget-object v2, v2, Lo7/f2;->m:Ln7/k1;

    .line 332
    .line 333
    new-instance v3, Lo7/f0;

    .line 334
    .line 335
    invoke-direct {v3, v0, v4}, Lo7/f0;-><init>(Lo7/b2;I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v3}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :pswitch_4
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v0, Lo7/b2;

    .line 345
    .line 346
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast v2, Lo7/c2;

    .line 349
    .line 350
    iget-object v3, v2, Lo7/c2;->d:Lo7/f2;

    .line 351
    .line 352
    iget-object v2, v2, Lo7/c2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 353
    .line 354
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    sget-object v4, Lo7/f2;->h0:Lo7/s1;

    .line 359
    .line 360
    if-ne v2, v4, :cond_9

    .line 361
    .line 362
    iget-object v2, v3, Lo7/f2;->B:Ljava/util/LinkedHashSet;

    .line 363
    .line 364
    if-nez v2, :cond_8

    .line 365
    .line 366
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 367
    .line 368
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 369
    .line 370
    .line 371
    iput-object v2, v3, Lo7/f2;->B:Ljava/util/LinkedHashSet;

    .line 372
    .line 373
    iget-object v2, v3, Lo7/f2;->Y:Lo7/e1;

    .line 374
    .line 375
    iget-object v4, v3, Lo7/f2;->C:Ljava/lang/Object;

    .line 376
    .line 377
    invoke-virtual {v2, v4, v7}, Lk/a;->d(Ljava/lang/Object;Z)V

    .line 378
    .line 379
    .line 380
    :cond_8
    iget-object v2, v3, Lo7/f2;->B:Ljava/util/LinkedHashSet;

    .line 381
    .line 382
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    goto :goto_6

    .line 386
    :cond_9
    invoke-virtual {v0}, Lo7/b2;->u()V

    .line 387
    .line 388
    .line 389
    :goto_6
    return-void

    .line 390
    :pswitch_5
    sget-object v8, Ln7/y;->a:Ln7/a;

    .line 391
    .line 392
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v0, Lo7/z1;

    .line 395
    .line 396
    iget-object v9, v0, Lo7/z1;->f:Lo7/f2;

    .line 397
    .line 398
    iget-object v10, v9, Lo7/f2;->v:Lo7/h4;

    .line 399
    .line 400
    iget-object v0, v0, Lo7/z1;->e:Ln7/e;

    .line 401
    .line 402
    if-eq v10, v0, :cond_a

    .line 403
    .line 404
    goto/16 :goto_e

    .line 405
    .line 406
    :cond_a
    iget-object v0, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast v0, Ln7/z0;

    .line 409
    .line 410
    iget-object v10, v0, Ln7/z0;->a:Ljava/util/List;

    .line 411
    .line 412
    iget-object v9, v9, Lo7/f2;->N:Lo7/m;

    .line 413
    .line 414
    const-string v11, "Resolved address: {0}, config={1}"

    .line 415
    .line 416
    iget-object v0, v0, Ln7/z0;->b:Ln7/b;

    .line 417
    .line 418
    filled-new-array {v10, v0}, [Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-virtual {v9, v7, v11, v0}, Lo7/m;->n(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast v0, Lo7/z1;

    .line 428
    .line 429
    iget-object v0, v0, Lo7/z1;->f:Lo7/f2;

    .line 430
    .line 431
    iget v9, v0, Lo7/f2;->b0:I

    .line 432
    .line 433
    if-eq v9, v4, :cond_b

    .line 434
    .line 435
    iget-object v0, v0, Lo7/f2;->N:Lo7/m;

    .line 436
    .line 437
    const-string v9, "Address resolved: {0}"

    .line 438
    .line 439
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v11

    .line 443
    invoke-virtual {v0, v4, v9, v11}, Lo7/m;->n(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v0, Lo7/z1;

    .line 449
    .line 450
    iget-object v0, v0, Lo7/z1;->f:Lo7/f2;

    .line 451
    .line 452
    iput v4, v0, Lo7/f2;->b0:I

    .line 453
    .line 454
    :cond_b
    iget-object v0, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast v0, Ln7/z0;

    .line 457
    .line 458
    iget-object v9, v0, Ln7/z0;->c:Ln7/y0;

    .line 459
    .line 460
    iget-object v0, v0, Ln7/z0;->b:Ln7/b;

    .line 461
    .line 462
    sget-object v11, Lo7/h4;->e:Ln7/a;

    .line 463
    .line 464
    iget-object v0, v0, Ln7/b;->a:Ljava/util/IdentityHashMap;

    .line 465
    .line 466
    invoke-virtual {v0, v11}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    move-object v11, v0

    .line 471
    check-cast v11, Lo7/f4;

    .line 472
    .line 473
    iget-object v0, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 474
    .line 475
    check-cast v0, Ln7/z0;

    .line 476
    .line 477
    iget-object v0, v0, Ln7/z0;->b:Ln7/b;

    .line 478
    .line 479
    iget-object v0, v0, Ln7/b;->a:Ljava/util/IdentityHashMap;

    .line 480
    .line 481
    invoke-virtual {v0, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    check-cast v0, Ln7/y;

    .line 486
    .line 487
    if-eqz v9, :cond_c

    .line 488
    .line 489
    iget-object v12, v9, Ln7/y0;->b:Ljava/lang/Object;

    .line 490
    .line 491
    if-eqz v12, :cond_c

    .line 492
    .line 493
    check-cast v12, Lo7/l2;

    .line 494
    .line 495
    goto :goto_7

    .line 496
    :cond_c
    move-object v12, v5

    .line 497
    :goto_7
    if-eqz v9, :cond_d

    .line 498
    .line 499
    iget-object v13, v9, Ln7/y0;->a:Ln7/f1;

    .line 500
    .line 501
    goto :goto_8

    .line 502
    :cond_d
    move-object v13, v5

    .line 503
    :goto_8
    iget-object v14, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v14, Lo7/z1;

    .line 506
    .line 507
    iget-object v14, v14, Lo7/z1;->f:Lo7/f2;

    .line 508
    .line 509
    iget-boolean v15, v14, Lo7/f2;->S:Z

    .line 510
    .line 511
    const/16 v6, 0x9

    .line 512
    .line 513
    if-nez v15, :cond_10

    .line 514
    .line 515
    if-eqz v12, :cond_e

    .line 516
    .line 517
    iget-object v9, v14, Lo7/f2;->N:Lo7/m;

    .line 518
    .line 519
    const-string v12, "Service config from name resolver discarded by channel settings"

    .line 520
    .line 521
    invoke-virtual {v9, v4, v12}, Lo7/m;->m(ILjava/lang/String;)V

    .line 522
    .line 523
    .line 524
    :cond_e
    iget-object v9, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v9, Lo7/z1;

    .line 527
    .line 528
    iget-object v9, v9, Lo7/z1;->f:Lo7/f2;

    .line 529
    .line 530
    sget-object v12, Lo7/f2;->g0:Lo7/l2;

    .line 531
    .line 532
    if-eqz v0, :cond_f

    .line 533
    .line 534
    iget-object v0, v9, Lo7/f2;->N:Lo7/m;

    .line 535
    .line 536
    const-string v9, "Config selector from name resolver discarded by channel settings"

    .line 537
    .line 538
    invoke-virtual {v0, v4, v9}, Lo7/m;->m(ILjava/lang/String;)V

    .line 539
    .line 540
    .line 541
    :cond_f
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast v0, Lo7/z1;

    .line 544
    .line 545
    iget-object v0, v0, Lo7/z1;->f:Lo7/f2;

    .line 546
    .line 547
    iget-object v0, v0, Lo7/f2;->P:Lo7/c2;

    .line 548
    .line 549
    invoke-virtual {v12}, Lo7/l2;->b()Lo7/k2;

    .line 550
    .line 551
    .line 552
    move-result-object v9

    .line 553
    invoke-virtual {v0, v9}, Lo7/c2;->h(Ln7/y;)V

    .line 554
    .line 555
    .line 556
    goto/16 :goto_b

    .line 557
    .line 558
    :cond_10
    if-eqz v12, :cond_12

    .line 559
    .line 560
    iget-object v9, v14, Lo7/f2;->P:Lo7/c2;

    .line 561
    .line 562
    if-eqz v0, :cond_11

    .line 563
    .line 564
    invoke-virtual {v9, v0}, Lo7/c2;->h(Ln7/y;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v12}, Lo7/l2;->b()Lo7/k2;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    if-eqz v0, :cond_16

    .line 572
    .line 573
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast v0, Lo7/z1;

    .line 576
    .line 577
    iget-object v0, v0, Lo7/z1;->f:Lo7/f2;

    .line 578
    .line 579
    iget-object v0, v0, Lo7/f2;->N:Lo7/m;

    .line 580
    .line 581
    const-string v9, "Method configs in service config will be discarded due to presence ofconfig-selector"

    .line 582
    .line 583
    invoke-virtual {v0, v7, v9}, Lo7/m;->m(ILjava/lang/String;)V

    .line 584
    .line 585
    .line 586
    goto :goto_9

    .line 587
    :cond_11
    invoke-virtual {v12}, Lo7/l2;->b()Lo7/k2;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    invoke-virtual {v9, v0}, Lo7/c2;->h(Ln7/y;)V

    .line 592
    .line 593
    .line 594
    goto :goto_9

    .line 595
    :cond_12
    if-eqz v13, :cond_15

    .line 596
    .line 597
    iget-boolean v0, v14, Lo7/f2;->R:Z

    .line 598
    .line 599
    if-nez v0, :cond_14

    .line 600
    .line 601
    iget-object v0, v14, Lo7/f2;->N:Lo7/m;

    .line 602
    .line 603
    const-string v2, "Fallback to error due to invalid first service config without default config"

    .line 604
    .line 605
    invoke-virtual {v0, v4, v2}, Lo7/m;->m(ILjava/lang/String;)V

    .line 606
    .line 607
    .line 608
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 609
    .line 610
    check-cast v0, Lo7/z1;

    .line 611
    .line 612
    iget-object v2, v9, Ln7/y0;->a:Ln7/f1;

    .line 613
    .line 614
    invoke-virtual {v0, v2}, Lo7/z1;->i(Ln7/f1;)V

    .line 615
    .line 616
    .line 617
    if-eqz v11, :cond_22

    .line 618
    .line 619
    iget-object v0, v9, Ln7/y0;->a:Ln7/f1;

    .line 620
    .line 621
    invoke-virtual {v0}, Ln7/f1;->f()Z

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    iget-object v2, v11, Lo7/f4;->a:Lo7/h4;

    .line 626
    .line 627
    iget-object v4, v2, Lo7/h4;->c:Lo7/j;

    .line 628
    .line 629
    if-eqz v0, :cond_13

    .line 630
    .line 631
    iget-object v0, v4, Lo7/j;->b:Ln7/k1;

    .line 632
    .line 633
    invoke-virtual {v0}, Ln7/k1;->d()V

    .line 634
    .line 635
    .line 636
    new-instance v2, Lf5/j;

    .line 637
    .line 638
    invoke-direct {v2, v6, v4}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0, v2}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 642
    .line 643
    .line 644
    goto/16 :goto_e

    .line 645
    .line 646
    :cond_13
    new-instance v0, Lcom/bumptech/glide/m;

    .line 647
    .line 648
    invoke-direct {v0, v3, v2}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v4, v0}, Lo7/j;->a(Lcom/bumptech/glide/m;)V

    .line 652
    .line 653
    .line 654
    goto/16 :goto_e

    .line 655
    .line 656
    :cond_14
    iget-object v12, v14, Lo7/f2;->Q:Lo7/l2;

    .line 657
    .line 658
    goto :goto_9

    .line 659
    :cond_15
    sget-object v12, Lo7/f2;->g0:Lo7/l2;

    .line 660
    .line 661
    iget-object v0, v14, Lo7/f2;->P:Lo7/c2;

    .line 662
    .line 663
    invoke-virtual {v0, v5}, Lo7/c2;->h(Ln7/y;)V

    .line 664
    .line 665
    .line 666
    :cond_16
    :goto_9
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 667
    .line 668
    check-cast v0, Lo7/z1;

    .line 669
    .line 670
    iget-object v0, v0, Lo7/z1;->f:Lo7/f2;

    .line 671
    .line 672
    iget-object v0, v0, Lo7/f2;->Q:Lo7/l2;

    .line 673
    .line 674
    invoke-virtual {v12, v0}, Lo7/l2;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    if-nez v0, :cond_18

    .line 679
    .line 680
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 681
    .line 682
    check-cast v0, Lo7/z1;

    .line 683
    .line 684
    iget-object v0, v0, Lo7/z1;->f:Lo7/f2;

    .line 685
    .line 686
    iget-object v0, v0, Lo7/f2;->N:Lo7/m;

    .line 687
    .line 688
    const-string v9, "Service config changed{0}"

    .line 689
    .line 690
    sget-object v13, Lo7/f2;->g0:Lo7/l2;

    .line 691
    .line 692
    if-ne v12, v13, :cond_17

    .line 693
    .line 694
    const-string v13, " to empty"

    .line 695
    .line 696
    goto :goto_a

    .line 697
    :cond_17
    const-string v13, ""

    .line 698
    .line 699
    :goto_a
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v13

    .line 703
    invoke-virtual {v0, v4, v9, v13}, Lo7/m;->n(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 707
    .line 708
    check-cast v0, Lo7/z1;

    .line 709
    .line 710
    iget-object v0, v0, Lo7/z1;->f:Lo7/f2;

    .line 711
    .line 712
    iput-object v12, v0, Lo7/f2;->Q:Lo7/l2;

    .line 713
    .line 714
    iget-object v0, v0, Lo7/f2;->Z:Lc0/h;

    .line 715
    .line 716
    iget-object v9, v12, Lo7/l2;->d:Lo7/d4;

    .line 717
    .line 718
    iput-object v9, v0, Lc0/h;->c:Ljava/lang/Object;

    .line 719
    .line 720
    :cond_18
    :try_start_2
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 721
    .line 722
    check-cast v0, Lo7/z1;

    .line 723
    .line 724
    iget-object v0, v0, Lo7/z1;->f:Lo7/f2;

    .line 725
    .line 726
    iput-boolean v7, v0, Lo7/f2;->R:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 727
    .line 728
    goto :goto_b

    .line 729
    :catch_0
    move-exception v0

    .line 730
    sget-object v9, Lo7/f2;->c0:Ljava/util/logging/Logger;

    .line 731
    .line 732
    sget-object v13, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 733
    .line 734
    new-instance v14, Ljava/lang/StringBuilder;

    .line 735
    .line 736
    const-string v15, "["

    .line 737
    .line 738
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    iget-object v15, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 742
    .line 743
    check-cast v15, Lo7/z1;

    .line 744
    .line 745
    iget-object v15, v15, Lo7/z1;->f:Lo7/f2;

    .line 746
    .line 747
    iget-object v15, v15, Lo7/f2;->a:Ln7/a0;

    .line 748
    .line 749
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    const-string v15, "] Unexpected exception from parsing service config"

    .line 753
    .line 754
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v14

    .line 761
    invoke-virtual {v9, v13, v14, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 762
    .line 763
    .line 764
    :goto_b
    iget-object v0, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 765
    .line 766
    check-cast v0, Ln7/z0;

    .line 767
    .line 768
    iget-object v0, v0, Ln7/z0;->b:Ln7/b;

    .line 769
    .line 770
    iget-object v9, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 771
    .line 772
    check-cast v9, Lo7/z1;

    .line 773
    .line 774
    iget-object v13, v9, Lo7/z1;->d:Lo7/y1;

    .line 775
    .line 776
    iget-object v9, v9, Lo7/z1;->f:Lo7/f2;

    .line 777
    .line 778
    iget-object v9, v9, Lo7/f2;->x:Lo7/y1;

    .line 779
    .line 780
    if-ne v13, v9, :cond_22

    .line 781
    .line 782
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    new-instance v9, Ll/d;

    .line 786
    .line 787
    invoke-direct {v9, v2, v0}, Ll/d;-><init>(ILjava/lang/Object;)V

    .line 788
    .line 789
    .line 790
    iget-object v0, v9, Ll/d;->c:Ljava/lang/Object;

    .line 791
    .line 792
    check-cast v0, Ln7/b;

    .line 793
    .line 794
    iget-object v0, v0, Ln7/b;->a:Ljava/util/IdentityHashMap;

    .line 795
    .line 796
    invoke-virtual {v0, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 797
    .line 798
    .line 799
    move-result v0

    .line 800
    if-eqz v0, :cond_19

    .line 801
    .line 802
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 803
    .line 804
    iget-object v2, v9, Ll/d;->c:Ljava/lang/Object;

    .line 805
    .line 806
    check-cast v2, Ln7/b;

    .line 807
    .line 808
    iget-object v2, v2, Ln7/b;->a:Ljava/util/IdentityHashMap;

    .line 809
    .line 810
    invoke-direct {v0, v2}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v0, v8}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    new-instance v2, Ln7/b;

    .line 817
    .line 818
    invoke-direct {v2, v0}, Ln7/b;-><init>(Ljava/util/IdentityHashMap;)V

    .line 819
    .line 820
    .line 821
    iput-object v2, v9, Ll/d;->c:Ljava/lang/Object;

    .line 822
    .line 823
    :cond_19
    iget-object v0, v9, Ll/d;->d:Ljava/lang/Object;

    .line 824
    .line 825
    check-cast v0, Ljava/util/IdentityHashMap;

    .line 826
    .line 827
    if-eqz v0, :cond_1a

    .line 828
    .line 829
    invoke-virtual {v0, v8}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    :cond_1a
    iget-object v0, v12, Lo7/l2;->f:Ljava/util/Map;

    .line 833
    .line 834
    if-eqz v0, :cond_1b

    .line 835
    .line 836
    sget-object v2, Ln7/j0;->b:Ln7/a;

    .line 837
    .line 838
    invoke-virtual {v9, v2, v0}, Ll/d;->M(Ln7/a;Ljava/lang/Object;)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v9}, Ll/d;->g()Ln7/b;

    .line 842
    .line 843
    .line 844
    :cond_1b
    invoke-virtual {v9}, Ll/d;->g()Ln7/b;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 849
    .line 850
    check-cast v2, Lo7/z1;

    .line 851
    .line 852
    iget-object v2, v2, Lo7/z1;->d:Lo7/y1;

    .line 853
    .line 854
    iget-object v2, v2, Lo7/y1;->b:Lb1/m;

    .line 855
    .line 856
    sget-object v8, Ln7/b;->b:Ln7/b;

    .line 857
    .line 858
    iget-object v8, v12, Lo7/l2;->e:Ljava/lang/Object;

    .line 859
    .line 860
    new-instance v9, Ln7/g0;

    .line 861
    .line 862
    invoke-direct {v9, v10, v0, v8}, Ln7/g0;-><init>(Ljava/util/List;Ln7/b;Ljava/lang/Object;)V

    .line 863
    .line 864
    .line 865
    iget-object v0, v2, Lb1/m;->c:Ljava/lang/Object;

    .line 866
    .line 867
    move-object v8, v0

    .line 868
    check-cast v8, Lo7/y1;

    .line 869
    .line 870
    iget-object v0, v9, Ln7/g0;->c:Ljava/lang/Object;

    .line 871
    .line 872
    check-cast v0, Lo7/o4;

    .line 873
    .line 874
    if-nez v0, :cond_1d

    .line 875
    .line 876
    :try_start_3
    iget-object v0, v2, Lb1/m;->f:Ljava/lang/Object;

    .line 877
    .line 878
    check-cast v0, Lo7/w4;

    .line 879
    .line 880
    iget-object v10, v0, Lo7/w4;->d:Ljava/lang/Object;

    .line 881
    .line 882
    check-cast v10, Ljava/lang/String;

    .line 883
    .line 884
    iget-object v0, v0, Lo7/w4;->c:Ljava/lang/Object;

    .line 885
    .line 886
    check-cast v0, Ln7/l0;

    .line 887
    .line 888
    invoke-virtual {v0, v10}, Ln7/l0;->b(Ljava/lang/String;)Ln7/k0;

    .line 889
    .line 890
    .line 891
    move-result-object v0
    :try_end_3
    .catch Lo7/i; {:try_start_3 .. :try_end_3} :catch_1

    .line 892
    if-eqz v0, :cond_1c

    .line 893
    .line 894
    new-instance v10, Lo7/o4;

    .line 895
    .line 896
    invoke-direct {v10, v0, v5}, Lo7/o4;-><init>(Ln7/k0;Ljava/lang/Object;)V

    .line 897
    .line 898
    .line 899
    move-object v0, v10

    .line 900
    goto :goto_c

    .line 901
    :cond_1c
    :try_start_4
    new-instance v0, Lo7/i;

    .line 902
    .line 903
    new-instance v4, Ljava/lang/StringBuilder;

    .line 904
    .line 905
    const-string v7, "Trying to load \'"

    .line 906
    .line 907
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    const-string v7, "\' because using default policy, but it\'s unavailable"

    .line 914
    .line 915
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    .line 917
    .line 918
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v4

    .line 922
    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    throw v0
    :try_end_4
    .catch Lo7/i; {:try_start_4 .. :try_end_4} :catch_1

    .line 926
    :catch_1
    move-exception v0

    .line 927
    sget-object v4, Ln7/f1;->l:Ln7/f1;

    .line 928
    .line 929
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    invoke-virtual {v4, v0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    sget-object v4, Ln7/j;->d:Ln7/j;

    .line 938
    .line 939
    new-instance v7, Lo7/x2;

    .line 940
    .line 941
    invoke-direct {v7, v0}, Lo7/x2;-><init>(Ln7/f1;)V

    .line 942
    .line 943
    .line 944
    invoke-virtual {v8, v4, v7}, Lo7/y1;->D(Ln7/j;Ln7/h0;)V

    .line 945
    .line 946
    .line 947
    iget-object v0, v2, Lb1/m;->d:Ljava/lang/Object;

    .line 948
    .line 949
    check-cast v0, Ln7/j0;

    .line 950
    .line 951
    invoke-virtual {v0}, Ln7/j0;->f()V

    .line 952
    .line 953
    .line 954
    iput-object v5, v2, Lb1/m;->e:Ljava/lang/Object;

    .line 955
    .line 956
    new-instance v0, Lo7/h;

    .line 957
    .line 958
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 959
    .line 960
    .line 961
    iput-object v0, v2, Lb1/m;->d:Ljava/lang/Object;

    .line 962
    .line 963
    sget-object v0, Ln7/f1;->e:Ln7/f1;

    .line 964
    .line 965
    goto/16 :goto_d

    .line 966
    .line 967
    :cond_1d
    :goto_c
    iget-object v5, v0, Lo7/o4;->b:Ljava/lang/Object;

    .line 968
    .line 969
    iget-object v0, v0, Lo7/o4;->a:Ln7/k0;

    .line 970
    .line 971
    iget-object v10, v2, Lb1/m;->e:Ljava/lang/Object;

    .line 972
    .line 973
    check-cast v10, Ln7/k0;

    .line 974
    .line 975
    if-eqz v10, :cond_1e

    .line 976
    .line 977
    invoke-virtual {v0}, Ln7/k0;->a()Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v10

    .line 981
    iget-object v12, v2, Lb1/m;->e:Ljava/lang/Object;

    .line 982
    .line 983
    check-cast v12, Ln7/k0;

    .line 984
    .line 985
    invoke-virtual {v12}, Ln7/k0;->a()Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v12

    .line 989
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    move-result v10

    .line 993
    if-nez v10, :cond_1f

    .line 994
    .line 995
    :cond_1e
    sget-object v10, Ln7/j;->b:Ln7/j;

    .line 996
    .line 997
    new-instance v12, Lo7/g;

    .line 998
    .line 999
    const/4 v13, 0x0

    .line 1000
    invoke-direct {v12, v13}, Lo7/g;-><init>(I)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v8, v10, v12}, Lo7/y1;->D(Ln7/j;Ln7/h0;)V

    .line 1004
    .line 1005
    .line 1006
    iget-object v10, v2, Lb1/m;->d:Ljava/lang/Object;

    .line 1007
    .line 1008
    check-cast v10, Ln7/j0;

    .line 1009
    .line 1010
    invoke-virtual {v10}, Ln7/j0;->f()V

    .line 1011
    .line 1012
    .line 1013
    iput-object v0, v2, Lb1/m;->e:Ljava/lang/Object;

    .line 1014
    .line 1015
    iget-object v10, v2, Lb1/m;->d:Ljava/lang/Object;

    .line 1016
    .line 1017
    check-cast v10, Ln7/j0;

    .line 1018
    .line 1019
    invoke-virtual {v0, v8}, Ln7/k0;->b(Ln7/e;)Ln7/j0;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    iput-object v0, v2, Lb1/m;->d:Ljava/lang/Object;

    .line 1024
    .line 1025
    iget-object v0, v8, Lo7/y1;->c:Lo7/f2;

    .line 1026
    .line 1027
    iget-object v0, v0, Lo7/f2;->N:Lo7/m;

    .line 1028
    .line 1029
    const-string v12, "Load balancer changed from {0} to {1}"

    .line 1030
    .line 1031
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v10

    .line 1035
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v10

    .line 1039
    iget-object v13, v2, Lb1/m;->d:Ljava/lang/Object;

    .line 1040
    .line 1041
    check-cast v13, Ln7/j0;

    .line 1042
    .line 1043
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v13

    .line 1047
    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v13

    .line 1051
    filled-new-array {v10, v13}, [Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v10

    .line 1055
    invoke-virtual {v0, v4, v12, v10}, Lo7/m;->n(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    .line 1057
    .line 1058
    :cond_1f
    if-eqz v5, :cond_20

    .line 1059
    .line 1060
    iget-object v0, v8, Lo7/y1;->c:Lo7/f2;

    .line 1061
    .line 1062
    iget-object v0, v0, Lo7/f2;->N:Lo7/m;

    .line 1063
    .line 1064
    const-string v4, "Load-balancing config: {0}"

    .line 1065
    .line 1066
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v8

    .line 1070
    invoke-virtual {v0, v7, v4, v8}, Lo7/m;->n(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    .line 1072
    .line 1073
    :cond_20
    iget-object v0, v2, Lb1/m;->d:Ljava/lang/Object;

    .line 1074
    .line 1075
    check-cast v0, Ln7/j0;

    .line 1076
    .line 1077
    iget-object v2, v9, Ln7/g0;->a:Ljava/util/List;

    .line 1078
    .line 1079
    iget-object v4, v9, Ln7/g0;->b:Ln7/b;

    .line 1080
    .line 1081
    new-instance v7, Ln7/g0;

    .line 1082
    .line 1083
    invoke-direct {v7, v2, v4, v5}, Ln7/g0;-><init>(Ljava/util/List;Ln7/b;Ljava/lang/Object;)V

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v0, v7}, Ln7/j0;->a(Ln7/g0;)Ln7/f1;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    :goto_d
    if-eqz v11, :cond_22

    .line 1091
    .line 1092
    invoke-virtual {v0}, Ln7/f1;->f()Z

    .line 1093
    .line 1094
    .line 1095
    move-result v0

    .line 1096
    iget-object v2, v11, Lo7/f4;->a:Lo7/h4;

    .line 1097
    .line 1098
    iget-object v4, v2, Lo7/h4;->c:Lo7/j;

    .line 1099
    .line 1100
    if-eqz v0, :cond_21

    .line 1101
    .line 1102
    iget-object v0, v4, Lo7/j;->b:Ln7/k1;

    .line 1103
    .line 1104
    invoke-virtual {v0}, Ln7/k1;->d()V

    .line 1105
    .line 1106
    .line 1107
    new-instance v2, Lf5/j;

    .line 1108
    .line 1109
    invoke-direct {v2, v6, v4}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v0, v2}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 1113
    .line 1114
    .line 1115
    goto :goto_e

    .line 1116
    :cond_21
    new-instance v0, Lcom/bumptech/glide/m;

    .line 1117
    .line 1118
    invoke-direct {v0, v3, v2}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v4, v0}, Lo7/j;->a(Lcom/bumptech/glide/m;)V

    .line 1122
    .line 1123
    .line 1124
    :cond_22
    :goto_e
    return-void

    .line 1125
    :pswitch_6
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1126
    .line 1127
    check-cast v0, Lo7/z1;

    .line 1128
    .line 1129
    iget-object v3, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 1130
    .line 1131
    check-cast v3, Ln7/f1;

    .line 1132
    .line 1133
    sget-object v4, Lo7/f2;->c0:Ljava/util/logging/Logger;

    .line 1134
    .line 1135
    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 1136
    .line 1137
    const-string v7, "[{0}] Failed to resolve name. status={1}"

    .line 1138
    .line 1139
    iget-object v8, v0, Lo7/z1;->f:Lo7/f2;

    .line 1140
    .line 1141
    iget-object v9, v8, Lo7/f2;->a:Ln7/a0;

    .line 1142
    .line 1143
    filled-new-array {v9, v3}, [Ljava/lang/Object;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v9

    .line 1147
    invoke-virtual {v4, v6, v7, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1148
    .line 1149
    .line 1150
    iget-object v4, v8, Lo7/f2;->P:Lo7/c2;

    .line 1151
    .line 1152
    iget-object v6, v4, Lo7/c2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1153
    .line 1154
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v6

    .line 1158
    sget-object v7, Lo7/f2;->h0:Lo7/s1;

    .line 1159
    .line 1160
    if-ne v6, v7, :cond_23

    .line 1161
    .line 1162
    invoke-virtual {v4, v5}, Lo7/c2;->h(Ln7/y;)V

    .line 1163
    .line 1164
    .line 1165
    :cond_23
    iget v4, v8, Lo7/f2;->b0:I

    .line 1166
    .line 1167
    if-eq v4, v2, :cond_24

    .line 1168
    .line 1169
    iget-object v4, v8, Lo7/f2;->N:Lo7/m;

    .line 1170
    .line 1171
    const-string v5, "Failed to resolve name: {0}"

    .line 1172
    .line 1173
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v6

    .line 1177
    invoke-virtual {v4, v2, v5, v6}, Lo7/m;->n(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1178
    .line 1179
    .line 1180
    iput v2, v8, Lo7/f2;->b0:I

    .line 1181
    .line 1182
    :cond_24
    iget-object v0, v0, Lo7/z1;->d:Lo7/y1;

    .line 1183
    .line 1184
    iget-object v2, v8, Lo7/f2;->x:Lo7/y1;

    .line 1185
    .line 1186
    if-eq v0, v2, :cond_25

    .line 1187
    .line 1188
    goto :goto_f

    .line 1189
    :cond_25
    iget-object v0, v0, Lo7/y1;->b:Lb1/m;

    .line 1190
    .line 1191
    iget-object v0, v0, Lb1/m;->d:Ljava/lang/Object;

    .line 1192
    .line 1193
    check-cast v0, Ln7/j0;

    .line 1194
    .line 1195
    invoke-virtual {v0, v3}, Ln7/j0;->c(Ln7/f1;)V

    .line 1196
    .line 1197
    .line 1198
    :goto_f
    return-void

    .line 1199
    :pswitch_7
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1200
    .line 1201
    check-cast v0, Lcom/bumptech/glide/manager/t;

    .line 1202
    .line 1203
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 1204
    .line 1205
    check-cast v0, Lo7/k1;

    .line 1206
    .line 1207
    iget-object v0, v0, Lo7/k1;->w:Ln7/k;

    .line 1208
    .line 1209
    iget-object v0, v0, Ln7/k;->a:Ln7/j;

    .line 1210
    .line 1211
    sget-object v2, Ln7/j;->f:Ln7/j;

    .line 1212
    .line 1213
    if-ne v0, v2, :cond_26

    .line 1214
    .line 1215
    goto/16 :goto_12

    .line 1216
    .line 1217
    :cond_26
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1218
    .line 1219
    check-cast v0, Lcom/bumptech/glide/manager/t;

    .line 1220
    .line 1221
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 1222
    .line 1223
    check-cast v0, Lo7/k1;

    .line 1224
    .line 1225
    iget-object v0, v0, Lo7/k1;->v:Lo7/g1;

    .line 1226
    .line 1227
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1228
    .line 1229
    check-cast v2, Lcom/bumptech/glide/manager/t;

    .line 1230
    .line 1231
    iget-object v3, v2, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 1232
    .line 1233
    check-cast v3, Lo7/g1;

    .line 1234
    .line 1235
    iget-object v2, v2, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 1236
    .line 1237
    check-cast v2, Lo7/k1;

    .line 1238
    .line 1239
    if-ne v0, v3, :cond_27

    .line 1240
    .line 1241
    iput-object v5, v2, Lo7/k1;->v:Lo7/g1;

    .line 1242
    .line 1243
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1244
    .line 1245
    check-cast v0, Lcom/bumptech/glide/manager/t;

    .line 1246
    .line 1247
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 1248
    .line 1249
    check-cast v0, Lo7/k1;

    .line 1250
    .line 1251
    iget-object v0, v0, Lo7/k1;->l:Lo7/h1;

    .line 1252
    .line 1253
    invoke-virtual {v0}, Lo7/h1;->d()V

    .line 1254
    .line 1255
    .line 1256
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1257
    .line 1258
    check-cast v0, Lcom/bumptech/glide/manager/t;

    .line 1259
    .line 1260
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 1261
    .line 1262
    check-cast v0, Lo7/k1;

    .line 1263
    .line 1264
    sget-object v2, Ln7/j;->e:Ln7/j;

    .line 1265
    .line 1266
    invoke-static {v0, v2}, Lo7/k1;->e(Lo7/k1;Ln7/j;)V

    .line 1267
    .line 1268
    .line 1269
    goto/16 :goto_12

    .line 1270
    .line 1271
    :cond_27
    iget-object v0, v2, Lo7/k1;->u:Lo7/g1;

    .line 1272
    .line 1273
    if-ne v0, v3, :cond_2d

    .line 1274
    .line 1275
    iget-object v0, v2, Lo7/k1;->w:Ln7/k;

    .line 1276
    .line 1277
    iget-object v0, v0, Ln7/k;->a:Ln7/j;

    .line 1278
    .line 1279
    sget-object v2, Ln7/j;->b:Ln7/j;

    .line 1280
    .line 1281
    if-ne v0, v2, :cond_28

    .line 1282
    .line 1283
    move v0, v7

    .line 1284
    goto :goto_10

    .line 1285
    :cond_28
    const/4 v0, 0x0

    .line 1286
    :goto_10
    const-string v2, "Expected state is CONNECTING, actual state is %s"

    .line 1287
    .line 1288
    iget-object v3, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1289
    .line 1290
    check-cast v3, Lcom/bumptech/glide/manager/t;

    .line 1291
    .line 1292
    iget-object v3, v3, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 1293
    .line 1294
    check-cast v3, Lo7/k1;

    .line 1295
    .line 1296
    iget-object v3, v3, Lo7/k1;->w:Ln7/k;

    .line 1297
    .line 1298
    iget-object v3, v3, Ln7/k;->a:Ln7/j;

    .line 1299
    .line 1300
    invoke-static {v2, v0, v3}, Lo4/b;->l(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 1301
    .line 1302
    .line 1303
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1304
    .line 1305
    check-cast v0, Lcom/bumptech/glide/manager/t;

    .line 1306
    .line 1307
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 1308
    .line 1309
    check-cast v0, Lo7/k1;

    .line 1310
    .line 1311
    iget-object v0, v0, Lo7/k1;->l:Lo7/h1;

    .line 1312
    .line 1313
    iget-object v2, v0, Lo7/h1;->a:Ljava/util/List;

    .line 1314
    .line 1315
    iget v3, v0, Lo7/h1;->b:I

    .line 1316
    .line 1317
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v2

    .line 1321
    check-cast v2, Ln7/r;

    .line 1322
    .line 1323
    iget v3, v0, Lo7/h1;->c:I

    .line 1324
    .line 1325
    add-int/2addr v3, v7

    .line 1326
    iput v3, v0, Lo7/h1;->c:I

    .line 1327
    .line 1328
    iget-object v2, v2, Ln7/r;->a:Ljava/util/List;

    .line 1329
    .line 1330
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1331
    .line 1332
    .line 1333
    move-result v2

    .line 1334
    if-lt v3, v2, :cond_29

    .line 1335
    .line 1336
    iget v2, v0, Lo7/h1;->b:I

    .line 1337
    .line 1338
    add-int/2addr v2, v7

    .line 1339
    iput v2, v0, Lo7/h1;->b:I

    .line 1340
    .line 1341
    const/4 v13, 0x0

    .line 1342
    iput v13, v0, Lo7/h1;->c:I

    .line 1343
    .line 1344
    :cond_29
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1345
    .line 1346
    check-cast v0, Lcom/bumptech/glide/manager/t;

    .line 1347
    .line 1348
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 1349
    .line 1350
    check-cast v0, Lo7/k1;

    .line 1351
    .line 1352
    iget-object v0, v0, Lo7/k1;->l:Lo7/h1;

    .line 1353
    .line 1354
    iget v2, v0, Lo7/h1;->b:I

    .line 1355
    .line 1356
    iget-object v0, v0, Lo7/h1;->a:Ljava/util/List;

    .line 1357
    .line 1358
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1359
    .line 1360
    .line 1361
    move-result v0

    .line 1362
    iget-object v3, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1363
    .line 1364
    check-cast v3, Lcom/bumptech/glide/manager/t;

    .line 1365
    .line 1366
    iget-object v3, v3, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 1367
    .line 1368
    check-cast v3, Lo7/k1;

    .line 1369
    .line 1370
    if-ge v2, v0, :cond_2a

    .line 1371
    .line 1372
    invoke-static {v3}, Lo7/k1;->f(Lo7/k1;)V

    .line 1373
    .line 1374
    .line 1375
    goto/16 :goto_12

    .line 1376
    .line 1377
    :cond_2a
    iput-object v5, v3, Lo7/k1;->u:Lo7/g1;

    .line 1378
    .line 1379
    iget-object v0, v3, Lo7/k1;->l:Lo7/h1;

    .line 1380
    .line 1381
    invoke-virtual {v0}, Lo7/h1;->d()V

    .line 1382
    .line 1383
    .line 1384
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1385
    .line 1386
    check-cast v0, Lcom/bumptech/glide/manager/t;

    .line 1387
    .line 1388
    iget-object v0, v0, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 1389
    .line 1390
    check-cast v0, Lo7/k1;

    .line 1391
    .line 1392
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 1393
    .line 1394
    check-cast v2, Ln7/f1;

    .line 1395
    .line 1396
    iget-object v3, v0, Lo7/k1;->k:Ln7/k1;

    .line 1397
    .line 1398
    invoke-virtual {v3}, Ln7/k1;->d()V

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {v2}, Ln7/f1;->f()Z

    .line 1402
    .line 1403
    .line 1404
    move-result v3

    .line 1405
    xor-int/2addr v3, v7

    .line 1406
    const-string v5, "The error status must not be OK"

    .line 1407
    .line 1408
    invoke-static {v5, v3}, Lo4/b;->d(Ljava/lang/String;Z)V

    .line 1409
    .line 1410
    .line 1411
    new-instance v3, Ln7/k;

    .line 1412
    .line 1413
    sget-object v5, Ln7/j;->d:Ln7/j;

    .line 1414
    .line 1415
    invoke-direct {v3, v5, v2}, Ln7/k;-><init>(Ln7/j;Ln7/f1;)V

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual {v0, v3}, Lo7/k1;->g(Ln7/k;)V

    .line 1419
    .line 1420
    .line 1421
    iget-object v3, v0, Lo7/k1;->n:Lo7/r0;

    .line 1422
    .line 1423
    if-nez v3, :cond_2b

    .line 1424
    .line 1425
    iget-object v3, v0, Lo7/k1;->c:Lo7/u2;

    .line 1426
    .line 1427
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1428
    .line 1429
    .line 1430
    invoke-static {}, Lo7/u2;->s()Lo7/r0;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v3

    .line 1434
    iput-object v3, v0, Lo7/k1;->n:Lo7/r0;

    .line 1435
    .line 1436
    :cond_2b
    iget-object v3, v0, Lo7/k1;->n:Lo7/r0;

    .line 1437
    .line 1438
    invoke-virtual {v3}, Lo7/r0;->a()J

    .line 1439
    .line 1440
    .line 1441
    move-result-wide v5

    .line 1442
    iget-object v3, v0, Lo7/k1;->o:Li4/f;

    .line 1443
    .line 1444
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1445
    .line 1446
    invoke-virtual {v3}, Li4/f;->a()J

    .line 1447
    .line 1448
    .line 1449
    move-result-wide v8

    .line 1450
    sub-long v10, v5, v8

    .line 1451
    .line 1452
    iget-object v3, v0, Lo7/k1;->i:Ln7/e;

    .line 1453
    .line 1454
    const-string v5, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns"

    .line 1455
    .line 1456
    invoke-static {v2}, Lo7/k1;->h(Ln7/f1;)Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v2

    .line 1460
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v6

    .line 1464
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v2

    .line 1468
    invoke-virtual {v3, v4, v5, v2}, Ln7/e;->n(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1469
    .line 1470
    .line 1471
    iget-object v2, v0, Lo7/k1;->p:Ll/d;

    .line 1472
    .line 1473
    if-nez v2, :cond_2c

    .line 1474
    .line 1475
    goto :goto_11

    .line 1476
    :cond_2c
    const/4 v7, 0x0

    .line 1477
    :goto_11
    const-string v2, "previous reconnectTask is not done"

    .line 1478
    .line 1479
    invoke-static {v7, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 1480
    .line 1481
    .line 1482
    iget-object v8, v0, Lo7/k1;->k:Ln7/k1;

    .line 1483
    .line 1484
    new-instance v9, Lo7/f1;

    .line 1485
    .line 1486
    const/4 v13, 0x0

    .line 1487
    invoke-direct {v9, v0, v13}, Lo7/f1;-><init>(Lo7/k1;I)V

    .line 1488
    .line 1489
    .line 1490
    iget-object v13, v0, Lo7/k1;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1491
    .line 1492
    invoke-virtual/range {v8 .. v13}, Ln7/k1;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Ll/d;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v2

    .line 1496
    iput-object v2, v0, Lo7/k1;->p:Ll/d;

    .line 1497
    .line 1498
    :cond_2d
    :goto_12
    return-void

    .line 1499
    :pswitch_8
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1500
    .line 1501
    check-cast v0, Lo7/k1;

    .line 1502
    .line 1503
    iget-object v0, v0, Lo7/k1;->w:Ln7/k;

    .line 1504
    .line 1505
    iget-object v0, v0, Ln7/k;->a:Ln7/j;

    .line 1506
    .line 1507
    sget-object v2, Ln7/j;->f:Ln7/j;

    .line 1508
    .line 1509
    if-ne v0, v2, :cond_2e

    .line 1510
    .line 1511
    goto/16 :goto_13

    .line 1512
    .line 1513
    :cond_2e
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1514
    .line 1515
    check-cast v0, Lo7/k1;

    .line 1516
    .line 1517
    iget-object v3, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 1518
    .line 1519
    check-cast v3, Ln7/f1;

    .line 1520
    .line 1521
    iput-object v3, v0, Lo7/k1;->x:Ln7/f1;

    .line 1522
    .line 1523
    iget-object v0, v0, Lo7/k1;->v:Lo7/g1;

    .line 1524
    .line 1525
    iget-object v3, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1526
    .line 1527
    check-cast v3, Lo7/k1;

    .line 1528
    .line 1529
    iget-object v6, v3, Lo7/k1;->u:Lo7/g1;

    .line 1530
    .line 1531
    iput-object v5, v3, Lo7/k1;->v:Lo7/g1;

    .line 1532
    .line 1533
    iget-object v3, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1534
    .line 1535
    check-cast v3, Lo7/k1;

    .line 1536
    .line 1537
    iput-object v5, v3, Lo7/k1;->u:Lo7/g1;

    .line 1538
    .line 1539
    invoke-static {v3, v2}, Lo7/k1;->e(Lo7/k1;Ln7/j;)V

    .line 1540
    .line 1541
    .line 1542
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1543
    .line 1544
    check-cast v2, Lo7/k1;

    .line 1545
    .line 1546
    iget-object v2, v2, Lo7/k1;->l:Lo7/h1;

    .line 1547
    .line 1548
    invoke-virtual {v2}, Lo7/h1;->d()V

    .line 1549
    .line 1550
    .line 1551
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1552
    .line 1553
    check-cast v2, Lo7/k1;

    .line 1554
    .line 1555
    iget-object v2, v2, Lo7/k1;->s:Ljava/util/ArrayList;

    .line 1556
    .line 1557
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1558
    .line 1559
    .line 1560
    move-result v2

    .line 1561
    if-eqz v2, :cond_2f

    .line 1562
    .line 1563
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1564
    .line 1565
    check-cast v2, Lo7/k1;

    .line 1566
    .line 1567
    iget-object v3, v2, Lo7/k1;->k:Ln7/k1;

    .line 1568
    .line 1569
    new-instance v7, Lo7/f1;

    .line 1570
    .line 1571
    invoke-direct {v7, v2, v4}, Lo7/f1;-><init>(Lo7/k1;I)V

    .line 1572
    .line 1573
    .line 1574
    invoke-virtual {v3, v7}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 1575
    .line 1576
    .line 1577
    :cond_2f
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1578
    .line 1579
    check-cast v2, Lo7/k1;

    .line 1580
    .line 1581
    iget-object v3, v2, Lo7/k1;->k:Ln7/k1;

    .line 1582
    .line 1583
    invoke-virtual {v3}, Ln7/k1;->d()V

    .line 1584
    .line 1585
    .line 1586
    iget-object v3, v2, Lo7/k1;->p:Ll/d;

    .line 1587
    .line 1588
    if-eqz v3, :cond_30

    .line 1589
    .line 1590
    invoke-virtual {v3}, Ll/d;->j()V

    .line 1591
    .line 1592
    .line 1593
    iput-object v5, v2, Lo7/k1;->p:Ll/d;

    .line 1594
    .line 1595
    iput-object v5, v2, Lo7/k1;->n:Lo7/r0;

    .line 1596
    .line 1597
    :cond_30
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1598
    .line 1599
    check-cast v2, Lo7/k1;

    .line 1600
    .line 1601
    iget-object v2, v2, Lo7/k1;->q:Ll/d;

    .line 1602
    .line 1603
    if-eqz v2, :cond_31

    .line 1604
    .line 1605
    invoke-virtual {v2}, Ll/d;->j()V

    .line 1606
    .line 1607
    .line 1608
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1609
    .line 1610
    check-cast v2, Lo7/k1;

    .line 1611
    .line 1612
    iget-object v2, v2, Lo7/k1;->r:Lo7/n2;

    .line 1613
    .line 1614
    iget-object v3, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 1615
    .line 1616
    check-cast v3, Ln7/f1;

    .line 1617
    .line 1618
    invoke-interface {v2, v3}, Lo7/n2;->a(Ln7/f1;)V

    .line 1619
    .line 1620
    .line 1621
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1622
    .line 1623
    check-cast v2, Lo7/k1;

    .line 1624
    .line 1625
    iput-object v5, v2, Lo7/k1;->q:Ll/d;

    .line 1626
    .line 1627
    iput-object v5, v2, Lo7/k1;->r:Lo7/n2;

    .line 1628
    .line 1629
    :cond_31
    if-eqz v0, :cond_32

    .line 1630
    .line 1631
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 1632
    .line 1633
    check-cast v2, Ln7/f1;

    .line 1634
    .line 1635
    invoke-virtual {v0, v2}, Lo7/u0;->a(Ln7/f1;)V

    .line 1636
    .line 1637
    .line 1638
    :cond_32
    if-eqz v6, :cond_33

    .line 1639
    .line 1640
    iget-object v0, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 1641
    .line 1642
    check-cast v0, Ln7/f1;

    .line 1643
    .line 1644
    invoke-virtual {v6, v0}, Lo7/u0;->a(Ln7/f1;)V

    .line 1645
    .line 1646
    .line 1647
    :cond_33
    :goto_13
    return-void

    .line 1648
    :pswitch_9
    move v13, v6

    .line 1649
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1650
    .line 1651
    check-cast v0, Lo7/k1;

    .line 1652
    .line 1653
    iget-object v0, v0, Lo7/k1;->l:Lo7/h1;

    .line 1654
    .line 1655
    iget-object v2, v0, Lo7/h1;->a:Ljava/util/List;

    .line 1656
    .line 1657
    iget v3, v0, Lo7/h1;->b:I

    .line 1658
    .line 1659
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v2

    .line 1663
    check-cast v2, Ln7/r;

    .line 1664
    .line 1665
    iget-object v2, v2, Ln7/r;->a:Ljava/util/List;

    .line 1666
    .line 1667
    iget v0, v0, Lo7/h1;->c:I

    .line 1668
    .line 1669
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v0

    .line 1673
    check-cast v0, Ljava/net/SocketAddress;

    .line 1674
    .line 1675
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1676
    .line 1677
    check-cast v2, Lo7/k1;

    .line 1678
    .line 1679
    iget-object v2, v2, Lo7/k1;->l:Lo7/h1;

    .line 1680
    .line 1681
    iget-object v3, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 1682
    .line 1683
    check-cast v3, Ljava/util/List;

    .line 1684
    .line 1685
    iput-object v3, v2, Lo7/h1;->a:Ljava/util/List;

    .line 1686
    .line 1687
    invoke-virtual {v2}, Lo7/h1;->d()V

    .line 1688
    .line 1689
    .line 1690
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1691
    .line 1692
    check-cast v2, Lo7/k1;

    .line 1693
    .line 1694
    iget-object v3, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 1695
    .line 1696
    check-cast v3, Ljava/util/List;

    .line 1697
    .line 1698
    iput-object v3, v2, Lo7/k1;->m:Ljava/util/List;

    .line 1699
    .line 1700
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1701
    .line 1702
    check-cast v2, Lo7/k1;

    .line 1703
    .line 1704
    iget-object v2, v2, Lo7/k1;->w:Ln7/k;

    .line 1705
    .line 1706
    iget-object v2, v2, Ln7/k;->a:Ln7/j;

    .line 1707
    .line 1708
    sget-object v3, Ln7/j;->c:Ln7/j;

    .line 1709
    .line 1710
    if-eq v2, v3, :cond_34

    .line 1711
    .line 1712
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1713
    .line 1714
    check-cast v2, Lo7/k1;

    .line 1715
    .line 1716
    iget-object v2, v2, Lo7/k1;->w:Ln7/k;

    .line 1717
    .line 1718
    iget-object v2, v2, Ln7/k;->a:Ln7/j;

    .line 1719
    .line 1720
    sget-object v4, Ln7/j;->b:Ln7/j;

    .line 1721
    .line 1722
    if-ne v2, v4, :cond_38

    .line 1723
    .line 1724
    :cond_34
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1725
    .line 1726
    check-cast v2, Lo7/k1;

    .line 1727
    .line 1728
    iget-object v2, v2, Lo7/k1;->l:Lo7/h1;

    .line 1729
    .line 1730
    move v6, v13

    .line 1731
    :goto_14
    iget-object v4, v2, Lo7/h1;->a:Ljava/util/List;

    .line 1732
    .line 1733
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1734
    .line 1735
    .line 1736
    move-result v4

    .line 1737
    if-ge v6, v4, :cond_36

    .line 1738
    .line 1739
    iget-object v4, v2, Lo7/h1;->a:Ljava/util/List;

    .line 1740
    .line 1741
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v4

    .line 1745
    check-cast v4, Ln7/r;

    .line 1746
    .line 1747
    iget-object v4, v4, Ln7/r;->a:Ljava/util/List;

    .line 1748
    .line 1749
    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 1750
    .line 1751
    .line 1752
    move-result v4

    .line 1753
    const/4 v7, -0x1

    .line 1754
    if-ne v4, v7, :cond_35

    .line 1755
    .line 1756
    add-int/lit8 v6, v6, 0x1

    .line 1757
    .line 1758
    goto :goto_14

    .line 1759
    :cond_35
    iput v6, v2, Lo7/h1;->b:I

    .line 1760
    .line 1761
    iput v4, v2, Lo7/h1;->c:I

    .line 1762
    .line 1763
    goto :goto_15

    .line 1764
    :cond_36
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1765
    .line 1766
    check-cast v0, Lo7/k1;

    .line 1767
    .line 1768
    iget-object v0, v0, Lo7/k1;->w:Ln7/k;

    .line 1769
    .line 1770
    iget-object v0, v0, Ln7/k;->a:Ln7/j;

    .line 1771
    .line 1772
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1773
    .line 1774
    check-cast v2, Lo7/k1;

    .line 1775
    .line 1776
    if-ne v0, v3, :cond_37

    .line 1777
    .line 1778
    iget-object v0, v2, Lo7/k1;->v:Lo7/g1;

    .line 1779
    .line 1780
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1781
    .line 1782
    check-cast v2, Lo7/k1;

    .line 1783
    .line 1784
    iput-object v5, v2, Lo7/k1;->v:Lo7/g1;

    .line 1785
    .line 1786
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1787
    .line 1788
    check-cast v2, Lo7/k1;

    .line 1789
    .line 1790
    iget-object v2, v2, Lo7/k1;->l:Lo7/h1;

    .line 1791
    .line 1792
    invoke-virtual {v2}, Lo7/h1;->d()V

    .line 1793
    .line 1794
    .line 1795
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1796
    .line 1797
    check-cast v2, Lo7/k1;

    .line 1798
    .line 1799
    sget-object v3, Ln7/j;->e:Ln7/j;

    .line 1800
    .line 1801
    invoke-static {v2, v3}, Lo7/k1;->e(Lo7/k1;Ln7/j;)V

    .line 1802
    .line 1803
    .line 1804
    goto :goto_16

    .line 1805
    :cond_37
    iget-object v0, v2, Lo7/k1;->u:Lo7/g1;

    .line 1806
    .line 1807
    sget-object v2, Ln7/f1;->m:Ln7/f1;

    .line 1808
    .line 1809
    const-string v3, "InternalSubchannel closed pending transport due to address change"

    .line 1810
    .line 1811
    invoke-virtual {v2, v3}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v2

    .line 1815
    invoke-virtual {v0, v2}, Lo7/u0;->a(Ln7/f1;)V

    .line 1816
    .line 1817
    .line 1818
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1819
    .line 1820
    check-cast v0, Lo7/k1;

    .line 1821
    .line 1822
    iput-object v5, v0, Lo7/k1;->u:Lo7/g1;

    .line 1823
    .line 1824
    iget-object v0, v0, Lo7/k1;->l:Lo7/h1;

    .line 1825
    .line 1826
    invoke-virtual {v0}, Lo7/h1;->d()V

    .line 1827
    .line 1828
    .line 1829
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1830
    .line 1831
    check-cast v0, Lo7/k1;

    .line 1832
    .line 1833
    invoke-static {v0}, Lo7/k1;->f(Lo7/k1;)V

    .line 1834
    .line 1835
    .line 1836
    :cond_38
    :goto_15
    move-object v0, v5

    .line 1837
    :goto_16
    if-eqz v0, :cond_3a

    .line 1838
    .line 1839
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1840
    .line 1841
    check-cast v2, Lo7/k1;

    .line 1842
    .line 1843
    iget-object v3, v2, Lo7/k1;->q:Ll/d;

    .line 1844
    .line 1845
    if-eqz v3, :cond_39

    .line 1846
    .line 1847
    iget-object v2, v2, Lo7/k1;->r:Lo7/n2;

    .line 1848
    .line 1849
    sget-object v3, Ln7/f1;->m:Ln7/f1;

    .line 1850
    .line 1851
    const-string v4, "InternalSubchannel closed transport early due to address change"

    .line 1852
    .line 1853
    invoke-virtual {v3, v4}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v3

    .line 1857
    invoke-interface {v2, v3}, Lo7/n2;->a(Ln7/f1;)V

    .line 1858
    .line 1859
    .line 1860
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1861
    .line 1862
    check-cast v2, Lo7/k1;

    .line 1863
    .line 1864
    iget-object v2, v2, Lo7/k1;->q:Ll/d;

    .line 1865
    .line 1866
    invoke-virtual {v2}, Ll/d;->j()V

    .line 1867
    .line 1868
    .line 1869
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1870
    .line 1871
    check-cast v2, Lo7/k1;

    .line 1872
    .line 1873
    iput-object v5, v2, Lo7/k1;->q:Ll/d;

    .line 1874
    .line 1875
    iput-object v5, v2, Lo7/k1;->r:Lo7/n2;

    .line 1876
    .line 1877
    :cond_39
    iget-object v2, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1878
    .line 1879
    check-cast v2, Lo7/k1;

    .line 1880
    .line 1881
    iput-object v0, v2, Lo7/k1;->r:Lo7/n2;

    .line 1882
    .line 1883
    iget-object v3, v2, Lo7/k1;->k:Ln7/k1;

    .line 1884
    .line 1885
    new-instance v4, Lcom/bumptech/glide/m;

    .line 1886
    .line 1887
    const/16 v0, 0xc

    .line 1888
    .line 1889
    invoke-direct {v4, v0, v1}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 1890
    .line 1891
    .line 1892
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1893
    .line 1894
    iget-object v8, v2, Lo7/k1;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1895
    .line 1896
    const-wide/16 v5, 0x5

    .line 1897
    .line 1898
    invoke-virtual/range {v3 .. v8}, Ln7/k1;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Ll/d;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v0

    .line 1902
    iput-object v0, v2, Lo7/k1;->q:Ll/d;

    .line 1903
    .line 1904
    :cond_3a
    return-void

    .line 1905
    :pswitch_a
    move v13, v6

    .line 1906
    iget-object v0, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 1907
    .line 1908
    move-object v2, v0

    .line 1909
    check-cast v2, Ln7/t;

    .line 1910
    .line 1911
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 1912
    .line 1913
    check-cast v0, Lo7/p0;

    .line 1914
    .line 1915
    iget-object v3, v0, Lo7/p0;->f:Ljava/lang/String;

    .line 1916
    .line 1917
    iget-object v4, v0, Lo7/p0;->j:Ln7/k1;

    .line 1918
    .line 1919
    const-string v6, "Unable to resolve host "

    .line 1920
    .line 1921
    const-string v8, "Using proxy address "

    .line 1922
    .line 1923
    sget-object v9, Lo7/p0;->t:Ljava/util/logging/Logger;

    .line 1924
    .line 1925
    sget-object v10, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 1926
    .line 1927
    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 1928
    .line 1929
    .line 1930
    move-result v11

    .line 1931
    if-eqz v11, :cond_3b

    .line 1932
    .line 1933
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1934
    .line 1935
    const-string v12, "Attempting DNS resolution of "

    .line 1936
    .line 1937
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1938
    .line 1939
    .line 1940
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    .line 1942
    .line 1943
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v11

    .line 1947
    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1948
    .line 1949
    .line 1950
    :cond_3b
    :try_start_5
    iget v11, v0, Lo7/p0;->g:I

    .line 1951
    .line 1952
    invoke-static {v3, v11}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v11

    .line 1956
    iget-object v12, v0, Lo7/p0;->b:Lo7/h3;

    .line 1957
    .line 1958
    invoke-virtual {v12, v11}, Lo7/h3;->a(Ljava/net/InetSocketAddress;)Ln7/u;

    .line 1959
    .line 1960
    .line 1961
    move-result-object v11

    .line 1962
    if-eqz v11, :cond_3c

    .line 1963
    .line 1964
    new-instance v12, Ln7/r;

    .line 1965
    .line 1966
    invoke-direct {v12, v11}, Ln7/r;-><init>(Ljava/net/SocketAddress;)V

    .line 1967
    .line 1968
    .line 1969
    goto :goto_17

    .line 1970
    :cond_3c
    move-object v12, v5

    .line 1971
    :goto_17
    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1972
    .line 1973
    sget-object v14, Ln7/b;->b:Ln7/b;

    .line 1974
    .line 1975
    if-eqz v12, :cond_3e

    .line 1976
    .line 1977
    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 1978
    .line 1979
    .line 1980
    move-result v0

    .line 1981
    if-eqz v0, :cond_3d

    .line 1982
    .line 1983
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1984
    .line 1985
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1986
    .line 1987
    .line 1988
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1989
    .line 1990
    .line 1991
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1992
    .line 1993
    .line 1994
    move-result-object v0

    .line 1995
    invoke-virtual {v9, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1996
    .line 1997
    .line 1998
    goto :goto_18

    .line 1999
    :catchall_1
    move-exception v0

    .line 2000
    goto/16 :goto_20

    .line 2001
    .line 2002
    :catch_2
    move-exception v0

    .line 2003
    goto/16 :goto_1d

    .line 2004
    .line 2005
    :cond_3d
    :goto_18
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2006
    .line 2007
    .line 2008
    move-result-object v0

    .line 2009
    move-object v8, v5

    .line 2010
    goto :goto_1b

    .line 2011
    :cond_3e
    invoke-virtual {v0}, Lo7/p0;->E()La5/h;

    .line 2012
    .line 2013
    .line 2014
    move-result-object v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2015
    :try_start_6
    iget-object v0, v8, La5/h;->c:Ljava/lang/Object;

    .line 2016
    .line 2017
    check-cast v0, Ln7/f1;

    .line 2018
    .line 2019
    if-eqz v0, :cond_40

    .line 2020
    .line 2021
    invoke-virtual {v2, v0}, Ln7/t;->i(Ln7/f1;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2022
    .line 2023
    .line 2024
    iget-object v0, v8, La5/h;->c:Ljava/lang/Object;

    .line 2025
    .line 2026
    check-cast v0, Ln7/f1;

    .line 2027
    .line 2028
    if-nez v0, :cond_3f

    .line 2029
    .line 2030
    move v6, v7

    .line 2031
    goto :goto_19

    .line 2032
    :cond_3f
    move v6, v13

    .line 2033
    :goto_19
    new-instance v0, Lcom/bumptech/glide/manager/q;

    .line 2034
    .line 2035
    invoke-direct {v0, v1, v6, v7}, Lcom/bumptech/glide/manager/q;-><init>(Ljava/lang/Object;ZI)V

    .line 2036
    .line 2037
    .line 2038
    :goto_1a
    invoke-virtual {v4, v0}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 2039
    .line 2040
    .line 2041
    goto/16 :goto_1f

    .line 2042
    .line 2043
    :catchall_2
    move-exception v0

    .line 2044
    move-object v5, v8

    .line 2045
    goto/16 :goto_20

    .line 2046
    .line 2047
    :catch_3
    move-exception v0

    .line 2048
    move-object v5, v8

    .line 2049
    goto :goto_1d

    .line 2050
    :cond_40
    :try_start_7
    iget-object v0, v8, La5/h;->d:Ljava/lang/Object;

    .line 2051
    .line 2052
    check-cast v0, Ljava/util/List;

    .line 2053
    .line 2054
    if-eqz v0, :cond_41

    .line 2055
    .line 2056
    move-object v11, v0

    .line 2057
    :cond_41
    iget-object v0, v8, La5/h;->e:Ljava/lang/Object;

    .line 2058
    .line 2059
    check-cast v0, Ln7/y0;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2060
    .line 2061
    if-eqz v0, :cond_42

    .line 2062
    .line 2063
    move-object v5, v0

    .line 2064
    :cond_42
    move-object v0, v8

    .line 2065
    move-object v8, v5

    .line 2066
    move-object v5, v0

    .line 2067
    move-object v0, v11

    .line 2068
    :goto_1b
    :try_start_8
    new-instance v9, Ln7/z0;

    .line 2069
    .line 2070
    invoke-direct {v9, v0, v14, v8}, Ln7/z0;-><init>(Ljava/util/List;Ln7/b;Ln7/y0;)V

    .line 2071
    .line 2072
    .line 2073
    invoke-virtual {v2, v9}, Ln7/t;->j(Ln7/z0;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2074
    .line 2075
    .line 2076
    if-eqz v5, :cond_43

    .line 2077
    .line 2078
    iget-object v0, v5, La5/h;->c:Ljava/lang/Object;

    .line 2079
    .line 2080
    check-cast v0, Ln7/f1;

    .line 2081
    .line 2082
    if-nez v0, :cond_43

    .line 2083
    .line 2084
    move v6, v7

    .line 2085
    goto :goto_1c

    .line 2086
    :cond_43
    move v6, v13

    .line 2087
    :goto_1c
    new-instance v0, Lcom/bumptech/glide/manager/q;

    .line 2088
    .line 2089
    invoke-direct {v0, v1, v6, v7}, Lcom/bumptech/glide/manager/q;-><init>(Ljava/lang/Object;ZI)V

    .line 2090
    .line 2091
    .line 2092
    goto :goto_1a

    .line 2093
    :goto_1d
    :try_start_9
    sget-object v8, Ln7/f1;->m:Ln7/f1;

    .line 2094
    .line 2095
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2096
    .line 2097
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2098
    .line 2099
    .line 2100
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    .line 2102
    .line 2103
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v3

    .line 2107
    invoke-virtual {v8, v3}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v3

    .line 2111
    invoke-virtual {v3, v0}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 2112
    .line 2113
    .line 2114
    move-result-object v0

    .line 2115
    invoke-virtual {v2, v0}, Ln7/t;->i(Ln7/f1;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2116
    .line 2117
    .line 2118
    if-eqz v5, :cond_44

    .line 2119
    .line 2120
    iget-object v0, v5, La5/h;->c:Ljava/lang/Object;

    .line 2121
    .line 2122
    check-cast v0, Ln7/f1;

    .line 2123
    .line 2124
    if-nez v0, :cond_44

    .line 2125
    .line 2126
    move v6, v7

    .line 2127
    goto :goto_1e

    .line 2128
    :cond_44
    move v6, v13

    .line 2129
    :goto_1e
    new-instance v0, Lcom/bumptech/glide/manager/q;

    .line 2130
    .line 2131
    invoke-direct {v0, v1, v6, v7}, Lcom/bumptech/glide/manager/q;-><init>(Ljava/lang/Object;ZI)V

    .line 2132
    .line 2133
    .line 2134
    goto :goto_1a

    .line 2135
    :goto_1f
    return-void

    .line 2136
    :goto_20
    if-eqz v5, :cond_45

    .line 2137
    .line 2138
    iget-object v2, v5, La5/h;->c:Ljava/lang/Object;

    .line 2139
    .line 2140
    check-cast v2, Ln7/f1;

    .line 2141
    .line 2142
    if-nez v2, :cond_45

    .line 2143
    .line 2144
    move v6, v7

    .line 2145
    goto :goto_21

    .line 2146
    :cond_45
    move v6, v13

    .line 2147
    :goto_21
    new-instance v2, Lcom/bumptech/glide/manager/q;

    .line 2148
    .line 2149
    invoke-direct {v2, v1, v6, v7}, Lcom/bumptech/glide/manager/q;-><init>(Ljava/lang/Object;ZI)V

    .line 2150
    .line 2151
    .line 2152
    invoke-virtual {v4, v2}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 2153
    .line 2154
    .line 2155
    throw v0

    .line 2156
    :pswitch_b
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 2157
    .line 2158
    check-cast v0, Lo7/o0;

    .line 2159
    .line 2160
    iget-object v0, v0, Lo7/o0;->b:Lo7/w;

    .line 2161
    .line 2162
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 2163
    .line 2164
    check-cast v2, Ln7/v0;

    .line 2165
    .line 2166
    invoke-interface {v0, v2}, Lo7/w;->l(Ln7/v0;)V

    .line 2167
    .line 2168
    .line 2169
    return-void

    .line 2170
    :pswitch_c
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 2171
    .line 2172
    check-cast v0, Lo7/o0;

    .line 2173
    .line 2174
    iget-object v0, v0, Lo7/o0;->b:Lo7/w;

    .line 2175
    .line 2176
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 2177
    .line 2178
    check-cast v2, Lo7/o2;

    .line 2179
    .line 2180
    invoke-interface {v0, v2}, Lo7/w;->k(Lo7/o2;)V

    .line 2181
    .line 2182
    .line 2183
    return-void

    .line 2184
    :pswitch_d
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 2185
    .line 2186
    check-cast v0, Lo7/k0;

    .line 2187
    .line 2188
    iget-object v0, v0, Lo7/k0;->d:Lo7/u;

    .line 2189
    .line 2190
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 2191
    .line 2192
    check-cast v2, Ln7/f1;

    .line 2193
    .line 2194
    invoke-interface {v0, v2}, Lo7/u;->h(Ln7/f1;)V

    .line 2195
    .line 2196
    .line 2197
    return-void

    .line 2198
    :pswitch_e
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 2199
    .line 2200
    check-cast v0, Lo7/k0;

    .line 2201
    .line 2202
    iget-object v0, v0, Lo7/k0;->d:Lo7/u;

    .line 2203
    .line 2204
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 2205
    .line 2206
    check-cast v2, Lt7/a;

    .line 2207
    .line 2208
    invoke-interface {v0, v2}, Lo7/u4;->f(Lt7/a;)V

    .line 2209
    .line 2210
    .line 2211
    return-void

    .line 2212
    :pswitch_f
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 2213
    .line 2214
    check-cast v0, Lo7/k0;

    .line 2215
    .line 2216
    iget-object v0, v0, Lo7/k0;->d:Lo7/u;

    .line 2217
    .line 2218
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 2219
    .line 2220
    check-cast v2, Ln7/o;

    .line 2221
    .line 2222
    invoke-interface {v0, v2}, Lo7/u;->n(Ln7/o;)V

    .line 2223
    .line 2224
    .line 2225
    return-void

    .line 2226
    :pswitch_10
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 2227
    .line 2228
    check-cast v0, Lo7/k0;

    .line 2229
    .line 2230
    iget-object v0, v0, Lo7/k0;->d:Lo7/u;

    .line 2231
    .line 2232
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 2233
    .line 2234
    check-cast v2, Ln7/q;

    .line 2235
    .line 2236
    invoke-interface {v0, v2}, Lo7/u;->g(Ln7/q;)V

    .line 2237
    .line 2238
    .line 2239
    return-void

    .line 2240
    :pswitch_11
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 2241
    .line 2242
    check-cast v0, Lo7/k0;

    .line 2243
    .line 2244
    iget-object v0, v0, Lo7/k0;->d:Lo7/u;

    .line 2245
    .line 2246
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 2247
    .line 2248
    check-cast v2, Ln7/h;

    .line 2249
    .line 2250
    invoke-interface {v0, v2}, Lo7/u4;->a(Ln7/h;)V

    .line 2251
    .line 2252
    .line 2253
    return-void

    .line 2254
    :pswitch_12
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 2255
    .line 2256
    check-cast v0, Lo7/l0;

    .line 2257
    .line 2258
    iget-object v0, v0, Lo7/l0;->h:Ln/p;

    .line 2259
    .line 2260
    iget-object v0, v0, Ln/p;->c:Ljava/lang/Object;

    .line 2261
    .line 2262
    check-cast v0, Lo7/f2;

    .line 2263
    .line 2264
    iget-object v0, v0, Lo7/f2;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2265
    .line 2266
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2267
    .line 2268
    .line 2269
    move-result v0

    .line 2270
    const-string v2, "Channel must have been shut down"

    .line 2271
    .line 2272
    invoke-static {v0, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 2273
    .line 2274
    .line 2275
    return-void

    .line 2276
    :pswitch_13
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 2277
    .line 2278
    check-cast v0, Lo7/i0;

    .line 2279
    .line 2280
    iget-object v0, v0, Lo7/i0;->b:Ln7/e;

    .line 2281
    .line 2282
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 2283
    .line 2284
    invoke-virtual {v0, v2}, Ln7/e;->q(Ljava/lang/Object;)V

    .line 2285
    .line 2286
    .line 2287
    return-void

    .line 2288
    :pswitch_14
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 2289
    .line 2290
    check-cast v0, Lo7/i0;

    .line 2291
    .line 2292
    iget-object v0, v0, Lo7/i0;->b:Ln7/e;

    .line 2293
    .line 2294
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 2295
    .line 2296
    check-cast v2, Ln7/v0;

    .line 2297
    .line 2298
    invoke-virtual {v0, v2}, Ln7/e;->p(Ln7/v0;)V

    .line 2299
    .line 2300
    .line 2301
    return-void

    .line 2302
    :pswitch_15
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 2303
    .line 2304
    check-cast v0, Lo7/b2;

    .line 2305
    .line 2306
    iget-object v0, v0, Lo7/b2;->i:Ln7/t;

    .line 2307
    .line 2308
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 2309
    .line 2310
    check-cast v2, Ly5/g;

    .line 2311
    .line 2312
    invoke-virtual {v0, v2}, Ln7/t;->m(Ly5/g;)V

    .line 2313
    .line 2314
    .line 2315
    return-void

    .line 2316
    :pswitch_16
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 2317
    .line 2318
    check-cast v0, Lo7/b2;

    .line 2319
    .line 2320
    iget-object v0, v0, Lo7/b2;->i:Ln7/t;

    .line 2321
    .line 2322
    iget-object v2, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 2323
    .line 2324
    check-cast v2, Ln7/f1;

    .line 2325
    .line 2326
    iget-object v3, v2, Ln7/f1;->b:Ljava/lang/String;

    .line 2327
    .line 2328
    iget-object v2, v2, Ln7/f1;->c:Ljava/lang/Throwable;

    .line 2329
    .line 2330
    invoke-virtual {v0, v3, v2}, Ln7/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2331
    .line 2332
    .line 2333
    return-void

    .line 2334
    :pswitch_17
    iget-object v0, v1, Lo7/e0;->c:Ljava/lang/Object;

    .line 2335
    .line 2336
    check-cast v0, Lo7/b2;

    .line 2337
    .line 2338
    sget-object v2, Ln7/f1;->h:Ln7/f1;

    .line 2339
    .line 2340
    iget-object v3, v1, Lo7/e0;->d:Ljava/lang/Object;

    .line 2341
    .line 2342
    check-cast v3, Ljava/lang/StringBuilder;

    .line 2343
    .line 2344
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2345
    .line 2346
    .line 2347
    move-result-object v3

    .line 2348
    invoke-virtual {v2, v3}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 2349
    .line 2350
    .line 2351
    move-result-object v2

    .line 2352
    invoke-virtual {v0, v2, v7}, Lo7/b2;->r(Ln7/f1;Z)V

    .line 2353
    .line 2354
    .line 2355
    return-void

    .line 2356
    nop

    .line 2357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
