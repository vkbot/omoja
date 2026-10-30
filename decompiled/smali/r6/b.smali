.class public final Lr6/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lz5/k;


# static fields
.field public static final a:[Lz5/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lz5/m;

    .line 3
    .line 4
    sput-object v0, Lr6/b;->a:[Lz5/m;

    .line 5
    .line 6
    return-void
.end method

.method public static b(Lz5/o;Lz5/o;)I
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget p0, p0, Lz5/o;->a:F

    .line 7
    .line 8
    iget p1, p1, Lz5/o;->a:F

    .line 9
    .line 10
    sub-float/2addr p0, p1

    .line 11
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    float-to-int p0, p0

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static c(Lz5/o;Lz5/o;)I
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget p0, p0, Lz5/o;->a:F

    .line 7
    .line 8
    iget p1, p1, Lz5/o;->a:F

    .line 9
    .line 10
    sub-float/2addr p0, p1

    .line 11
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    float-to-int p0, p0

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const p0, 0x7fffffff

    .line 18
    .line 19
    .line 20
    return p0
.end method


# virtual methods
.method public final a(Lz5/b;Ljava/util/Map;)Lz5/m;
    .locals 37

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Lz5/b;->a()Lf6/b;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lu6/a;->a(Lf6/b;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x1

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    new-instance v2, Lf6/b;

    .line 24
    .line 25
    iget v3, v1, Lf6/b;->b:I

    .line 26
    .line 27
    iget v7, v1, Lf6/b;->c:I

    .line 28
    .line 29
    iget v8, v1, Lf6/b;->d:I

    .line 30
    .line 31
    iget-object v1, v1, Lf6/b;->e:[I

    .line 32
    .line 33
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, [I

    .line 38
    .line 39
    invoke-direct {v2, v3, v7, v8, v1}, Lf6/b;-><init>(III[I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lf6/a;

    .line 43
    .line 44
    invoke-direct {v1, v3}, Lf6/a;-><init>(I)V

    .line 45
    .line 46
    .line 47
    new-instance v8, Lf6/a;

    .line 48
    .line 49
    invoke-direct {v8, v3}, Lf6/a;-><init>(I)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v3, v7, 0x1

    .line 53
    .line 54
    div-int/2addr v3, v5

    .line 55
    move v9, v4

    .line 56
    :goto_0
    if-ge v9, v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {v2, v1, v9}, Lf6/b;->d(Lf6/a;I)Lf6/a;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    add-int/lit8 v10, v7, -0x1

    .line 63
    .line 64
    sub-int/2addr v10, v9

    .line 65
    invoke-virtual {v2, v8, v10}, Lf6/b;->d(Lf6/a;I)Lf6/a;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {v1}, Lf6/a;->i()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8}, Lf6/a;->i()V

    .line 73
    .line 74
    .line 75
    iget-object v11, v8, Lf6/a;->b:[I

    .line 76
    .line 77
    iget v12, v2, Lf6/b;->d:I

    .line 78
    .line 79
    mul-int v13, v9, v12

    .line 80
    .line 81
    iget-object v14, v2, Lf6/b;->e:[I

    .line 82
    .line 83
    invoke-static {v11, v4, v14, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    .line 85
    .line 86
    iget-object v11, v1, Lf6/a;->b:[I

    .line 87
    .line 88
    mul-int/2addr v10, v12

    .line 89
    invoke-static {v11, v4, v14, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v9, v9, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v2}, Lu6/a;->a(Lf6/b;)Ljava/util/ArrayList;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    move-object v7, v2

    .line 100
    move-object v2, v1

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    move-object v7, v1

    .line 103
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    move v3, v4

    .line 108
    :goto_2
    if-ge v3, v1, :cond_60

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 115
    .line 116
    move-object v15, v8

    .line 117
    check-cast v15, [Lz5/o;

    .line 118
    .line 119
    const/16 v16, 0x4

    .line 120
    .line 121
    aget-object v9, v15, v16

    .line 122
    .line 123
    const/16 v17, 0x5

    .line 124
    .line 125
    aget-object v10, v15, v17

    .line 126
    .line 127
    const/16 v18, 0x6

    .line 128
    .line 129
    aget-object v11, v15, v18

    .line 130
    .line 131
    const/16 v19, 0x7

    .line 132
    .line 133
    aget-object v12, v15, v19

    .line 134
    .line 135
    aget-object v8, v15, v4

    .line 136
    .line 137
    invoke-static {v8, v9}, Lr6/b;->c(Lz5/o;Lz5/o;)I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    aget-object v13, v15, v18

    .line 142
    .line 143
    aget-object v14, v15, v5

    .line 144
    .line 145
    invoke-static {v13, v14}, Lr6/b;->c(Lz5/o;Lz5/o;)I

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    mul-int/lit8 v13, v13, 0x11

    .line 150
    .line 151
    div-int/lit8 v13, v13, 0x12

    .line 152
    .line 153
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    aget-object v13, v15, v6

    .line 158
    .line 159
    aget-object v14, v15, v17

    .line 160
    .line 161
    invoke-static {v13, v14}, Lr6/b;->c(Lz5/o;Lz5/o;)I

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    aget-object v14, v15, v19

    .line 166
    .line 167
    const/16 v20, 0x3

    .line 168
    .line 169
    move/from16 p1, v4

    .line 170
    .line 171
    aget-object v4, v15, v20

    .line 172
    .line 173
    invoke-static {v14, v4}, Lr6/b;->c(Lz5/o;Lz5/o;)I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    mul-int/lit8 v4, v4, 0x11

    .line 178
    .line 179
    div-int/lit8 v4, v4, 0x12

    .line 180
    .line 181
    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    aget-object v8, v15, p1

    .line 190
    .line 191
    aget-object v13, v15, v16

    .line 192
    .line 193
    invoke-static {v8, v13}, Lr6/b;->b(Lz5/o;Lz5/o;)I

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    aget-object v13, v15, v18

    .line 198
    .line 199
    aget-object v14, v15, v5

    .line 200
    .line 201
    invoke-static {v13, v14}, Lr6/b;->b(Lz5/o;Lz5/o;)I

    .line 202
    .line 203
    .line 204
    move-result v13

    .line 205
    mul-int/lit8 v13, v13, 0x11

    .line 206
    .line 207
    div-int/lit8 v13, v13, 0x12

    .line 208
    .line 209
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    .line 210
    .line 211
    .line 212
    move-result v8

    .line 213
    aget-object v13, v15, v6

    .line 214
    .line 215
    aget-object v14, v15, v17

    .line 216
    .line 217
    invoke-static {v13, v14}, Lr6/b;->b(Lz5/o;Lz5/o;)I

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    aget-object v14, v15, v19

    .line 222
    .line 223
    move/from16 p2, v6

    .line 224
    .line 225
    aget-object v6, v15, v20

    .line 226
    .line 227
    invoke-static {v14, v6}, Lr6/b;->b(Lz5/o;Lz5/o;)I

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    mul-int/lit8 v6, v6, 0x11

    .line 232
    .line 233
    div-int/lit8 v6, v6, 0x12

    .line 234
    .line 235
    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    sget-object v8, Ls6/g;->a:Ln/p;

    .line 244
    .line 245
    move-object v8, v7

    .line 246
    new-instance v7, Ls6/c;

    .line 247
    .line 248
    invoke-direct/range {v7 .. v12}, Ls6/c;-><init>(Lf6/b;Lz5/o;Lz5/o;Lz5/o;Lz5/o;)V

    .line 249
    .line 250
    .line 251
    move-object v13, v11

    .line 252
    move/from16 v21, p2

    .line 253
    .line 254
    const/4 v10, 0x0

    .line 255
    const/16 v22, 0x0

    .line 256
    .line 257
    :goto_3
    iget v11, v7, Ls6/c;->i:I

    .line 258
    .line 259
    iget v12, v7, Ls6/c;->h:I

    .line 260
    .line 261
    if-eqz v9, :cond_2

    .line 262
    .line 263
    const/4 v10, 0x1

    .line 264
    move/from16 v36, v11

    .line 265
    .line 266
    move v11, v4

    .line 267
    move v4, v12

    .line 268
    move v12, v6

    .line 269
    move/from16 v6, v36

    .line 270
    .line 271
    move-object/from16 v36, v8

    .line 272
    .line 273
    move-object v8, v7

    .line 274
    move-object/from16 v7, v36

    .line 275
    .line 276
    invoke-static/range {v7 .. v12}, Ls6/g;->d(Lf6/b;Ls6/c;Lz5/o;ZII)Ls6/e;

    .line 277
    .line 278
    .line 279
    move-result-object v10

    .line 280
    :goto_4
    move-object/from16 v23, v9

    .line 281
    .line 282
    move-object/from16 v24, v10

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_2
    move/from16 v23, v11

    .line 286
    .line 287
    move v11, v4

    .line 288
    move v4, v12

    .line 289
    move v12, v6

    .line 290
    move/from16 v6, v23

    .line 291
    .line 292
    move-object/from16 v23, v8

    .line 293
    .line 294
    move-object v8, v7

    .line 295
    move-object/from16 v7, v23

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :goto_5
    if-eqz v13, :cond_3

    .line 299
    .line 300
    const/4 v10, 0x0

    .line 301
    move-object v9, v13

    .line 302
    invoke-static/range {v7 .. v12}, Ls6/g;->d(Lf6/b;Ls6/c;Lz5/o;ZII)Ls6/e;

    .line 303
    .line 304
    .line 305
    move-result-object v22

    .line 306
    :cond_3
    if-nez v24, :cond_4

    .line 307
    .line 308
    if-nez v22, :cond_4

    .line 309
    .line 310
    :goto_6
    move/from16 v33, v1

    .line 311
    .line 312
    const/4 v1, 0x0

    .line 313
    goto/16 :goto_b

    .line 314
    .line 315
    :cond_4
    if-eqz v24, :cond_7

    .line 316
    .line 317
    invoke-virtual/range {v24 .. v24}, Ls6/e;->S()Ls6/a;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    if-nez v9, :cond_5

    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_5
    if-eqz v22, :cond_9

    .line 325
    .line 326
    invoke-virtual/range {v22 .. v22}, Ls6/e;->S()Ls6/a;

    .line 327
    .line 328
    .line 329
    move-result-object v10

    .line 330
    if-nez v10, :cond_6

    .line 331
    .line 332
    goto :goto_9

    .line 333
    :cond_6
    iget v14, v9, Ls6/a;->b:I

    .line 334
    .line 335
    iget v5, v10, Ls6/a;->b:I

    .line 336
    .line 337
    if-eq v14, v5, :cond_9

    .line 338
    .line 339
    iget v5, v9, Ls6/a;->c:I

    .line 340
    .line 341
    iget v14, v10, Ls6/a;->c:I

    .line 342
    .line 343
    if-eq v5, v14, :cond_9

    .line 344
    .line 345
    iget v5, v9, Ls6/a;->f:I

    .line 346
    .line 347
    iget v10, v10, Ls6/a;->f:I

    .line 348
    .line 349
    if-eq v5, v10, :cond_9

    .line 350
    .line 351
    :goto_7
    const/4 v9, 0x0

    .line 352
    goto :goto_9

    .line 353
    :cond_7
    :goto_8
    if-nez v22, :cond_8

    .line 354
    .line 355
    goto :goto_7

    .line 356
    :cond_8
    invoke-virtual/range {v22 .. v22}, Ls6/e;->S()Ls6/a;

    .line 357
    .line 358
    .line 359
    move-result-object v9

    .line 360
    :cond_9
    :goto_9
    if-nez v9, :cond_a

    .line 361
    .line 362
    goto :goto_6

    .line 363
    :cond_a
    invoke-static/range {v24 .. v24}, Ls6/g;->a(Ls6/e;)Ls6/c;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    invoke-static/range {v22 .. v22}, Ls6/g;->a(Ls6/e;)Ls6/c;

    .line 368
    .line 369
    .line 370
    move-result-object v10

    .line 371
    if-nez v5, :cond_b

    .line 372
    .line 373
    move/from16 v33, v1

    .line 374
    .line 375
    move-object v5, v10

    .line 376
    goto :goto_a

    .line 377
    :cond_b
    if-nez v10, :cond_c

    .line 378
    .line 379
    move/from16 v33, v1

    .line 380
    .line 381
    goto :goto_a

    .line 382
    :cond_c
    new-instance v27, Ls6/c;

    .line 383
    .line 384
    iget-object v14, v5, Ls6/c;->a:Lf6/b;

    .line 385
    .line 386
    move/from16 v33, v1

    .line 387
    .line 388
    iget-object v1, v5, Ls6/c;->b:Lz5/o;

    .line 389
    .line 390
    iget-object v5, v5, Ls6/c;->c:Lz5/o;

    .line 391
    .line 392
    move-object/from16 v29, v1

    .line 393
    .line 394
    iget-object v1, v10, Ls6/c;->d:Lz5/o;

    .line 395
    .line 396
    iget-object v10, v10, Ls6/c;->e:Lz5/o;

    .line 397
    .line 398
    move-object/from16 v31, v1

    .line 399
    .line 400
    move-object/from16 v30, v5

    .line 401
    .line 402
    move-object/from16 v32, v10

    .line 403
    .line 404
    move-object/from16 v28, v14

    .line 405
    .line 406
    invoke-direct/range {v27 .. v32}, Ls6/c;-><init>(Lf6/b;Lz5/o;Lz5/o;Lz5/o;Lz5/o;)V

    .line 407
    .line 408
    .line 409
    move-object/from16 v5, v27

    .line 410
    .line 411
    :goto_a
    new-instance v1, Lb7/p;

    .line 412
    .line 413
    invoke-direct {v1, v9, v5}, Lb7/p;-><init>(Ls6/a;Ls6/c;)V

    .line 414
    .line 415
    .line 416
    :goto_b
    if-eqz v1, :cond_5f

    .line 417
    .line 418
    iget v5, v1, Lb7/p;->b:I

    .line 419
    .line 420
    iget-object v9, v1, Lb7/p;->d:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast v9, [Ll/d;

    .line 423
    .line 424
    iget-object v10, v1, Lb7/p;->e:Ljava/lang/Object;

    .line 425
    .line 426
    check-cast v10, Ls6/c;

    .line 427
    .line 428
    if-eqz v21, :cond_e

    .line 429
    .line 430
    if-eqz v10, :cond_e

    .line 431
    .line 432
    iget v14, v10, Ls6/c;->h:I

    .line 433
    .line 434
    if-lt v14, v4, :cond_d

    .line 435
    .line 436
    iget v14, v10, Ls6/c;->i:I

    .line 437
    .line 438
    if-le v14, v6, :cond_e

    .line 439
    .line 440
    :cond_d
    move/from16 v21, p1

    .line 441
    .line 442
    move-object v8, v7

    .line 443
    move-object v7, v10

    .line 444
    move v4, v11

    .line 445
    move v6, v12

    .line 446
    move-object/from16 v9, v23

    .line 447
    .line 448
    move-object/from16 v10, v24

    .line 449
    .line 450
    move/from16 v1, v33

    .line 451
    .line 452
    const/4 v5, 0x2

    .line 453
    goto/16 :goto_3

    .line 454
    .line 455
    :cond_e
    iput-object v8, v1, Lb7/p;->e:Ljava/lang/Object;

    .line 456
    .line 457
    add-int/lit8 v10, v5, 0x1

    .line 458
    .line 459
    aput-object v24, v9, p1

    .line 460
    .line 461
    aput-object v22, v9, v10

    .line 462
    .line 463
    if-eqz v24, :cond_f

    .line 464
    .line 465
    move/from16 v13, p2

    .line 466
    .line 467
    goto :goto_c

    .line 468
    :cond_f
    move/from16 v13, p1

    .line 469
    .line 470
    :goto_c
    move v14, v12

    .line 471
    move v12, v11

    .line 472
    move/from16 v11, p2

    .line 473
    .line 474
    :goto_d
    if-gt v11, v10, :cond_29

    .line 475
    .line 476
    if-eqz v13, :cond_10

    .line 477
    .line 478
    move-object/from16 v22, v2

    .line 479
    .line 480
    move v2, v11

    .line 481
    goto :goto_e

    .line 482
    :cond_10
    sub-int v21, v10, v11

    .line 483
    .line 484
    move-object/from16 v22, v2

    .line 485
    .line 486
    move/from16 v2, v21

    .line 487
    .line 488
    :goto_e
    aget-object v21, v9, v2

    .line 489
    .line 490
    if-nez v21, :cond_28

    .line 491
    .line 492
    if-eqz v2, :cond_11

    .line 493
    .line 494
    if-ne v2, v10, :cond_12

    .line 495
    .line 496
    :cond_11
    move/from16 v21, v2

    .line 497
    .line 498
    goto :goto_f

    .line 499
    :cond_12
    move/from16 v21, v2

    .line 500
    .line 501
    new-instance v2, Ll/d;

    .line 502
    .line 503
    invoke-direct {v2, v8}, Ll/d;-><init>(Ls6/c;)V

    .line 504
    .line 505
    .line 506
    move/from16 v23, v3

    .line 507
    .line 508
    goto :goto_11

    .line 509
    :goto_f
    new-instance v2, Ls6/e;

    .line 510
    .line 511
    move/from16 v23, v3

    .line 512
    .line 513
    if-nez v21, :cond_13

    .line 514
    .line 515
    move/from16 v3, p2

    .line 516
    .line 517
    goto :goto_10

    .line 518
    :cond_13
    move/from16 v3, p1

    .line 519
    .line 520
    :goto_10
    invoke-direct {v2, v8, v3}, Ls6/e;-><init>(Ls6/c;Z)V

    .line 521
    .line 522
    .line 523
    :goto_11
    aput-object v2, v9, v21

    .line 524
    .line 525
    move/from16 v27, v4

    .line 526
    .line 527
    move/from16 v24, v10

    .line 528
    .line 529
    move v10, v13

    .line 530
    move v13, v12

    .line 531
    const/4 v4, -0x1

    .line 532
    move/from16 v12, v27

    .line 533
    .line 534
    :goto_12
    if-gt v12, v6, :cond_27

    .line 535
    .line 536
    if-eqz v10, :cond_14

    .line 537
    .line 538
    move/from16 v28, p2

    .line 539
    .line 540
    goto :goto_13

    .line 541
    :cond_14
    const/16 v28, -0x1

    .line 542
    .line 543
    :goto_13
    sub-int v3, v21, v28

    .line 544
    .line 545
    if-ltz v3, :cond_16

    .line 546
    .line 547
    move/from16 v30, v6

    .line 548
    .line 549
    add-int/lit8 v6, v5, 0x1

    .line 550
    .line 551
    if-gt v3, v6, :cond_15

    .line 552
    .line 553
    aget-object v6, v9, v3

    .line 554
    .line 555
    move-object/from16 v31, v7

    .line 556
    .line 557
    iget-object v7, v6, Ll/d;->d:Ljava/lang/Object;

    .line 558
    .line 559
    check-cast v7, [Ls6/a;

    .line 560
    .line 561
    invoke-virtual {v6, v12}, Ll/d;->x(I)I

    .line 562
    .line 563
    .line 564
    move-result v6

    .line 565
    aget-object v6, v7, v6

    .line 566
    .line 567
    goto :goto_16

    .line 568
    :cond_15
    :goto_14
    move-object/from16 v31, v7

    .line 569
    .line 570
    goto :goto_15

    .line 571
    :cond_16
    move/from16 v30, v6

    .line 572
    .line 573
    goto :goto_14

    .line 574
    :goto_15
    const/4 v6, 0x0

    .line 575
    :goto_16
    if-eqz v6, :cond_18

    .line 576
    .line 577
    if-eqz v10, :cond_17

    .line 578
    .line 579
    iget v3, v6, Ls6/a;->c:I

    .line 580
    .line 581
    goto/16 :goto_1a

    .line 582
    .line 583
    :cond_17
    iget v3, v6, Ls6/a;->b:I

    .line 584
    .line 585
    goto/16 :goto_1a

    .line 586
    .line 587
    :cond_18
    aget-object v6, v9, v21

    .line 588
    .line 589
    invoke-virtual {v6, v12}, Ll/d;->p(I)Ls6/a;

    .line 590
    .line 591
    .line 592
    move-result-object v6

    .line 593
    if-eqz v6, :cond_1a

    .line 594
    .line 595
    if-eqz v10, :cond_19

    .line 596
    .line 597
    iget v3, v6, Ls6/a;->b:I

    .line 598
    .line 599
    goto/16 :goto_1a

    .line 600
    .line 601
    :cond_19
    iget v3, v6, Ls6/a;->c:I

    .line 602
    .line 603
    goto/16 :goto_1a

    .line 604
    .line 605
    :cond_1a
    if-ltz v3, :cond_1b

    .line 606
    .line 607
    add-int/lit8 v7, v5, 0x1

    .line 608
    .line 609
    if-gt v3, v7, :cond_1b

    .line 610
    .line 611
    aget-object v3, v9, v3

    .line 612
    .line 613
    invoke-virtual {v3, v12}, Ll/d;->p(I)Ls6/a;

    .line 614
    .line 615
    .line 616
    move-result-object v6

    .line 617
    :cond_1b
    if-eqz v6, :cond_1d

    .line 618
    .line 619
    if-eqz v10, :cond_1c

    .line 620
    .line 621
    iget v3, v6, Ls6/a;->c:I

    .line 622
    .line 623
    goto :goto_1a

    .line 624
    :cond_1c
    iget v3, v6, Ls6/a;->b:I

    .line 625
    .line 626
    goto :goto_1a

    .line 627
    :cond_1d
    move/from16 v6, p1

    .line 628
    .line 629
    move/from16 v3, v21

    .line 630
    .line 631
    :goto_17
    sub-int v3, v3, v28

    .line 632
    .line 633
    if-ltz v3, :cond_21

    .line 634
    .line 635
    add-int/lit8 v7, v5, 0x1

    .line 636
    .line 637
    if-gt v3, v7, :cond_21

    .line 638
    .line 639
    aget-object v7, v9, v3

    .line 640
    .line 641
    iget-object v7, v7, Ll/d;->d:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v7, [Ls6/a;

    .line 644
    .line 645
    move/from16 v32, v3

    .line 646
    .line 647
    array-length v3, v7

    .line 648
    move/from16 v34, v6

    .line 649
    .line 650
    move/from16 v6, p1

    .line 651
    .line 652
    :goto_18
    if-ge v6, v3, :cond_20

    .line 653
    .line 654
    move/from16 v35, v3

    .line 655
    .line 656
    aget-object v3, v7, v6

    .line 657
    .line 658
    if-eqz v3, :cond_1f

    .line 659
    .line 660
    iget v6, v3, Ls6/a;->b:I

    .line 661
    .line 662
    iget v3, v3, Ls6/a;->c:I

    .line 663
    .line 664
    if-eqz v10, :cond_1e

    .line 665
    .line 666
    move v7, v3

    .line 667
    goto :goto_19

    .line 668
    :cond_1e
    move v7, v6

    .line 669
    :goto_19
    mul-int v28, v28, v34

    .line 670
    .line 671
    sub-int/2addr v3, v6

    .line 672
    mul-int v3, v3, v28

    .line 673
    .line 674
    add-int/2addr v3, v7

    .line 675
    goto :goto_1a

    .line 676
    :cond_1f
    add-int/lit8 v6, v6, 0x1

    .line 677
    .line 678
    move/from16 v3, v35

    .line 679
    .line 680
    goto :goto_18

    .line 681
    :cond_20
    add-int/lit8 v6, v34, 0x1

    .line 682
    .line 683
    move/from16 v3, v32

    .line 684
    .line 685
    goto :goto_17

    .line 686
    :cond_21
    iget-object v3, v1, Lb7/p;->e:Ljava/lang/Object;

    .line 687
    .line 688
    check-cast v3, Ls6/c;

    .line 689
    .line 690
    if-eqz v10, :cond_22

    .line 691
    .line 692
    iget v3, v3, Ls6/c;->f:I

    .line 693
    .line 694
    goto :goto_1a

    .line 695
    :cond_22
    iget v3, v3, Ls6/c;->g:I

    .line 696
    .line 697
    :goto_1a
    if-ltz v3, :cond_23

    .line 698
    .line 699
    iget v6, v8, Ls6/c;->g:I

    .line 700
    .line 701
    if-le v3, v6, :cond_24

    .line 702
    .line 703
    :cond_23
    const/4 v3, -0x1

    .line 704
    goto :goto_1b

    .line 705
    :cond_24
    move v6, v11

    .line 706
    move v11, v3

    .line 707
    const/4 v3, -0x1

    .line 708
    goto :goto_1c

    .line 709
    :goto_1b
    if-eq v4, v3, :cond_26

    .line 710
    .line 711
    move v6, v11

    .line 712
    move v11, v4

    .line 713
    :goto_1c
    iget v7, v8, Ls6/c;->f:I

    .line 714
    .line 715
    move-object/from16 v28, v9

    .line 716
    .line 717
    iget v9, v8, Ls6/c;->g:I

    .line 718
    .line 719
    move/from16 v25, v6

    .line 720
    .line 721
    move/from16 v6, v24

    .line 722
    .line 723
    move-object/from16 v3, v28

    .line 724
    .line 725
    move/from16 v28, v4

    .line 726
    .line 727
    move-object/from16 v24, v8

    .line 728
    .line 729
    const/4 v4, 0x0

    .line 730
    move v8, v7

    .line 731
    move-object/from16 v7, v31

    .line 732
    .line 733
    invoke-static/range {v7 .. v14}, Ls6/g;->c(Lf6/b;IIZIIII)Ls6/a;

    .line 734
    .line 735
    .line 736
    move-result-object v8

    .line 737
    if-eqz v8, :cond_25

    .line 738
    .line 739
    iget v9, v8, Ls6/a;->b:I

    .line 740
    .line 741
    move-object/from16 v31, v4

    .line 742
    .line 743
    iget v4, v8, Ls6/a;->c:I

    .line 744
    .line 745
    move/from16 v28, v4

    .line 746
    .line 747
    iget-object v4, v2, Ll/d;->d:Ljava/lang/Object;

    .line 748
    .line 749
    check-cast v4, [Ls6/a;

    .line 750
    .line 751
    invoke-virtual {v2, v12}, Ll/d;->x(I)I

    .line 752
    .line 753
    .line 754
    move-result v32

    .line 755
    aput-object v8, v4, v32

    .line 756
    .line 757
    sub-int v4, v28, v9

    .line 758
    .line 759
    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    .line 760
    .line 761
    .line 762
    move-result v4

    .line 763
    sub-int v8, v28, v9

    .line 764
    .line 765
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    .line 766
    .line 767
    .line 768
    move-result v8

    .line 769
    move v13, v4

    .line 770
    move v14, v8

    .line 771
    move v4, v11

    .line 772
    goto :goto_1e

    .line 773
    :cond_25
    move-object/from16 v31, v4

    .line 774
    .line 775
    goto :goto_1d

    .line 776
    :cond_26
    move/from16 v28, v4

    .line 777
    .line 778
    move-object v3, v9

    .line 779
    move/from16 v25, v11

    .line 780
    .line 781
    move/from16 v6, v24

    .line 782
    .line 783
    move-object/from16 v7, v31

    .line 784
    .line 785
    const/16 v31, 0x0

    .line 786
    .line 787
    move-object/from16 v24, v8

    .line 788
    .line 789
    :goto_1d
    move/from16 v4, v28

    .line 790
    .line 791
    :goto_1e
    add-int/lit8 v12, v12, 0x1

    .line 792
    .line 793
    move-object v9, v3

    .line 794
    move-object/from16 v8, v24

    .line 795
    .line 796
    move/from16 v11, v25

    .line 797
    .line 798
    move/from16 v24, v6

    .line 799
    .line 800
    move/from16 v6, v30

    .line 801
    .line 802
    goto/16 :goto_12

    .line 803
    .line 804
    :cond_27
    move/from16 v30, v6

    .line 805
    .line 806
    move/from16 v6, v24

    .line 807
    .line 808
    move v12, v13

    .line 809
    move-object v3, v9

    .line 810
    move/from16 v25, v11

    .line 811
    .line 812
    const/16 v31, 0x0

    .line 813
    .line 814
    move-object/from16 v24, v8

    .line 815
    .line 816
    goto :goto_1f

    .line 817
    :cond_28
    move/from16 v23, v3

    .line 818
    .line 819
    move/from16 v27, v4

    .line 820
    .line 821
    move/from16 v30, v6

    .line 822
    .line 823
    move v6, v10

    .line 824
    move v10, v13

    .line 825
    move-object/from16 v24, v8

    .line 826
    .line 827
    move-object v3, v9

    .line 828
    move/from16 v25, v11

    .line 829
    .line 830
    const/16 v31, 0x0

    .line 831
    .line 832
    :goto_1f
    add-int/lit8 v11, v25, 0x1

    .line 833
    .line 834
    move-object v9, v3

    .line 835
    move v13, v10

    .line 836
    move-object/from16 v2, v22

    .line 837
    .line 838
    move/from16 v3, v23

    .line 839
    .line 840
    move-object/from16 v8, v24

    .line 841
    .line 842
    move/from16 v4, v27

    .line 843
    .line 844
    move v10, v6

    .line 845
    move/from16 v6, v30

    .line 846
    .line 847
    goto/16 :goto_d

    .line 848
    .line 849
    :cond_29
    move-object/from16 v22, v2

    .line 850
    .line 851
    move/from16 v23, v3

    .line 852
    .line 853
    move-object v3, v9

    .line 854
    move v6, v10

    .line 855
    const/16 v31, 0x0

    .line 856
    .line 857
    iget-object v2, v1, Lb7/p;->c:Ljava/lang/Object;

    .line 858
    .line 859
    check-cast v2, Ls6/a;

    .line 860
    .line 861
    iget v4, v2, Ls6/a;->f:I

    .line 862
    .line 863
    add-int/lit8 v8, v5, 0x2

    .line 864
    .line 865
    const/4 v9, 0x2

    .line 866
    new-array v10, v9, [I

    .line 867
    .line 868
    aput v8, v10, p2

    .line 869
    .line 870
    aput v4, v10, p1

    .line 871
    .line 872
    const-class v8, Ls6/b;

    .line 873
    .line 874
    invoke-static {v8, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v8

    .line 878
    check-cast v8, [[Ls6/b;

    .line 879
    .line 880
    move/from16 v9, p1

    .line 881
    .line 882
    :goto_20
    array-length v10, v8

    .line 883
    if-ge v9, v10, :cond_2b

    .line 884
    .line 885
    move/from16 v10, p1

    .line 886
    .line 887
    :goto_21
    aget-object v11, v8, v9

    .line 888
    .line 889
    array-length v12, v11

    .line 890
    if-ge v10, v12, :cond_2a

    .line 891
    .line 892
    new-instance v12, Ls6/b;

    .line 893
    .line 894
    invoke-direct {v12}, Ls6/b;-><init>()V

    .line 895
    .line 896
    .line 897
    aput-object v12, v11, v10

    .line 898
    .line 899
    add-int/lit8 v10, v10, 0x1

    .line 900
    .line 901
    goto :goto_21

    .line 902
    :cond_2a
    add-int/lit8 v9, v9, 0x1

    .line 903
    .line 904
    goto :goto_20

    .line 905
    :cond_2b
    aget-object v9, v3, p1

    .line 906
    .line 907
    invoke-virtual {v1, v9}, Lb7/p;->a(Ll/d;)V

    .line 908
    .line 909
    .line 910
    aget-object v9, v3, v6

    .line 911
    .line 912
    invoke-virtual {v1, v9}, Lb7/p;->a(Ll/d;)V

    .line 913
    .line 914
    .line 915
    const/16 v9, 0x3a0

    .line 916
    .line 917
    :goto_22
    aget-object v10, v3, p1

    .line 918
    .line 919
    if-eqz v10, :cond_2f

    .line 920
    .line 921
    aget-object v11, v3, v6

    .line 922
    .line 923
    if-nez v11, :cond_2c

    .line 924
    .line 925
    goto :goto_25

    .line 926
    :cond_2c
    iget-object v10, v10, Ll/d;->d:Ljava/lang/Object;

    .line 927
    .line 928
    check-cast v10, [Ls6/a;

    .line 929
    .line 930
    iget-object v11, v11, Ll/d;->d:Ljava/lang/Object;

    .line 931
    .line 932
    check-cast v11, [Ls6/a;

    .line 933
    .line 934
    move/from16 v12, p1

    .line 935
    .line 936
    :goto_23
    array-length v13, v10

    .line 937
    if-ge v12, v13, :cond_2f

    .line 938
    .line 939
    aget-object v13, v10, v12

    .line 940
    .line 941
    if-eqz v13, :cond_2e

    .line 942
    .line 943
    aget-object v14, v11, v12

    .line 944
    .line 945
    if-eqz v14, :cond_2e

    .line 946
    .line 947
    iget v13, v13, Ls6/a;->f:I

    .line 948
    .line 949
    iget v14, v14, Ls6/a;->f:I

    .line 950
    .line 951
    if-ne v13, v14, :cond_2e

    .line 952
    .line 953
    move/from16 v13, p2

    .line 954
    .line 955
    :goto_24
    if-gt v13, v5, :cond_2e

    .line 956
    .line 957
    aget-object v14, v3, v13

    .line 958
    .line 959
    iget-object v14, v14, Ll/d;->d:Ljava/lang/Object;

    .line 960
    .line 961
    check-cast v14, [Ls6/a;

    .line 962
    .line 963
    aget-object v14, v14, v12

    .line 964
    .line 965
    if-eqz v14, :cond_2d

    .line 966
    .line 967
    aget-object v1, v10, v12

    .line 968
    .line 969
    iget v1, v1, Ls6/a;->f:I

    .line 970
    .line 971
    iput v1, v14, Ls6/a;->f:I

    .line 972
    .line 973
    invoke-virtual {v14, v1}, Ls6/a;->a(I)Z

    .line 974
    .line 975
    .line 976
    move-result v1

    .line 977
    if-nez v1, :cond_2d

    .line 978
    .line 979
    aget-object v1, v3, v13

    .line 980
    .line 981
    iget-object v1, v1, Ll/d;->d:Ljava/lang/Object;

    .line 982
    .line 983
    check-cast v1, [Ls6/a;

    .line 984
    .line 985
    aput-object v31, v1, v12

    .line 986
    .line 987
    :cond_2d
    add-int/lit8 v13, v13, 0x1

    .line 988
    .line 989
    goto :goto_24

    .line 990
    :cond_2e
    add-int/lit8 v12, v12, 0x1

    .line 991
    .line 992
    goto :goto_23

    .line 993
    :cond_2f
    :goto_25
    aget-object v1, v3, p1

    .line 994
    .line 995
    if-nez v1, :cond_31

    .line 996
    .line 997
    move/from16 v11, p1

    .line 998
    .line 999
    :cond_30
    move-object/from16 v25, v7

    .line 1000
    .line 1001
    goto/16 :goto_2a

    .line 1002
    .line 1003
    :cond_31
    iget-object v1, v1, Ll/d;->d:Ljava/lang/Object;

    .line 1004
    .line 1005
    check-cast v1, [Ls6/a;

    .line 1006
    .line 1007
    move/from16 v10, p1

    .line 1008
    .line 1009
    move v11, v10

    .line 1010
    :goto_26
    array-length v12, v1

    .line 1011
    if-ge v10, v12, :cond_30

    .line 1012
    .line 1013
    aget-object v12, v1, v10

    .line 1014
    .line 1015
    if-eqz v12, :cond_36

    .line 1016
    .line 1017
    iget v12, v12, Ls6/a;->f:I

    .line 1018
    .line 1019
    move/from16 v14, p1

    .line 1020
    .line 1021
    move v13, v11

    .line 1022
    move/from16 v11, p2

    .line 1023
    .line 1024
    :goto_27
    move-object/from16 v24, v1

    .line 1025
    .line 1026
    if-ge v11, v6, :cond_35

    .line 1027
    .line 1028
    const/4 v1, 0x2

    .line 1029
    if-ge v14, v1, :cond_35

    .line 1030
    .line 1031
    aget-object v1, v3, v11

    .line 1032
    .line 1033
    iget-object v1, v1, Ll/d;->d:Ljava/lang/Object;

    .line 1034
    .line 1035
    check-cast v1, [Ls6/a;

    .line 1036
    .line 1037
    aget-object v1, v1, v10

    .line 1038
    .line 1039
    move-object/from16 v25, v7

    .line 1040
    .line 1041
    if-eqz v1, :cond_34

    .line 1042
    .line 1043
    iget v7, v1, Ls6/a;->f:I

    .line 1044
    .line 1045
    invoke-virtual {v1, v7}, Ls6/a;->a(I)Z

    .line 1046
    .line 1047
    .line 1048
    move-result v7

    .line 1049
    if-nez v7, :cond_33

    .line 1050
    .line 1051
    invoke-virtual {v1, v12}, Ls6/a;->a(I)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v7

    .line 1055
    if-eqz v7, :cond_32

    .line 1056
    .line 1057
    iput v12, v1, Ls6/a;->f:I

    .line 1058
    .line 1059
    move/from16 v14, p1

    .line 1060
    .line 1061
    goto :goto_28

    .line 1062
    :cond_32
    add-int/lit8 v14, v14, 0x1

    .line 1063
    .line 1064
    :cond_33
    :goto_28
    iget v7, v1, Ls6/a;->f:I

    .line 1065
    .line 1066
    invoke-virtual {v1, v7}, Ls6/a;->a(I)Z

    .line 1067
    .line 1068
    .line 1069
    move-result v1

    .line 1070
    if-nez v1, :cond_34

    .line 1071
    .line 1072
    add-int/lit8 v13, v13, 0x1

    .line 1073
    .line 1074
    :cond_34
    add-int/lit8 v11, v11, 0x1

    .line 1075
    .line 1076
    move-object/from16 v1, v24

    .line 1077
    .line 1078
    move-object/from16 v7, v25

    .line 1079
    .line 1080
    goto :goto_27

    .line 1081
    :cond_35
    move-object/from16 v25, v7

    .line 1082
    .line 1083
    move v11, v13

    .line 1084
    goto :goto_29

    .line 1085
    :cond_36
    move-object/from16 v24, v1

    .line 1086
    .line 1087
    move-object/from16 v25, v7

    .line 1088
    .line 1089
    :goto_29
    add-int/lit8 v10, v10, 0x1

    .line 1090
    .line 1091
    move-object/from16 v1, v24

    .line 1092
    .line 1093
    move-object/from16 v7, v25

    .line 1094
    .line 1095
    goto :goto_26

    .line 1096
    :goto_2a
    aget-object v1, v3, v6

    .line 1097
    .line 1098
    if-nez v1, :cond_37

    .line 1099
    .line 1100
    move/from16 v10, p1

    .line 1101
    .line 1102
    goto/16 :goto_2f

    .line 1103
    .line 1104
    :cond_37
    iget-object v1, v1, Ll/d;->d:Ljava/lang/Object;

    .line 1105
    .line 1106
    check-cast v1, [Ls6/a;

    .line 1107
    .line 1108
    move/from16 v7, p1

    .line 1109
    .line 1110
    move v10, v7

    .line 1111
    :goto_2b
    array-length v12, v1

    .line 1112
    if-ge v7, v12, :cond_3d

    .line 1113
    .line 1114
    aget-object v12, v1, v7

    .line 1115
    .line 1116
    if-eqz v12, :cond_3c

    .line 1117
    .line 1118
    iget v12, v12, Ls6/a;->f:I

    .line 1119
    .line 1120
    move/from16 v14, p1

    .line 1121
    .line 1122
    move v13, v10

    .line 1123
    move v10, v6

    .line 1124
    :goto_2c
    move-object/from16 v24, v1

    .line 1125
    .line 1126
    if-lez v10, :cond_3b

    .line 1127
    .line 1128
    const/4 v1, 0x2

    .line 1129
    if-ge v14, v1, :cond_3b

    .line 1130
    .line 1131
    aget-object v1, v3, v10

    .line 1132
    .line 1133
    iget-object v1, v1, Ll/d;->d:Ljava/lang/Object;

    .line 1134
    .line 1135
    check-cast v1, [Ls6/a;

    .line 1136
    .line 1137
    aget-object v1, v1, v7

    .line 1138
    .line 1139
    move/from16 v27, v7

    .line 1140
    .line 1141
    if-eqz v1, :cond_3a

    .line 1142
    .line 1143
    iget v7, v1, Ls6/a;->f:I

    .line 1144
    .line 1145
    invoke-virtual {v1, v7}, Ls6/a;->a(I)Z

    .line 1146
    .line 1147
    .line 1148
    move-result v7

    .line 1149
    if-nez v7, :cond_39

    .line 1150
    .line 1151
    invoke-virtual {v1, v12}, Ls6/a;->a(I)Z

    .line 1152
    .line 1153
    .line 1154
    move-result v7

    .line 1155
    if-eqz v7, :cond_38

    .line 1156
    .line 1157
    iput v12, v1, Ls6/a;->f:I

    .line 1158
    .line 1159
    move/from16 v14, p1

    .line 1160
    .line 1161
    goto :goto_2d

    .line 1162
    :cond_38
    add-int/lit8 v14, v14, 0x1

    .line 1163
    .line 1164
    :cond_39
    :goto_2d
    iget v7, v1, Ls6/a;->f:I

    .line 1165
    .line 1166
    invoke-virtual {v1, v7}, Ls6/a;->a(I)Z

    .line 1167
    .line 1168
    .line 1169
    move-result v1

    .line 1170
    if-nez v1, :cond_3a

    .line 1171
    .line 1172
    add-int/lit8 v13, v13, 0x1

    .line 1173
    .line 1174
    :cond_3a
    add-int/lit8 v10, v10, -0x1

    .line 1175
    .line 1176
    move-object/from16 v1, v24

    .line 1177
    .line 1178
    move/from16 v7, v27

    .line 1179
    .line 1180
    goto :goto_2c

    .line 1181
    :cond_3b
    move/from16 v27, v7

    .line 1182
    .line 1183
    move v10, v13

    .line 1184
    goto :goto_2e

    .line 1185
    :cond_3c
    move-object/from16 v24, v1

    .line 1186
    .line 1187
    move/from16 v27, v7

    .line 1188
    .line 1189
    :goto_2e
    add-int/lit8 v7, v27, 0x1

    .line 1190
    .line 1191
    move-object/from16 v1, v24

    .line 1192
    .line 1193
    goto :goto_2b

    .line 1194
    :cond_3d
    :goto_2f
    add-int/2addr v11, v10

    .line 1195
    if-nez v11, :cond_3f

    .line 1196
    .line 1197
    move/from16 v11, p1

    .line 1198
    .line 1199
    :cond_3e
    move/from16 v27, v6

    .line 1200
    .line 1201
    goto/16 :goto_37

    .line 1202
    .line 1203
    :cond_3f
    move/from16 v1, p2

    .line 1204
    .line 1205
    :goto_30
    if-ge v1, v6, :cond_3e

    .line 1206
    .line 1207
    aget-object v7, v3, v1

    .line 1208
    .line 1209
    iget-object v7, v7, Ll/d;->d:Ljava/lang/Object;

    .line 1210
    .line 1211
    check-cast v7, [Ls6/a;

    .line 1212
    .line 1213
    move/from16 v10, p1

    .line 1214
    .line 1215
    :goto_31
    array-length v12, v7

    .line 1216
    if-ge v10, v12, :cond_4a

    .line 1217
    .line 1218
    aget-object v12, v7, v10

    .line 1219
    .line 1220
    if-eqz v12, :cond_48

    .line 1221
    .line 1222
    iget v13, v12, Ls6/a;->f:I

    .line 1223
    .line 1224
    invoke-virtual {v12, v13}, Ls6/a;->a(I)Z

    .line 1225
    .line 1226
    .line 1227
    move-result v12

    .line 1228
    if-nez v12, :cond_48

    .line 1229
    .line 1230
    aget-object v12, v7, v10

    .line 1231
    .line 1232
    add-int/lit8 v13, v1, -0x1

    .line 1233
    .line 1234
    aget-object v13, v3, v13

    .line 1235
    .line 1236
    iget-object v13, v13, Ll/d;->d:Ljava/lang/Object;

    .line 1237
    .line 1238
    check-cast v13, [Ls6/a;

    .line 1239
    .line 1240
    add-int/lit8 v14, v1, 0x1

    .line 1241
    .line 1242
    aget-object v14, v3, v14

    .line 1243
    .line 1244
    if-eqz v14, :cond_40

    .line 1245
    .line 1246
    iget-object v14, v14, Ll/d;->d:Ljava/lang/Object;

    .line 1247
    .line 1248
    check-cast v14, [Ls6/a;

    .line 1249
    .line 1250
    :goto_32
    move/from16 v24, v1

    .line 1251
    .line 1252
    goto :goto_33

    .line 1253
    :cond_40
    move-object v14, v13

    .line 1254
    goto :goto_32

    .line 1255
    :goto_33
    const/16 v1, 0xe

    .line 1256
    .line 1257
    move/from16 v27, v6

    .line 1258
    .line 1259
    new-array v6, v1, [Ls6/a;

    .line 1260
    .line 1261
    aget-object v28, v13, v10

    .line 1262
    .line 1263
    const/16 v26, 0x2

    .line 1264
    .line 1265
    aput-object v28, v6, v26

    .line 1266
    .line 1267
    aget-object v28, v14, v10

    .line 1268
    .line 1269
    aput-object v28, v6, v20

    .line 1270
    .line 1271
    if-lez v10, :cond_41

    .line 1272
    .line 1273
    add-int/lit8 v28, v10, -0x1

    .line 1274
    .line 1275
    aget-object v29, v7, v28

    .line 1276
    .line 1277
    aput-object v29, v6, p1

    .line 1278
    .line 1279
    aget-object v29, v13, v28

    .line 1280
    .line 1281
    aput-object v29, v6, v16

    .line 1282
    .line 1283
    aget-object v28, v14, v28

    .line 1284
    .line 1285
    aput-object v28, v6, v17

    .line 1286
    .line 1287
    :cond_41
    move/from16 v1, p2

    .line 1288
    .line 1289
    if-le v10, v1, :cond_42

    .line 1290
    .line 1291
    add-int/lit8 v1, v10, -0x2

    .line 1292
    .line 1293
    aget-object v29, v7, v1

    .line 1294
    .line 1295
    const/16 v30, 0x8

    .line 1296
    .line 1297
    aput-object v29, v6, v30

    .line 1298
    .line 1299
    const/16 v29, 0xa

    .line 1300
    .line 1301
    aget-object v30, v13, v1

    .line 1302
    .line 1303
    aput-object v30, v6, v29

    .line 1304
    .line 1305
    const/16 v29, 0xb

    .line 1306
    .line 1307
    aget-object v1, v14, v1

    .line 1308
    .line 1309
    aput-object v1, v6, v29

    .line 1310
    .line 1311
    :cond_42
    array-length v1, v7

    .line 1312
    const/16 v29, 0x1

    .line 1313
    .line 1314
    add-int/lit8 v1, v1, -0x1

    .line 1315
    .line 1316
    if-ge v10, v1, :cond_43

    .line 1317
    .line 1318
    add-int/lit8 v1, v10, 0x1

    .line 1319
    .line 1320
    aget-object v30, v7, v1

    .line 1321
    .line 1322
    aput-object v30, v6, v29

    .line 1323
    .line 1324
    aget-object v29, v13, v1

    .line 1325
    .line 1326
    aput-object v29, v6, v18

    .line 1327
    .line 1328
    aget-object v1, v14, v1

    .line 1329
    .line 1330
    aput-object v1, v6, v19

    .line 1331
    .line 1332
    :cond_43
    array-length v1, v7

    .line 1333
    const/16 v26, 0x2

    .line 1334
    .line 1335
    add-int/lit8 v1, v1, -0x2

    .line 1336
    .line 1337
    if-ge v10, v1, :cond_44

    .line 1338
    .line 1339
    add-int/lit8 v1, v10, 0x2

    .line 1340
    .line 1341
    aget-object v29, v7, v1

    .line 1342
    .line 1343
    const/16 v30, 0x9

    .line 1344
    .line 1345
    aput-object v29, v6, v30

    .line 1346
    .line 1347
    const/16 v29, 0xc

    .line 1348
    .line 1349
    aget-object v13, v13, v1

    .line 1350
    .line 1351
    aput-object v13, v6, v29

    .line 1352
    .line 1353
    const/16 v13, 0xd

    .line 1354
    .line 1355
    aget-object v1, v14, v1

    .line 1356
    .line 1357
    aput-object v1, v6, v13

    .line 1358
    .line 1359
    :cond_44
    move/from16 v1, p1

    .line 1360
    .line 1361
    :goto_34
    const/16 v13, 0xe

    .line 1362
    .line 1363
    if-ge v1, v13, :cond_49

    .line 1364
    .line 1365
    aget-object v14, v6, v1

    .line 1366
    .line 1367
    if-nez v14, :cond_46

    .line 1368
    .line 1369
    :cond_45
    move/from16 v29, v1

    .line 1370
    .line 1371
    goto :goto_35

    .line 1372
    :cond_46
    iget v13, v14, Ls6/a;->f:I

    .line 1373
    .line 1374
    invoke-virtual {v14, v13}, Ls6/a;->a(I)Z

    .line 1375
    .line 1376
    .line 1377
    move-result v13

    .line 1378
    if-eqz v13, :cond_45

    .line 1379
    .line 1380
    iget v13, v14, Ls6/a;->d:I

    .line 1381
    .line 1382
    move/from16 v29, v1

    .line 1383
    .line 1384
    iget v1, v12, Ls6/a;->d:I

    .line 1385
    .line 1386
    if-ne v13, v1, :cond_47

    .line 1387
    .line 1388
    iget v1, v14, Ls6/a;->f:I

    .line 1389
    .line 1390
    iput v1, v12, Ls6/a;->f:I

    .line 1391
    .line 1392
    goto :goto_36

    .line 1393
    :cond_47
    :goto_35
    add-int/lit8 v1, v29, 0x1

    .line 1394
    .line 1395
    goto :goto_34

    .line 1396
    :cond_48
    move/from16 v24, v1

    .line 1397
    .line 1398
    move/from16 v27, v6

    .line 1399
    .line 1400
    :cond_49
    :goto_36
    add-int/lit8 v10, v10, 0x1

    .line 1401
    .line 1402
    move/from16 v1, v24

    .line 1403
    .line 1404
    move/from16 v6, v27

    .line 1405
    .line 1406
    const/16 p2, 0x1

    .line 1407
    .line 1408
    goto/16 :goto_31

    .line 1409
    .line 1410
    :cond_4a
    move/from16 v24, v1

    .line 1411
    .line 1412
    move/from16 v27, v6

    .line 1413
    .line 1414
    add-int/lit8 v1, v24, 0x1

    .line 1415
    .line 1416
    const/16 p2, 0x1

    .line 1417
    .line 1418
    goto/16 :goto_30

    .line 1419
    .line 1420
    :goto_37
    if-lez v11, :cond_4c

    .line 1421
    .line 1422
    if-lt v11, v9, :cond_4b

    .line 1423
    .line 1424
    goto :goto_38

    .line 1425
    :cond_4b
    move v9, v11

    .line 1426
    move-object/from16 v7, v25

    .line 1427
    .line 1428
    move/from16 v6, v27

    .line 1429
    .line 1430
    const/16 p2, 0x1

    .line 1431
    .line 1432
    goto/16 :goto_22

    .line 1433
    .line 1434
    :cond_4c
    :goto_38
    array-length v1, v3

    .line 1435
    move/from16 v6, p1

    .line 1436
    .line 1437
    move v7, v6

    .line 1438
    :goto_39
    if-ge v6, v1, :cond_4f

    .line 1439
    .line 1440
    aget-object v9, v3, v6

    .line 1441
    .line 1442
    if-eqz v9, :cond_4e

    .line 1443
    .line 1444
    iget-object v9, v9, Ll/d;->d:Ljava/lang/Object;

    .line 1445
    .line 1446
    check-cast v9, [Ls6/a;

    .line 1447
    .line 1448
    array-length v10, v9

    .line 1449
    move/from16 v11, p1

    .line 1450
    .line 1451
    :goto_3a
    if-ge v11, v10, :cond_4e

    .line 1452
    .line 1453
    aget-object v12, v9, v11

    .line 1454
    .line 1455
    if-eqz v12, :cond_4d

    .line 1456
    .line 1457
    iget v13, v12, Ls6/a;->f:I

    .line 1458
    .line 1459
    if-ltz v13, :cond_4d

    .line 1460
    .line 1461
    array-length v14, v8

    .line 1462
    if-ge v13, v14, :cond_4d

    .line 1463
    .line 1464
    aget-object v13, v8, v13

    .line 1465
    .line 1466
    aget-object v13, v13, v7

    .line 1467
    .line 1468
    iget v12, v12, Ls6/a;->e:I

    .line 1469
    .line 1470
    invoke-virtual {v13, v12}, Ls6/b;->b(I)V

    .line 1471
    .line 1472
    .line 1473
    :cond_4d
    add-int/lit8 v11, v11, 0x1

    .line 1474
    .line 1475
    goto :goto_3a

    .line 1476
    :cond_4e
    add-int/lit8 v7, v7, 0x1

    .line 1477
    .line 1478
    add-int/lit8 v6, v6, 0x1

    .line 1479
    .line 1480
    goto :goto_39

    .line 1481
    :cond_4f
    aget-object v1, v8, p1

    .line 1482
    .line 1483
    const/16 v29, 0x1

    .line 1484
    .line 1485
    aget-object v1, v1, v29

    .line 1486
    .line 1487
    invoke-virtual {v1}, Ls6/b;->a()[I

    .line 1488
    .line 1489
    .line 1490
    move-result-object v3

    .line 1491
    iget v2, v2, Ls6/a;->c:I

    .line 1492
    .line 1493
    mul-int v6, v5, v4

    .line 1494
    .line 1495
    const/16 v26, 0x2

    .line 1496
    .line 1497
    shl-int v7, v26, v2

    .line 1498
    .line 1499
    sub-int v7, v6, v7

    .line 1500
    .line 1501
    array-length v9, v3

    .line 1502
    if-nez v9, :cond_51

    .line 1503
    .line 1504
    if-lez v7, :cond_50

    .line 1505
    .line 1506
    const/16 v9, 0x3a0

    .line 1507
    .line 1508
    if-gt v7, v9, :cond_50

    .line 1509
    .line 1510
    invoke-virtual {v1, v7}, Ls6/b;->b(I)V

    .line 1511
    .line 1512
    .line 1513
    goto :goto_3b

    .line 1514
    :cond_50
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 1515
    .line 1516
    throw v0

    .line 1517
    :cond_51
    const/16 v9, 0x3a0

    .line 1518
    .line 1519
    aget v3, v3, p1

    .line 1520
    .line 1521
    if-eq v3, v7, :cond_52

    .line 1522
    .line 1523
    if-lez v7, :cond_52

    .line 1524
    .line 1525
    if-gt v7, v9, :cond_52

    .line 1526
    .line 1527
    invoke-virtual {v1, v7}, Ls6/b;->b(I)V

    .line 1528
    .line 1529
    .line 1530
    :cond_52
    :goto_3b
    new-instance v1, Ljava/util/ArrayList;

    .line 1531
    .line 1532
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1533
    .line 1534
    .line 1535
    new-array v3, v6, [I

    .line 1536
    .line 1537
    new-instance v6, Ljava/util/ArrayList;

    .line 1538
    .line 1539
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1540
    .line 1541
    .line 1542
    new-instance v7, Ljava/util/ArrayList;

    .line 1543
    .line 1544
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1545
    .line 1546
    .line 1547
    move/from16 v9, p1

    .line 1548
    .line 1549
    :goto_3c
    if-ge v9, v4, :cond_56

    .line 1550
    .line 1551
    move/from16 v10, p1

    .line 1552
    .line 1553
    :goto_3d
    if-ge v10, v5, :cond_55

    .line 1554
    .line 1555
    aget-object v11, v8, v9

    .line 1556
    .line 1557
    add-int/lit8 v12, v10, 0x1

    .line 1558
    .line 1559
    aget-object v11, v11, v12

    .line 1560
    .line 1561
    invoke-virtual {v11}, Ls6/b;->a()[I

    .line 1562
    .line 1563
    .line 1564
    move-result-object v11

    .line 1565
    mul-int v13, v9, v5

    .line 1566
    .line 1567
    add-int/2addr v13, v10

    .line 1568
    array-length v10, v11

    .line 1569
    if-nez v10, :cond_53

    .line 1570
    .line 1571
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v10

    .line 1575
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1576
    .line 1577
    .line 1578
    goto :goto_3e

    .line 1579
    :cond_53
    array-length v10, v11

    .line 1580
    const/4 v14, 0x1

    .line 1581
    if-ne v10, v14, :cond_54

    .line 1582
    .line 1583
    aget v10, v11, p1

    .line 1584
    .line 1585
    aput v10, v3, v13

    .line 1586
    .line 1587
    goto :goto_3e

    .line 1588
    :cond_54
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v10

    .line 1592
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1596
    .line 1597
    .line 1598
    :goto_3e
    move v10, v12

    .line 1599
    goto :goto_3d

    .line 1600
    :cond_55
    add-int/lit8 v9, v9, 0x1

    .line 1601
    .line 1602
    goto :goto_3c

    .line 1603
    :cond_56
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1604
    .line 1605
    .line 1606
    move-result v4

    .line 1607
    new-array v5, v4, [[I

    .line 1608
    .line 1609
    move/from16 v8, p1

    .line 1610
    .line 1611
    :goto_3f
    if-ge v8, v4, :cond_57

    .line 1612
    .line 1613
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v9

    .line 1617
    check-cast v9, [I

    .line 1618
    .line 1619
    aput-object v9, v5, v8

    .line 1620
    .line 1621
    add-int/lit8 v8, v8, 0x1

    .line 1622
    .line 1623
    goto :goto_3f

    .line 1624
    :cond_57
    invoke-static {v1}, Lr6/a;->a(Ljava/util/ArrayList;)[I

    .line 1625
    .line 1626
    .line 1627
    move-result-object v1

    .line 1628
    invoke-static {v7}, Lr6/a;->a(Ljava/util/ArrayList;)[I

    .line 1629
    .line 1630
    .line 1631
    move-result-object v4

    .line 1632
    array-length v6, v4

    .line 1633
    new-array v7, v6, [I

    .line 1634
    .line 1635
    const/16 v8, 0x64

    .line 1636
    .line 1637
    :goto_40
    add-int/lit8 v9, v8, -0x1

    .line 1638
    .line 1639
    if-lez v8, :cond_5e

    .line 1640
    .line 1641
    move/from16 v8, p1

    .line 1642
    .line 1643
    :goto_41
    if-ge v8, v6, :cond_58

    .line 1644
    .line 1645
    aget v10, v4, v8

    .line 1646
    .line 1647
    aget-object v11, v5, v8

    .line 1648
    .line 1649
    aget v12, v7, v8

    .line 1650
    .line 1651
    aget v11, v11, v12

    .line 1652
    .line 1653
    aput v11, v3, v10

    .line 1654
    .line 1655
    add-int/lit8 v8, v8, 0x1

    .line 1656
    .line 1657
    goto :goto_41

    .line 1658
    :cond_58
    :try_start_0
    invoke-static {v3, v1, v2}, Ls6/g;->b([I[II)Lf6/d;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v1
    :try_end_0
    .catch Lz5/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    new-instance v2, Lz5/m;

    .line 1663
    .line 1664
    iget-object v3, v1, Lf6/d;->a:Ljava/lang/String;

    .line 1665
    .line 1666
    sget-object v4, Lz5/a;->l:Lz5/a;

    .line 1667
    .line 1668
    move-object/from16 v8, v31

    .line 1669
    .line 1670
    invoke-direct {v2, v3, v8, v15, v4}, Lz5/m;-><init>(Ljava/lang/String;[B[Lz5/o;Lz5/a;)V

    .line 1671
    .line 1672
    .line 1673
    iget-object v3, v1, Lf6/d;->e:Ljava/io/Serializable;

    .line 1674
    .line 1675
    check-cast v3, Ljava/lang/String;

    .line 1676
    .line 1677
    sget-object v4, Lz5/n;->d:Lz5/n;

    .line 1678
    .line 1679
    invoke-virtual {v2, v4, v3}, Lz5/m;->b(Lz5/n;Ljava/lang/Object;)V

    .line 1680
    .line 1681
    .line 1682
    iget-object v1, v1, Lf6/d;->g:Ljava/lang/Object;

    .line 1683
    .line 1684
    check-cast v1, Lr6/c;

    .line 1685
    .line 1686
    if-eqz v1, :cond_59

    .line 1687
    .line 1688
    sget-object v3, Lz5/n;->i:Lz5/n;

    .line 1689
    .line 1690
    invoke-virtual {v2, v3, v1}, Lz5/m;->b(Lz5/n;Ljava/lang/Object;)V

    .line 1691
    .line 1692
    .line 1693
    :cond_59
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    .line 1695
    .line 1696
    move/from16 v4, p1

    .line 1697
    .line 1698
    move-object/from16 v2, v22

    .line 1699
    .line 1700
    move/from16 v3, v23

    .line 1701
    .line 1702
    move-object/from16 v7, v25

    .line 1703
    .line 1704
    move/from16 v5, v26

    .line 1705
    .line 1706
    move/from16 v1, v33

    .line 1707
    .line 1708
    const/4 v6, 0x1

    .line 1709
    goto/16 :goto_2

    .line 1710
    .line 1711
    :catch_0
    move-object/from16 v8, v31

    .line 1712
    .line 1713
    if-eqz v6, :cond_5d

    .line 1714
    .line 1715
    move/from16 v10, p1

    .line 1716
    .line 1717
    :goto_42
    if-ge v10, v6, :cond_5c

    .line 1718
    .line 1719
    aget v11, v7, v10

    .line 1720
    .line 1721
    aget-object v12, v5, v10

    .line 1722
    .line 1723
    array-length v12, v12

    .line 1724
    const/16 v29, 0x1

    .line 1725
    .line 1726
    add-int/lit8 v12, v12, -0x1

    .line 1727
    .line 1728
    if-ge v11, v12, :cond_5a

    .line 1729
    .line 1730
    add-int/lit8 v11, v11, 0x1

    .line 1731
    .line 1732
    aput v11, v7, v10

    .line 1733
    .line 1734
    goto :goto_43

    .line 1735
    :cond_5a
    aput p1, v7, v10

    .line 1736
    .line 1737
    add-int/lit8 v11, v6, -0x1

    .line 1738
    .line 1739
    if-eq v10, v11, :cond_5b

    .line 1740
    .line 1741
    add-int/lit8 v10, v10, 0x1

    .line 1742
    .line 1743
    goto :goto_42

    .line 1744
    :cond_5b
    invoke-static {}, Lz5/c;->a()Lz5/c;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v0

    .line 1748
    throw v0

    .line 1749
    :cond_5c
    const/16 v29, 0x1

    .line 1750
    .line 1751
    :goto_43
    move-object/from16 v31, v8

    .line 1752
    .line 1753
    move v8, v9

    .line 1754
    goto :goto_40

    .line 1755
    :cond_5d
    invoke-static {}, Lz5/c;->a()Lz5/c;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v0

    .line 1759
    throw v0

    .line 1760
    :cond_5e
    invoke-static {}, Lz5/c;->a()Lz5/c;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v0

    .line 1764
    throw v0

    .line 1765
    :cond_5f
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 1766
    .line 1767
    throw v0

    .line 1768
    :cond_60
    move/from16 p1, v4

    .line 1769
    .line 1770
    sget-object v1, Lr6/b;->a:[Lz5/m;

    .line 1771
    .line 1772
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v0

    .line 1776
    check-cast v0, [Lz5/m;

    .line 1777
    .line 1778
    array-length v1, v0

    .line 1779
    if-eqz v1, :cond_61

    .line 1780
    .line 1781
    aget-object v0, v0, p1

    .line 1782
    .line 1783
    if-eqz v0, :cond_61

    .line 1784
    .line 1785
    return-object v0

    .line 1786
    :cond_61
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 1787
    .line 1788
    throw v0
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method
