.class public final Lz5/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lf6/e;

.field public b:Lf6/b;


# direct methods
.method public constructor <init>(Lf6/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz5/b;->a:Lf6/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lf6/b;
    .registers 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lz5/b;->b:Lf6/b;

    .line 4
    .line 5
    if-nez v1, :cond_22b

    .line 6
    .line 7
    iget-object v1, v0, Lz5/b;->a:Lf6/e;

    .line 8
    .line 9
    iget-object v2, v1, Lf6/e;->d:Lf6/b;

    .line 10
    .line 11
    if-eqz v2, :cond_e

    .line 12
    .line 13
    goto/16 :goto_229

    .line 14
    .line 15
    :cond_e
    iget-object v2, v1, Lf6/e;->a:Lz5/g;

    .line 16
    .line 17
    iget v3, v2, Lz5/g;->a:I

    .line 18
    .line 19
    iget v4, v2, Lz5/g;->b:I

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    const/16 v7, 0x28

    .line 24
    .line 25
    if-lt v3, v7, :cond_1b8

    .line 26
    .line 27
    if-lt v4, v7, :cond_1b8

    .line 28
    .line 29
    invoke-virtual {v2}, Lz5/g;->a()[B

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    shr-int/lit8 v7, v3, 0x3

    .line 34
    .line 35
    and-int/lit8 v9, v3, 0x7

    .line 36
    .line 37
    if-eqz v9, :cond_28

    .line 38
    .line 39
    add-int/lit8 v7, v7, 0x1

    .line 40
    .line 41
    :cond_28
    shr-int/lit8 v9, v4, 0x3

    .line 42
    .line 43
    and-int/lit8 v10, v4, 0x7

    .line 44
    .line 45
    if-eqz v10, :cond_30

    .line 46
    .line 47
    add-int/lit8 v9, v9, 0x1

    .line 48
    .line 49
    :cond_30
    add-int/lit8 v10, v4, -0x8

    .line 50
    .line 51
    add-int/lit8 v11, v3, -0x8

    .line 52
    .line 53
    const/4 v12, 0x2

    .line 54
    new-array v13, v12, [I

    .line 55
    .line 56
    aput v7, v13, v5

    .line 57
    .line 58
    aput v9, v13, v6

    .line 59
    .line 60
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 61
    .line 62
    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v13

    .line 66
    check-cast v13, [[I

    .line 67
    .line 68
    move v14, v6

    .line 69
    :goto_44
    const/16 v15, 0x8

    .line 70
    .line 71
    if-ge v14, v9, :cond_109

    .line 72
    .line 73
    move/from16 v16, v5

    .line 74
    .line 75
    shl-int/lit8 v5, v14, 0x3

    .line 76
    .line 77
    if-le v5, v10, :cond_4f

    .line 78
    .line 79
    move v5, v10

    .line 80
    :cond_4f
    move/from16 v17, v6

    .line 81
    .line 82
    :goto_51
    if-ge v6, v7, :cond_fd

    .line 83
    .line 84
    move/from16 v18, v12

    .line 85
    .line 86
    shl-int/lit8 v12, v6, 0x3

    .line 87
    .line 88
    if-le v12, v11, :cond_5a

    .line 89
    .line 90
    move v12, v11

    .line 91
    :cond_5a
    mul-int v19, v5, v3

    .line 92
    .line 93
    add-int v19, v19, v12

    .line 94
    .line 95
    move/from16 v12, v17

    .line 96
    .line 97
    move/from16 v20, v12

    .line 98
    .line 99
    move/from16 v21, v20

    .line 100
    .line 101
    const/16 v22, 0xff

    .line 102
    .line 103
    :goto_66
    if-ge v12, v15, :cond_c2

    .line 104
    .line 105
    move-object/from16 v23, v2

    .line 106
    .line 107
    move/from16 v24, v5

    .line 108
    .line 109
    move/from16 v5, v17

    .line 110
    .line 111
    move/from16 v8, v21

    .line 112
    .line 113
    move/from16 v2, v22

    .line 114
    .line 115
    :goto_72
    if-ge v5, v15, :cond_8a

    .line 116
    .line 117
    add-int v21, v19, v5

    .line 118
    .line 119
    aget-byte v15, v23, v21

    .line 120
    .line 121
    move/from16 v21, v5

    .line 122
    .line 123
    const/16 v5, 0xff

    .line 124
    .line 125
    and-int/2addr v15, v5

    .line 126
    add-int v20, v20, v15

    .line 127
    .line 128
    if-ge v15, v2, :cond_82

    .line 129
    .line 130
    move v2, v15

    .line 131
    :cond_82
    if-le v15, v8, :cond_85

    .line 132
    .line 133
    move v8, v15

    .line 134
    :cond_85
    add-int/lit8 v5, v21, 0x1

    .line 135
    .line 136
    const/16 v15, 0x8

    .line 137
    .line 138
    goto :goto_72

    .line 139
    :cond_8a
    sub-int v5, v8, v2

    .line 140
    .line 141
    const/16 v15, 0x18

    .line 142
    .line 143
    if-le v5, v15, :cond_b1

    .line 144
    .line 145
    :goto_90
    add-int/lit8 v12, v12, 0x1

    .line 146
    .line 147
    add-int v19, v19, v3

    .line 148
    .line 149
    const/16 v5, 0x8

    .line 150
    .line 151
    if-ge v12, v5, :cond_b1

    .line 152
    .line 153
    move/from16 v15, v17

    .line 154
    .line 155
    :goto_9a
    if-ge v15, v5, :cond_ae

    .line 156
    .line 157
    add-int v5, v19, v15

    .line 158
    .line 159
    aget-byte v5, v23, v5

    .line 160
    .line 161
    move/from16 v21, v2

    .line 162
    .line 163
    const/16 v2, 0xff

    .line 164
    .line 165
    and-int/2addr v5, v2

    .line 166
    add-int v20, v20, v5

    .line 167
    .line 168
    add-int/lit8 v15, v15, 0x1

    .line 169
    .line 170
    move/from16 v2, v21

    .line 171
    .line 172
    const/16 v5, 0x8

    .line 173
    .line 174
    goto :goto_9a

    .line 175
    :cond_ae
    move/from16 v21, v2

    .line 176
    .line 177
    goto :goto_90

    .line 178
    :cond_b1
    move/from16 v21, v2

    .line 179
    .line 180
    add-int/lit8 v12, v12, 0x1

    .line 181
    .line 182
    add-int v19, v19, v3

    .line 183
    .line 184
    move/from16 v22, v21

    .line 185
    .line 186
    move-object/from16 v2, v23

    .line 187
    .line 188
    move/from16 v5, v24

    .line 189
    .line 190
    const/16 v15, 0x8

    .line 191
    .line 192
    move/from16 v21, v8

    .line 193
    .line 194
    goto :goto_66

    .line 195
    :cond_c2
    move-object/from16 v23, v2

    .line 196
    .line 197
    move/from16 v24, v5

    .line 198
    .line 199
    shr-int/lit8 v2, v20, 0x6

    .line 200
    .line 201
    move/from16 v8, v22

    .line 202
    .line 203
    sub-int v5, v21, v8

    .line 204
    .line 205
    const/16 v15, 0x18

    .line 206
    .line 207
    if-gt v5, v15, :cond_ed

    .line 208
    .line 209
    div-int/lit8 v2, v8, 0x2

    .line 210
    .line 211
    if-lez v14, :cond_ed

    .line 212
    .line 213
    if-lez v6, :cond_ed

    .line 214
    .line 215
    add-int/lit8 v5, v14, -0x1

    .line 216
    .line 217
    aget-object v5, v13, v5

    .line 218
    .line 219
    aget v12, v5, v6

    .line 220
    .line 221
    aget-object v15, v13, v14

    .line 222
    .line 223
    add-int/lit8 v19, v6, -0x1

    .line 224
    .line 225
    aget v15, v15, v19

    .line 226
    .line 227
    mul-int/lit8 v15, v15, 0x2

    .line 228
    .line 229
    add-int/2addr v15, v12

    .line 230
    aget v5, v5, v19

    .line 231
    .line 232
    add-int/2addr v15, v5

    .line 233
    div-int/lit8 v5, v15, 0x4

    .line 234
    .line 235
    if-ge v8, v5, :cond_ed

    .line 236
    .line 237
    move v2, v5

    .line 238
    :cond_ed
    aget-object v5, v13, v14

    .line 239
    .line 240
    aput v2, v5, v6

    .line 241
    .line 242
    add-int/lit8 v6, v6, 0x1

    .line 243
    .line 244
    move/from16 v12, v18

    .line 245
    .line 246
    move-object/from16 v2, v23

    .line 247
    .line 248
    move/from16 v5, v24

    .line 249
    .line 250
    const/16 v15, 0x8

    .line 251
    .line 252
    goto/16 :goto_51

    .line 253
    .line 254
    :cond_fd
    move-object/from16 v23, v2

    .line 255
    .line 256
    move/from16 v18, v12

    .line 257
    .line 258
    add-int/lit8 v14, v14, 0x1

    .line 259
    .line 260
    move/from16 v5, v16

    .line 261
    .line 262
    move/from16 v6, v17

    .line 263
    .line 264
    goto/16 :goto_44

    .line 265
    .line 266
    :cond_109
    move-object/from16 v23, v2

    .line 267
    .line 268
    move/from16 v17, v6

    .line 269
    .line 270
    move/from16 v18, v12

    .line 271
    .line 272
    new-instance v2, Lf6/b;

    .line 273
    .line 274
    invoke-direct {v2, v3, v4}, Lf6/b;-><init>(II)V

    .line 275
    .line 276
    .line 277
    move/from16 v4, v17

    .line 278
    .line 279
    :goto_116
    if-ge v4, v9, :cond_1b4

    .line 280
    .line 281
    shl-int/lit8 v5, v4, 0x3

    .line 282
    .line 283
    if-le v5, v10, :cond_11d

    .line 284
    .line 285
    move v5, v10

    .line 286
    :cond_11d
    add-int/lit8 v6, v9, -0x3

    .line 287
    .line 288
    move/from16 v8, v18

    .line 289
    .line 290
    if-ge v4, v8, :cond_125

    .line 291
    .line 292
    const/4 v8, 0x2

    .line 293
    goto :goto_12a

    .line 294
    :cond_125
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    move v8, v6

    .line 299
    :goto_12a
    move/from16 v6, v17

    .line 300
    .line 301
    :goto_12c
    if-ge v6, v7, :cond_1ac

    .line 302
    .line 303
    shl-int/lit8 v12, v6, 0x3

    .line 304
    .line 305
    if-le v12, v11, :cond_133

    .line 306
    .line 307
    move v12, v11

    .line 308
    :cond_133
    add-int/lit8 v14, v7, -0x3

    .line 309
    .line 310
    const/4 v15, 0x2

    .line 311
    if-ge v6, v15, :cond_13a

    .line 312
    .line 313
    move v14, v15

    .line 314
    goto :goto_140

    .line 315
    :cond_13a
    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    .line 316
    .line 317
    .line 318
    move-result v18

    .line 319
    move/from16 v14, v18

    .line 320
    .line 321
    :goto_140
    const/16 v16, -0x2

    .line 322
    .line 323
    move/from16 v19, v4

    .line 324
    .line 325
    move/from16 v4, v16

    .line 326
    .line 327
    move/from16 v16, v17

    .line 328
    .line 329
    :goto_148
    if-gt v4, v15, :cond_171

    .line 330
    .line 331
    add-int v15, v8, v4

    .line 332
    .line 333
    aget-object v15, v13, v15

    .line 334
    .line 335
    add-int/lit8 v20, v14, -0x2

    .line 336
    .line 337
    aget v20, v15, v20

    .line 338
    .line 339
    add-int/lit8 v21, v14, -0x1

    .line 340
    .line 341
    aget v21, v15, v21

    .line 342
    .line 343
    add-int v20, v20, v21

    .line 344
    .line 345
    aget v21, v15, v14

    .line 346
    .line 347
    add-int v20, v20, v21

    .line 348
    .line 349
    add-int/lit8 v21, v14, 0x1

    .line 350
    .line 351
    aget v21, v15, v21

    .line 352
    .line 353
    add-int v20, v20, v21

    .line 354
    .line 355
    const/16 v18, 0x2

    .line 356
    .line 357
    add-int/lit8 v21, v14, 0x2

    .line 358
    .line 359
    aget v15, v15, v21

    .line 360
    .line 361
    add-int v20, v20, v15

    .line 362
    .line 363
    add-int v16, v20, v16

    .line 364
    .line 365
    add-int/lit8 v4, v4, 0x1

    .line 366
    .line 367
    move/from16 v15, v18

    .line 368
    .line 369
    goto :goto_148

    .line 370
    :cond_171
    move/from16 v18, v15

    .line 371
    .line 372
    div-int/lit8 v4, v16, 0x19

    .line 373
    .line 374
    mul-int v14, v5, v3

    .line 375
    .line 376
    add-int/2addr v14, v12

    .line 377
    move/from16 v16, v5

    .line 378
    .line 379
    move/from16 v15, v17

    .line 380
    .line 381
    :goto_17c
    const/16 v5, 0x8

    .line 382
    .line 383
    if-ge v15, v5, :cond_1a3

    .line 384
    .line 385
    move/from16 v20, v6

    .line 386
    .line 387
    move/from16 v6, v17

    .line 388
    .line 389
    :goto_184
    if-ge v6, v5, :cond_19d

    .line 390
    .line 391
    add-int v21, v14, v6

    .line 392
    .line 393
    aget-byte v5, v23, v21

    .line 394
    .line 395
    move/from16 v21, v6

    .line 396
    .line 397
    const/16 v6, 0xff

    .line 398
    .line 399
    and-int/2addr v5, v6

    .line 400
    if-gt v5, v4, :cond_198

    .line 401
    .line 402
    add-int v6, v12, v21

    .line 403
    .line 404
    add-int v5, v16, v15

    .line 405
    .line 406
    invoke-virtual {v2, v6, v5}, Lf6/b;->f(II)V

    .line 407
    .line 408
    .line 409
    :cond_198
    add-int/lit8 v6, v21, 0x1

    .line 410
    .line 411
    const/16 v5, 0x8

    .line 412
    .line 413
    goto :goto_184

    .line 414
    :cond_19d
    add-int/lit8 v15, v15, 0x1

    .line 415
    .line 416
    add-int/2addr v14, v3

    .line 417
    move/from16 v6, v20

    .line 418
    .line 419
    goto :goto_17c

    .line 420
    :cond_1a3
    move/from16 v20, v6

    .line 421
    .line 422
    add-int/lit8 v6, v20, 0x1

    .line 423
    .line 424
    move/from16 v5, v16

    .line 425
    .line 426
    move/from16 v4, v19

    .line 427
    .line 428
    goto :goto_12c

    .line 429
    :cond_1ac
    move/from16 v19, v4

    .line 430
    .line 431
    const/16 v18, 0x2

    .line 432
    .line 433
    add-int/lit8 v4, v19, 0x1

    .line 434
    .line 435
    goto/16 :goto_116

    .line 436
    .line 437
    :cond_1b4
    iput-object v2, v1, Lf6/e;->d:Lf6/b;

    .line 438
    .line 439
    goto/16 :goto_227

    .line 440
    .line 441
    :cond_1b8
    move/from16 v16, v5

    .line 442
    .line 443
    move/from16 v17, v6

    .line 444
    .line 445
    new-instance v5, Lf6/b;

    .line 446
    .line 447
    invoke-direct {v5, v3, v4}, Lf6/b;-><init>(II)V

    .line 448
    .line 449
    .line 450
    iget-object v6, v1, Lf6/e;->b:[B

    .line 451
    .line 452
    array-length v6, v6

    .line 453
    if-ge v6, v3, :cond_1ca

    .line 454
    .line 455
    new-array v6, v3, [B

    .line 456
    .line 457
    iput-object v6, v1, Lf6/e;->b:[B

    .line 458
    .line 459
    :cond_1ca
    move/from16 v6, v17

    .line 460
    .line 461
    :goto_1cc
    iget-object v7, v1, Lf6/e;->c:[I

    .line 462
    .line 463
    const/16 v8, 0x20

    .line 464
    .line 465
    if-ge v6, v8, :cond_1d7

    .line 466
    .line 467
    aput v17, v7, v6

    .line 468
    .line 469
    add-int/lit8 v6, v6, 0x1

    .line 470
    .line 471
    goto :goto_1cc

    .line 472
    :cond_1d7
    move/from16 v6, v16

    .line 473
    .line 474
    :goto_1d9
    const/4 v8, 0x5

    .line 475
    if-ge v6, v8, :cond_1ff

    .line 476
    .line 477
    mul-int v9, v4, v6

    .line 478
    .line 479
    div-int/2addr v9, v8

    .line 480
    iget-object v10, v1, Lf6/e;->b:[B

    .line 481
    .line 482
    invoke-virtual {v2, v9, v10}, Lz5/g;->b(I[B)[B

    .line 483
    .line 484
    .line 485
    move-result-object v9

    .line 486
    shl-int/lit8 v10, v3, 0x2

    .line 487
    .line 488
    div-int/2addr v10, v8

    .line 489
    div-int/lit8 v8, v3, 0x5

    .line 490
    .line 491
    :goto_1ea
    if-ge v8, v10, :cond_1fc

    .line 492
    .line 493
    aget-byte v11, v9, v8

    .line 494
    .line 495
    const/16 v12, 0xff

    .line 496
    .line 497
    and-int/2addr v11, v12

    .line 498
    shr-int/lit8 v11, v11, 0x3

    .line 499
    .line 500
    aget v12, v7, v11

    .line 501
    .line 502
    add-int/lit8 v12, v12, 0x1

    .line 503
    .line 504
    aput v12, v7, v11

    .line 505
    .line 506
    add-int/lit8 v8, v8, 0x1

    .line 507
    .line 508
    goto :goto_1ea

    .line 509
    :cond_1fc
    add-int/lit8 v6, v6, 0x1

    .line 510
    .line 511
    goto :goto_1d9

    .line 512
    :cond_1ff
    invoke-static {v7}, Lf6/e;->a([I)I

    .line 513
    .line 514
    .line 515
    move-result v6

    .line 516
    invoke-virtual {v2}, Lz5/g;->a()[B

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    move/from16 v7, v17

    .line 521
    .line 522
    :goto_209
    if-ge v7, v4, :cond_225

    .line 523
    .line 524
    mul-int v8, v7, v3

    .line 525
    .line 526
    move/from16 v9, v17

    .line 527
    .line 528
    :goto_20f
    if-ge v9, v3, :cond_220

    .line 529
    .line 530
    add-int v10, v8, v9

    .line 531
    .line 532
    aget-byte v10, v2, v10

    .line 533
    .line 534
    const/16 v12, 0xff

    .line 535
    .line 536
    and-int/2addr v10, v12

    .line 537
    if-ge v10, v6, :cond_21d

    .line 538
    .line 539
    invoke-virtual {v5, v9, v7}, Lf6/b;->f(II)V

    .line 540
    .line 541
    .line 542
    :cond_21d
    add-int/lit8 v9, v9, 0x1

    .line 543
    .line 544
    goto :goto_20f

    .line 545
    :cond_220
    const/16 v12, 0xff

    .line 546
    .line 547
    add-int/lit8 v7, v7, 0x1

    .line 548
    .line 549
    goto :goto_209

    .line 550
    :cond_225
    iput-object v5, v1, Lf6/e;->d:Lf6/b;

    .line 551
    .line 552
    :goto_227
    iget-object v2, v1, Lf6/e;->d:Lf6/b;

    .line 553
    .line 554
    :goto_229
    iput-object v2, v0, Lz5/b;->b:Lf6/b;

    .line 555
    .line 556
    :cond_22b
    iget-object v1, v0, Lz5/b;->b:Lf6/b;

    .line 557
    .line 558
    return-object v1
.end method

.method public final b(Lf6/a;I)Lf6/a;
    .registers 12

    .line 1
    iget-object v0, p0, Lz5/b;->a:Lf6/e;

    .line 2
    .line 3
    iget-object v1, v0, Lf6/e;->c:[I

    .line 4
    .line 5
    iget-object v2, v0, Lf6/e;->a:Lz5/g;

    .line 6
    .line 7
    iget v3, v2, Lz5/g;->a:I

    .line 8
    .line 9
    iget v4, p1, Lf6/a;->c:I

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-ge v4, v3, :cond_13

    .line 13
    .line 14
    new-instance p1, Lf6/a;

    .line 15
    .line 16
    invoke-direct {p1, v3}, Lf6/a;-><init>(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_20

    .line 20
    :cond_13
    iget-object v4, p1, Lf6/a;->b:[I

    .line 21
    .line 22
    array-length v4, v4

    .line 23
    move v6, v5

    .line 24
    :goto_17
    if-ge v6, v4, :cond_20

    .line 25
    .line 26
    iget-object v7, p1, Lf6/a;->b:[I

    .line 27
    .line 28
    aput v5, v7, v6

    .line 29
    .line 30
    add-int/lit8 v6, v6, 0x1

    .line 31
    .line 32
    goto :goto_17

    .line 33
    :cond_20
    :goto_20
    iget-object v4, v0, Lf6/e;->b:[B

    .line 34
    .line 35
    array-length v4, v4

    .line 36
    if-ge v4, v3, :cond_29

    .line 37
    .line 38
    new-array v4, v3, [B

    .line 39
    .line 40
    iput-object v4, v0, Lf6/e;->b:[B

    .line 41
    .line 42
    :cond_29
    move v4, v5

    .line 43
    :goto_2a
    const/16 v6, 0x20

    .line 44
    .line 45
    if-ge v4, v6, :cond_33

    .line 46
    .line 47
    aput v5, v1, v4

    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_2a

    .line 52
    :cond_33
    iget-object v0, v0, Lf6/e;->b:[B

    .line 53
    .line 54
    invoke-virtual {v2, p2, v0}, Lz5/g;->b(I[B)[B

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    move v0, v5

    .line 59
    :goto_3a
    const/4 v2, 0x3

    .line 60
    const/4 v4, 0x1

    .line 61
    if-ge v0, v3, :cond_4c

    .line 62
    .line 63
    aget-byte v6, p2, v0

    .line 64
    .line 65
    and-int/lit16 v6, v6, 0xff

    .line 66
    .line 67
    shr-int/lit8 v2, v6, 0x3

    .line 68
    .line 69
    aget v6, v1, v2

    .line 70
    .line 71
    add-int/2addr v6, v4

    .line 72
    aput v6, v1, v2

    .line 73
    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_3a

    .line 77
    :cond_4c
    invoke-static {v1}, Lf6/e;->a([I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-ge v3, v2, :cond_60

    .line 82
    .line 83
    :goto_52
    if-ge v5, v3, :cond_85

    .line 84
    .line 85
    aget-byte v1, p2, v5

    .line 86
    .line 87
    and-int/lit16 v1, v1, 0xff

    .line 88
    .line 89
    if-ge v1, v0, :cond_5d

    .line 90
    .line 91
    invoke-virtual {p1, v5}, Lf6/a;->j(I)V

    .line 92
    .line 93
    .line 94
    :cond_5d
    add-int/lit8 v5, v5, 0x1

    .line 95
    .line 96
    goto :goto_52

    .line 97
    :cond_60
    aget-byte v1, p2, v5

    .line 98
    .line 99
    and-int/lit16 v1, v1, 0xff

    .line 100
    .line 101
    aget-byte v2, p2, v4

    .line 102
    .line 103
    and-int/lit16 v2, v2, 0xff

    .line 104
    .line 105
    move v5, v2

    .line 106
    move v2, v1

    .line 107
    move v1, v5

    .line 108
    move v5, v4

    .line 109
    :goto_6c
    add-int/lit8 v6, v3, -0x1

    .line 110
    .line 111
    if-ge v5, v6, :cond_85

    .line 112
    .line 113
    add-int/lit8 v6, v5, 0x1

    .line 114
    .line 115
    aget-byte v7, p2, v6

    .line 116
    .line 117
    and-int/lit16 v7, v7, 0xff

    .line 118
    .line 119
    shl-int/lit8 v8, v1, 0x2

    .line 120
    .line 121
    sub-int/2addr v8, v2

    .line 122
    sub-int/2addr v8, v7

    .line 123
    div-int/lit8 v8, v8, 0x2

    .line 124
    .line 125
    if-ge v8, v0, :cond_81

    .line 126
    .line 127
    invoke-virtual {p1, v5}, Lf6/a;->j(I)V

    .line 128
    .line 129
    .line 130
    :cond_81
    move v2, v1

    .line 131
    move v5, v6

    .line 132
    move v1, v7

    .line 133
    goto :goto_6c

    .line 134
    :cond_85
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lz5/b;->a()Lf6/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lf6/b;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_8
    .catch Lz5/i; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    return-object v0

    .line 10
    :catch_9
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method
