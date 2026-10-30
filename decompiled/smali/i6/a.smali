.class public final Li6/a;
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
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lz5/o;

    .line 3
    .line 4
    sput-object v0, Li6/a;->b:[Lz5/o;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj6/c;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lj6/c;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Li6/a;->a:Lj6/c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lz5/b;Ljava/util/Map;)Lz5/m;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Li6/a;->a:Lj6/c;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v1, :cond_8

    .line 10
    .line 11
    sget-object v5, Lz5/d;->c:Lz5/d;

    .line 12
    .line 13
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_8

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Lz5/b;->a()Lf6/b;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lf6/b;->e()[I

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v1}, Lf6/b;->c()[I

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    if-eqz v5, :cond_7

    .line 32
    .line 33
    if-eqz v6, :cond_7

    .line 34
    .line 35
    iget v7, v1, Lf6/b;->b:I

    .line 36
    .line 37
    aget v8, v5, v4

    .line 38
    .line 39
    aget v9, v5, v3

    .line 40
    .line 41
    :goto_0
    if-ge v8, v7, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1, v8, v9}, Lf6/b;->b(II)Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-eqz v10, :cond_0

    .line 48
    .line 49
    add-int/lit8 v8, v8, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    if-eq v8, v7, :cond_6

    .line 53
    .line 54
    aget v7, v5, v4

    .line 55
    .line 56
    sub-int/2addr v8, v7

    .line 57
    if-eqz v8, :cond_5

    .line 58
    .line 59
    aget v5, v5, v3

    .line 60
    .line 61
    aget v9, v6, v3

    .line 62
    .line 63
    aget v6, v6, v4

    .line 64
    .line 65
    sub-int/2addr v6, v7

    .line 66
    add-int/2addr v6, v3

    .line 67
    div-int/2addr v6, v8

    .line 68
    sub-int/2addr v9, v5

    .line 69
    add-int/2addr v9, v3

    .line 70
    div-int/2addr v9, v8

    .line 71
    if-lez v6, :cond_4

    .line 72
    .line 73
    if-lez v9, :cond_4

    .line 74
    .line 75
    div-int/lit8 v3, v8, 0x2

    .line 76
    .line 77
    add-int/2addr v5, v3

    .line 78
    add-int/2addr v7, v3

    .line 79
    new-instance v3, Lf6/b;

    .line 80
    .line 81
    invoke-direct {v3, v6, v9}, Lf6/b;-><init>(II)V

    .line 82
    .line 83
    .line 84
    move v10, v4

    .line 85
    :goto_1
    if-ge v10, v9, :cond_3

    .line 86
    .line 87
    mul-int v11, v10, v8

    .line 88
    .line 89
    add-int/2addr v11, v5

    .line 90
    move v12, v4

    .line 91
    :goto_2
    if-ge v12, v6, :cond_2

    .line 92
    .line 93
    mul-int v13, v12, v8

    .line 94
    .line 95
    add-int/2addr v13, v7

    .line 96
    invoke-virtual {v1, v13, v11}, Lf6/b;->b(II)Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-eqz v13, :cond_1

    .line 101
    .line 102
    invoke-virtual {v3, v12, v10}, Lf6/b;->f(II)V

    .line 103
    .line 104
    .line 105
    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {v2, v3}, Lj6/c;->c(Lf6/b;)Lf6/d;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    sget-object v2, Li6/a;->b:[Lz5/o;

    .line 116
    .line 117
    goto/16 :goto_7

    .line 118
    .line 119
    :cond_4
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 120
    .line 121
    throw v1

    .line 122
    :cond_5
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 123
    .line 124
    throw v1

    .line 125
    :cond_6
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 126
    .line 127
    throw v1

    .line 128
    :cond_7
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 129
    .line 130
    throw v1

    .line 131
    :cond_8
    new-instance v1, Landroid/support/v4/media/h;

    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Lz5/b;->a()Lf6/b;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-direct {v1, v5}, Landroid/support/v4/media/h;-><init>(Lf6/b;)V

    .line 138
    .line 139
    .line 140
    iget-object v6, v1, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v6, Lg6/a;

    .line 143
    .line 144
    invoke-virtual {v6}, Lg6/a;->b()[Lz5/o;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    aget-object v7, v6, v4

    .line 149
    .line 150
    aget-object v8, v6, v3

    .line 151
    .line 152
    const/4 v9, 0x3

    .line 153
    aget-object v10, v6, v9

    .line 154
    .line 155
    const/4 v11, 0x2

    .line 156
    aget-object v6, v6, v11

    .line 157
    .line 158
    invoke-virtual {v1, v7, v8}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    invoke-virtual {v1, v8, v10}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    invoke-virtual {v1, v10, v6}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 167
    .line 168
    .line 169
    move-result v14

    .line 170
    invoke-virtual {v1, v6, v7}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 171
    .line 172
    .line 173
    move-result v15

    .line 174
    move/from16 v16, v4

    .line 175
    .line 176
    const/4 v4, 0x4

    .line 177
    new-array v4, v4, [Lz5/o;

    .line 178
    .line 179
    aput-object v6, v4, v16

    .line 180
    .line 181
    aput-object v7, v4, v3

    .line 182
    .line 183
    aput-object v8, v4, v11

    .line 184
    .line 185
    aput-object v10, v4, v9

    .line 186
    .line 187
    if-le v12, v13, :cond_9

    .line 188
    .line 189
    aput-object v7, v4, v16

    .line 190
    .line 191
    aput-object v8, v4, v3

    .line 192
    .line 193
    aput-object v10, v4, v11

    .line 194
    .line 195
    aput-object v6, v4, v9

    .line 196
    .line 197
    move v12, v13

    .line 198
    :cond_9
    if-le v12, v14, :cond_a

    .line 199
    .line 200
    aput-object v8, v4, v16

    .line 201
    .line 202
    aput-object v10, v4, v3

    .line 203
    .line 204
    aput-object v6, v4, v11

    .line 205
    .line 206
    aput-object v7, v4, v9

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_a
    move v14, v12

    .line 210
    :goto_3
    if-le v14, v15, :cond_b

    .line 211
    .line 212
    aput-object v10, v4, v16

    .line 213
    .line 214
    aput-object v6, v4, v3

    .line 215
    .line 216
    aput-object v7, v4, v11

    .line 217
    .line 218
    aput-object v8, v4, v9

    .line 219
    .line 220
    :cond_b
    aget-object v6, v4, v16

    .line 221
    .line 222
    aget-object v7, v4, v3

    .line 223
    .line 224
    aget-object v8, v4, v11

    .line 225
    .line 226
    aget-object v10, v4, v9

    .line 227
    .line 228
    invoke-virtual {v1, v6, v10}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    add-int/2addr v12, v3

    .line 233
    shl-int/2addr v12, v11

    .line 234
    invoke-static {v7, v8, v12}, Landroid/support/v4/media/h;->v(Lz5/o;Lz5/o;I)Lz5/o;

    .line 235
    .line 236
    .line 237
    move-result-object v13

    .line 238
    invoke-static {v8, v7, v12}, Landroid/support/v4/media/h;->v(Lz5/o;Lz5/o;I)Lz5/o;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    invoke-virtual {v1, v13, v6}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 243
    .line 244
    .line 245
    move-result v13

    .line 246
    invoke-virtual {v1, v12, v10}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 247
    .line 248
    .line 249
    move-result v12

    .line 250
    if-ge v13, v12, :cond_c

    .line 251
    .line 252
    aput-object v6, v4, v16

    .line 253
    .line 254
    aput-object v7, v4, v3

    .line 255
    .line 256
    aput-object v8, v4, v11

    .line 257
    .line 258
    aput-object v10, v4, v9

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_c
    aput-object v7, v4, v16

    .line 262
    .line 263
    aput-object v8, v4, v3

    .line 264
    .line 265
    aput-object v10, v4, v11

    .line 266
    .line 267
    aput-object v6, v4, v9

    .line 268
    .line 269
    :goto_4
    aget-object v6, v4, v16

    .line 270
    .line 271
    aget-object v7, v4, v3

    .line 272
    .line 273
    aget-object v8, v4, v11

    .line 274
    .line 275
    aget-object v10, v4, v9

    .line 276
    .line 277
    invoke-virtual {v1, v6, v10}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 278
    .line 279
    .line 280
    move-result v12

    .line 281
    invoke-virtual {v1, v7, v10}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 282
    .line 283
    .line 284
    move-result v13

    .line 285
    add-int/2addr v13, v3

    .line 286
    shl-int/2addr v13, v11

    .line 287
    invoke-static {v6, v7, v13}, Landroid/support/v4/media/h;->v(Lz5/o;Lz5/o;I)Lz5/o;

    .line 288
    .line 289
    .line 290
    move-result-object v13

    .line 291
    add-int/2addr v12, v3

    .line 292
    shl-int/2addr v12, v11

    .line 293
    invoke-static {v8, v7, v12}, Landroid/support/v4/media/h;->v(Lz5/o;Lz5/o;I)Lz5/o;

    .line 294
    .line 295
    .line 296
    move-result-object v12

    .line 297
    invoke-virtual {v1, v13, v10}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 298
    .line 299
    .line 300
    move-result v14

    .line 301
    invoke-virtual {v1, v12, v10}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 302
    .line 303
    .line 304
    move-result v15

    .line 305
    move/from16 p1, v9

    .line 306
    .line 307
    new-instance v9, Lz5/o;

    .line 308
    .line 309
    move/from16 p2, v11

    .line 310
    .line 311
    iget v11, v10, Lz5/o;->a:F

    .line 312
    .line 313
    move/from16 v17, v3

    .line 314
    .line 315
    iget v3, v8, Lz5/o;->a:F

    .line 316
    .line 317
    iget v0, v7, Lz5/o;->a:F

    .line 318
    .line 319
    sub-float/2addr v3, v0

    .line 320
    add-int/lit8 v14, v14, 0x1

    .line 321
    .line 322
    int-to-float v14, v14

    .line 323
    div-float/2addr v3, v14

    .line 324
    add-float/2addr v3, v11

    .line 325
    iget v10, v10, Lz5/o;->b:F

    .line 326
    .line 327
    iget v8, v8, Lz5/o;->b:F

    .line 328
    .line 329
    iget v7, v7, Lz5/o;->b:F

    .line 330
    .line 331
    sub-float/2addr v8, v7

    .line 332
    div-float/2addr v8, v14

    .line 333
    add-float/2addr v8, v10

    .line 334
    invoke-direct {v9, v3, v8}, Lz5/o;-><init>(FF)V

    .line 335
    .line 336
    .line 337
    new-instance v3, Lz5/o;

    .line 338
    .line 339
    iget v8, v6, Lz5/o;->a:F

    .line 340
    .line 341
    sub-float/2addr v8, v0

    .line 342
    add-int/lit8 v15, v15, 0x1

    .line 343
    .line 344
    int-to-float v0, v15

    .line 345
    div-float/2addr v8, v0

    .line 346
    add-float/2addr v8, v11

    .line 347
    iget v6, v6, Lz5/o;->b:F

    .line 348
    .line 349
    sub-float/2addr v6, v7

    .line 350
    div-float/2addr v6, v0

    .line 351
    add-float/2addr v6, v10

    .line 352
    invoke-direct {v3, v8, v6}, Lz5/o;-><init>(FF)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v9}, Landroid/support/v4/media/h;->m(Lz5/o;)Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    if-nez v0, :cond_e

    .line 360
    .line 361
    invoke-virtual {v1, v3}, Landroid/support/v4/media/h;->m(Lz5/o;)Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-eqz v0, :cond_d

    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_d
    const/4 v9, 0x0

    .line 369
    goto :goto_6

    .line 370
    :cond_e
    invoke-virtual {v1, v3}, Landroid/support/v4/media/h;->m(Lz5/o;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_f

    .line 375
    .line 376
    goto :goto_6

    .line 377
    :cond_f
    invoke-virtual {v1, v13, v9}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    invoke-virtual {v1, v12, v9}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    add-int/2addr v6, v0

    .line 386
    invoke-virtual {v1, v13, v3}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    invoke-virtual {v1, v12, v3}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    add-int/2addr v7, v0

    .line 395
    if-le v6, v7, :cond_10

    .line 396
    .line 397
    goto :goto_6

    .line 398
    :cond_10
    :goto_5
    move-object v9, v3

    .line 399
    :goto_6
    aput-object v9, v4, p1

    .line 400
    .line 401
    if-eqz v9, :cond_18

    .line 402
    .line 403
    aget-object v0, v4, v16

    .line 404
    .line 405
    aget-object v3, v4, v17

    .line 406
    .line 407
    aget-object v4, v4, p2

    .line 408
    .line 409
    invoke-virtual {v1, v0, v9}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 410
    .line 411
    .line 412
    move-result v6

    .line 413
    add-int/lit8 v6, v6, 0x1

    .line 414
    .line 415
    invoke-virtual {v1, v4, v9}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 416
    .line 417
    .line 418
    move-result v7

    .line 419
    add-int/lit8 v7, v7, 0x1

    .line 420
    .line 421
    shl-int/lit8 v7, v7, 0x2

    .line 422
    .line 423
    invoke-static {v0, v3, v7}, Landroid/support/v4/media/h;->v(Lz5/o;Lz5/o;I)Lz5/o;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    shl-int/lit8 v6, v6, 0x2

    .line 428
    .line 429
    invoke-static {v4, v3, v6}, Landroid/support/v4/media/h;->v(Lz5/o;Lz5/o;I)Lz5/o;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    invoke-virtual {v1, v7, v9}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 434
    .line 435
    .line 436
    move-result v7

    .line 437
    add-int/lit8 v8, v7, 0x1

    .line 438
    .line 439
    invoke-virtual {v1, v6, v9}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 440
    .line 441
    .line 442
    move-result v6

    .line 443
    add-int/lit8 v10, v6, 0x1

    .line 444
    .line 445
    and-int/lit8 v11, v8, 0x1

    .line 446
    .line 447
    move/from16 v12, v17

    .line 448
    .line 449
    if-ne v11, v12, :cond_11

    .line 450
    .line 451
    add-int/lit8 v8, v7, 0x2

    .line 452
    .line 453
    :cond_11
    and-int/lit8 v7, v10, 0x1

    .line 454
    .line 455
    if-ne v7, v12, :cond_12

    .line 456
    .line 457
    add-int/lit8 v10, v6, 0x2

    .line 458
    .line 459
    :cond_12
    iget v6, v0, Lz5/o;->a:F

    .line 460
    .line 461
    iget v7, v3, Lz5/o;->a:F

    .line 462
    .line 463
    add-float/2addr v6, v7

    .line 464
    iget v7, v4, Lz5/o;->a:F

    .line 465
    .line 466
    add-float/2addr v6, v7

    .line 467
    iget v7, v9, Lz5/o;->a:F

    .line 468
    .line 469
    add-float/2addr v6, v7

    .line 470
    const/high16 v7, 0x40800000    # 4.0f

    .line 471
    .line 472
    div-float/2addr v6, v7

    .line 473
    iget v11, v0, Lz5/o;->b:F

    .line 474
    .line 475
    iget v12, v3, Lz5/o;->b:F

    .line 476
    .line 477
    add-float/2addr v11, v12

    .line 478
    iget v12, v4, Lz5/o;->b:F

    .line 479
    .line 480
    add-float/2addr v11, v12

    .line 481
    iget v12, v9, Lz5/o;->b:F

    .line 482
    .line 483
    add-float/2addr v11, v12

    .line 484
    div-float/2addr v11, v7

    .line 485
    invoke-static {v0, v6, v11}, Landroid/support/v4/media/h;->n(Lz5/o;FF)Lz5/o;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-static {v3, v6, v11}, Landroid/support/v4/media/h;->n(Lz5/o;FF)Lz5/o;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    invoke-static {v4, v6, v11}, Landroid/support/v4/media/h;->n(Lz5/o;FF)Lz5/o;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    invoke-static {v9, v6, v11}, Landroid/support/v4/media/h;->n(Lz5/o;FF)Lz5/o;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    shl-int/lit8 v7, v10, 0x2

    .line 502
    .line 503
    invoke-static {v0, v3, v7}, Landroid/support/v4/media/h;->v(Lz5/o;Lz5/o;I)Lz5/o;

    .line 504
    .line 505
    .line 506
    move-result-object v9

    .line 507
    shl-int/lit8 v8, v8, 0x2

    .line 508
    .line 509
    invoke-static {v9, v6, v8}, Landroid/support/v4/media/h;->v(Lz5/o;Lz5/o;I)Lz5/o;

    .line 510
    .line 511
    .line 512
    move-result-object v9

    .line 513
    invoke-static {v3, v0, v7}, Landroid/support/v4/media/h;->v(Lz5/o;Lz5/o;I)Lz5/o;

    .line 514
    .line 515
    .line 516
    move-result-object v10

    .line 517
    invoke-static {v10, v4, v8}, Landroid/support/v4/media/h;->v(Lz5/o;Lz5/o;I)Lz5/o;

    .line 518
    .line 519
    .line 520
    move-result-object v10

    .line 521
    invoke-static {v4, v6, v7}, Landroid/support/v4/media/h;->v(Lz5/o;Lz5/o;I)Lz5/o;

    .line 522
    .line 523
    .line 524
    move-result-object v11

    .line 525
    invoke-static {v11, v3, v8}, Landroid/support/v4/media/h;->v(Lz5/o;Lz5/o;I)Lz5/o;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    invoke-static {v6, v4, v7}, Landroid/support/v4/media/h;->v(Lz5/o;Lz5/o;I)Lz5/o;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    invoke-static {v4, v0, v8}, Landroid/support/v4/media/h;->v(Lz5/o;Lz5/o;I)Lz5/o;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    filled-new-array {v9, v10, v3, v0}, [Lz5/o;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    aget-object v3, v0, v16

    .line 542
    .line 543
    const/4 v12, 0x1

    .line 544
    aget-object v4, v0, v12

    .line 545
    .line 546
    aget-object v6, v0, p2

    .line 547
    .line 548
    aget-object v0, v0, p1

    .line 549
    .line 550
    invoke-virtual {v1, v3, v0}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 551
    .line 552
    .line 553
    move-result v7

    .line 554
    add-int/lit8 v8, v7, 0x1

    .line 555
    .line 556
    invoke-virtual {v1, v6, v0}, Landroid/support/v4/media/h;->w(Lz5/o;Lz5/o;)I

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    add-int/lit8 v9, v1, 0x1

    .line 561
    .line 562
    and-int/lit8 v10, v8, 0x1

    .line 563
    .line 564
    if-ne v10, v12, :cond_13

    .line 565
    .line 566
    add-int/lit8 v8, v7, 0x2

    .line 567
    .line 568
    :cond_13
    and-int/lit8 v7, v9, 0x1

    .line 569
    .line 570
    if-ne v7, v12, :cond_14

    .line 571
    .line 572
    add-int/lit8 v9, v1, 0x2

    .line 573
    .line 574
    :cond_14
    mul-int/lit8 v1, v8, 0x4

    .line 575
    .line 576
    mul-int/lit8 v7, v9, 0x7

    .line 577
    .line 578
    if-ge v1, v7, :cond_15

    .line 579
    .line 580
    mul-int/lit8 v1, v9, 0x4

    .line 581
    .line 582
    mul-int/lit8 v7, v8, 0x7

    .line 583
    .line 584
    if-ge v1, v7, :cond_15

    .line 585
    .line 586
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 587
    .line 588
    .line 589
    move-result v8

    .line 590
    move v9, v8

    .line 591
    :cond_15
    int-to-float v1, v8

    .line 592
    const/high16 v7, 0x3f000000    # 0.5f

    .line 593
    .line 594
    sub-float v12, v1, v7

    .line 595
    .line 596
    int-to-float v1, v9

    .line 597
    sub-float v15, v1, v7

    .line 598
    .line 599
    iget v1, v3, Lz5/o;->a:F

    .line 600
    .line 601
    iget v7, v3, Lz5/o;->b:F

    .line 602
    .line 603
    iget v10, v0, Lz5/o;->a:F

    .line 604
    .line 605
    iget v11, v0, Lz5/o;->b:F

    .line 606
    .line 607
    iget v13, v6, Lz5/o;->a:F

    .line 608
    .line 609
    iget v14, v6, Lz5/o;->b:F

    .line 610
    .line 611
    move/from16 v18, v1

    .line 612
    .line 613
    iget v1, v4, Lz5/o;->a:F

    .line 614
    .line 615
    move/from16 v24, v1

    .line 616
    .line 617
    iget v1, v4, Lz5/o;->b:F

    .line 618
    .line 619
    move/from16 v20, v10

    .line 620
    .line 621
    const/high16 v10, 0x3f000000    # 0.5f

    .line 622
    .line 623
    move/from16 v21, v11

    .line 624
    .line 625
    const/high16 v11, 0x3f000000    # 0.5f

    .line 626
    .line 627
    move/from16 v22, v13

    .line 628
    .line 629
    const/high16 v13, 0x3f000000    # 0.5f

    .line 630
    .line 631
    const/high16 v16, 0x3f000000    # 0.5f

    .line 632
    .line 633
    move/from16 v23, v14

    .line 634
    .line 635
    move v14, v12

    .line 636
    move/from16 v17, v15

    .line 637
    .line 638
    move/from16 v25, v1

    .line 639
    .line 640
    move/from16 v19, v7

    .line 641
    .line 642
    invoke-static/range {v10 .. v25}, Lf6/f;->a(FFFFFFFFFFFFFFFF)Lf6/f;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    invoke-static {v5, v8, v9, v1}, Ly5/k;->q(Lf6/b;IILf6/f;)Lf6/b;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    filled-new-array {v3, v4, v6, v0}, [Lz5/o;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    invoke-virtual {v2, v1}, Lj6/c;->c(Lf6/b;)Lf6/d;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    move-object v2, v0

    .line 659
    :goto_7
    new-instance v0, Lz5/m;

    .line 660
    .line 661
    iget-object v3, v1, Lf6/d;->a:Ljava/lang/String;

    .line 662
    .line 663
    iget-object v4, v1, Lf6/d;->d:Ljava/lang/Object;

    .line 664
    .line 665
    check-cast v4, [B

    .line 666
    .line 667
    sget-object v5, Lz5/a;->g:Lz5/a;

    .line 668
    .line 669
    invoke-direct {v0, v3, v4, v2, v5}, Lz5/m;-><init>(Ljava/lang/String;[B[Lz5/o;Lz5/a;)V

    .line 670
    .line 671
    .line 672
    iget-object v2, v1, Lf6/d;->f:Ljava/lang/Object;

    .line 673
    .line 674
    check-cast v2, Ljava/util/List;

    .line 675
    .line 676
    if-eqz v2, :cond_16

    .line 677
    .line 678
    sget-object v3, Lz5/n;->c:Lz5/n;

    .line 679
    .line 680
    invoke-virtual {v0, v3, v2}, Lz5/m;->b(Lz5/n;Ljava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    :cond_16
    iget-object v1, v1, Lf6/d;->e:Ljava/io/Serializable;

    .line 684
    .line 685
    check-cast v1, Ljava/lang/String;

    .line 686
    .line 687
    if-eqz v1, :cond_17

    .line 688
    .line 689
    sget-object v2, Lz5/n;->d:Lz5/n;

    .line 690
    .line 691
    invoke-virtual {v0, v2, v1}, Lz5/m;->b(Lz5/n;Ljava/lang/Object;)V

    .line 692
    .line 693
    .line 694
    :cond_17
    return-object v0

    .line 695
    :cond_18
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 696
    .line 697
    throw v0
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method
