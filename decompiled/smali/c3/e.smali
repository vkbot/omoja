.class public final Lc3/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lc3/e;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lc3/e;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lc3/e;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lc3/e;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lc3/e;->b:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lv7/t;

    .line 13
    .line 14
    iget-object v4, v0, Lv7/t;->i:Lo7/u2;

    .line 15
    .line 16
    invoke-virtual {v4}, Lo7/u2;->q()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iput-object v4, v0, Lv7/t;->l:Ljava/lang/Long;

    .line 25
    .line 26
    iget-object v0, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lv7/t;

    .line 29
    .line 30
    iget-object v0, v0, Lv7/t;->f:Lv7/l;

    .line 31
    .line 32
    iget-object v0, v0, Lv7/l;->b:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lv7/k;

    .line 53
    .line 54
    iget-object v5, v4, Lv7/k;->c:Ll/d;

    .line 55
    .line 56
    iget-object v6, v5, Ll/d;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v6, Ljava/util/concurrent/atomic/AtomicLong;

    .line 59
    .line 60
    const-wide/16 v7, 0x0

    .line 61
    .line 62
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 63
    .line 64
    .line 65
    iget-object v5, v5, Ll/d;->d:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 68
    .line 69
    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 70
    .line 71
    .line 72
    iget-object v5, v4, Lv7/k;->b:Ll/d;

    .line 73
    .line 74
    iget-object v6, v4, Lv7/k;->c:Ll/d;

    .line 75
    .line 76
    iput-object v6, v4, Lv7/k;->b:Ll/d;

    .line 77
    .line 78
    iput-object v5, v4, Lv7/k;->c:Ll/d;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, v1, Lc3/e;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lv7/o;

    .line 84
    .line 85
    iget-object v4, v1, Lc3/e;->d:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v4, Ln7/e;

    .line 88
    .line 89
    sget-object v5, Lj4/e;->c:Lj4/c;

    .line 90
    .line 91
    new-instance v5, Lj4/b;

    .line 92
    .line 93
    invoke-direct {v5, v3}, Lj4/b;-><init>(I)V

    .line 94
    .line 95
    .line 96
    const-string v6, "initialCapacity"

    .line 97
    .line 98
    const/4 v7, 0x4

    .line 99
    invoke-static {v7, v6}, Lb1/u;->c(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-array v6, v7, [Ljava/lang/Object;

    .line 103
    .line 104
    iput-object v6, v5, Lj4/b;->d:Ljava/lang/Object;

    .line 105
    .line 106
    iput v3, v5, Lj4/b;->b:I

    .line 107
    .line 108
    iget-object v6, v0, Lv7/o;->e:Lv7/n;

    .line 109
    .line 110
    if-eqz v6, :cond_1

    .line 111
    .line 112
    new-instance v6, Lv7/m;

    .line 113
    .line 114
    invoke-direct {v6, v0, v4, v2}, Lv7/m;-><init>(Lv7/o;Ln7/e;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v6}, Lj4/b;->a(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    iget-object v6, v0, Lv7/o;->f:Lv7/n;

    .line 121
    .line 122
    if-eqz v6, :cond_2

    .line 123
    .line 124
    new-instance v6, Lv7/m;

    .line 125
    .line 126
    invoke-direct {v6, v0, v4, v3}, Lv7/m;-><init>(Lv7/o;Ln7/e;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v6}, Lj4/b;->a(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    iput-boolean v2, v5, Lj4/b;->c:Z

    .line 133
    .line 134
    iget-object v0, v5, Lj4/b;->d:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, [Ljava/lang/Object;

    .line 137
    .line 138
    iget v4, v5, Lj4/b;->b:I

    .line 139
    .line 140
    invoke-static {v4, v0}, Lj4/e;->i(I[Ljava/lang/Object;)Lj4/i;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0, v3}, Lj4/e;->j(I)Lj4/c;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :goto_1
    invoke-virtual {v0}, Lj4/c;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_11

    .line 153
    .line 154
    invoke-virtual {v0}, Lj4/c;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    check-cast v4, Lv7/m;

    .line 159
    .line 160
    iget-object v5, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v5, Lv7/t;

    .line 163
    .line 164
    iget-object v6, v5, Lv7/t;->f:Lv7/l;

    .line 165
    .line 166
    iget-object v5, v5, Lv7/t;->l:Ljava/lang/Long;

    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 169
    .line 170
    .line 171
    move-result-wide v7

    .line 172
    iget v5, v4, Lv7/m;->a:I

    .line 173
    .line 174
    packed-switch v5, :pswitch_data_1

    .line 175
    .line 176
    .line 177
    iget-object v5, v4, Lv7/m;->b:Lv7/o;

    .line 178
    .line 179
    iget-object v10, v5, Lv7/o;->e:Lv7/n;

    .line 180
    .line 181
    iget-object v10, v10, Lv7/n;->d:Ljava/lang/Integer;

    .line 182
    .line 183
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    invoke-static {v6, v10}, Lv7/t;->h(Lv7/l;I)Ljava/util/ArrayList;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    iget-object v12, v5, Lv7/o;->e:Lv7/n;

    .line 196
    .line 197
    iget-object v13, v12, Lv7/n;->c:Ljava/lang/Integer;

    .line 198
    .line 199
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 200
    .line 201
    .line 202
    move-result v13

    .line 203
    if-lt v11, v13, :cond_3

    .line 204
    .line 205
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    if-nez v11, :cond_4

    .line 210
    .line 211
    :cond_3
    move-object/from16 v17, v0

    .line 212
    .line 213
    goto/16 :goto_9

    .line 214
    .line 215
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 221
    .line 222
    .line 223
    move-result v13

    .line 224
    move v14, v3

    .line 225
    :goto_2
    if-ge v14, v13, :cond_5

    .line 226
    .line 227
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v15

    .line 231
    add-int/lit8 v14, v14, 0x1

    .line 232
    .line 233
    check-cast v15, Lv7/k;

    .line 234
    .line 235
    iget-object v3, v15, Lv7/k;->c:Ll/d;

    .line 236
    .line 237
    iget-object v3, v3, Ll/d;->c:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 240
    .line 241
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 242
    .line 243
    .line 244
    move-result-wide v2

    .line 245
    long-to-double v2, v2

    .line 246
    move-object/from16 v16, v10

    .line 247
    .line 248
    invoke-virtual {v15}, Lv7/k;->c()J

    .line 249
    .line 250
    .line 251
    move-result-wide v9

    .line 252
    long-to-double v9, v9

    .line 253
    div-double/2addr v2, v9

    .line 254
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-object/from16 v10, v16

    .line 262
    .line 263
    const/4 v2, 0x1

    .line 264
    const/4 v3, 0x0

    .line 265
    goto :goto_2

    .line 266
    :cond_5
    move-object/from16 v16, v10

    .line 267
    .line 268
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    const-wide/16 v9, 0x0

    .line 273
    .line 274
    move-wide v13, v9

    .line 275
    const/4 v3, 0x0

    .line 276
    :goto_3
    if-ge v3, v2, :cond_6

    .line 277
    .line 278
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v15

    .line 282
    add-int/lit8 v3, v3, 0x1

    .line 283
    .line 284
    check-cast v15, Ljava/lang/Double;

    .line 285
    .line 286
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    .line 287
    .line 288
    .line 289
    move-result-wide v17

    .line 290
    add-double v13, v17, v13

    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    int-to-double v2, v2

    .line 298
    div-double/2addr v13, v2

    .line 299
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    const/4 v3, 0x0

    .line 304
    :goto_4
    if-ge v3, v2, :cond_7

    .line 305
    .line 306
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v15

    .line 310
    add-int/lit8 v3, v3, 0x1

    .line 311
    .line 312
    check-cast v15, Ljava/lang/Double;

    .line 313
    .line 314
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    .line 315
    .line 316
    .line 317
    move-result-wide v17

    .line 318
    sub-double v17, v17, v13

    .line 319
    .line 320
    mul-double v17, v17, v17

    .line 321
    .line 322
    add-double v9, v17, v9

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    int-to-double v2, v2

    .line 330
    div-double/2addr v9, v2

    .line 331
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 332
    .line 333
    .line 334
    move-result-wide v2

    .line 335
    iget-object v9, v12, Lv7/n;->a:Ljava/lang/Integer;

    .line 336
    .line 337
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    int-to-float v9, v9

    .line 342
    const/high16 v10, 0x447a0000    # 1000.0f

    .line 343
    .line 344
    div-float/2addr v9, v10

    .line 345
    float-to-double v9, v9

    .line 346
    mul-double/2addr v9, v2

    .line 347
    sub-double v9, v13, v9

    .line 348
    .line 349
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    .line 350
    .line 351
    .line 352
    move-result v11

    .line 353
    const/4 v15, 0x0

    .line 354
    :goto_5
    if-ge v15, v11, :cond_3

    .line 355
    .line 356
    move-object/from16 v17, v0

    .line 357
    .line 358
    move-object/from16 v0, v16

    .line 359
    .line 360
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v16

    .line 364
    add-int/lit8 v15, v15, 0x1

    .line 365
    .line 366
    move-object/from16 v18, v0

    .line 367
    .line 368
    move-object/from16 v0, v16

    .line 369
    .line 370
    check-cast v0, Lv7/k;

    .line 371
    .line 372
    invoke-virtual {v6}, Lv7/l;->a()D

    .line 373
    .line 374
    .line 375
    move-result-wide v19

    .line 376
    move-wide/from16 v21, v2

    .line 377
    .line 378
    iget-object v2, v5, Lv7/o;->d:Ljava/lang/Integer;

    .line 379
    .line 380
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    int-to-double v2, v2

    .line 385
    cmpl-double v2, v19, v2

    .line 386
    .line 387
    if-ltz v2, :cond_8

    .line 388
    .line 389
    goto/16 :goto_9

    .line 390
    .line 391
    :cond_8
    iget-object v2, v0, Lv7/k;->c:Ll/d;

    .line 392
    .line 393
    iget-object v2, v2, Ll/d;->c:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 398
    .line 399
    .line 400
    move-result-wide v2

    .line 401
    long-to-double v2, v2

    .line 402
    move-wide/from16 v19, v2

    .line 403
    .line 404
    invoke-virtual {v0}, Lv7/k;->c()J

    .line 405
    .line 406
    .line 407
    move-result-wide v2

    .line 408
    long-to-double v2, v2

    .line 409
    div-double v2, v19, v2

    .line 410
    .line 411
    cmpg-double v2, v2, v9

    .line 412
    .line 413
    if-gez v2, :cond_9

    .line 414
    .line 415
    iget-object v2, v4, Lv7/m;->c:Ln7/e;

    .line 416
    .line 417
    const-string v3, "SuccessRate algorithm detected outlier: {0}. Parameters: successRate={1}, mean={2}, stdev={3}, requiredSuccessRate={4}"

    .line 418
    .line 419
    move-object/from16 v16, v5

    .line 420
    .line 421
    iget-object v5, v0, Lv7/k;->c:Ll/d;

    .line 422
    .line 423
    iget-object v5, v5, Ll/d;->c:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 426
    .line 427
    move-wide/from16 v19, v9

    .line 428
    .line 429
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 430
    .line 431
    .line 432
    move-result-wide v9

    .line 433
    long-to-double v9, v9

    .line 434
    move-wide/from16 v23, v9

    .line 435
    .line 436
    invoke-virtual {v0}, Lv7/k;->c()J

    .line 437
    .line 438
    .line 439
    move-result-wide v9

    .line 440
    long-to-double v9, v9

    .line 441
    div-double v9, v23, v9

    .line 442
    .line 443
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 448
    .line 449
    .line 450
    move-result-object v9

    .line 451
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 452
    .line 453
    .line 454
    move-result-object v10

    .line 455
    move/from16 v23, v11

    .line 456
    .line 457
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 458
    .line 459
    .line 460
    move-result-object v11

    .line 461
    filled-new-array {v0, v5, v9, v10, v11}, [Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    const/4 v9, 0x1

    .line 466
    invoke-virtual {v2, v9, v3, v5}, Ln7/e;->n(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    new-instance v2, Ljava/util/Random;

    .line 470
    .line 471
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 472
    .line 473
    .line 474
    const/16 v3, 0x64

    .line 475
    .line 476
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    iget-object v3, v12, Lv7/n;->b:Ljava/lang/Integer;

    .line 481
    .line 482
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    if-ge v2, v3, :cond_a

    .line 487
    .line 488
    invoke-virtual {v0, v7, v8}, Lv7/k;->b(J)V

    .line 489
    .line 490
    .line 491
    goto :goto_6

    .line 492
    :cond_9
    move-object/from16 v16, v5

    .line 493
    .line 494
    move-wide/from16 v19, v9

    .line 495
    .line 496
    move/from16 v23, v11

    .line 497
    .line 498
    :cond_a
    :goto_6
    move-object/from16 v5, v16

    .line 499
    .line 500
    move-object/from16 v0, v17

    .line 501
    .line 502
    move-object/from16 v16, v18

    .line 503
    .line 504
    move-wide/from16 v9, v19

    .line 505
    .line 506
    move-wide/from16 v2, v21

    .line 507
    .line 508
    move/from16 v11, v23

    .line 509
    .line 510
    goto/16 :goto_5

    .line 511
    .line 512
    :pswitch_0
    move-object/from16 v17, v0

    .line 513
    .line 514
    iget-object v0, v4, Lv7/m;->b:Lv7/o;

    .line 515
    .line 516
    iget-object v2, v0, Lv7/o;->f:Lv7/n;

    .line 517
    .line 518
    iget-object v2, v2, Lv7/n;->d:Ljava/lang/Integer;

    .line 519
    .line 520
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    invoke-static {v6, v2}, Lv7/t;->h(Lv7/l;I)Ljava/util/ArrayList;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 529
    .line 530
    .line 531
    move-result v3

    .line 532
    iget-object v5, v0, Lv7/o;->f:Lv7/n;

    .line 533
    .line 534
    iget-object v9, v5, Lv7/n;->c:Ljava/lang/Integer;

    .line 535
    .line 536
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 537
    .line 538
    .line 539
    move-result v9

    .line 540
    if-lt v3, v9, :cond_10

    .line 541
    .line 542
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    if-nez v3, :cond_b

    .line 547
    .line 548
    goto/16 :goto_9

    .line 549
    .line 550
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    const/4 v9, 0x0

    .line 555
    :goto_7
    if-ge v9, v3, :cond_10

    .line 556
    .line 557
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v10

    .line 561
    add-int/lit8 v9, v9, 0x1

    .line 562
    .line 563
    check-cast v10, Lv7/k;

    .line 564
    .line 565
    invoke-virtual {v6}, Lv7/l;->a()D

    .line 566
    .line 567
    .line 568
    move-result-wide v11

    .line 569
    iget-object v13, v0, Lv7/o;->d:Ljava/lang/Integer;

    .line 570
    .line 571
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 572
    .line 573
    .line 574
    move-result v13

    .line 575
    int-to-double v13, v13

    .line 576
    cmpl-double v11, v11, v13

    .line 577
    .line 578
    if-ltz v11, :cond_c

    .line 579
    .line 580
    goto/16 :goto_9

    .line 581
    .line 582
    :cond_c
    invoke-virtual {v10}, Lv7/k;->c()J

    .line 583
    .line 584
    .line 585
    move-result-wide v11

    .line 586
    iget-object v13, v5, Lv7/n;->d:Ljava/lang/Integer;

    .line 587
    .line 588
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 589
    .line 590
    .line 591
    move-result v13

    .line 592
    int-to-long v13, v13

    .line 593
    cmp-long v11, v11, v13

    .line 594
    .line 595
    if-gez v11, :cond_d

    .line 596
    .line 597
    goto :goto_7

    .line 598
    :cond_d
    iget-object v11, v5, Lv7/n;->a:Ljava/lang/Integer;

    .line 599
    .line 600
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 601
    .line 602
    .line 603
    move-result v11

    .line 604
    int-to-double v11, v11

    .line 605
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    .line 606
    .line 607
    div-double/2addr v11, v13

    .line 608
    iget-object v13, v10, Lv7/k;->c:Ll/d;

    .line 609
    .line 610
    iget-object v13, v13, Ll/d;->d:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v13, Ljava/util/concurrent/atomic/AtomicLong;

    .line 613
    .line 614
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 615
    .line 616
    .line 617
    move-result-wide v13

    .line 618
    long-to-double v13, v13

    .line 619
    move-object v15, v2

    .line 620
    move/from16 v16, v3

    .line 621
    .line 622
    invoke-virtual {v10}, Lv7/k;->c()J

    .line 623
    .line 624
    .line 625
    move-result-wide v2

    .line 626
    long-to-double v2, v2

    .line 627
    div-double/2addr v13, v2

    .line 628
    cmpl-double v2, v13, v11

    .line 629
    .line 630
    if-lez v2, :cond_e

    .line 631
    .line 632
    iget-object v2, v4, Lv7/m;->c:Ln7/e;

    .line 633
    .line 634
    const-string v3, "FailurePercentage algorithm detected outlier: {0}, failureRate={1}"

    .line 635
    .line 636
    iget-object v11, v10, Lv7/k;->c:Ll/d;

    .line 637
    .line 638
    iget-object v11, v11, Ll/d;->d:Ljava/lang/Object;

    .line 639
    .line 640
    check-cast v11, Ljava/util/concurrent/atomic/AtomicLong;

    .line 641
    .line 642
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 643
    .line 644
    .line 645
    move-result-wide v11

    .line 646
    long-to-double v11, v11

    .line 647
    invoke-virtual {v10}, Lv7/k;->c()J

    .line 648
    .line 649
    .line 650
    move-result-wide v13

    .line 651
    long-to-double v13, v13

    .line 652
    div-double/2addr v11, v13

    .line 653
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 654
    .line 655
    .line 656
    move-result-object v11

    .line 657
    filled-new-array {v10, v11}, [Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v11

    .line 661
    const/4 v12, 0x1

    .line 662
    invoke-virtual {v2, v12, v3, v11}, Ln7/e;->n(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    new-instance v2, Ljava/util/Random;

    .line 666
    .line 667
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 668
    .line 669
    .line 670
    const/16 v3, 0x64

    .line 671
    .line 672
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 673
    .line 674
    .line 675
    move-result v2

    .line 676
    iget-object v11, v5, Lv7/n;->b:Ljava/lang/Integer;

    .line 677
    .line 678
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 679
    .line 680
    .line 681
    move-result v11

    .line 682
    if-ge v2, v11, :cond_f

    .line 683
    .line 684
    invoke-virtual {v10, v7, v8}, Lv7/k;->b(J)V

    .line 685
    .line 686
    .line 687
    goto :goto_8

    .line 688
    :cond_e
    const/16 v3, 0x64

    .line 689
    .line 690
    :cond_f
    :goto_8
    move-object v2, v15

    .line 691
    move/from16 v3, v16

    .line 692
    .line 693
    goto/16 :goto_7

    .line 694
    .line 695
    :cond_10
    :goto_9
    move-object/from16 v0, v17

    .line 696
    .line 697
    const/4 v2, 0x1

    .line 698
    const/4 v3, 0x0

    .line 699
    goto/16 :goto_1

    .line 700
    .line 701
    :cond_11
    iget-object v0, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 702
    .line 703
    check-cast v0, Lv7/t;

    .line 704
    .line 705
    iget-object v2, v0, Lv7/t;->f:Lv7/l;

    .line 706
    .line 707
    iget-object v0, v0, Lv7/t;->l:Ljava/lang/Long;

    .line 708
    .line 709
    iget-object v2, v2, Lv7/l;->b:Ljava/util/HashMap;

    .line 710
    .line 711
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    :cond_12
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    if-eqz v3, :cond_15

    .line 724
    .line 725
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    check-cast v3, Lv7/k;

    .line 730
    .line 731
    invoke-virtual {v3}, Lv7/k;->d()Z

    .line 732
    .line 733
    .line 734
    move-result v4

    .line 735
    if-nez v4, :cond_14

    .line 736
    .line 737
    iget v4, v3, Lv7/k;->e:I

    .line 738
    .line 739
    if-nez v4, :cond_13

    .line 740
    .line 741
    const/4 v4, 0x0

    .line 742
    goto :goto_b

    .line 743
    :cond_13
    add-int/lit8 v4, v4, -0x1

    .line 744
    .line 745
    :goto_b
    iput v4, v3, Lv7/k;->e:I

    .line 746
    .line 747
    :cond_14
    invoke-virtual {v3}, Lv7/k;->d()Z

    .line 748
    .line 749
    .line 750
    move-result v4

    .line 751
    if-eqz v4, :cond_12

    .line 752
    .line 753
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 754
    .line 755
    .line 756
    move-result-wide v4

    .line 757
    iget-object v6, v3, Lv7/k;->a:Lv7/o;

    .line 758
    .line 759
    iget-object v6, v6, Lv7/o;->b:Ljava/lang/Long;

    .line 760
    .line 761
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 762
    .line 763
    .line 764
    move-result-wide v6

    .line 765
    iget-object v8, v3, Lv7/k;->a:Lv7/o;

    .line 766
    .line 767
    iget-object v8, v8, Lv7/o;->c:Ljava/lang/Long;

    .line 768
    .line 769
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 770
    .line 771
    .line 772
    move-result-wide v8

    .line 773
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 774
    .line 775
    .line 776
    move-result-wide v6

    .line 777
    iget-object v8, v3, Lv7/k;->d:Ljava/lang/Long;

    .line 778
    .line 779
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 780
    .line 781
    .line 782
    move-result-wide v8

    .line 783
    iget-object v10, v3, Lv7/k;->a:Lv7/o;

    .line 784
    .line 785
    iget-object v10, v10, Lv7/o;->b:Ljava/lang/Long;

    .line 786
    .line 787
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 788
    .line 789
    .line 790
    move-result-wide v10

    .line 791
    iget v12, v3, Lv7/k;->e:I

    .line 792
    .line 793
    int-to-long v12, v12

    .line 794
    mul-long/2addr v10, v12

    .line 795
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 796
    .line 797
    .line 798
    move-result-wide v6

    .line 799
    add-long/2addr v6, v8

    .line 800
    cmp-long v4, v4, v6

    .line 801
    .line 802
    if-lez v4, :cond_12

    .line 803
    .line 804
    invoke-virtual {v3}, Lv7/k;->e()V

    .line 805
    .line 806
    .line 807
    goto :goto_a

    .line 808
    :cond_15
    return-void

    .line 809
    :pswitch_1
    const-string v0, "Unsupported SocketAddress implementation "

    .line 810
    .line 811
    :try_start_0
    iget-object v2, v1, Lc3/e;->c:Ljava/lang/Object;

    .line 812
    .line 813
    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 814
    .line 815
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    .line 817
    .line 818
    goto :goto_c

    .line 819
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 820
    .line 821
    .line 822
    move-result-object v2

    .line 823
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 824
    .line 825
    .line 826
    :goto_c
    new-instance v2, Lp7/l;

    .line 827
    .line 828
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 829
    .line 830
    .line 831
    new-instance v3, Ll9/a0;

    .line 832
    .line 833
    invoke-direct {v3, v2}, Ll9/a0;-><init>(Ll9/g0;)V

    .line 834
    .line 835
    .line 836
    :try_start_1
    iget-object v2, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 837
    .line 838
    check-cast v2, Lp7/n;

    .line 839
    .line 840
    iget-object v4, v2, Lp7/n;->N:Ln7/u;

    .line 841
    .line 842
    if-nez v4, :cond_16

    .line 843
    .line 844
    iget-object v0, v2, Lp7/n;->A:Ljavax/net/SocketFactory;

    .line 845
    .line 846
    iget-object v2, v2, Lp7/n;->a:Ljava/net/InetSocketAddress;

    .line 847
    .line 848
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    iget-object v4, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 853
    .line 854
    check-cast v4, Lp7/n;

    .line 855
    .line 856
    iget-object v4, v4, Lp7/n;->a:Ljava/net/InetSocketAddress;

    .line 857
    .line 858
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    .line 859
    .line 860
    .line 861
    move-result v4

    .line 862
    invoke-virtual {v0, v2, v4}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    goto :goto_d

    .line 867
    :catchall_0
    move-exception v0

    .line 868
    goto/16 :goto_17

    .line 869
    .line 870
    :catch_1
    move-exception v0

    .line 871
    goto/16 :goto_13

    .line 872
    .line 873
    :catch_2
    move-exception v0

    .line 874
    goto/16 :goto_15

    .line 875
    .line 876
    :cond_16
    iget-object v5, v4, Ln7/u;->b:Ljava/net/SocketAddress;

    .line 877
    .line 878
    instance-of v6, v5, Ljava/net/InetSocketAddress;

    .line 879
    .line 880
    if-eqz v6, :cond_1b

    .line 881
    .line 882
    iget-object v0, v4, Ln7/u;->c:Ljava/net/InetSocketAddress;

    .line 883
    .line 884
    check-cast v5, Ljava/net/InetSocketAddress;

    .line 885
    .line 886
    iget-object v6, v4, Ln7/u;->d:Ljava/lang/String;

    .line 887
    .line 888
    iget-object v4, v4, Ln7/u;->e:Ljava/lang/String;

    .line 889
    .line 890
    invoke-static {v2, v0, v5, v6, v4}, Lp7/n;->f(Lp7/n;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    :goto_d
    iget-object v2, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 895
    .line 896
    check-cast v2, Lp7/n;

    .line 897
    .line 898
    iget-object v4, v2, Lp7/n;->B:Ljavax/net/ssl/SSLSocketFactory;

    .line 899
    .line 900
    if-eqz v4, :cond_18

    .line 901
    .line 902
    iget-object v2, v2, Lp7/n;->b:Ljava/lang/String;

    .line 903
    .line 904
    invoke-static {v2}, Lo7/y0;->a(Ljava/lang/String;)Ljava/net/URI;

    .line 905
    .line 906
    .line 907
    move-result-object v5

    .line 908
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v6

    .line 912
    if-eqz v6, :cond_17

    .line 913
    .line 914
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v2

    .line 918
    :cond_17
    iget-object v5, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 919
    .line 920
    check-cast v5, Lp7/n;

    .line 921
    .line 922
    invoke-virtual {v5}, Lp7/n;->j()I

    .line 923
    .line 924
    .line 925
    move-result v5

    .line 926
    iget-object v6, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 927
    .line 928
    check-cast v6, Lp7/n;

    .line 929
    .line 930
    iget-object v6, v6, Lp7/n;->E:Lq7/c;

    .line 931
    .line 932
    invoke-static {v4, v0, v2, v5, v6}, Lp7/t;->a(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Socket;Ljava/lang/String;ILq7/c;)Ljavax/net/ssl/SSLSocket;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 937
    .line 938
    .line 939
    move-result-object v2

    .line 940
    :goto_e
    const/4 v9, 0x1

    .line 941
    goto :goto_f

    .line 942
    :cond_18
    const/4 v2, 0x0

    .line 943
    goto :goto_e

    .line 944
    :goto_f
    invoke-virtual {v0, v9}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 945
    .line 946
    .line 947
    invoke-static {v0}, Ll9/b;->h(Ljava/net/Socket;)Ll9/g0;

    .line 948
    .line 949
    .line 950
    move-result-object v4

    .line 951
    invoke-static {v4}, Ll9/b;->b(Ll9/g0;)Ll9/a0;

    .line 952
    .line 953
    .line 954
    move-result-object v3

    .line 955
    iget-object v4, v1, Lc3/e;->d:Ljava/lang/Object;

    .line 956
    .line 957
    check-cast v4, Lp7/c;

    .line 958
    .line 959
    invoke-static {v0}, Ll9/b;->g(Ljava/net/Socket;)Ll9/e0;

    .line 960
    .line 961
    .line 962
    move-result-object v5

    .line 963
    invoke-virtual {v4, v5, v0}, Lp7/c;->b(Ll9/e0;Ljava/net/Socket;)V

    .line 964
    .line 965
    .line 966
    iget-object v4, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 967
    .line 968
    check-cast v4, Lp7/n;

    .line 969
    .line 970
    iget-object v5, v4, Lp7/n;->u:Ln7/b;

    .line 971
    .line 972
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 973
    .line 974
    .line 975
    new-instance v6, Ll/d;

    .line 976
    .line 977
    const/4 v7, 0x3

    .line 978
    invoke-direct {v6, v7, v5}, Ll/d;-><init>(ILjava/lang/Object;)V

    .line 979
    .line 980
    .line 981
    sget-object v5, Ln7/t;->a:Ln7/a;

    .line 982
    .line 983
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    .line 984
    .line 985
    .line 986
    move-result-object v7

    .line 987
    invoke-virtual {v6, v5, v7}, Ll/d;->M(Ln7/a;Ljava/lang/Object;)V

    .line 988
    .line 989
    .line 990
    sget-object v5, Ln7/t;->b:Ln7/a;

    .line 991
    .line 992
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    invoke-virtual {v6, v5, v0}, Ll/d;->M(Ln7/a;Ljava/lang/Object;)V

    .line 997
    .line 998
    .line 999
    sget-object v0, Ln7/t;->c:Ln7/a;

    .line 1000
    .line 1001
    invoke-virtual {v6, v0, v2}, Ll/d;->M(Ln7/a;Ljava/lang/Object;)V

    .line 1002
    .line 1003
    .line 1004
    sget-object v0, Lo7/p4;->a:Ln7/a;

    .line 1005
    .line 1006
    if-nez v2, :cond_19

    .line 1007
    .line 1008
    sget-object v5, Ln7/c1;->b:Ln7/c1;

    .line 1009
    .line 1010
    goto :goto_10

    .line 1011
    :cond_19
    sget-object v5, Ln7/c1;->c:Ln7/c1;

    .line 1012
    .line 1013
    :goto_10
    invoke-virtual {v6, v0, v5}, Ll/d;->M(Ln7/a;Ljava/lang/Object;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v6}, Ll/d;->g()Ln7/b;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    iput-object v0, v4, Lp7/n;->u:Ln7/b;
    :try_end_1
    .catch Ln7/g1; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1021
    .line 1022
    iget-object v0, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 1023
    .line 1024
    check-cast v0, Lp7/n;

    .line 1025
    .line 1026
    new-instance v4, Lp7/m;

    .line 1027
    .line 1028
    iget-object v5, v0, Lp7/n;->g:Lr7/j;

    .line 1029
    .line 1030
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1031
    .line 1032
    .line 1033
    new-instance v5, Lr7/h;

    .line 1034
    .line 1035
    invoke-direct {v5, v3}, Lr7/h;-><init>(Ll9/a0;)V

    .line 1036
    .line 1037
    .line 1038
    invoke-direct {v4, v0, v5}, Lp7/m;-><init>(Lp7/n;Lr7/h;)V

    .line 1039
    .line 1040
    .line 1041
    iput-object v4, v0, Lp7/n;->t:Lp7/m;

    .line 1042
    .line 1043
    iget-object v0, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 1044
    .line 1045
    check-cast v0, Lp7/n;

    .line 1046
    .line 1047
    iget-object v4, v0, Lp7/n;->k:Ljava/lang/Object;

    .line 1048
    .line 1049
    monitor-enter v4

    .line 1050
    if-eqz v2, :cond_1a

    .line 1051
    .line 1052
    :try_start_2
    new-instance v0, Ln7/h;

    .line 1053
    .line 1054
    invoke-direct {v0, v2}, Ln7/h;-><init>(Ljavax/net/ssl/SSLSession;)V

    .line 1055
    .line 1056
    .line 1057
    goto :goto_11

    .line 1058
    :catchall_1
    move-exception v0

    .line 1059
    goto :goto_12

    .line 1060
    :cond_1a
    :goto_11
    monitor-exit v4

    .line 1061
    goto :goto_16

    .line 1062
    :goto_12
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1063
    throw v0

    .line 1064
    :cond_1b
    :try_start_3
    sget-object v2, Ln7/f1;->l:Ln7/f1;

    .line 1065
    .line 1066
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1069
    .line 1070
    .line 1071
    iget-object v0, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 1072
    .line 1073
    check-cast v0, Lp7/n;

    .line 1074
    .line 1075
    iget-object v0, v0, Lp7/n;->N:Ln7/u;

    .line 1076
    .line 1077
    iget-object v0, v0, Ln7/u;->b:Ljava/net/SocketAddress;

    .line 1078
    .line 1079
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v0

    .line 1083
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    invoke-virtual {v2, v0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v0

    .line 1094
    new-instance v2, Ln7/g1;

    .line 1095
    .line 1096
    invoke-direct {v2, v0}, Ln7/g1;-><init>(Ln7/f1;)V

    .line 1097
    .line 1098
    .line 1099
    throw v2
    :try_end_3
    .catch Ln7/g1; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1100
    :goto_13
    :try_start_4
    iget-object v2, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 1101
    .line 1102
    check-cast v2, Lp7/n;

    .line 1103
    .line 1104
    invoke-virtual {v2, v0}, Lp7/n;->n(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1105
    .line 1106
    .line 1107
    iget-object v0, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 1108
    .line 1109
    check-cast v0, Lp7/n;

    .line 1110
    .line 1111
    new-instance v2, Lp7/m;

    .line 1112
    .line 1113
    iget-object v4, v0, Lp7/n;->g:Lr7/j;

    .line 1114
    .line 1115
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1116
    .line 1117
    .line 1118
    new-instance v4, Lr7/h;

    .line 1119
    .line 1120
    invoke-direct {v4, v3}, Lr7/h;-><init>(Ll9/a0;)V

    .line 1121
    .line 1122
    .line 1123
    invoke-direct {v2, v0, v4}, Lp7/m;-><init>(Lp7/n;Lr7/h;)V

    .line 1124
    .line 1125
    .line 1126
    :goto_14
    iput-object v2, v0, Lp7/n;->t:Lp7/m;

    .line 1127
    .line 1128
    goto :goto_16

    .line 1129
    :goto_15
    :try_start_5
    iget-object v2, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 1130
    .line 1131
    check-cast v2, Lp7/n;

    .line 1132
    .line 1133
    sget-object v4, Lr7/a;->e:Lr7/a;

    .line 1134
    .line 1135
    iget-object v0, v0, Ln7/g1;->b:Ln7/f1;

    .line 1136
    .line 1137
    const/4 v5, 0x0

    .line 1138
    invoke-virtual {v2, v5, v4, v0}, Lp7/n;->r(ILr7/a;Ln7/f1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1139
    .line 1140
    .line 1141
    iget-object v0, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 1142
    .line 1143
    check-cast v0, Lp7/n;

    .line 1144
    .line 1145
    new-instance v2, Lp7/m;

    .line 1146
    .line 1147
    iget-object v4, v0, Lp7/n;->g:Lr7/j;

    .line 1148
    .line 1149
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1150
    .line 1151
    .line 1152
    new-instance v4, Lr7/h;

    .line 1153
    .line 1154
    invoke-direct {v4, v3}, Lr7/h;-><init>(Ll9/a0;)V

    .line 1155
    .line 1156
    .line 1157
    invoke-direct {v2, v0, v4}, Lp7/m;-><init>(Lp7/n;Lr7/h;)V

    .line 1158
    .line 1159
    .line 1160
    goto :goto_14

    .line 1161
    :goto_16
    return-void

    .line 1162
    :goto_17
    iget-object v2, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 1163
    .line 1164
    check-cast v2, Lp7/n;

    .line 1165
    .line 1166
    new-instance v4, Lp7/m;

    .line 1167
    .line 1168
    iget-object v5, v2, Lp7/n;->g:Lr7/j;

    .line 1169
    .line 1170
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1171
    .line 1172
    .line 1173
    new-instance v5, Lr7/h;

    .line 1174
    .line 1175
    invoke-direct {v5, v3}, Lr7/h;-><init>(Ll9/a0;)V

    .line 1176
    .line 1177
    .line 1178
    invoke-direct {v4, v2, v5}, Lp7/m;-><init>(Lp7/n;Lr7/h;)V

    .line 1179
    .line 1180
    .line 1181
    iput-object v4, v2, Lp7/n;->t:Lp7/m;

    .line 1182
    .line 1183
    throw v0

    .line 1184
    :pswitch_2
    iget-object v0, v1, Lc3/e;->d:Ljava/lang/Object;

    .line 1185
    .line 1186
    check-cast v0, Ln7/j;

    .line 1187
    .line 1188
    iget-object v2, v1, Lc3/e;->c:Ljava/lang/Object;

    .line 1189
    .line 1190
    check-cast v2, Ln7/h0;

    .line 1191
    .line 1192
    iget-object v3, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 1193
    .line 1194
    check-cast v3, Lo7/y1;

    .line 1195
    .line 1196
    iget-object v4, v3, Lo7/y1;->c:Lo7/f2;

    .line 1197
    .line 1198
    iget-object v5, v4, Lo7/f2;->x:Lo7/y1;

    .line 1199
    .line 1200
    if-eq v3, v5, :cond_1c

    .line 1201
    .line 1202
    goto :goto_18

    .line 1203
    :cond_1c
    iput-object v2, v4, Lo7/f2;->y:Ln7/h0;

    .line 1204
    .line 1205
    iget-object v4, v4, Lo7/f2;->E:Lo7/l0;

    .line 1206
    .line 1207
    invoke-virtual {v4, v2}, Lo7/l0;->g(Ln7/h0;)V

    .line 1208
    .line 1209
    .line 1210
    sget-object v4, Ln7/j;->f:Ln7/j;

    .line 1211
    .line 1212
    if-eq v0, v4, :cond_1d

    .line 1213
    .line 1214
    iget-object v4, v3, Lo7/y1;->c:Lo7/f2;

    .line 1215
    .line 1216
    iget-object v4, v4, Lo7/f2;->N:Lo7/m;

    .line 1217
    .line 1218
    const-string v5, "Entering {0} state with picker: {1}"

    .line 1219
    .line 1220
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v2

    .line 1224
    const/4 v6, 0x2

    .line 1225
    invoke-virtual {v4, v6, v5, v2}, Lo7/m;->n(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1226
    .line 1227
    .line 1228
    iget-object v2, v3, Lo7/y1;->c:Lo7/f2;

    .line 1229
    .line 1230
    iget-object v2, v2, Lo7/f2;->r:Lc0/h;

    .line 1231
    .line 1232
    invoke-virtual {v2, v0}, Lc0/h;->c(Ln7/j;)V

    .line 1233
    .line 1234
    .line 1235
    :cond_1d
    :goto_18
    return-void

    .line 1236
    :pswitch_3
    iget-object v0, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 1237
    .line 1238
    check-cast v0, Lo7/i0;

    .line 1239
    .line 1240
    iget-object v0, v0, Lo7/i0;->b:Ln7/e;

    .line 1241
    .line 1242
    iget-object v2, v1, Lc3/e;->c:Ljava/lang/Object;

    .line 1243
    .line 1244
    check-cast v2, Ln7/f1;

    .line 1245
    .line 1246
    iget-object v3, v1, Lc3/e;->d:Ljava/lang/Object;

    .line 1247
    .line 1248
    check-cast v3, Ln7/v0;

    .line 1249
    .line 1250
    invoke-virtual {v0, v2, v3}, Ln7/e;->o(Ln7/f1;Ln7/v0;)V

    .line 1251
    .line 1252
    .line 1253
    return-void

    .line 1254
    :pswitch_4
    iget-object v0, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 1255
    .line 1256
    check-cast v0, Lo7/b2;

    .line 1257
    .line 1258
    iget-object v0, v0, Lo7/b2;->i:Ln7/t;

    .line 1259
    .line 1260
    iget-object v2, v1, Lc3/e;->c:Ljava/lang/Object;

    .line 1261
    .line 1262
    check-cast v2, Ln7/e;

    .line 1263
    .line 1264
    iget-object v3, v1, Lc3/e;->d:Ljava/lang/Object;

    .line 1265
    .line 1266
    check-cast v3, Ln7/v0;

    .line 1267
    .line 1268
    invoke-virtual {v0, v2, v3}, Ln7/t;->o(Ln7/e;Ln7/v0;)V

    .line 1269
    .line 1270
    .line 1271
    return-void

    .line 1272
    :pswitch_5
    iget-object v0, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 1273
    .line 1274
    check-cast v0, Ln7/k1;

    .line 1275
    .line 1276
    iget-object v2, v1, Lc3/e;->c:Ljava/lang/Object;

    .line 1277
    .line 1278
    check-cast v2, Ln7/j1;

    .line 1279
    .line 1280
    invoke-virtual {v0, v2}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 1281
    .line 1282
    .line 1283
    return-void

    .line 1284
    :pswitch_6
    iget-object v0, v1, Lc3/e;->c:Ljava/lang/Object;

    .line 1285
    .line 1286
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1287
    .line 1288
    iget-object v2, v1, Lc3/e;->e:Ljava/lang/Object;

    .line 1289
    .line 1290
    check-cast v2, Lc3/f;

    .line 1291
    .line 1292
    iget-object v3, v1, Lc3/e;->d:Ljava/lang/Object;

    .line 1293
    .line 1294
    check-cast v3, Landroid/view/View;

    .line 1295
    .line 1296
    if-eqz v3, :cond_1f

    .line 1297
    .line 1298
    iget-object v4, v2, Lc3/f;->d:Landroid/widget/OverScroller;

    .line 1299
    .line 1300
    if-eqz v4, :cond_1f

    .line 1301
    .line 1302
    invoke-virtual {v4}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 1303
    .line 1304
    .line 1305
    move-result v4

    .line 1306
    if-eqz v4, :cond_1e

    .line 1307
    .line 1308
    iget-object v4, v2, Lc3/f;->d:Landroid/widget/OverScroller;

    .line 1309
    .line 1310
    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    .line 1311
    .line 1312
    .line 1313
    move-result v4

    .line 1314
    invoke-virtual {v2, v0, v3, v4}, Lc3/f;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v3, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1318
    .line 1319
    .line 1320
    goto :goto_19

    .line 1321
    :cond_1e
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 1322
    .line 1323
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    .line 1324
    .line 1325
    invoke-virtual {v2, v0, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 1326
    .line 1327
    .line 1328
    iget-boolean v2, v3, Lcom/google/android/material/appbar/AppBarLayout;->l:Z

    .line 1329
    .line 1330
    if-eqz v2, :cond_1f

    .line 1331
    .line 1332
    invoke-static {v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    invoke-virtual {v3, v0}, Lcom/google/android/material/appbar/AppBarLayout;->f(Landroid/view/View;)Z

    .line 1337
    .line 1338
    .line 1339
    move-result v0

    .line 1340
    invoke-virtual {v3, v0}, Lcom/google/android/material/appbar/AppBarLayout;->e(Z)Z

    .line 1341
    .line 1342
    .line 1343
    :cond_1f
    :goto_19
    return-void

    .line 1344
    nop

    .line 1345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lc3/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lc3/e;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "(scheduled in SynchronizationContext)"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
