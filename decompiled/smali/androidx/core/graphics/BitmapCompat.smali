.class public final Landroidx/core/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/BitmapCompat$Api27Impl;,
        Landroidx/core/graphics/BitmapCompat$Api29Impl;,
        Landroidx/core/graphics/BitmapCompat$Api31Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 20
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    if-lez v1, :cond_23

    .line 10
    .line 11
    if-lez v2, :cond_23

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 22
    .line 23
    if-ltz v4, :cond_0

    .line 24
    .line 25
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-gt v4, v5, :cond_0

    .line 32
    .line 33
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    if-ltz v4, :cond_0

    .line 36
    .line 37
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-gt v4, v5, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v0, "srcRect must be contained by srcBm!"

    .line 47
    .line 48
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    return-object v0

    .line 53
    :cond_1
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const/16 v5, 0x1b

    .line 56
    .line 57
    if-lt v4, v5, :cond_2

    .line 58
    .line 59
    invoke-static {v0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->copyBitmapIfHardware(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move-object v6, v0

    .line 65
    :goto_1
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    :goto_2
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    goto :goto_3

    .line 83
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    :goto_3
    int-to-float v9, v1

    .line 88
    int-to-float v10, v7

    .line 89
    div-float/2addr v9, v10

    .line 90
    int-to-float v10, v2

    .line 91
    int-to-float v11, v8

    .line 92
    div-float/2addr v10, v11

    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    iget v12, v3, Landroid/graphics/Rect;->left:I

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_5
    const/4 v12, 0x0

    .line 99
    :goto_4
    if-eqz v3, :cond_6

    .line 100
    .line 101
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_6
    const/4 v3, 0x0

    .line 105
    :goto_5
    const/4 v13, 0x1

    .line 106
    if-nez v12, :cond_8

    .line 107
    .line 108
    if-nez v3, :cond_8

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    if-ne v1, v14, :cond_8

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 117
    .line 118
    .line 119
    move-result v14

    .line 120
    if-ne v2, v14, :cond_8

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    if-ne v0, v6, :cond_7

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    return-object v0

    .line 139
    :cond_7
    return-object v6

    .line 140
    :cond_8
    new-instance v14, Landroid/graphics/Paint;

    .line 141
    .line 142
    invoke-direct {v14, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 146
    .line 147
    .line 148
    const/16 v15, 0x1d

    .line 149
    .line 150
    if-lt v4, v15, :cond_9

    .line 151
    .line 152
    invoke-static {v14}, Landroidx/core/graphics/BitmapCompat$Api29Impl;->setPaintBlendMode(Landroid/graphics/Paint;)V

    .line 153
    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_9
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    .line 157
    .line 158
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 159
    .line 160
    invoke-direct {v15, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 164
    .line 165
    .line 166
    :goto_6
    if-ne v7, v1, :cond_a

    .line 167
    .line 168
    if-ne v8, v2, :cond_a

    .line 169
    .line 170
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    new-instance v1, Landroid/graphics/Canvas;

    .line 179
    .line 180
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 181
    .line 182
    .line 183
    neg-int v2, v12

    .line 184
    int-to-float v2, v2

    .line 185
    neg-int v3, v3

    .line 186
    int-to-float v3, v3

    .line 187
    invoke-virtual {v1, v6, v2, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 188
    .line 189
    .line 190
    return-object v0

    .line 191
    :cond_a
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    .line 192
    .line 193
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    .line 194
    .line 195
    .line 196
    move-result-wide v16

    .line 197
    const/high16 v11, 0x3f800000    # 1.0f

    .line 198
    .line 199
    cmpl-float v15, v9, v11

    .line 200
    .line 201
    if-lez v15, :cond_b

    .line 202
    .line 203
    move/from16 p3, v11

    .line 204
    .line 205
    move v15, v12

    .line 206
    float-to-double v11, v9

    .line 207
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    .line 208
    .line 209
    .line 210
    move-result-wide v11

    .line 211
    div-double v11, v11, v16

    .line 212
    .line 213
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 214
    .line 215
    .line 216
    move-result-wide v11

    .line 217
    :goto_7
    double-to-int v9, v11

    .line 218
    goto :goto_8

    .line 219
    :cond_b
    move/from16 p3, v11

    .line 220
    .line 221
    move v15, v12

    .line 222
    float-to-double v11, v9

    .line 223
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    .line 224
    .line 225
    .line 226
    move-result-wide v11

    .line 227
    div-double v11, v11, v16

    .line 228
    .line 229
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    .line 230
    .line 231
    .line 232
    move-result-wide v11

    .line 233
    goto :goto_7

    .line 234
    :goto_8
    cmpl-float v11, v10, p3

    .line 235
    .line 236
    if-lez v11, :cond_c

    .line 237
    .line 238
    float-to-double v10, v10

    .line 239
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    .line 240
    .line 241
    .line 242
    move-result-wide v10

    .line 243
    div-double v10, v10, v16

    .line 244
    .line 245
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 246
    .line 247
    .line 248
    move-result-wide v10

    .line 249
    :goto_9
    double-to-int v10, v10

    .line 250
    goto :goto_a

    .line 251
    :cond_c
    float-to-double v10, v10

    .line 252
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    .line 253
    .line 254
    .line 255
    move-result-wide v10

    .line 256
    div-double v10, v10, v16

    .line 257
    .line 258
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    .line 259
    .line 260
    .line 261
    move-result-wide v10

    .line 262
    goto :goto_9

    .line 263
    :goto_a
    if-eqz p4, :cond_f

    .line 264
    .line 265
    if-lt v4, v5, :cond_f

    .line 266
    .line 267
    invoke-static {v0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-nez v4, :cond_f

    .line 272
    .line 273
    if-lez v9, :cond_d

    .line 274
    .line 275
    invoke-static {v7, v1, v13, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    goto :goto_b

    .line 280
    :cond_d
    move v4, v7

    .line 281
    :goto_b
    if-lez v10, :cond_e

    .line 282
    .line 283
    invoke-static {v8, v2, v13, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    goto :goto_c

    .line 288
    :cond_e
    move v11, v8

    .line 289
    :goto_c
    invoke-static {v4, v11, v0, v13}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    new-instance v11, Landroid/graphics/Canvas;

    .line 294
    .line 295
    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 296
    .line 297
    .line 298
    neg-int v12, v15

    .line 299
    int-to-float v12, v12

    .line 300
    neg-int v3, v3

    .line 301
    int-to-float v3, v3

    .line 302
    invoke-virtual {v11, v6, v12, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 303
    .line 304
    .line 305
    move-object v3, v6

    .line 306
    move-object v6, v4

    .line 307
    move-object v4, v3

    .line 308
    move v11, v13

    .line 309
    const/4 v3, 0x0

    .line 310
    const/4 v12, 0x0

    .line 311
    goto :goto_d

    .line 312
    :cond_f
    const/4 v4, 0x0

    .line 313
    move v12, v15

    .line 314
    const/4 v11, 0x0

    .line 315
    :goto_d
    new-instance v15, Landroid/graphics/Rect;

    .line 316
    .line 317
    invoke-direct {v15, v12, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 318
    .line 319
    .line 320
    new-instance v3, Landroid/graphics/Rect;

    .line 321
    .line 322
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 323
    .line 324
    .line 325
    move v12, v9

    .line 326
    move/from16 v16, v10

    .line 327
    .line 328
    :goto_e
    if-nez v12, :cond_12

    .line 329
    .line 330
    if-eqz v16, :cond_10

    .line 331
    .line 332
    goto :goto_f

    .line 333
    :cond_10
    if-eq v4, v0, :cond_11

    .line 334
    .line 335
    if-eqz v4, :cond_11

    .line 336
    .line 337
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 338
    .line 339
    .line 340
    :cond_11
    return-object v6

    .line 341
    :cond_12
    :goto_f
    if-gez v12, :cond_13

    .line 342
    .line 343
    add-int/lit8 v12, v12, 0x1

    .line 344
    .line 345
    goto :goto_10

    .line 346
    :cond_13
    if-lez v12, :cond_14

    .line 347
    .line 348
    add-int/lit8 v12, v12, -0x1

    .line 349
    .line 350
    :cond_14
    :goto_10
    if-gez v16, :cond_16

    .line 351
    .line 352
    add-int/lit8 v16, v16, 0x1

    .line 353
    .line 354
    :cond_15
    :goto_11
    move/from16 v13, v16

    .line 355
    .line 356
    goto :goto_12

    .line 357
    :cond_16
    if-lez v16, :cond_15

    .line 358
    .line 359
    add-int/lit8 v16, v16, -0x1

    .line 360
    .line 361
    goto :goto_11

    .line 362
    :goto_12
    invoke-static {v7, v1, v12, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 363
    .line 364
    .line 365
    move-result v5

    .line 366
    move/from16 v17, v11

    .line 367
    .line 368
    invoke-static {v8, v2, v13, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 369
    .line 370
    .line 371
    move-result v11

    .line 372
    move/from16 v18, v12

    .line 373
    .line 374
    const/4 v12, 0x0

    .line 375
    invoke-virtual {v3, v12, v12, v5, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 376
    .line 377
    .line 378
    if-nez v18, :cond_17

    .line 379
    .line 380
    if-nez v13, :cond_17

    .line 381
    .line 382
    const/4 v5, 0x1

    .line 383
    goto :goto_13

    .line 384
    :cond_17
    move v5, v12

    .line 385
    :goto_13
    if-eqz v4, :cond_18

    .line 386
    .line 387
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 388
    .line 389
    .line 390
    move-result v11

    .line 391
    if-ne v11, v1, :cond_18

    .line 392
    .line 393
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 394
    .line 395
    .line 396
    move-result v11

    .line 397
    if-ne v11, v2, :cond_18

    .line 398
    .line 399
    const/4 v11, 0x1

    .line 400
    goto :goto_14

    .line 401
    :cond_18
    move v11, v12

    .line 402
    :goto_14
    if-eqz v4, :cond_1c

    .line 403
    .line 404
    if-eq v4, v0, :cond_1c

    .line 405
    .line 406
    if-eqz p4, :cond_19

    .line 407
    .line 408
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 409
    .line 410
    move/from16 v19, v5

    .line 411
    .line 412
    const/16 v5, 0x1b

    .line 413
    .line 414
    if-lt v12, v5, :cond_1a

    .line 415
    .line 416
    invoke-static {v4}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    if-eqz v5, :cond_1d

    .line 421
    .line 422
    goto :goto_15

    .line 423
    :cond_19
    move/from16 v19, v5

    .line 424
    .line 425
    :cond_1a
    :goto_15
    if-eqz v19, :cond_1b

    .line 426
    .line 427
    if-eqz v11, :cond_1d

    .line 428
    .line 429
    if-eqz v17, :cond_1b

    .line 430
    .line 431
    goto :goto_16

    .line 432
    :cond_1b
    const/16 v12, 0x1b

    .line 433
    .line 434
    goto :goto_1a

    .line 435
    :cond_1c
    move/from16 v19, v5

    .line 436
    .line 437
    :cond_1d
    :goto_16
    if-eq v4, v0, :cond_1e

    .line 438
    .line 439
    if-eqz v4, :cond_1e

    .line 440
    .line 441
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 442
    .line 443
    .line 444
    :cond_1e
    if-lez v18, :cond_1f

    .line 445
    .line 446
    move/from16 v4, v17

    .line 447
    .line 448
    goto :goto_17

    .line 449
    :cond_1f
    move/from16 v4, v18

    .line 450
    .line 451
    :goto_17
    invoke-static {v7, v1, v4, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 452
    .line 453
    .line 454
    move-result v4

    .line 455
    if-lez v13, :cond_20

    .line 456
    .line 457
    move/from16 v5, v17

    .line 458
    .line 459
    goto :goto_18

    .line 460
    :cond_20
    move v5, v13

    .line 461
    :goto_18
    invoke-static {v8, v2, v5, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 466
    .line 467
    const/16 v12, 0x1b

    .line 468
    .line 469
    if-lt v11, v12, :cond_22

    .line 470
    .line 471
    if-eqz p4, :cond_21

    .line 472
    .line 473
    if-nez v19, :cond_21

    .line 474
    .line 475
    const/4 v11, 0x1

    .line 476
    goto :goto_19

    .line 477
    :cond_21
    const/4 v11, 0x0

    .line 478
    :goto_19
    invoke-static {v4, v5, v0, v11}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    goto :goto_1a

    .line 483
    :cond_22
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 484
    .line 485
    .line 486
    move-result-object v11

    .line 487
    invoke-static {v4, v5, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    :goto_1a
    new-instance v5, Landroid/graphics/Canvas;

    .line 492
    .line 493
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v5, v6, v15, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v15, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 500
    .line 501
    .line 502
    move-object v5, v6

    .line 503
    move-object v6, v4

    .line 504
    move-object v4, v5

    .line 505
    move v5, v12

    .line 506
    move/from16 v16, v13

    .line 507
    .line 508
    move/from16 v11, v17

    .line 509
    .line 510
    move/from16 v12, v18

    .line 511
    .line 512
    const/4 v13, 0x1

    .line 513
    goto/16 :goto_e

    .line 514
    .line 515
    :cond_23
    const-string v0, "dstW and dstH must be > 0!"

    .line 516
    .line 517
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    const/4 v0, 0x0

    .line 521
    return-object v0
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .locals 0
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .locals 0
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasMipMap()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static sizeAtStep(IIII)I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return p1

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    if-lez p2, :cond_1

    .line 6
    .line 7
    sub-int/2addr p3, p2

    .line 8
    shl-int p1, v0, p3

    .line 9
    .line 10
    mul-int/2addr p0, p1

    .line 11
    return p0

    .line 12
    :cond_1
    neg-int p0, p2

    .line 13
    sub-int/2addr p0, v0

    .line 14
    shl-int p0, p1, p0

    .line 15
    .line 16
    return p0
.end method
