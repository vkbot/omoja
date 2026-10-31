.class public final Lv6/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lz5/k;


# static fields
.field public static final b:[Lz5/o;


# instance fields
.field public final a:Lj6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lz5/o;

    .line 3
    .line 4
    sput-object v0, Lv6/a;->b:[Lz5/o;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj6/c;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Lj6/c;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lv6/a;->a:Lj6/c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lz5/b;Ljava/util/Map;)Lz5/m;
    .registers 45

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    move-object/from16 v3, p0

    .line 5
    .line 6
    iget-object v4, v3, Lv6/a;->a:Lj6/c;

    .line 7
    .line 8
    const/4 v6, 0x5

    .line 9
    const/4 v7, 0x1

    .line 10
    const/4 v8, 0x0

    .line 11
    if-eqz v0, :cond_e0

    .line 12
    .line 13
    sget-object v9, Lz5/d;->c:Lz5/d;

    .line 14
    .line 15
    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v9

    .line 19
    if-eqz v9, :cond_e0

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lz5/b;->a()Lf6/b;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    invoke-virtual {v9}, Lf6/b;->e()[I

    .line 26
    .line 27
    .line 28
    move-result-object v10

    .line 29
    iget v11, v9, Lf6/b;->b:I

    .line 30
    .line 31
    invoke-virtual {v9}, Lf6/b;->c()[I

    .line 32
    .line 33
    .line 34
    move-result-object v12

    .line 35
    if-eqz v10, :cond_dd

    .line 36
    .line 37
    if-eqz v12, :cond_dd

    .line 38
    .line 39
    iget v13, v9, Lf6/b;->c:I

    .line 40
    .line 41
    aget v14, v10, v8

    .line 42
    .line 43
    aget v15, v10, v7

    .line 44
    .line 45
    move v5, v7

    .line 46
    move/from16 v17, v8

    .line 47
    .line 48
    const/high16 v16, 0x40000000    # 2.0f

    .line 49
    .line 50
    :goto_31
    if-ge v14, v11, :cond_48

    .line 51
    .line 52
    if-ge v15, v13, :cond_48

    .line 53
    .line 54
    invoke-virtual {v9, v14, v15}, Lf6/b;->b(II)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eq v5, v1, :cond_43

    .line 59
    .line 60
    add-int/lit8 v1, v17, 0x1

    .line 61
    .line 62
    if-eq v1, v6, :cond_48

    .line 63
    .line 64
    xor-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    move/from16 v17, v1

    .line 67
    .line 68
    :cond_43
    add-int/lit8 v14, v14, 0x1

    .line 69
    .line 70
    add-int/lit8 v15, v15, 0x1

    .line 71
    .line 72
    goto :goto_31

    .line 73
    :cond_48
    if-eq v14, v11, :cond_da

    .line 74
    .line 75
    if-eq v15, v13, :cond_da

    .line 76
    .line 77
    aget v1, v10, v8

    .line 78
    .line 79
    sub-int/2addr v14, v1

    .line 80
    int-to-float v5, v14

    .line 81
    const/high16 v6, 0x40e00000    # 7.0f

    .line 82
    .line 83
    div-float/2addr v5, v6

    .line 84
    aget v6, v10, v7

    .line 85
    .line 86
    aget v10, v12, v7

    .line 87
    .line 88
    aget v12, v12, v8

    .line 89
    .line 90
    if-ge v1, v12, :cond_d7

    .line 91
    .line 92
    if-ge v6, v10, :cond_d7

    .line 93
    .line 94
    sub-int v13, v10, v6

    .line 95
    .line 96
    sub-int v14, v12, v1

    .line 97
    .line 98
    if-eq v13, v14, :cond_6b

    .line 99
    .line 100
    add-int v12, v1, v13

    .line 101
    .line 102
    if-ge v12, v11, :cond_68

    .line 103
    .line 104
    goto :goto_6b

    .line 105
    :cond_68
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 106
    .line 107
    throw v0

    .line 108
    :cond_6b
    :goto_6b
    sub-int v11, v12, v1

    .line 109
    .line 110
    add-int/2addr v11, v7

    .line 111
    int-to-float v11, v11

    .line 112
    div-float/2addr v11, v5

    .line 113
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    add-int/2addr v13, v7

    .line 118
    int-to-float v7, v13

    .line 119
    div-float/2addr v7, v5

    .line 120
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-lez v11, :cond_d4

    .line 125
    .line 126
    if-lez v7, :cond_d4

    .line 127
    .line 128
    if-ne v7, v11, :cond_d1

    .line 129
    .line 130
    div-float v13, v5, v16

    .line 131
    .line 132
    float-to-int v13, v13

    .line 133
    add-int/2addr v6, v13

    .line 134
    add-int/2addr v1, v13

    .line 135
    add-int/lit8 v14, v11, -0x1

    .line 136
    .line 137
    int-to-float v14, v14

    .line 138
    mul-float/2addr v14, v5

    .line 139
    float-to-int v14, v14

    .line 140
    add-int/2addr v14, v1

    .line 141
    sub-int/2addr v14, v12

    .line 142
    if-lez v14, :cond_96

    .line 143
    .line 144
    if-gt v14, v13, :cond_93

    .line 145
    .line 146
    sub-int/2addr v1, v14

    .line 147
    goto :goto_96

    .line 148
    :cond_93
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 149
    .line 150
    throw v0

    .line 151
    :cond_96
    :goto_96
    add-int/lit8 v12, v7, -0x1

    .line 152
    .line 153
    int-to-float v12, v12

    .line 154
    mul-float/2addr v12, v5

    .line 155
    float-to-int v12, v12

    .line 156
    add-int/2addr v12, v6

    .line 157
    sub-int/2addr v12, v10

    .line 158
    if-lez v12, :cond_a6

    .line 159
    .line 160
    if-gt v12, v13, :cond_a3

    .line 161
    .line 162
    sub-int/2addr v6, v12

    .line 163
    goto :goto_a6

    .line 164
    :cond_a3
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 165
    .line 166
    throw v0

    .line 167
    :cond_a6
    :goto_a6
    new-instance v10, Lf6/b;

    .line 168
    .line 169
    invoke-direct {v10, v11, v7}, Lf6/b;-><init>(II)V

    .line 170
    .line 171
    .line 172
    move v12, v8

    .line 173
    :goto_ac
    if-ge v12, v7, :cond_c8

    .line 174
    .line 175
    int-to-float v13, v12

    .line 176
    mul-float/2addr v13, v5

    .line 177
    float-to-int v13, v13

    .line 178
    add-int/2addr v13, v6

    .line 179
    move v14, v8

    .line 180
    :goto_b3
    if-ge v14, v11, :cond_c5

    .line 181
    .line 182
    int-to-float v15, v14

    .line 183
    mul-float/2addr v15, v5

    .line 184
    float-to-int v15, v15

    .line 185
    add-int/2addr v15, v1

    .line 186
    invoke-virtual {v9, v15, v13}, Lf6/b;->b(II)Z

    .line 187
    .line 188
    .line 189
    move-result v15

    .line 190
    if-eqz v15, :cond_c2

    .line 191
    .line 192
    invoke-virtual {v10, v14, v12}, Lf6/b;->f(II)V

    .line 193
    .line 194
    .line 195
    :cond_c2
    add-int/lit8 v14, v14, 0x1

    .line 196
    .line 197
    goto :goto_b3

    .line 198
    :cond_c5
    add-int/lit8 v12, v12, 0x1

    .line 199
    .line 200
    goto :goto_ac

    .line 201
    :cond_c8
    invoke-virtual {v4, v10, v0}, Lj6/c;->d(Lf6/b;Ljava/util/Map;)Lf6/d;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    sget-object v1, Lv6/a;->b:[Lz5/o;

    .line 206
    .line 207
    move v15, v2

    .line 208
    goto/16 :goto_492

    .line 209
    .line 210
    :cond_d1
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 211
    .line 212
    throw v0

    .line 213
    :cond_d4
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 214
    .line 215
    throw v0

    .line 216
    :cond_d7
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 217
    .line 218
    throw v0

    .line 219
    :cond_da
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 220
    .line 221
    throw v0

    .line 222
    :cond_dd
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 223
    .line 224
    throw v0

    .line 225
    :cond_e0
    const/high16 v16, 0x40000000    # 2.0f

    .line 226
    .line 227
    new-instance v1, Ll/d;

    .line 228
    .line 229
    invoke-virtual/range {p1 .. p1}, Lz5/b;->a()Lf6/b;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    const/16 v9, 0x17

    .line 234
    .line 235
    invoke-direct {v1, v9, v5}, Ll/d;-><init>(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    if-nez v0, :cond_f1

    .line 239
    .line 240
    const/4 v10, 0x0

    .line 241
    goto :goto_f9

    .line 242
    :cond_f1
    sget-object v10, Lz5/d;->k:Lz5/d;

    .line 243
    .line 244
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    check-cast v10, Lz5/p;

    .line 249
    .line 250
    :goto_f9
    iput-object v10, v1, Ll/d;->d:Ljava/lang/Object;

    .line 251
    .line 252
    new-instance v11, Lx6/e;

    .line 253
    .line 254
    invoke-direct {v11, v5, v10}, Lx6/e;-><init>(Lf6/b;Lz5/p;)V

    .line 255
    .line 256
    .line 257
    if-eqz v0, :cond_10c

    .line 258
    .line 259
    sget-object v10, Lz5/d;->e:Lz5/d;

    .line 260
    .line 261
    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v10

    .line 265
    if-eqz v10, :cond_10c

    .line 266
    .line 267
    move v10, v7

    .line 268
    goto :goto_10d

    .line 269
    :cond_10c
    move v10, v8

    .line 270
    :goto_10d
    iget v12, v5, Lf6/b;->c:I

    .line 271
    .line 272
    iget v13, v5, Lf6/b;->b:I

    .line 273
    .line 274
    mul-int/lit8 v14, v12, 0x3

    .line 275
    .line 276
    div-int/lit16 v14, v14, 0x184

    .line 277
    .line 278
    if-lt v14, v2, :cond_119

    .line 279
    .line 280
    if-eqz v10, :cond_11a

    .line 281
    .line 282
    :cond_119
    move v14, v2

    .line 283
    :cond_11a
    new-array v6, v6, [I

    .line 284
    .line 285
    add-int/lit8 v10, v14, -0x1

    .line 286
    .line 287
    move v15, v8

    .line 288
    :goto_11f
    move/from16 v17, v2

    .line 289
    .line 290
    iget-object v2, v11, Lx6/e;->b:Ljava/util/ArrayList;

    .line 291
    .line 292
    if-ge v10, v12, :cond_251

    .line 293
    .line 294
    if-nez v15, :cond_251

    .line 295
    .line 296
    invoke-static {v6, v8}, Ljava/util/Arrays;->fill([II)V

    .line 297
    .line 298
    .line 299
    move/from16 v19, v14

    .line 300
    .line 301
    move v14, v8

    .line 302
    :goto_12d
    if-ge v8, v13, :cond_229

    .line 303
    .line 304
    invoke-virtual {v5, v8, v10}, Lf6/b;->b(II)Z

    .line 305
    .line 306
    .line 307
    move-result v21

    .line 308
    if-eqz v21, :cond_144

    .line 309
    .line 310
    and-int/lit8 v9, v14, 0x1

    .line 311
    .line 312
    if-ne v9, v7, :cond_13b

    .line 313
    .line 314
    add-int/lit8 v14, v14, 0x1

    .line 315
    .line 316
    :cond_13b
    aget v9, v6, v14

    .line 317
    .line 318
    add-int/2addr v9, v7

    .line 319
    aput v9, v6, v14

    .line 320
    .line 321
    move/from16 v22, v7

    .line 322
    .line 323
    goto/16 :goto_222

    .line 324
    .line 325
    :cond_144
    and-int/lit8 v9, v14, 0x1

    .line 326
    .line 327
    if-nez v9, :cond_218

    .line 328
    .line 329
    const/4 v9, 0x4

    .line 330
    if-ne v14, v9, :cond_20a

    .line 331
    .line 332
    invoke-static {v6}, Lx6/e;->b([I)Z

    .line 333
    .line 334
    .line 335
    move-result v9

    .line 336
    if-eqz v9, :cond_1f0

    .line 337
    .line 338
    invoke-virtual {v11, v10, v8, v6}, Lx6/e;->c(II[I)Z

    .line 339
    .line 340
    .line 341
    move-result v9

    .line 342
    if-eqz v9, :cond_1d4

    .line 343
    .line 344
    iget-boolean v9, v11, Lx6/e;->c:Z

    .line 345
    .line 346
    if-eqz v9, :cond_164

    .line 347
    .line 348
    invoke-virtual {v11}, Lx6/e;->d()Z

    .line 349
    .line 350
    .line 351
    move-result v15

    .line 352
    const/16 v18, 0x2

    .line 353
    .line 354
    :goto_161
    const/4 v3, 0x0

    .line 355
    goto/16 :goto_1cb

    .line 356
    .line 357
    :cond_164
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 358
    .line 359
    .line 360
    move-result v9

    .line 361
    if-gt v9, v7, :cond_170

    .line 362
    .line 363
    move/from16 v23, v8

    .line 364
    .line 365
    const/4 v3, 0x0

    .line 366
    const/16 v18, 0x2

    .line 367
    .line 368
    goto :goto_1bd

    .line 369
    :cond_170
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 370
    .line 371
    .line 372
    move-result v9

    .line 373
    const/4 v7, 0x0

    .line 374
    const/4 v14, 0x0

    .line 375
    :goto_176
    if-ge v14, v9, :cond_1b8

    .line 376
    .line 377
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v19

    .line 381
    add-int/lit8 v14, v14, 0x1

    .line 382
    .line 383
    move-object/from16 v3, v19

    .line 384
    .line 385
    check-cast v3, Lx6/c;

    .line 386
    .line 387
    move/from16 v23, v8

    .line 388
    .line 389
    iget v8, v3, Lx6/c;->d:I

    .line 390
    .line 391
    move/from16 v19, v9

    .line 392
    .line 393
    const/4 v9, 0x2

    .line 394
    if-lt v8, v9, :cond_1b1

    .line 395
    .line 396
    if-nez v7, :cond_195

    .line 397
    .line 398
    move-object v7, v3

    .line 399
    move/from16 v9, v19

    .line 400
    .line 401
    move/from16 v8, v23

    .line 402
    .line 403
    move-object/from16 v3, p0

    .line 404
    .line 405
    goto :goto_176

    .line 406
    :cond_195
    const/4 v8, 0x1

    .line 407
    iput-boolean v8, v11, Lx6/e;->c:Z

    .line 408
    .line 409
    iget v8, v7, Lz5/o;->a:F

    .line 410
    .line 411
    iget v9, v3, Lz5/o;->a:F

    .line 412
    .line 413
    sub-float/2addr v8, v9

    .line 414
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 415
    .line 416
    .line 417
    move-result v8

    .line 418
    iget v7, v7, Lz5/o;->b:F

    .line 419
    .line 420
    iget v3, v3, Lz5/o;->b:F

    .line 421
    .line 422
    sub-float/2addr v7, v3

    .line 423
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    sub-float/2addr v8, v3

    .line 428
    float-to-int v3, v8

    .line 429
    const/16 v18, 0x2

    .line 430
    .line 431
    div-int/lit8 v3, v3, 0x2

    .line 432
    .line 433
    goto :goto_1bd

    .line 434
    :cond_1b1
    move-object/from16 v3, p0

    .line 435
    .line 436
    move/from16 v9, v19

    .line 437
    .line 438
    move/from16 v8, v23

    .line 439
    .line 440
    goto :goto_176

    .line 441
    :cond_1b8
    move/from16 v23, v8

    .line 442
    .line 443
    const/16 v18, 0x2

    .line 444
    .line 445
    const/4 v3, 0x0

    .line 446
    :goto_1bd
    aget v7, v6, v18

    .line 447
    .line 448
    if-le v3, v7, :cond_1c8

    .line 449
    .line 450
    sub-int/2addr v3, v7

    .line 451
    add-int/lit8 v3, v3, -0x2

    .line 452
    .line 453
    add-int/2addr v10, v3

    .line 454
    add-int/lit8 v8, v13, -0x1

    .line 455
    .line 456
    goto :goto_161

    .line 457
    :cond_1c8
    move/from16 v8, v23

    .line 458
    .line 459
    goto :goto_161

    .line 460
    :goto_1cb
    invoke-static {v6, v3}, Ljava/util/Arrays;->fill([II)V

    .line 461
    .line 462
    .line 463
    move v14, v3

    .line 464
    move/from16 v19, v18

    .line 465
    .line 466
    const/16 v22, 0x1

    .line 467
    .line 468
    goto :goto_222

    .line 469
    :cond_1d4
    move/from16 v23, v8

    .line 470
    .line 471
    const/4 v3, 0x0

    .line 472
    const/16 v18, 0x2

    .line 473
    .line 474
    aget v7, v6, v18

    .line 475
    .line 476
    aput v7, v6, v3

    .line 477
    .line 478
    aget v7, v6, v17

    .line 479
    .line 480
    const/16 v22, 0x1

    .line 481
    .line 482
    aput v7, v6, v22

    .line 483
    .line 484
    const/16 v21, 0x4

    .line 485
    .line 486
    aget v7, v6, v21

    .line 487
    .line 488
    aput v7, v6, v18

    .line 489
    .line 490
    aput v22, v6, v17

    .line 491
    .line 492
    aput v3, v6, v21

    .line 493
    .line 494
    :goto_1ed
    move/from16 v14, v17

    .line 495
    .line 496
    goto :goto_222

    .line 497
    :cond_1f0
    move/from16 v22, v7

    .line 498
    .line 499
    move/from16 v23, v8

    .line 500
    .line 501
    const/4 v3, 0x0

    .line 502
    const/16 v18, 0x2

    .line 503
    .line 504
    const/16 v21, 0x4

    .line 505
    .line 506
    aget v7, v6, v18

    .line 507
    .line 508
    aput v7, v6, v3

    .line 509
    .line 510
    aget v7, v6, v17

    .line 511
    .line 512
    aput v7, v6, v22

    .line 513
    .line 514
    aget v7, v6, v21

    .line 515
    .line 516
    aput v7, v6, v18

    .line 517
    .line 518
    aput v22, v6, v17

    .line 519
    .line 520
    aput v3, v6, v21

    .line 521
    .line 522
    goto :goto_1ed

    .line 523
    :cond_20a
    move/from16 v22, v7

    .line 524
    .line 525
    move/from16 v23, v8

    .line 526
    .line 527
    add-int/lit8 v3, v14, 0x1

    .line 528
    .line 529
    aget v7, v6, v3

    .line 530
    .line 531
    add-int/lit8 v7, v7, 0x1

    .line 532
    .line 533
    aput v7, v6, v3

    .line 534
    .line 535
    move v14, v3

    .line 536
    goto :goto_222

    .line 537
    :cond_218
    move/from16 v22, v7

    .line 538
    .line 539
    move/from16 v23, v8

    .line 540
    .line 541
    aget v3, v6, v14

    .line 542
    .line 543
    add-int/lit8 v3, v3, 0x1

    .line 544
    .line 545
    aput v3, v6, v14

    .line 546
    .line 547
    :goto_222
    add-int/lit8 v8, v8, 0x1

    .line 548
    .line 549
    move-object/from16 v3, p0

    .line 550
    .line 551
    const/4 v7, 0x1

    .line 552
    goto/16 :goto_12d

    .line 553
    .line 554
    :cond_229
    invoke-static {v6}, Lx6/e;->b([I)Z

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    if-eqz v2, :cond_246

    .line 559
    .line 560
    invoke-virtual {v11, v10, v13, v6}, Lx6/e;->c(II[I)Z

    .line 561
    .line 562
    .line 563
    move-result v2

    .line 564
    if-eqz v2, :cond_246

    .line 565
    .line 566
    const/16 v20, 0x0

    .line 567
    .line 568
    aget v2, v6, v20

    .line 569
    .line 570
    iget-boolean v3, v11, Lx6/e;->c:Z

    .line 571
    .line 572
    if-eqz v3, :cond_244

    .line 573
    .line 574
    invoke-virtual {v11}, Lx6/e;->d()Z

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    move v14, v2

    .line 579
    move v15, v3

    .line 580
    goto :goto_248

    .line 581
    :cond_244
    move v14, v2

    .line 582
    goto :goto_248

    .line 583
    :cond_246
    move/from16 v14, v19

    .line 584
    .line 585
    :goto_248
    add-int/2addr v10, v14

    .line 586
    move-object/from16 v3, p0

    .line 587
    .line 588
    move/from16 v2, v17

    .line 589
    .line 590
    const/4 v7, 0x1

    .line 591
    const/4 v8, 0x0

    .line 592
    goto/16 :goto_11f

    .line 593
    .line 594
    :cond_251
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    move/from16 v6, v17

    .line 599
    .line 600
    if-lt v3, v6, :cond_4f6

    .line 601
    .line 602
    sget-object v3, Lx6/e;->f:Lx6/d;

    .line 603
    .line 604
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 605
    .line 606
    .line 607
    new-array v3, v6, [Lx6/c;

    .line 608
    .line 609
    const/4 v8, 0x0

    .line 610
    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    :cond_266
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 616
    .line 617
    .line 618
    move-result v11

    .line 619
    const/16 v18, 0x2

    .line 620
    .line 621
    add-int/lit8 v11, v11, -0x2

    .line 622
    .line 623
    if-ge v8, v11, :cond_311

    .line 624
    .line 625
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v11

    .line 629
    check-cast v11, Lx6/c;

    .line 630
    .line 631
    iget v12, v11, Lx6/c;->c:F

    .line 632
    .line 633
    add-int/lit8 v8, v8, 0x1

    .line 634
    .line 635
    move v13, v8

    .line 636
    :cond_27b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 637
    .line 638
    .line 639
    move-result v14

    .line 640
    const/16 v22, 0x1

    .line 641
    .line 642
    add-int/lit8 v14, v14, -0x1

    .line 643
    .line 644
    if-ge v13, v14, :cond_266

    .line 645
    .line 646
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v14

    .line 650
    check-cast v14, Lx6/c;

    .line 651
    .line 652
    invoke-static {v11, v14}, Lx6/e;->e(Lx6/c;Lx6/c;)D

    .line 653
    .line 654
    .line 655
    move-result-wide v23

    .line 656
    add-int/lit8 v13, v13, 0x1

    .line 657
    .line 658
    move v15, v13

    .line 659
    const-wide v25, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    :goto_297
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 665
    .line 666
    .line 667
    move-result v6

    .line 668
    if-ge v15, v6, :cond_27b

    .line 669
    .line 670
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v6

    .line 674
    check-cast v6, Lx6/c;

    .line 675
    .line 676
    iget v7, v6, Lx6/c;->c:F

    .line 677
    .line 678
    const v19, 0x3fb33333    # 1.4f

    .line 679
    .line 680
    .line 681
    mul-float v19, v19, v12

    .line 682
    .line 683
    cmpl-float v7, v7, v19

    .line 684
    .line 685
    if-gtz v7, :cond_30e

    .line 686
    .line 687
    invoke-static {v14, v6}, Lx6/e;->e(Lx6/c;Lx6/c;)D

    .line 688
    .line 689
    .line 690
    move-result-wide v27

    .line 691
    invoke-static {v11, v6}, Lx6/e;->e(Lx6/c;Lx6/c;)D

    .line 692
    .line 693
    .line 694
    move-result-wide v29

    .line 695
    cmpg-double v7, v23, v27

    .line 696
    .line 697
    if-gez v7, :cond_2d1

    .line 698
    .line 699
    cmpl-double v7, v27, v29

    .line 700
    .line 701
    if-lez v7, :cond_2ca

    .line 702
    .line 703
    cmpg-double v7, v23, v29

    .line 704
    .line 705
    if-gez v7, :cond_2c5

    .line 706
    .line 707
    :goto_2c2
    move-wide/from16 v31, v23

    .line 708
    .line 709
    goto :goto_2e8

    .line 710
    :cond_2c5
    move-wide/from16 v31, v29

    .line 711
    .line 712
    :goto_2c7
    move-wide/from16 v29, v23

    .line 713
    .line 714
    goto :goto_2e8

    .line 715
    :cond_2ca
    move-wide/from16 v31, v29

    .line 716
    .line 717
    move-wide/from16 v29, v27

    .line 718
    .line 719
    move-wide/from16 v27, v31

    .line 720
    .line 721
    goto :goto_2c2

    .line 722
    :cond_2d1
    cmpg-double v7, v27, v29

    .line 723
    .line 724
    if-gez v7, :cond_2e3

    .line 725
    .line 726
    cmpg-double v7, v23, v29

    .line 727
    .line 728
    if-gez v7, :cond_2de

    .line 729
    .line 730
    move-wide/from16 v31, v27

    .line 731
    .line 732
    move-wide/from16 v27, v29

    .line 733
    .line 734
    goto :goto_2c7

    .line 735
    :cond_2de
    move-wide/from16 v31, v27

    .line 736
    .line 737
    :goto_2e0
    move-wide/from16 v27, v23

    .line 738
    .line 739
    goto :goto_2e8

    .line 740
    :cond_2e3
    move-wide/from16 v31, v29

    .line 741
    .line 742
    move-wide/from16 v29, v27

    .line 743
    .line 744
    goto :goto_2e0

    .line 745
    :goto_2e8
    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    .line 746
    .line 747
    mul-double v29, v29, v33

    .line 748
    .line 749
    sub-double v29, v27, v29

    .line 750
    .line 751
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->abs(D)D

    .line 752
    .line 753
    .line 754
    move-result-wide v29

    .line 755
    mul-double v31, v31, v33

    .line 756
    .line 757
    sub-double v27, v27, v31

    .line 758
    .line 759
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->abs(D)D

    .line 760
    .line 761
    .line 762
    move-result-wide v27

    .line 763
    add-double v27, v27, v29

    .line 764
    .line 765
    cmpg-double v7, v27, v9

    .line 766
    .line 767
    if-gez v7, :cond_30e

    .line 768
    .line 769
    const/16 v20, 0x0

    .line 770
    .line 771
    aput-object v11, v3, v20

    .line 772
    .line 773
    const/16 v22, 0x1

    .line 774
    .line 775
    aput-object v14, v3, v22

    .line 776
    .line 777
    const/16 v18, 0x2

    .line 778
    .line 779
    aput-object v6, v3, v18

    .line 780
    .line 781
    move-wide/from16 v9, v27

    .line 782
    .line 783
    :cond_30e
    add-int/lit8 v15, v15, 0x1

    .line 784
    .line 785
    goto :goto_297

    .line 786
    :cond_311
    const-wide v25, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    cmpl-double v2, v9, v25

    .line 792
    .line 793
    if-eqz v2, :cond_4f3

    .line 794
    .line 795
    const/16 v20, 0x0

    .line 796
    .line 797
    aget-object v2, v3, v20

    .line 798
    .line 799
    const/16 v22, 0x1

    .line 800
    .line 801
    aget-object v6, v3, v22

    .line 802
    .line 803
    invoke-static {v2, v6}, Lz5/o;->a(Lz5/o;Lz5/o;)F

    .line 804
    .line 805
    .line 806
    move-result v2

    .line 807
    aget-object v6, v3, v22

    .line 808
    .line 809
    const/16 v18, 0x2

    .line 810
    .line 811
    aget-object v7, v3, v18

    .line 812
    .line 813
    invoke-static {v6, v7}, Lz5/o;->a(Lz5/o;Lz5/o;)F

    .line 814
    .line 815
    .line 816
    move-result v6

    .line 817
    aget-object v7, v3, v20

    .line 818
    .line 819
    aget-object v8, v3, v18

    .line 820
    .line 821
    invoke-static {v7, v8}, Lz5/o;->a(Lz5/o;Lz5/o;)F

    .line 822
    .line 823
    .line 824
    move-result v7

    .line 825
    cmpl-float v8, v6, v2

    .line 826
    .line 827
    if-ltz v8, :cond_347

    .line 828
    .line 829
    cmpl-float v8, v6, v7

    .line 830
    .line 831
    if-ltz v8, :cond_347

    .line 832
    .line 833
    aget-object v2, v3, v20

    .line 834
    .line 835
    aget-object v6, v3, v22

    .line 836
    .line 837
    aget-object v7, v3, v18

    .line 838
    .line 839
    goto :goto_35c

    .line 840
    :cond_347
    cmpl-float v6, v7, v6

    .line 841
    .line 842
    if-ltz v6, :cond_356

    .line 843
    .line 844
    cmpl-float v2, v7, v2

    .line 845
    .line 846
    if-ltz v2, :cond_356

    .line 847
    .line 848
    aget-object v2, v3, v22

    .line 849
    .line 850
    aget-object v6, v3, v20

    .line 851
    .line 852
    aget-object v7, v3, v18

    .line 853
    .line 854
    goto :goto_35c

    .line 855
    :cond_356
    aget-object v2, v3, v18

    .line 856
    .line 857
    aget-object v6, v3, v20

    .line 858
    .line 859
    aget-object v7, v3, v22

    .line 860
    .line 861
    :goto_35c
    iget v8, v2, Lz5/o;->a:F

    .line 862
    .line 863
    iget v9, v2, Lz5/o;->b:F

    .line 864
    .line 865
    iget v10, v7, Lz5/o;->a:F

    .line 866
    .line 867
    sub-float/2addr v10, v8

    .line 868
    iget v11, v6, Lz5/o;->b:F

    .line 869
    .line 870
    sub-float/2addr v11, v9

    .line 871
    mul-float/2addr v11, v10

    .line 872
    iget v10, v7, Lz5/o;->b:F

    .line 873
    .line 874
    sub-float/2addr v10, v9

    .line 875
    iget v12, v6, Lz5/o;->a:F

    .line 876
    .line 877
    sub-float/2addr v12, v8

    .line 878
    mul-float/2addr v12, v10

    .line 879
    sub-float/2addr v11, v12

    .line 880
    const/4 v8, 0x0

    .line 881
    cmpg-float v8, v11, v8

    .line 882
    .line 883
    if-gez v8, :cond_379

    .line 884
    .line 885
    move-object/from16 v20, v7

    .line 886
    .line 887
    move-object v7, v6

    .line 888
    move-object/from16 v6, v20

    .line 889
    .line 890
    :cond_379
    const/16 v20, 0x0

    .line 891
    .line 892
    aput-object v6, v3, v20

    .line 893
    .line 894
    const/16 v22, 0x1

    .line 895
    .line 896
    aput-object v2, v3, v22

    .line 897
    .line 898
    const/16 v18, 0x2

    .line 899
    .line 900
    aput-object v7, v3, v18

    .line 901
    .line 902
    invoke-virtual {v1, v2, v7}, Ll/d;->i(Lx6/c;Lx6/c;)F

    .line 903
    .line 904
    .line 905
    move-result v3

    .line 906
    iget v8, v2, Lz5/o;->a:F

    .line 907
    .line 908
    iget v10, v7, Lz5/o;->b:F

    .line 909
    .line 910
    iget v11, v7, Lz5/o;->a:F

    .line 911
    .line 912
    invoke-virtual {v1, v2, v6}, Ll/d;->i(Lx6/c;Lx6/c;)F

    .line 913
    .line 914
    .line 915
    move-result v12

    .line 916
    iget v13, v6, Lz5/o;->b:F

    .line 917
    .line 918
    iget v14, v6, Lz5/o;->a:F

    .line 919
    .line 920
    add-float/2addr v12, v3

    .line 921
    div-float v12, v12, v16

    .line 922
    .line 923
    const/high16 v3, 0x3f800000    # 1.0f

    .line 924
    .line 925
    cmpg-float v15, v12, v3

    .line 926
    .line 927
    if-ltz v15, :cond_4f0

    .line 928
    .line 929
    invoke-static {v2, v7}, Lz5/o;->a(Lz5/o;Lz5/o;)F

    .line 930
    .line 931
    .line 932
    move-result v15

    .line 933
    div-float/2addr v15, v12

    .line 934
    invoke-static {v15}, La/a;->u(F)I

    .line 935
    .line 936
    .line 937
    move-result v15

    .line 938
    invoke-static {v2, v6}, Lz5/o;->a(Lz5/o;Lz5/o;)F

    .line 939
    .line 940
    .line 941
    move-result v16

    .line 942
    div-float v16, v16, v12

    .line 943
    .line 944
    invoke-static/range {v16 .. v16}, La/a;->u(F)I

    .line 945
    .line 946
    .line 947
    move-result v16

    .line 948
    add-int v16, v16, v15

    .line 949
    .line 950
    const/4 v15, 0x2

    .line 951
    div-int/lit8 v16, v16, 0x2

    .line 952
    .line 953
    add-int/lit8 v19, v16, 0x7

    .line 954
    .line 955
    move/from16 v23, v3

    .line 956
    .line 957
    and-int/lit8 v3, v19, 0x3

    .line 958
    .line 959
    if-eqz v3, :cond_3ce

    .line 960
    .line 961
    if-eq v3, v15, :cond_3cb

    .line 962
    .line 963
    const/4 v15, 0x3

    .line 964
    if-eq v3, v15, :cond_3c8

    .line 965
    .line 966
    :goto_3c5
    move/from16 v3, v19

    .line 967
    .line 968
    goto :goto_3d1

    .line 969
    :cond_3c8
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 970
    .line 971
    throw v0

    .line 972
    :cond_3cb
    add-int/lit8 v19, v16, 0x6

    .line 973
    .line 974
    goto :goto_3c5

    .line 975
    :cond_3ce
    add-int/lit8 v19, v16, 0x8

    .line 976
    .line 977
    goto :goto_3c5

    .line 978
    :goto_3d1
    sget-object v15, Lw6/f;->e:[I

    .line 979
    .line 980
    rem-int/lit8 v15, v3, 0x4

    .line 981
    .line 982
    move/from16 v16, v10

    .line 983
    .line 984
    const/4 v10, 0x1

    .line 985
    if-ne v15, v10, :cond_4eb

    .line 986
    .line 987
    add-int/lit8 v10, v3, -0x11

    .line 988
    .line 989
    const/16 v21, 0x4

    .line 990
    .line 991
    :try_start_3de
    div-int/lit8 v10, v10, 0x4

    .line 992
    .line 993
    invoke-static {v10}, Lw6/f;->c(I)Lw6/f;

    .line 994
    .line 995
    .line 996
    move-result-object v10
    :try_end_3e4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3de .. :try_end_3e4} :catch_4e6

    .line 997
    iget v15, v10, Lw6/f;->a:I

    .line 998
    .line 999
    mul-int/lit8 v15, v15, 0x4

    .line 1000
    .line 1001
    add-int/lit8 v15, v15, 0xa

    .line 1002
    .line 1003
    iget-object v10, v10, Lw6/f;->b:[I

    .line 1004
    .line 1005
    array-length v10, v10

    .line 1006
    const/high16 v19, 0x40400000    # 3.0f

    .line 1007
    .line 1008
    if-lez v10, :cond_419

    .line 1009
    .line 1010
    sub-float v10, v11, v8

    .line 1011
    .line 1012
    add-float/2addr v10, v14

    .line 1013
    sub-float v24, v16, v9

    .line 1014
    .line 1015
    move/from16 v25, v11

    .line 1016
    .line 1017
    add-float v11, v24, v13

    .line 1018
    .line 1019
    int-to-float v15, v15

    .line 1020
    div-float v15, v19, v15

    .line 1021
    .line 1022
    sub-float v15, v23, v15

    .line 1023
    .line 1024
    invoke-static {v10, v8, v15, v8}, Lai/onnxruntime/a;->b(FFFF)F

    .line 1025
    .line 1026
    .line 1027
    move-result v10

    .line 1028
    float-to-int v10, v10

    .line 1029
    invoke-static {v11, v9, v15, v9}, Lai/onnxruntime/a;->b(FFFF)F

    .line 1030
    .line 1031
    .line 1032
    move-result v11

    .line 1033
    float-to-int v11, v11

    .line 1034
    move/from16 v23, v8

    .line 1035
    .line 1036
    const/4 v15, 0x4

    .line 1037
    :goto_40c
    const/16 v8, 0x10

    .line 1038
    .line 1039
    if-gt v15, v8, :cond_41d

    .line 1040
    .line 1041
    int-to-float v8, v15

    .line 1042
    :try_start_411
    invoke-virtual {v1, v12, v8, v10, v11}, Ll/d;->o(FFII)Lx6/a;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v1
    :try_end_415
    .catch Lz5/i; {:try_start_411 .. :try_end_415} :catch_416

    .line 1046
    goto :goto_41e

    .line 1047
    :catch_416
    shl-int/lit8 v15, v15, 0x1

    .line 1048
    .line 1049
    goto :goto_40c

    .line 1050
    :cond_419
    move/from16 v23, v8

    .line 1051
    .line 1052
    move/from16 v25, v11

    .line 1053
    .line 1054
    :cond_41d
    const/4 v1, 0x0

    .line 1055
    :goto_41e
    int-to-float v8, v3

    .line 1056
    const/high16 v10, 0x40600000    # 3.5f

    .line 1057
    .line 1058
    sub-float v28, v8, v10

    .line 1059
    .line 1060
    if-eqz v1, :cond_432

    .line 1061
    .line 1062
    iget v8, v1, Lz5/o;->a:F

    .line 1063
    .line 1064
    iget v9, v1, Lz5/o;->b:F

    .line 1065
    .line 1066
    sub-float v10, v28, v19

    .line 1067
    .line 1068
    move/from16 v30, v10

    .line 1069
    .line 1070
    :goto_42d
    move/from16 v38, v8

    .line 1071
    .line 1072
    move/from16 v39, v9

    .line 1073
    .line 1074
    goto :goto_43d

    .line 1075
    :cond_432
    sub-float v11, v25, v23

    .line 1076
    .line 1077
    add-float v8, v11, v14

    .line 1078
    .line 1079
    sub-float v10, v16, v9

    .line 1080
    .line 1081
    add-float v9, v10, v13

    .line 1082
    .line 1083
    move/from16 v30, v28

    .line 1084
    .line 1085
    goto :goto_42d

    .line 1086
    :goto_43d
    iget v8, v2, Lz5/o;->a:F

    .line 1087
    .line 1088
    iget v9, v2, Lz5/o;->b:F

    .line 1089
    .line 1090
    iget v10, v7, Lz5/o;->a:F

    .line 1091
    .line 1092
    iget v11, v7, Lz5/o;->b:F

    .line 1093
    .line 1094
    iget v12, v6, Lz5/o;->a:F

    .line 1095
    .line 1096
    iget v13, v6, Lz5/o;->b:F

    .line 1097
    .line 1098
    const/high16 v26, 0x40600000    # 3.5f

    .line 1099
    .line 1100
    const/high16 v27, 0x40600000    # 3.5f

    .line 1101
    .line 1102
    const/high16 v29, 0x40600000    # 3.5f

    .line 1103
    .line 1104
    const/high16 v32, 0x40600000    # 3.5f

    .line 1105
    .line 1106
    move/from16 v31, v30

    .line 1107
    .line 1108
    move/from16 v33, v28

    .line 1109
    .line 1110
    move/from16 v34, v8

    .line 1111
    .line 1112
    move/from16 v35, v9

    .line 1113
    .line 1114
    move/from16 v36, v10

    .line 1115
    .line 1116
    move/from16 v37, v11

    .line 1117
    .line 1118
    move/from16 v40, v12

    .line 1119
    .line 1120
    move/from16 v41, v13

    .line 1121
    .line 1122
    invoke-static/range {v26 .. v41}, Lf6/f;->a(FFFFFFFFFFFFFFFF)Lf6/f;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v8

    .line 1126
    invoke-static {v5, v3, v3, v8}, Ly5/k;->q(Lf6/b;IILf6/f;)Lf6/b;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v3

    .line 1130
    if-nez v1, :cond_47b

    .line 1131
    .line 1132
    const/4 v15, 0x3

    .line 1133
    new-array v1, v15, [Lz5/o;

    .line 1134
    .line 1135
    const/16 v20, 0x0

    .line 1136
    .line 1137
    aput-object v6, v1, v20

    .line 1138
    .line 1139
    const/16 v22, 0x1

    .line 1140
    .line 1141
    aput-object v2, v1, v22

    .line 1142
    .line 1143
    const/16 v18, 0x2

    .line 1144
    .line 1145
    aput-object v7, v1, v18

    .line 1146
    .line 1147
    goto :goto_48e

    .line 1148
    :cond_47b
    const/4 v9, 0x4

    .line 1149
    const/4 v15, 0x3

    .line 1150
    const/16 v18, 0x2

    .line 1151
    .line 1152
    const/16 v20, 0x0

    .line 1153
    .line 1154
    const/16 v22, 0x1

    .line 1155
    .line 1156
    new-array v5, v9, [Lz5/o;

    .line 1157
    .line 1158
    aput-object v6, v5, v20

    .line 1159
    .line 1160
    aput-object v2, v5, v22

    .line 1161
    .line 1162
    aput-object v7, v5, v18

    .line 1163
    .line 1164
    aput-object v1, v5, v15

    .line 1165
    .line 1166
    move-object v1, v5

    .line 1167
    :goto_48e
    invoke-virtual {v4, v3, v0}, Lj6/c;->d(Lf6/b;Ljava/util/Map;)Lf6/d;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v0

    .line 1171
    :goto_492
    iget v2, v0, Lf6/d;->b:I

    .line 1172
    .line 1173
    iget-object v3, v0, Lf6/d;->g:Ljava/lang/Object;

    .line 1174
    .line 1175
    instance-of v3, v3, Lw6/e;

    .line 1176
    .line 1177
    if-eqz v3, :cond_4aa

    .line 1178
    .line 1179
    array-length v3, v1

    .line 1180
    if-ge v3, v15, :cond_49e

    .line 1181
    .line 1182
    goto :goto_4aa

    .line 1183
    :cond_49e
    const/16 v20, 0x0

    .line 1184
    .line 1185
    aget-object v3, v1, v20

    .line 1186
    .line 1187
    const/16 v18, 0x2

    .line 1188
    .line 1189
    aget-object v4, v1, v18

    .line 1190
    .line 1191
    aput-object v4, v1, v20

    .line 1192
    .line 1193
    aput-object v3, v1, v18

    .line 1194
    .line 1195
    :cond_4aa
    :goto_4aa
    new-instance v3, Lz5/m;

    .line 1196
    .line 1197
    iget-object v4, v0, Lf6/d;->a:Ljava/lang/String;

    .line 1198
    .line 1199
    iget-object v5, v0, Lf6/d;->d:Ljava/lang/Object;

    .line 1200
    .line 1201
    check-cast v5, [B

    .line 1202
    .line 1203
    sget-object v6, Lz5/a;->m:Lz5/a;

    .line 1204
    .line 1205
    invoke-direct {v3, v4, v5, v1, v6}, Lz5/m;-><init>(Ljava/lang/String;[B[Lz5/o;Lz5/a;)V

    .line 1206
    .line 1207
    .line 1208
    iget-object v1, v0, Lf6/d;->f:Ljava/lang/Object;

    .line 1209
    .line 1210
    check-cast v1, Ljava/util/List;

    .line 1211
    .line 1212
    if-eqz v1, :cond_4c2

    .line 1213
    .line 1214
    sget-object v4, Lz5/n;->c:Lz5/n;

    .line 1215
    .line 1216
    invoke-virtual {v3, v4, v1}, Lz5/m;->b(Lz5/n;Ljava/lang/Object;)V

    .line 1217
    .line 1218
    .line 1219
    :cond_4c2
    iget-object v1, v0, Lf6/d;->e:Ljava/io/Serializable;

    .line 1220
    .line 1221
    check-cast v1, Ljava/lang/String;

    .line 1222
    .line 1223
    if-eqz v1, :cond_4cd

    .line 1224
    .line 1225
    sget-object v4, Lz5/n;->d:Lz5/n;

    .line 1226
    .line 1227
    invoke-virtual {v3, v4, v1}, Lz5/m;->b(Lz5/n;Ljava/lang/Object;)V

    .line 1228
    .line 1229
    .line 1230
    :cond_4cd
    if-ltz v2, :cond_4e5

    .line 1231
    .line 1232
    iget v0, v0, Lf6/d;->c:I

    .line 1233
    .line 1234
    if-ltz v0, :cond_4e5

    .line 1235
    .line 1236
    sget-object v1, Lz5/n;->j:Lz5/n;

    .line 1237
    .line 1238
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v0

    .line 1242
    invoke-virtual {v3, v1, v0}, Lz5/m;->b(Lz5/n;Ljava/lang/Object;)V

    .line 1243
    .line 1244
    .line 1245
    sget-object v0, Lz5/n;->k:Lz5/n;

    .line 1246
    .line 1247
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v1

    .line 1251
    invoke-virtual {v3, v0, v1}, Lz5/m;->b(Lz5/n;Ljava/lang/Object;)V

    .line 1252
    .line 1253
    .line 1254
    :cond_4e5
    return-object v3

    .line 1255
    :catch_4e6
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v0

    .line 1259
    throw v0

    .line 1260
    :cond_4eb
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    throw v0

    .line 1265
    :cond_4f0
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 1266
    .line 1267
    throw v0

    .line 1268
    :cond_4f3
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 1269
    .line 1270
    throw v0

    .line 1271
    :cond_4f6
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 1272
    .line 1273
    throw v0
.end method

.method public final reset()V
    .registers 1

    .line 1
    return-void
.end method
