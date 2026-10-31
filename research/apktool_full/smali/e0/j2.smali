.class public final synthetic Le0/j2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 13
    iput p1, p0, Le0/j2;->b:I

    iput-object p2, p0, Le0/j2;->d:Ljava/lang/Object;

    iput-object p3, p0, Le0/j2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/h;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    iput v0, p0, Le0/j2;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Le0/j2;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p1, p0, Le0/j2;->d:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method private final a()V
    .locals 15

    .line 1
    iget-object v0, p0, Le0/j2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/bumptech/glide/m;

    .line 4
    .line 5
    iget-object v1, p0, Le0/j2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/json/JSONObject;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/bumptech/glide/m;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lf1/e;

    .line 12
    .line 13
    iget-boolean v3, v2, Lf1/e;->o:Z

    .line 14
    .line 15
    if-eqz v3, :cond_4

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    const/4 v3, 0x0

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    const/4 v4, 0x7

    .line 29
    new-array v5, v4, [B

    .line 30
    .line 31
    fill-array-data v5, :array_0

    .line 32
    .line 33
    .line 34
    const/16 v6, 0x8

    .line 35
    .line 36
    new-array v7, v6, [B

    .line 37
    .line 38
    fill-array-data v7, :array_1

    .line 39
    .line 40
    .line 41
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    iput-boolean v5, v2, Lf1/e;->n:Z

    .line 53
    .line 54
    iput-object v1, v2, Lf1/e;->m:Lorg/json/JSONObject;

    .line 55
    .line 56
    const/16 v7, 0x9

    .line 57
    .line 58
    new-array v7, v7, [B

    .line 59
    .line 60
    fill-array-data v7, :array_2

    .line 61
    .line 62
    .line 63
    new-array v8, v6, [B

    .line 64
    .line 65
    fill-array-data v8, :array_3

    .line 66
    .line 67
    .line 68
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-virtual {v2, v7}, Lf1/e;->Q(Z)V

    .line 77
    .line 78
    .line 79
    const/4 v7, 0x5

    .line 80
    new-array v8, v7, [B

    .line 81
    .line 82
    fill-array-data v8, :array_4

    .line 83
    .line 84
    .line 85
    new-array v9, v6, [B

    .line 86
    .line 87
    fill-array-data v9, :array_5

    .line 88
    .line 89
    .line 90
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    new-array v7, v7, [B

    .line 95
    .line 96
    fill-array-data v7, :array_6

    .line 97
    .line 98
    .line 99
    new-array v9, v6, [B

    .line 100
    .line 101
    fill-array-data v9, :array_7

    .line 102
    .line 103
    .line 104
    invoke-static {v7, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    invoke-virtual {v2, v8, v7}, Lf1/e;->P(Ljava/lang/String;Z)V

    .line 113
    .line 114
    .line 115
    const/4 v7, 0x2

    .line 116
    new-array v8, v7, [B

    .line 117
    .line 118
    fill-array-data v8, :array_8

    .line 119
    .line 120
    .line 121
    new-array v9, v6, [B

    .line 122
    .line 123
    fill-array-data v9, :array_9

    .line 124
    .line 125
    .line 126
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    new-array v9, v7, [B

    .line 131
    .line 132
    fill-array-data v9, :array_a

    .line 133
    .line 134
    .line 135
    new-array v10, v6, [B

    .line 136
    .line 137
    fill-array-data v10, :array_b

    .line 138
    .line 139
    .line 140
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    invoke-virtual {v2, v8, v9}, Lf1/e;->P(Ljava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    const/4 v8, 0x4

    .line 152
    new-array v9, v8, [B

    .line 153
    .line 154
    fill-array-data v9, :array_c

    .line 155
    .line 156
    .line 157
    new-array v10, v6, [B

    .line 158
    .line 159
    fill-array-data v10, :array_d

    .line 160
    .line 161
    .line 162
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    new-array v10, v8, [B

    .line 167
    .line 168
    fill-array-data v10, :array_e

    .line 169
    .line 170
    .line 171
    new-array v11, v6, [B

    .line 172
    .line 173
    fill-array-data v11, :array_f

    .line 174
    .line 175
    .line 176
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    invoke-virtual {v2, v9, v10}, Lf1/e;->P(Ljava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    new-array v9, v8, [B

    .line 188
    .line 189
    fill-array-data v9, :array_10

    .line 190
    .line 191
    .line 192
    new-array v10, v6, [B

    .line 193
    .line 194
    fill-array-data v10, :array_11

    .line 195
    .line 196
    .line 197
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    new-array v8, v8, [B

    .line 202
    .line 203
    fill-array-data v8, :array_12

    .line 204
    .line 205
    .line 206
    new-array v10, v6, [B

    .line 207
    .line 208
    fill-array-data v10, :array_13

    .line 209
    .line 210
    .line 211
    invoke-static {v8, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    invoke-virtual {v2, v9, v8}, Lf1/e;->P(Ljava/lang/String;Z)V

    .line 220
    .line 221
    .line 222
    const/16 v8, 0xd

    .line 223
    .line 224
    new-array v8, v8, [B

    .line 225
    .line 226
    fill-array-data v8, :array_14

    .line 227
    .line 228
    .line 229
    new-array v9, v6, [B

    .line 230
    .line 231
    fill-array-data v9, :array_15

    .line 232
    .line 233
    .line 234
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    const/16 v9, 0xd

    .line 239
    .line 240
    new-array v9, v9, [B

    .line 241
    .line 242
    fill-array-data v9, :array_16

    .line 243
    .line 244
    .line 245
    new-array v10, v6, [B

    .line 246
    .line 247
    fill-array-data v10, :array_17

    .line 248
    .line 249
    .line 250
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    invoke-virtual {v2, v8, v9}, Lf1/e;->P(Ljava/lang/String;Z)V

    .line 259
    .line 260
    .line 261
    const/16 v8, 0xc

    .line 262
    .line 263
    new-array v9, v8, [B

    .line 264
    .line 265
    fill-array-data v9, :array_18

    .line 266
    .line 267
    .line 268
    new-array v10, v6, [B

    .line 269
    .line 270
    fill-array-data v10, :array_19

    .line 271
    .line 272
    .line 273
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    new-array v8, v8, [B

    .line 278
    .line 279
    fill-array-data v8, :array_1a

    .line 280
    .line 281
    .line 282
    new-array v10, v6, [B

    .line 283
    .line 284
    fill-array-data v10, :array_1b

    .line 285
    .line 286
    .line 287
    invoke-static {v8, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    invoke-virtual {v2, v9, v8}, Lf1/e;->P(Ljava/lang/String;Z)V

    .line 296
    .line 297
    .line 298
    const/16 v8, 0xb

    .line 299
    .line 300
    new-array v8, v8, [B

    .line 301
    .line 302
    fill-array-data v8, :array_1c

    .line 303
    .line 304
    .line 305
    new-array v9, v6, [B

    .line 306
    .line 307
    fill-array-data v9, :array_1d

    .line 308
    .line 309
    .line 310
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    const/16 v9, 0xb

    .line 315
    .line 316
    new-array v9, v9, [B

    .line 317
    .line 318
    fill-array-data v9, :array_1e

    .line 319
    .line 320
    .line 321
    new-array v10, v6, [B

    .line 322
    .line 323
    fill-array-data v10, :array_1f

    .line 324
    .line 325
    .line 326
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v9

    .line 334
    invoke-virtual {v2, v8, v9}, Lf1/e;->P(Ljava/lang/String;Z)V

    .line 335
    .line 336
    .line 337
    const/16 v8, 0xe

    .line 338
    .line 339
    new-array v9, v8, [B

    .line 340
    .line 341
    fill-array-data v9, :array_20

    .line 342
    .line 343
    .line 344
    new-array v10, v6, [B

    .line 345
    .line 346
    fill-array-data v10, :array_21

    .line 347
    .line 348
    .line 349
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    new-array v10, v8, [B

    .line 354
    .line 355
    fill-array-data v10, :array_22

    .line 356
    .line 357
    .line 358
    new-array v11, v6, [B

    .line 359
    .line 360
    fill-array-data v11, :array_23

    .line 361
    .line 362
    .line 363
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 368
    .line 369
    .line 370
    move-result v10

    .line 371
    invoke-virtual {v2, v9, v10}, Lf1/e;->P(Ljava/lang/String;Z)V

    .line 372
    .line 373
    .line 374
    const/16 v9, 0x11

    .line 375
    .line 376
    new-array v10, v9, [B

    .line 377
    .line 378
    fill-array-data v10, :array_24

    .line 379
    .line 380
    .line 381
    new-array v11, v6, [B

    .line 382
    .line 383
    fill-array-data v11, :array_25

    .line 384
    .line 385
    .line 386
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v10

    .line 390
    new-array v11, v9, [B

    .line 391
    .line 392
    fill-array-data v11, :array_26

    .line 393
    .line 394
    .line 395
    new-array v12, v6, [B

    .line 396
    .line 397
    fill-array-data v12, :array_27

    .line 398
    .line 399
    .line 400
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v11

    .line 404
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 405
    .line 406
    .line 407
    move-result v11

    .line 408
    invoke-virtual {v2, v10, v11}, Lf1/e;->P(Ljava/lang/String;Z)V

    .line 409
    .line 410
    .line 411
    new-array v10, v9, [B

    .line 412
    .line 413
    fill-array-data v10, :array_28

    .line 414
    .line 415
    .line 416
    new-array v11, v6, [B

    .line 417
    .line 418
    fill-array-data v11, :array_29

    .line 419
    .line 420
    .line 421
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v10

    .line 425
    const-wide/high16 v11, 0x4036000000000000L    # 22.0

    .line 426
    .line 427
    invoke-virtual {v1, v10, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 428
    .line 429
    .line 430
    move-result-wide v13

    .line 431
    double-to-float v10, v13

    .line 432
    invoke-virtual {v2, v5, v10}, Lf1/e;->K(IF)V

    .line 433
    .line 434
    .line 435
    const/16 v10, 0x14

    .line 436
    .line 437
    new-array v10, v10, [B

    .line 438
    .line 439
    fill-array-data v10, :array_2a

    .line 440
    .line 441
    .line 442
    new-array v13, v6, [B

    .line 443
    .line 444
    fill-array-data v13, :array_2b

    .line 445
    .line 446
    .line 447
    invoke-static {v10, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v10

    .line 451
    invoke-virtual {v1, v10, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 452
    .line 453
    .line 454
    move-result-wide v10

    .line 455
    double-to-float v10, v10

    .line 456
    invoke-virtual {v2, v7, v10}, Lf1/e;->K(IF)V

    .line 457
    .line 458
    .line 459
    invoke-static {}, Lf1/e;->B()I

    .line 460
    .line 461
    .line 462
    move-result v7

    .line 463
    invoke-static {}, Lf1/e;->A()I

    .line 464
    .line 465
    .line 466
    move-result v10

    .line 467
    new-array v11, v6, [B

    .line 468
    .line 469
    fill-array-data v11, :array_2c

    .line 470
    .line 471
    .line 472
    new-array v12, v6, [B

    .line 473
    .line 474
    fill-array-data v12, :array_2d

    .line 475
    .line 476
    .line 477
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v11

    .line 481
    invoke-static {}, Lf1/e;->B()I

    .line 482
    .line 483
    .line 484
    move-result v12

    .line 485
    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 486
    .line 487
    .line 488
    move-result v11

    .line 489
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    .line 490
    .line 491
    .line 492
    move-result v10

    .line 493
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    .line 494
    .line 495
    .line 496
    move-result v7

    .line 497
    iget-object v10, v2, Lf1/e;->l:Landroid/widget/SeekBar;

    .line 498
    .line 499
    invoke-static {}, Lf1/e;->B()I

    .line 500
    .line 501
    .line 502
    move-result v11

    .line 503
    sub-int v11, v7, v11

    .line 504
    .line 505
    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 506
    .line 507
    .line 508
    iget-object v10, v2, Lf1/e;->k:Landroid/widget/TextView;

    .line 509
    .line 510
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 511
    .line 512
    new-array v12, v4, [B

    .line 513
    .line 514
    fill-array-data v12, :array_2e

    .line 515
    .line 516
    .line 517
    new-array v13, v6, [B

    .line 518
    .line 519
    fill-array-data v13, :array_2f

    .line 520
    .line 521
    .line 522
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v12

    .line 526
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 527
    .line 528
    .line 529
    move-result-object v7

    .line 530
    invoke-static {}, Lf1/e;->A()I

    .line 531
    .line 532
    .line 533
    move-result v13

    .line 534
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 535
    .line 536
    .line 537
    move-result-object v13

    .line 538
    filled-new-array {v7, v13}, [Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    invoke-static {v11, v12, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v7

    .line 546
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    .line 548
    .line 549
    new-array v4, v4, [B

    .line 550
    .line 551
    fill-array-data v4, :array_30

    .line 552
    .line 553
    .line 554
    new-array v7, v6, [B

    .line 555
    .line 556
    fill-array-data v7, :array_31

    .line 557
    .line 558
    .line 559
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    const/4 v7, -0x1

    .line 564
    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 565
    .line 566
    .line 567
    move-result v4

    .line 568
    iget-object v7, v2, Lf1/e;->e:Ljava/util/HashMap;

    .line 569
    .line 570
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 571
    .line 572
    .line 573
    move-result-object v7

    .line 574
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 575
    .line 576
    .line 577
    move-result-object v7

    .line 578
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 579
    .line 580
    .line 581
    move-result v10

    .line 582
    if-eqz v10, :cond_2

    .line 583
    .line 584
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v10

    .line 588
    check-cast v10, Ljava/util/Map$Entry;

    .line 589
    .line 590
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v11

    .line 594
    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    .line 595
    .line 596
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v10

    .line 600
    check-cast v10, Ljava/lang/Integer;

    .line 601
    .line 602
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 603
    .line 604
    .line 605
    move-result v10

    .line 606
    if-ne v10, v4, :cond_1

    .line 607
    .line 608
    move v10, v5

    .line 609
    goto :goto_1

    .line 610
    :cond_1
    move v10, v3

    .line 611
    :goto_1
    sget v12, Lf1/e;->v:I

    .line 612
    .line 613
    invoke-virtual {v2, v11, v10, v12}, Lf1/e;->S(Lcom/google/android/material/button/MaterialButton;ZI)V

    .line 614
    .line 615
    .line 616
    goto :goto_0

    .line 617
    :cond_2
    new-array v4, v8, [B

    .line 618
    .line 619
    fill-array-data v4, :array_32

    .line 620
    .line 621
    .line 622
    new-array v5, v6, [B

    .line 623
    .line 624
    fill-array-data v5, :array_33

    .line 625
    .line 626
    .line 627
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v4

    .line 631
    sget v5, Lf1/e;->x:I

    .line 632
    .line 633
    invoke-virtual {v2, v1, v4, v5}, Lf1/e;->I(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 634
    .line 635
    .line 636
    new-array v4, v8, [B

    .line 637
    .line 638
    fill-array-data v4, :array_34

    .line 639
    .line 640
    .line 641
    new-array v7, v6, [B

    .line 642
    .line 643
    fill-array-data v7, :array_35

    .line 644
    .line 645
    .line 646
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v4

    .line 650
    sget v7, Lf1/e;->y:I

    .line 651
    .line 652
    invoke-virtual {v2, v1, v4, v7}, Lf1/e;->I(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 653
    .line 654
    .line 655
    new-array v4, v9, [B

    .line 656
    .line 657
    fill-array-data v4, :array_36

    .line 658
    .line 659
    .line 660
    new-array v8, v6, [B

    .line 661
    .line 662
    fill-array-data v8, :array_37

    .line 663
    .line 664
    .line 665
    invoke-static {v4, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v4

    .line 669
    invoke-virtual {v2, v1, v4, v5}, Lf1/e;->I(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 670
    .line 671
    .line 672
    new-array v4, v9, [B

    .line 673
    .line 674
    fill-array-data v4, :array_38

    .line 675
    .line 676
    .line 677
    new-array v5, v6, [B

    .line 678
    .line 679
    fill-array-data v5, :array_39

    .line 680
    .line 681
    .line 682
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v4

    .line 686
    invoke-virtual {v2, v1, v4, v7}, Lf1/e;->I(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 687
    .line 688
    .line 689
    iput-boolean v3, v2, Lf1/e;->n:Z

    .line 690
    .line 691
    goto :goto_2

    .line 692
    :cond_3
    invoke-virtual {v2, v3}, Lf1/e;->Q(Z)V

    .line 693
    .line 694
    .line 695
    :goto_2
    iget-object v1, v2, Lf1/e;->b:Landroid/os/Handler;

    .line 696
    .line 697
    const-wide/16 v2, 0x384

    .line 698
    .line 699
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 700
    .line 701
    .line 702
    :cond_4
    :goto_3
    return-void

    .line 703
    :array_0
    .array-data 1
        -0x60t
        0x51t
        -0x72t
        -0x1bt
        -0x3ft
        -0xbt
        0x2et
    .end array-data

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    :array_1
    .array-data 1
        -0x2dt
        0x24t
        -0x13t
        -0x7at
        -0x5ct
        -0x7at
        0x5dt
        -0x77t
    .end array-data

    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    :array_2
    .array-data 1
        -0x6at
        0x74t
        0xbt
        -0x35t
        -0x15t
        -0x56t
        0x2ct
        -0x33t
        -0x6et
    .end array-data

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    nop

    .line 729
    :array_3
    .array-data 1
        -0x9t
        0x2t
        0x6at
        -0x5et
        -0x79t
        -0x35t
        0x4et
        -0x5ft
    .end array-data

    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    :array_4
    .array-data 1
        0x3ct
        0xat
        -0x10t
        -0x61t
        0x36t
    .end array-data

    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    nop

    .line 745
    :array_5
    .array-data 1
        0x4ct
        0x65t
        -0x79t
        -0x6t
        0x44t
        -0x32t
        0x7ft
        0x11t
    .end array-data

    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :array_6
    .array-data 1
        0x53t
        0x4t
        0x78t
        0x2ft
        0x55t
    .end array-data

    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    nop

    .line 761
    :array_7
    .array-data 1
        0x23t
        0x6bt
        0xft
        0x4at
        0x27t
        0x24t
        -0x10t
        0x42t
    .end array-data

    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    :array_8
    .array-data 1
        0x5ft
        -0x63t
    .end array-data

    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    nop

    .line 775
    :array_9
    .array-data 1
        0x3et
        -0x2t
        -0x38t
        -0x79t
        0x3ct
        -0x40t
        -0x32t
        -0x56t
    .end array-data

    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    :array_a
    .array-data 1
        0x2ft
        -0x2dt
    .end array-data

    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    nop

    .line 789
    :array_b
    .array-data 1
        0x4et
        -0x50t
        -0x67t
        0x34t
        0x6bt
        -0x6at
        0x1at
        0x1ct
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    :array_c
    .array-data 1
        0x4dt
        -0x31t
        -0x15t
        0x48t
    .end array-data

    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    :array_d
    .array-data 1
        0x2ct
        -0x46t
        -0x61t
        0x27t
        0x0t
        0x7at
        0xat
        0xft
    .end array-data

    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    :array_e
    .array-data 1
        -0x7bt
        0x57t
        -0x3at
        -0x70t
    .end array-data

    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    :array_f
    .array-data 1
        -0x1ct
        0x22t
        -0x4et
        -0x1t
        -0x47t
        0x24t
        0x2ft
        0x59t
    .end array-data

    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    :array_10
    .array-data 1
        0x54t
        -0x70t
        0x7bt
        0x60t
    .end array-data

    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    :array_11
    .array-data 1
        0x27t
        -0x17t
        0x15t
        0x3t
        0x3dt
        -0x5ft
        0x4bt
        -0x50t
    .end array-data

    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    :array_12
    .array-data 1
        0x53t
        -0x5ct
        0x61t
        0x1ft
    .end array-data

    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    :array_13
    .array-data 1
        0x20t
        -0x23t
        0xft
        0x7ct
        0x5bt
        -0x39t
        0x53t
        -0x2t
    .end array-data

    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    :array_14
    .array-data 1
        0x1dt
        -0x23t
        -0x7bt
        -0x26t
        -0xat
        0x64t
        -0x51t
        -0x4ft
        0xet
        -0x34t
        -0x71t
        -0x24t
        -0x16t
    .end array-data

    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    nop

    .line 865
    :array_15
    .array-data 1
        0x6ft
        -0x48t
        -0x1at
        -0x4dt
        -0x7ct
        0x7t
        -0x26t
        -0x23t
    .end array-data

    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    :array_16
    .array-data 1
        -0x12t
        0x37t
        0x66t
        0x65t
        0x60t
        -0x24t
        0x2at
        -0x56t
        -0x3t
        0x26t
        0x6ct
        0x63t
        0x7ct
    .end array-data

    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    nop

    .line 885
    :array_17
    .array-data 1
        -0x64t
        0x52t
        0x5t
        0xct
        0x12t
        -0x41t
        0x5ft
        -0x3at
    .end array-data

    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    :array_18
    .array-data 1
        0x51t
        0x6dt
        -0x48t
        0x3t
        -0x40t
        -0x20t
        0x7et
        0xdt
        0x45t
        0x70t
        -0x5ct
        0x19t
    .end array-data

    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    :array_19
    .array-data 1
        0x37t
        0x1ft
        -0x29t
        0x6dt
        -0x4ct
        -0x5ct
        0x1bt
        0x6bt
    .end array-data

    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    :array_1a
    .array-data 1
        0x70t
        0x41t
        -0x6ft
        0x72t
        0x22t
        0x7at
        -0x4et
        0x4ft
        0x64t
        0x5ct
        -0x73t
        0x68t
    .end array-data

    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    :array_1b
    .array-data 1
        0x16t
        0x33t
        -0x2t
        0x1ct
        0x56t
        0x3et
        -0x29t
        0x29t
    .end array-data

    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    :array_1c
    .array-data 1
        -0x3et
        0x4ct
        -0x7ct
        0x13t
        0x7at
        -0x6ft
        0x2ct
        -0x62t
        -0x21t
        0x5at
        -0x6ft
    .end array-data

    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    :array_1d
    .array-data 1
        -0x50t
        0x29t
        -0x1bt
        0x61t
        0x3et
        -0xct
        0x4at
        -0x14t
    .end array-data

    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    :array_1e
    .array-data 1
        0x12t
        0x22t
        -0x9t
        -0x55t
        0xet
        -0x56t
        -0x3ft
        -0x2t
        0xft
        0x34t
        -0x1et
    .end array-data

    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    :array_1f
    .array-data 1
        0x60t
        0x47t
        -0x6at
        -0x27t
        0x4at
        -0x31t
        -0x59t
        -0x74t
    .end array-data

    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    :array_20
    .array-data 1
        0x73t
        -0x37t
        0x55t
        0x50t
        0x52t
        0x5ct
        0x43t
        -0x54t
        0x66t
        -0x38t
        0x72t
        0x5bt
        0x47t
        0x6ft
    .end array-data

    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    nop

    .line 977
    :array_21
    .array-data 1
        0x15t
        -0x45t
        0x3at
        0x3et
        0x26t
        0x1bt
        0x2ft
        -0x33t
    .end array-data

    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    :array_22
    .array-data 1
        0x5at
        -0x32t
        -0xat
        0x3bt
        -0x12t
        0xet
        0x50t
        -0x5dt
        0x4ft
        -0x31t
        -0x2ft
        0x30t
        -0x5t
        0x3dt
    .end array-data

    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    nop

    .line 997
    :array_23
    .array-data 1
        0x3ct
        -0x44t
        -0x67t
        0x55t
        -0x66t
        0x49t
        0x3ct
        -0x3et
    .end array-data

    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    :array_24
    .array-data 1
        0x11t
        -0x14t
        -0x6ft
        0x75t
        0x27t
        -0x51t
        -0x13t
        0x69t
        0x35t
        -0x10t
        -0x6ft
        0x75t
        0x39t
        -0x72t
        -0x1at
        0x6ft
        0x16t
    .end array-data

    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    nop

    .line 1019
    :array_25
    .array-data 1
        0x62t
        -0x68t
        -0xct
        0x10t
        0x55t
        -0x3at
        -0x7dt
        0xet
    .end array-data

    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    :array_26
    .array-data 1
        0x73t
        -0x69t
        0x49t
        -0x2ft
        -0x5dt
        -0x68t
        -0x1at
        -0x1t
        0x57t
        -0x75t
        0x49t
        -0x2ft
        -0x43t
        -0x47t
        -0x13t
        -0x7t
        0x74t
    .end array-data

    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    nop

    .line 1041
    :array_27
    .array-data 1
        0x0t
        -0x1dt
        0x2ct
        -0x4ct
        -0x2ft
        -0xft
        -0x78t
        -0x68t
    .end array-data

    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    :array_28
    .array-data 1
        0x55t
        -0x77t
        -0x3dt
        0x22t
        -0x25t
        -0x35t
        -0x11t
        0x2et
        0x5ct
        -0x75t
        -0x31t
        0x26t
        -0x21t
        -0x33t
        -0x32t
        0x39t
        0x54t
    .end array-data

    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    nop

    .line 1063
    :array_29
    .array-data 1
        0x31t
        -0x5t
        -0x56t
        0x54t
        -0x42t
        -0x47t
        -0x45t
        0x4bt
    .end array-data

    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    :array_2a
    .array-data 1
        0x6et
        -0x7bt
        -0x12t
        -0x20t
        0x6at
        -0x24t
        -0x31t
        -0x4bt
        0x6ct
        -0x50t
        -0x8t
        -0x2t
        0x7ft
        -0x29t
        -0x26t
        -0x4ft
        0x6at
        -0x6ft
        -0x11t
        -0xat
    .end array-data

    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    :array_2b
    .array-data 1
        0x1et
        -0x1ct
        -0x63t
        -0x6dt
        0xft
        -0x4et
        -0x58t
        -0x30t
    .end array-data

    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    :array_2c
    .array-data 1
        -0x24t
        0x3t
        0x64t
        0x51t
        0x1et
        -0x9t
        0x29t
        0x41t
    .end array-data

    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    :array_2d
    .array-data 1
        -0x46t
        0x62t
        0xat
        0x2t
        0x6et
        -0x6et
        0x4ct
        0x25t
    .end array-data

    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    :array_2e
    .array-data 1
        -0x2et
        -0x61t
        -0x2at
        0x28t
        0x15t
        0x60t
        -0x6dt
    .end array-data

    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    :array_2f
    .array-data 1
        -0x9t
        -0x5t
        -0xat
        0x7t
        0x35t
        0x45t
        -0x9t
        0x69t
    .end array-data

    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    :array_30
    .array-data 1
        -0x5at
        -0x56t
        -0x2ft
        -0x4ct
        0x6dt
        0x16t
        0x3ct
    .end array-data

    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    :array_31
    .array-data 1
        -0x39t
        -0x3dt
        -0x5dt
        -0x7t
        0x2t
        0x72t
        0x59t
        0x65t
    .end array-data

    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    :array_32
    .array-data 1
        -0x69t
        -0x2ct
        -0x19t
        -0x34t
        0x5dt
        -0x2at
        -0x6ft
        -0x41t
        -0x6et
        -0x2et
        -0x3at
        -0x21t
        0x59t
        -0x30t
    .end array-data

    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    nop

    .line 1153
    :array_33
    .array-data 1
        -0xdt
        -0x5at
        -0x72t
        -0x46t
        0x38t
        -0x5ct
        -0x3et
        -0x26t
    .end array-data

    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    :array_34
    .array-data 1
        -0x16t
        0x10t
        -0x34t
        -0x5at
        0x48t
        -0x79t
        -0x42t
        0x5t
        -0x11t
        0x16t
        -0xdt
        -0x4bt
        0x43t
        -0x7ft
    .end array-data

    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    nop

    .line 1173
    :array_35
    .array-data 1
        -0x72t
        0x62t
        -0x5bt
        -0x30t
        0x2dt
        -0xbt
        -0x13t
        0x60t
    .end array-data

    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    :array_36
    .array-data 1
        -0x8t
        0x5t
        -0x2at
        0x2dt
        -0x3ft
        -0x2dt
        0x6bt
        0x65t
        -0x6t
        0x37t
        -0x40t
        0x3ft
        -0x30t
        -0xbt
        0x69t
        0x61t
        -0x4t
    .end array-data

    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    nop

    .line 1195
    :array_37
    .array-data 1
        -0x78t
        0x64t
        -0x5bt
        0x5et
        -0x5ct
        -0x43t
        0xct
        0x0t
    .end array-data

    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    :array_38
    .array-data 1
        -0x41t
        -0x4ft
        -0x10t
        -0x7ft
        0x1dt
        0x45t
        0x1at
        -0x40t
        -0x43t
        -0x7dt
        -0x1at
        -0x6dt
        0xct
        0x7dt
        0x18t
        -0x35t
        -0x45t
    .end array-data

    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    nop

    .line 1217
    :array_39
    .array-data 1
        -0x31t
        -0x30t
        -0x7dt
        -0xet
        0x78t
        0x2bt
        0x7dt
        -0x5bt
    .end array-data
.end method

.method private final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Le0/j2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp0/j;

    .line 4
    .line 5
    iget-object v1, p0, Le0/j2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lo7/i4;

    .line 8
    .line 9
    iget-object v2, v0, Lp0/j;->d:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput-boolean v3, v0, Lp0/j;->k:Z

    .line 13
    .line 14
    iput v3, v0, Lp0/j;->j:I

    .line 15
    .line 16
    iget v1, v1, Lo7/i4;->c:I

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/16 v1, 0x64

    .line 21
    .line 22
    invoke-virtual {v0, v1, v1}, Lp0/j;->i(II)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lp0/g;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-direct {v1, v0, v3}, Lp0/g;-><init>(Lp0/j;I)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v3, 0x12c

    .line 32
    .line 33
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v1, v0, Lp0/j;->i:Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const/high16 v3, 0x3f800000    # 1.0f

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lp0/j;->i:Landroid/widget/TextView;

    .line 47
    .line 48
    const/4 v3, 0x3

    .line 49
    new-array v4, v3, [B

    .line 50
    .line 51
    fill-array-data v4, :array_0

    .line 52
    .line 53
    .line 54
    const/16 v5, 0x8

    .line 55
    .line 56
    new-array v6, v5, [B

    .line 57
    .line 58
    fill-array-data v6, :array_1

    .line 59
    .line 60
    .line 61
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    const/16 v1, 0x9

    .line 69
    .line 70
    new-array v1, v1, [B

    .line 71
    .line 72
    fill-array-data v1, :array_2

    .line 73
    .line 74
    .line 75
    new-array v4, v5, [B

    .line 76
    .line 77
    fill-array-data v4, :array_3

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lp0/j;->g(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lp0/g;

    .line 88
    .line 89
    invoke-direct {v1, v0, v3}, Lp0/g;-><init>(Lp0/j;I)V

    .line 90
    .line 91
    .line 92
    const-wide/16 v3, 0x4b0

    .line 93
    .line 94
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void

    .line 98
    nop

    .line 99
    :array_0
    .array-data 1
        0x52t
        0x25t
        -0x38t
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_1
    .array-data 1
        0x17t
        0x77t
        -0x66t
        -0x1at
        -0x13t
        0x18t
        -0x2dt
        0x37t
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_2
    .array-data 1
        0x4at
        0x73t
        -0x51t
        0x74t
        0x59t
        -0x18t
        0x1et
        0x58t
        0x59t
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    nop

    .line 123
    :array_3
    .array-data 1
        0x69t
        0x30t
        -0x14t
        0x36t
        0x69t
        -0x28t
        0x2et
        0x6at
    .end array-data
.end method

.method private final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Le0/j2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ls1/n;

    .line 4
    .line 5
    iget-object v1, p0, Le0/j2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lj0/e;

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v1, v3}, Lj0/c;->j(Lj0/e;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    new-instance v1, Le0/d;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-direct {v1, v0, v2}, Le0/d;-><init>(Ls1/n;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final d()V
    .locals 11

    .line 1
    iget-object v0, p0, Le0/j2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ls1/x;

    .line 4
    .line 5
    iget-object v1, p0, Le0/j2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lq0/f;

    .line 8
    .line 9
    const/16 v2, 0x18

    .line 10
    .line 11
    new-array v2, v2, [B

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    new-array v4, v3, [B

    .line 19
    .line 20
    fill-array-data v4, :array_1

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    const/16 v2, 0xe

    .line 27
    .line 28
    const/4 v4, 0x4

    .line 29
    const/4 v5, 0x0

    .line 30
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v7, 0x1d

    .line 33
    .line 34
    if-lt v6, v7, :cond_4

    .line 35
    .line 36
    const/4 v6, 0x2

    .line 37
    new-array v6, v6, [B

    .line 38
    .line 39
    fill-array-data v6, :array_2

    .line 40
    .line 41
    .line 42
    new-array v7, v3, [B

    .line 43
    .line 44
    fill-array-data v7, :array_3

    .line 45
    .line 46
    .line 47
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    new-array v7, v4, [B

    .line 52
    .line 53
    fill-array-data v7, :array_4

    .line 54
    .line 55
    .line 56
    new-array v8, v3, [B

    .line 57
    .line 58
    fill-array-data v8, :array_5

    .line 59
    .line 60
    .line 61
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v0, v7}, Ls1/x;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_3

    .line 74
    .line 75
    iget-object v6, v0, Ls1/x;->a:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v6}, Lcom/bumptech/glide/d;->n(Landroid/content/Context;)Ld1/a;

    .line 78
    .line 79
    .line 80
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    const/4 v7, 0x5

    .line 82
    :try_start_1
    new-array v7, v7, [B

    .line 83
    .line 84
    fill-array-data v7, :array_6

    .line 85
    .line 86
    .line 87
    new-array v8, v3, [B

    .line 88
    .line 89
    fill-array-data v8, :array_7

    .line 90
    .line 91
    .line 92
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v6, v7}, Ld1/a;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    new-array v8, v4, [B

    .line 105
    .line 106
    fill-array-data v8, :array_8

    .line 107
    .line 108
    .line 109
    new-array v9, v3, [B

    .line 110
    .line 111
    fill-array-data v9, :array_9

    .line 112
    .line 113
    .line 114
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_2

    .line 123
    .line 124
    iget-object v7, v0, Ls1/x;->a:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v7}, Ls1/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    new-instance v8, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const/16 v9, 0xa

    .line 142
    .line 143
    new-array v9, v9, [B

    .line 144
    .line 145
    fill-array-data v9, :array_a

    .line 146
    .line 147
    .line 148
    new-array v10, v3, [B

    .line 149
    .line 150
    fill-array-data v10, :array_b

    .line 151
    .line 152
    .line 153
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const/16 v7, 0x4b

    .line 164
    .line 165
    new-array v7, v7, [B

    .line 166
    .line 167
    fill-array-data v7, :array_c

    .line 168
    .line 169
    .line 170
    new-array v9, v3, [B

    .line 171
    .line 172
    fill-array-data v9, :array_d

    .line 173
    .line 174
    .line 175
    invoke-static {v7, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v7, v0, Ls1/x;->b:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v7}, Ls1/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v7, " "

    .line 192
    .line 193
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-object v7, v0, Ls1/x;->a:Landroid/content/Context;

    .line 197
    .line 198
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-static {v7}, Ls1/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const/16 v7, 0x1d

    .line 210
    .line 211
    new-array v7, v7, [B

    .line 212
    .line 213
    fill-array-data v7, :array_e

    .line 214
    .line 215
    .line 216
    new-array v9, v3, [B

    .line 217
    .line 218
    fill-array-data v9, :array_f

    .line 219
    .line 220
    .line 221
    invoke-static {v7, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    invoke-virtual {v6, v7}, Ld1/a;->y(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    .line 234
    .line 235
    :try_start_2
    invoke-virtual {v6}, Ld1/a;->close()V

    .line 236
    .line 237
    .line 238
    move v6, v5

    .line 239
    :goto_0
    const/16 v7, 0xa

    .line 240
    .line 241
    if-ge v6, v7, :cond_1

    .line 242
    .line 243
    const/4 v7, 0x2

    .line 244
    new-array v7, v7, [B

    .line 245
    .line 246
    fill-array-data v7, :array_10

    .line 247
    .line 248
    .line 249
    new-array v8, v3, [B

    .line 250
    .line 251
    fill-array-data v8, :array_11

    .line 252
    .line 253
    .line 254
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    new-array v8, v4, [B

    .line 259
    .line 260
    fill-array-data v8, :array_12

    .line 261
    .line 262
    .line 263
    new-array v9, v3, [B

    .line 264
    .line 265
    fill-array-data v9, :array_13

    .line 266
    .line 267
    .line 268
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    invoke-virtual {v0, v8}, Ls1/x;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-eqz v7, :cond_0

    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_0
    const-wide/16 v7, 0x96

    .line 284
    .line 285
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 286
    .line 287
    .line 288
    add-int/lit8 v6, v6, 0x1

    .line 289
    .line 290
    goto :goto_0

    .line 291
    :catch_0
    move-exception v6

    .line 292
    goto :goto_3

    .line 293
    :cond_1
    new-instance v6, Ljava/io/IOException;

    .line 294
    .line 295
    const/16 v7, 0x40

    .line 296
    .line 297
    new-array v7, v7, [B

    .line 298
    .line 299
    fill-array-data v7, :array_14

    .line 300
    .line 301
    .line 302
    new-array v8, v3, [B

    .line 303
    .line 304
    fill-array-data v8, :array_15

    .line 305
    .line 306
    .line 307
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 315
    :catchall_0
    move-exception v7

    .line 316
    goto :goto_1

    .line 317
    :cond_2
    :try_start_3
    new-instance v7, Ljava/io/IOException;

    .line 318
    .line 319
    const/16 v8, 0x1e

    .line 320
    .line 321
    new-array v8, v8, [B

    .line 322
    .line 323
    fill-array-data v8, :array_16

    .line 324
    .line 325
    .line 326
    new-array v9, v3, [B

    .line 327
    .line 328
    fill-array-data v9, :array_17

    .line 329
    .line 330
    .line 331
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v8

    .line 335
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ld1/a;->close()V

    .line 340
    .line 341
    .line 342
    throw v7

    .line 343
    :cond_3
    :goto_2
    const/4 v6, 0x1

    .line 344
    iput-boolean v6, v0, Ls1/x;->f:Z

    .line 345
    .line 346
    new-array v6, v2, [B

    .line 347
    .line 348
    fill-array-data v6, :array_18

    .line 349
    .line 350
    .line 351
    new-array v7, v3, [B

    .line 352
    .line 353
    fill-array-data v7, :array_19

    .line 354
    .line 355
    .line 356
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    goto :goto_4

    .line 361
    :cond_4
    new-instance v6, Ljava/io/IOException;

    .line 362
    .line 363
    const/16 v7, 0x34

    .line 364
    .line 365
    new-array v7, v7, [B

    .line 366
    .line 367
    fill-array-data v7, :array_1a

    .line 368
    .line 369
    .line 370
    new-array v8, v3, [B

    .line 371
    .line 372
    fill-array-data v8, :array_1b

    .line 373
    .line 374
    .line 375
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 383
    :goto_3
    iput-boolean v5, v0, Ls1/x;->f:Z

    .line 384
    .line 385
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    :goto_4
    monitor-enter v0

    .line 390
    :try_start_5
    iput-boolean v5, v0, Ls1/x;->g:Z

    .line 391
    .line 392
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 393
    iget-boolean v7, v0, Ls1/x;->f:Z

    .line 394
    .line 395
    const/16 v8, 0x11

    .line 396
    .line 397
    new-array v8, v8, [B

    .line 398
    .line 399
    fill-array-data v8, :array_1c

    .line 400
    .line 401
    .line 402
    new-array v9, v3, [B

    .line 403
    .line 404
    fill-array-data v9, :array_1d

    .line 405
    .line 406
    .line 407
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    new-instance v9, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .line 415
    .line 416
    new-array v2, v2, [B

    .line 417
    .line 418
    fill-array-data v2, :array_1e

    .line 419
    .line 420
    .line 421
    new-array v10, v3, [B

    .line 422
    .line 423
    fill-array-data v10, :array_1f

    .line 424
    .line 425
    .line 426
    invoke-static {v2, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const/4 v2, 0x2

    .line 437
    new-array v2, v2, [B

    .line 438
    .line 439
    fill-array-data v2, :array_20

    .line 440
    .line 441
    .line 442
    new-array v10, v3, [B

    .line 443
    .line 444
    fill-array-data v10, :array_21

    .line 445
    .line 446
    .line 447
    invoke-static {v2, v10, v9, v6}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    const/4 v2, 0x1

    .line 451
    new-array v2, v2, [B

    .line 452
    .line 453
    const/16 v10, -0x25

    .line 454
    .line 455
    aput-byte v10, v2, v5

    .line 456
    .line 457
    new-array v3, v3, [B

    .line 458
    .line 459
    fill-array-data v3, :array_22

    .line 460
    .line 461
    .line 462
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    iget-object v0, v0, Ls1/x;->c:Landroid/os/Handler;

    .line 477
    .line 478
    new-instance v2, Le0/e2;

    .line 479
    .line 480
    invoke-direct {v2, v1, v7, v6, v4}, Le0/e2;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    .line 485
    .line 486
    return-void

    .line 487
    :catchall_1
    move-exception v1

    .line 488
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 489
    throw v1

    .line 490
    nop

    .line 491
    :array_0
    .array-data 1
        -0x6at
        -0x12t
        0x18t
        -0x76t
        -0x35t
        0x51t
        -0x45t
        0x0t
        0x7t
        0x1et
        -0x76t
        0x14t
        -0x36t
        0x6dt
        -0x46t
        0x37t
        0x6t
        0x29t
        -0x76t
        0x15t
        -0x35t
        0x59t
        -0x45t
        0x8t
    .end array-data

    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    :array_1
    .array-data 1
        -0x29t
        -0x56t
        0x5at
        -0x56t
        0x1bt
        -0x14t
        0x6bt
        -0x4bt
    .end array-data

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    :array_2
    .array-data 1
        0x70t
        0x4bt
    .end array-data

    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    nop

    .line 521
    :array_3
    .array-data 1
        0x3ft
        0x0t
        0x21t
        0xft
        0x6at
        -0x50t
        -0x40t
        -0x6at
    .end array-data

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    :array_4
    .array-data 1
        -0x57t
        0x16t
        0x14t
        0x3ft
    .end array-data

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    :array_5
    .array-data 1
        -0x7t
        0x5ft
        0x5at
        0x78t
        0x77t
        -0xct
        -0x62t
        -0x57t
    .end array-data

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    :array_6
    .array-data 1
        -0x6at
        0x4et
        -0x1at
        0x55t
        -0x38t
    .end array-data

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    nop

    .line 551
    :array_7
    .array-data 1
        -0x1t
        0x2at
        -0x3at
        0x78t
        -0x43t
        0x1at
        0x7t
        0x77t
    .end array-data

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :array_8
    .array-data 1
        -0x2et
        0x0t
        0xat
        0x64t
    .end array-data

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    :array_9
    .array-data 1
        -0x20t
        0x30t
        0x3at
        0x54t
        0x5ft
        -0x22t
        -0x57t
        -0x36t
    .end array-data

    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    :array_a
    .array-data 1
        0x5ct
        -0x1et
        -0xdt
        -0x65t
        -0x66t
        -0x39t
        -0x7at
        -0x3ct
        0x57t
        -0x6dt
    .end array-data

    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    nop

    .line 583
    :array_b
    .array-data 1
        0x1ft
        -0x52t
        -0x4et
        -0x38t
        -0x37t
        -0x69t
        -0x39t
        -0x70t
    .end array-data

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    :array_c
    .array-data 1
        -0x75t
        0x6bt
        0x1bt
        0x3at
        0x62t
        -0xet
        -0x3ct
        -0x21t
        -0x32t
        0x71t
        0x7t
        0x3bt
        0x73t
        -0x5et
        -0x7bt
        -0x24t
        -0x25t
        0x5at
        0x4t
        0x20t
        0x78t
        -0x1ft
        -0x7ft
        -0x21t
        -0x28t
        0x25t
        0x5bt
        0x72t
        0x74t
        -0x13t
        -0x77t
        -0x7et
        -0x32t
        0x7dt
        0x15t
        0x3ft
        0x67t
        -0x12t
        -0x7ft
        -0x7et
        -0x3bt
        0x64t
        0x2t
        0x3bt
        0x64t
        -0xat
        -0x7bt
        -0x22t
        -0x21t
        0x2bt
        0x1ct
        0x3dt
        0x7at
        -0x19t
        -0x36t
        -0x20t
        -0x36t
        0x70t
        0x1at
        0x31t
        0x7ft
        -0x19t
        -0x6at
        -0x5t
        -0x3et
        0x6bt
        0x10t
        0x3dt
        0x60t
        -0x2ft
        -0x74t
        -0x37t
        -0x39t
        0x69t
        0x54t
    .end array-data

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :array_d
    .array-data 1
        -0x55t
        0x5t
        0x74t
        0x52t
        0x17t
        -0x7et
        -0x1ct
        -0x54t
    .end array-data

    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    :array_e
    .array-data 1
        -0x1dt
        -0x76t
        -0xbt
        0x4dt
        -0x3et
        -0x15t
        -0x6ft
        0x33t
        -0x4at
        -0x26t
        -0x4at
        0x9t
        -0x67t
        -0x4et
        -0x26t
        0x38t
        -0x4bt
        -0x67t
        -0x4ct
        0x5ct
        -0x35t
        -0xft
        -0x62t
        0x6ft
        -0x3t
        -0x70t
        -0x15t
        0x9t
        -0x7ft
    .end array-data

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    nop

    .line 661
    :array_f
    .array-data 1
        -0x3dt
        -0x4at
        -0x26t
        0x29t
        -0x59t
        -0x63t
        -0x42t
        0x5dt
    .end array-data

    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    :array_10
    .array-data 1
        -0x5ft
        -0x6dt
    .end array-data

    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    nop

    .line 675
    :array_11
    .array-data 1
        -0x12t
        -0x28t
        -0x73t
        -0x1t
        0x2at
        -0x44t
        -0x41t
        0x20t
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_12
    .array-data 1
        -0x11t
        0x30t
        -0x7et
        0x59t
    .end array-data

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    :array_13
    .array-data 1
        -0x41t
        0x79t
        -0x34t
        0x1et
        0x7dt
        -0x6ct
        0x17t
        -0x55t
    .end array-data

    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    :array_14
    .array-data 1
        0x7dt
        0x62t
        0x46t
        0x68t
        0x3t
        0xft
        -0x5at
        -0x13t
        0x19t
        0x2ft
        0x26t
        0xdt
        -0x68t
        0xet
        -0x65t
        -0x14t
        0x2ct
        0x2et
        0x1at
        -0x3t
        -0xdt
        0x69t
        -0xbt
        -0x73t
        0x7dt
        0x40t
        0x47t
        0x5et
        -0xet
        0x5ft
        -0xct
        -0x41t
        0x7dt
        0x47t
        0x47t
        0x5ft
        -0xet
        0x52t
        0x5t
        -0x13t
        0x12t
        0x2ft
        0x28t
        0xdt
        -0x61t
        0xet
        -0x65t
        -0x14t
        0x24t
        0x2ft
        0x2bt
        0xdt
        -0x65t
        0xet
        -0x61t
        0x1dt
        0x7dt
        0x41t
        0x46t
        0x67t
        -0xdt
        0x60t
        -0xbt
        -0x80t
    .end array-data

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    :array_15
    .array-data 1
        -0x53t
        -0x1t
        -0x6at
        -0x23t
        0x23t
        -0x22t
        0x25t
        0x3dt
    .end array-data

    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    :array_16
    .array-data 1
        -0x4bt
        -0x51t
        -0x49t
        0x4at
        -0x5t
        0x59t
        -0x32t
        -0x22t
        -0x68t
        -0x35t
        0x25t
        -0x29t
        0x58t
        -0x7ct
        0x7bt
        0x6t
        0x24t
        0x55t
        0x24t
        -0x15t
        0x59t
        -0x4dt
        0x7at
        0x31t
        0x24t
        0x54t
        0x25t
        -0x21t
        0x58t
        -0x74t
    .end array-data

    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    nop

    .line 761
    :array_17
    .array-data 1
        -0xct
        -0x15t
        -0xbt
        0x6at
        -0x78t
        0x31t
        -0x55t
        -0x4et
    .end array-data

    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    :array_18
    .array-data 1
        0x60t
        0x74t
        0x74t
        -0x2bt
        0x69t
        0x22t
        -0x70t
        -0x36t
        -0x10t
        -0x4et
        -0x1at
        0x4bt
        0x69t
        0x23t
    .end array-data

    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    nop

    .line 781
    :array_19
    .array-data 1
        0x21t
        0x30t
        0x36t
        -0xbt
        -0x47t
        -0x6ft
        0x40t
        0x74t
    .end array-data

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :array_1a
    .array-data 1
        -0x5ct
        0x4bt
        0x48t
        0x67t
        0x41t
        0x1ft
        0xet
        -0x48t
        0x54t
        0x4t
        0x1at
        0xct
        0x11t
        0x72t
        0x6bt
        -0x28t
        -0x3bt
        0x4t
        0x1bt
        0xct
        0x1ft
        0x73t
        0x5ct
        0x28t
        0x35t
        -0x45t
        -0x4t
        -0x51t
        -0x2t
        -0x35t
        -0x46t
        0x28t
        0x45t
        -0x1bt
        -0x48t
        0xdt
        0x29t
        0x72t
        0x65t
        -0x28t
        -0x34t
        -0xbt
        0x48t
        0x60t
        0x41t
        0x1ct
        0xet
        -0x46t
        -0x5ct
        0x60t
        0x48t
        0x68t
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    :array_1b
    .array-data 1
        0x74t
        -0x2bt
        -0x68t
        -0x23t
        -0x6ft
        -0x5et
        -0x22t
        0x8t
    .end array-data

    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    :array_1c
    .array-data 1
        0x76t
        -0x74t
        -0x18t
        0x65t
        -0x7et
        0x4at
        0x3at
        -0x3t
        0x7bt
        -0x63t
        -0x13t
        0x5ct
        -0x78t
        0x4ct
        0x3bt
        -0x20t
        0x4dt
    .end array-data

    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    nop

    .line 841
    :array_1d
    .array-data 1
        0x3at
        -0x13t
        -0x63t
        0xbt
        -0x1ft
        0x22t
        0x5ft
        -0x71t
    .end array-data

    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    :array_1e
    .array-data 1
        0x4at
        -0x6ft
        -0x76t
        0x38t
        0x44t
        -0x41t
        0x5bt
        -0x3at
        0x60t
        -0x7at
        -0x80t
        0x37t
        0x19t
        -0x6t
    .end array-data

    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    nop

    .line 861
    :array_1f
    .array-data 1
        0x8t
        -0x1dt
        -0x1dt
        0x5ct
        0x23t
        -0x26t
        0x7bt
        -0x5bt
    .end array-data

    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    :array_20
    .array-data 1
        -0x21t
        0x56t
    .end array-data

    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    nop

    .line 875
    :array_21
    .array-data 1
        -0x1t
        0x7et
        0x72t
        -0x35t
        0x66t
        -0xat
        0x48t
        0x3dt
    .end array-data

    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    :array_22
    .array-data 1
        -0xet
        -0x6et
        -0x4t
        0x7ct
        0x1at
        -0x5bt
        -0x11t
        -0x4ft
    .end array-data
.end method

.method private final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Le0/j2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ls1/w;

    .line 4
    .line 5
    iget-object v1, p0, Le0/j2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [B

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    new-array v3, v3, [B

    .line 18
    .line 19
    fill-array-data v3, :array_1

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-interface {v0, v1, v2}, Ls1/w;->b(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 1
        0x40t
        0x52t
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    nop

    .line 41
    :array_1
    .array-data 1
        0xft
        0x19t
        0x49t
        0x10t
        -0x45t
        -0x1ct
        0x53t
        -0x9t
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Le0/j2;->b:I

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/16 v4, 0x12

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x2

    .line 13
    const/16 v8, 0x8

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ls1/q0;

    .line 21
    .line 22
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Landroid/graphics/Bitmap;

    .line 25
    .line 26
    iget-boolean v3, v0, Ls1/q0;->E:Z

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    iget-object v0, v0, Ls1/q0;->c:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Ls1/x;

    .line 39
    .line 40
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ls1/x;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_1
    invoke-direct {v1}, Le0/j2;->e()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_2
    invoke-direct {v1}, Le0/j2;->d()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_3
    invoke-direct {v1}, Le0/j2;->c()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_4
    invoke-direct {v1}, Le0/j2;->b()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_5
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Lf5/f;

    .line 67
    .line 68
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v2, Lm0/b3;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-boolean v3, v2, Lm0/b3;->a:Z

    .line 76
    .line 77
    iget-object v4, v0, Lf5/f;->c:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v4, Lm0/s0;

    .line 80
    .line 81
    iget-object v0, v0, Lf5/f;->d:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lp0/a;

    .line 84
    .line 85
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_4

    .line 90
    .line 91
    invoke-static {v0}, Lp0/b;->e(Lp0/a;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    if-nez v3, :cond_2

    .line 99
    .line 100
    iget-object v0, v2, Lm0/b3;->b:Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    :cond_2
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v3, :cond_3

    .line 109
    .line 110
    const v2, 0x7f1301f7

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    const v2, 0x7f1301f6

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v0, v2}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    :goto_1
    return-void

    .line 125
    :pswitch_6
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v0, Lorg/apache/commons/io/input/ReadAheadInputStream;

    .line 128
    .line 129
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v2, [B

    .line 132
    .line 133
    invoke-static {v0, v2}, Lorg/apache/commons/io/input/ReadAheadInputStream;->b(Lorg/apache/commons/io/input/ReadAheadInputStream;[B)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_7
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v0, Lm0/c3;

    .line 140
    .line 141
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v2, Ljava/lang/Runnable;

    .line 144
    .line 145
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 152
    .line 153
    .line 154
    :cond_5
    return-void

    .line 155
    :pswitch_8
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, Lm0/n1;

    .line 158
    .line 159
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v2, Ljava/lang/String;

    .line 162
    .line 163
    iget-object v0, v0, Lm0/n1;->d:Lt1/h;

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Lt1/h;->seteditTextMessadge(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_9
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v0, Lm0/l1;

    .line 172
    .line 173
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v2, Ljava/lang/String;

    .line 176
    .line 177
    iget-object v0, v0, Lm0/l1;->c:Landroid/webkit/WebView;

    .line 178
    .line 179
    if-eqz v0, :cond_6

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 183
    .line 184
    .line 185
    :cond_6
    return-void

    .line 186
    :pswitch_a
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Lm0/i1;

    .line 189
    .line 190
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v2, Ljava/util/ArrayList;

    .line 193
    .line 194
    iget-object v3, v0, Lm0/i1;->e:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    .line 201
    .line 202
    iget-object v2, v0, Lm0/i1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 203
    .line 204
    new-instance v4, Lm0/g1;

    .line 205
    .line 206
    new-instance v5, Landroidx/fragment/app/h;

    .line 207
    .line 208
    const/16 v6, 0x15

    .line 209
    .line 210
    invoke-direct {v5, v6, v0}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-direct {v4, v0, v3, v5}, Lm0/g1;-><init>(Lm0/i1;Ljava/util/ArrayList;Landroidx/fragment/app/h;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :pswitch_b
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v0, Lm0/o0;

    .line 223
    .line 224
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v2, Ljava/lang/String;

    .line 227
    .line 228
    iget-object v0, v0, Lm0/o0;->b:Landroid/webkit/WebView;

    .line 229
    .line 230
    if-eqz v0, :cond_7

    .line 231
    .line 232
    const/4 v3, 0x0

    .line 233
    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 234
    .line 235
    .line 236
    :cond_7
    return-void

    .line 237
    :pswitch_c
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v0, Lm0/v;

    .line 240
    .line 241
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v2, Ljava/util/ArrayList;

    .line 244
    .line 245
    sget-object v3, Lm0/v;->h:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-nez v3, :cond_8

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_8
    invoke-virtual {v0, v2}, Lm0/v;->D(Ljava/util/ArrayList;)V

    .line 255
    .line 256
    .line 257
    :goto_2
    return-void

    .line 258
    :pswitch_d
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v0, Ll0/a;

    .line 261
    .line 262
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v2, Landroid/view/View;

    .line 265
    .line 266
    sget-object v3, Ll0/a;->d:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-eqz v3, :cond_9

    .line 273
    .line 274
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    div-int/2addr v3, v7

    .line 279
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    div-int/2addr v4, v7

    .line 284
    int-to-double v7, v3

    .line 285
    int-to-double v9, v4

    .line 286
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    .line 287
    .line 288
    .line 289
    move-result-wide v7

    .line 290
    double-to-float v5, v7

    .line 291
    const/4 v7, 0x0

    .line 292
    invoke-static {v2, v3, v4, v7, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    const-wide/16 v4, 0x2bc

    .line 300
    .line 301
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 302
    .line 303
    .line 304
    new-instance v2, Le3/c;

    .line 305
    .line 306
    const/4 v4, 0x4

    .line 307
    invoke-direct {v2, v4, v0}, Le3/c;-><init>(ILjava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 314
    .line 315
    .line 316
    :cond_9
    return-void

    .line 317
    :pswitch_e
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v0, Lcom/woha/pogoda/WeatherService;

    .line 320
    .line 321
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v2, Ljava/lang/Boolean;

    .line 324
    .line 325
    iget-object v0, v0, Lcom/woha/pogoda/WeatherService;->b:Lk7/e;

    .line 326
    .line 327
    invoke-virtual {v0, v2}, Lk7/e;->setLoad(Ljava/lang/Boolean;)V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :pswitch_f
    iget-object v0, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v0, Ljava/lang/String;

    .line 334
    .line 335
    iget-object v2, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v2, Landroidx/fragment/app/h;

    .line 338
    .line 339
    invoke-static {v5}, Lcom/woha/pogoda/WeatherService;->h(Z)V

    .line 340
    .line 341
    .line 342
    invoke-static {}, Lcom/woha/pogoda/WeatherService;->a()Lk7/c;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-interface {v3, v0}, Lk7/c;->e(Ljava/lang/String;)Lk7/b;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    if-eqz v0, :cond_a

    .line 351
    .line 352
    invoke-static {v0}, Lcom/woha/pogoda/WeatherService;->g(Lk7/b;)V

    .line 353
    .line 354
    .line 355
    :cond_a
    if-eqz v2, :cond_c

    .line 356
    .line 357
    iget-object v2, v2, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v2, Lb1/l;

    .line 360
    .line 361
    iget-object v2, v2, Lb1/l;->c:Lb1/s;

    .line 362
    .line 363
    if-eqz v0, :cond_b

    .line 364
    .line 365
    const/4 v3, 0x7

    .line 366
    new-array v3, v3, [B

    .line 367
    .line 368
    fill-array-data v3, :array_0

    .line 369
    .line 370
    .line 371
    new-array v4, v8, [B

    .line 372
    .line 373
    fill-array-data v4, :array_1

    .line 374
    .line 375
    .line 376
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    invoke-static {v0}, Lb1/l;->N(Lk7/b;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-interface {v2, v3, v0}, Lb1/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    goto :goto_3

    .line 388
    :cond_b
    const/4 v0, 0x7

    .line 389
    new-array v0, v0, [B

    .line 390
    .line 391
    fill-array-data v0, :array_2

    .line 392
    .line 393
    .line 394
    new-array v3, v8, [B

    .line 395
    .line 396
    fill-array-data v3, :array_3

    .line 397
    .line 398
    .line 399
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    const/16 v3, 0xb

    .line 404
    .line 405
    new-array v3, v3, [B

    .line 406
    .line 407
    fill-array-data v3, :array_4

    .line 408
    .line 409
    .line 410
    new-array v4, v8, [B

    .line 411
    .line 412
    fill-array-data v4, :array_5

    .line 413
    .line 414
    .line 415
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-static {v3}, Lb1/l;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-interface {v2, v0, v3}, Lb1/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    :cond_c
    :goto_3
    invoke-static {v6}, Lcom/woha/pogoda/WeatherService;->h(Z)V

    .line 427
    .line 428
    .line 429
    return-void

    .line 430
    :pswitch_10
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v0, Landroid/content/Context;

    .line 433
    .line 434
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v2, Ljava/lang/CharSequence;

    .line 437
    .line 438
    :try_start_0
    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .line 444
    .line 445
    :catch_0
    return-void

    .line 446
    :pswitch_11
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 449
    .line 450
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast v2, Landroid/app/job/JobParameters;

    .line 453
    .line 454
    sget v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->b:I

    .line 455
    .line 456
    invoke-virtual {v0, v2, v6}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 457
    .line 458
    .line 459
    return-void

    .line 460
    :pswitch_12
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast v0, Lj0/c;

    .line 463
    .line 464
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v2, Lj0/e;

    .line 467
    .line 468
    const/4 v3, 0x0

    .line 469
    invoke-virtual {v0, v2, v3}, Lj0/c;->j(Lj0/e;Ljava/lang/Integer;)V

    .line 470
    .line 471
    .line 472
    return-void

    .line 473
    :pswitch_13
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 474
    .line 475
    check-cast v0, Lcom/woha/atir/RadarActivity;

    .line 476
    .line 477
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v2, Li7/n;

    .line 480
    .line 481
    iget-object v3, v0, Lcom/woha/atir/RadarActivity;->b:Lcom/woha/atir/RadarView;

    .line 482
    .line 483
    iget-object v4, v2, Li7/n;->a:Landroid/location/Location;

    .line 484
    .line 485
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    .line 486
    .line 487
    .line 488
    move-result-wide v4

    .line 489
    iget-object v6, v2, Li7/n;->a:Landroid/location/Location;

    .line 490
    .line 491
    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    .line 492
    .line 493
    .line 494
    move-result-wide v6

    .line 495
    iput-wide v4, v3, Lcom/woha/atir/RadarView;->j:D

    .line 496
    .line 497
    iput-wide v6, v3, Lcom/woha/atir/RadarView;->k:D

    .line 498
    .line 499
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 500
    .line 501
    .line 502
    iget-object v3, v0, Lcom/woha/atir/RadarActivity;->b:Lcom/woha/atir/RadarView;

    .line 503
    .line 504
    iget v4, v2, Li7/n;->b:F

    .line 505
    .line 506
    invoke-virtual {v3, v4}, Lcom/woha/atir/RadarView;->setCarDirection(F)V

    .line 507
    .line 508
    .line 509
    iget-object v3, v0, Lcom/woha/atir/RadarActivity;->b:Lcom/woha/atir/RadarView;

    .line 510
    .line 511
    iget-wide v4, v2, Li7/n;->d:D

    .line 512
    .line 513
    invoke-virtual {v3, v4, v5}, Lcom/woha/atir/RadarView;->setRadarRadius(D)V

    .line 514
    .line 515
    .line 516
    iget-object v0, v0, Lcom/woha/atir/RadarActivity;->b:Lcom/woha/atir/RadarView;

    .line 517
    .line 518
    iget-object v2, v2, Li7/n;->c:Ljava/util/List;

    .line 519
    .line 520
    invoke-virtual {v0, v2}, Lcom/woha/atir/RadarView;->setCameras(Ljava/util/List;)V

    .line 521
    .line 522
    .line 523
    return-void

    .line 524
    :pswitch_14
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v0, Lf5/a;

    .line 527
    .line 528
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v2, Ld5/i;

    .line 531
    .line 532
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    const-string v3, "Updating active experiment: "

    .line 536
    .line 537
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/y;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    invoke-static {v3}, Le3/d;->m(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    iget-object v0, v0, Lf5/a;->a:Lp4/c;

    .line 549
    .line 550
    new-instance v3, Lp4/b;

    .line 551
    .line 552
    invoke-virtual {v2}, Ld5/i;->o()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v4

    .line 556
    invoke-virtual {v2}, Ld5/i;->t()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    invoke-virtual {v2}, Ld5/i;->r()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    new-instance v7, Ljava/util/Date;

    .line 565
    .line 566
    invoke-virtual {v2}, Ld5/i;->p()J

    .line 567
    .line 568
    .line 569
    move-result-wide v8

    .line 570
    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v2}, Ld5/i;->s()J

    .line 574
    .line 575
    .line 576
    move-result-wide v8

    .line 577
    invoke-virtual {v2}, Ld5/i;->q()J

    .line 578
    .line 579
    .line 580
    move-result-wide v10

    .line 581
    invoke-direct/range {v3 .. v11}, Lp4/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0, v3}, Lp4/c;->a(Lp4/b;)V
    :try_end_1
    .catch Lp4/a; {:try_start_1 .. :try_end_1} :catch_1

    .line 585
    .line 586
    .line 587
    goto :goto_4

    .line 588
    :catch_1
    move-exception v0

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    const-string v3, "Unable to set experiment as active with ABT, missing analytics?\n"

    .line 592
    .line 593
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    const-string v2, "FIAM.Headless"

    .line 608
    .line 609
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .line 611
    .line 612
    :goto_4
    return-void

    .line 613
    :pswitch_15
    invoke-direct {v1}, Le0/j2;->a()V

    .line 614
    .line 615
    .line 616
    return-void

    .line 617
    :pswitch_16
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 618
    .line 619
    check-cast v0, Lcom/example/navistart/punto;

    .line 620
    .line 621
    iget-object v4, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 622
    .line 623
    check-cast v4, Le0/s3;

    .line 624
    .line 625
    sget-object v5, Lcom/example/navistart/punto;->r:Ljava/lang/String;

    .line 626
    .line 627
    new-instance v5, Lorg/json/JSONObject;

    .line 628
    .line 629
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 630
    .line 631
    .line 632
    :try_start_2
    new-array v9, v7, [B

    .line 633
    .line 634
    fill-array-data v9, :array_6

    .line 635
    .line 636
    .line 637
    new-array v10, v8, [B

    .line 638
    .line 639
    fill-array-data v10, :array_7

    .line 640
    .line 641
    .line 642
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    iget-object v10, v4, Le0/s3;->c:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast v10, Ljava/lang/String;

    .line 649
    .line 650
    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 651
    .line 652
    .line 653
    new-array v9, v7, [B

    .line 654
    .line 655
    fill-array-data v9, :array_8

    .line 656
    .line 657
    .line 658
    new-array v10, v8, [B

    .line 659
    .line 660
    fill-array-data v10, :array_9

    .line 661
    .line 662
    .line 663
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v9

    .line 667
    iget-object v10, v4, Le0/s3;->d:Ljava/lang/Object;

    .line 668
    .line 669
    check-cast v10, Ljava/lang/String;

    .line 670
    .line 671
    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    .line 673
    .line 674
    new-array v9, v7, [B

    .line 675
    .line 676
    fill-array-data v9, :array_a

    .line 677
    .line 678
    .line 679
    new-array v10, v8, [B

    .line 680
    .line 681
    fill-array-data v10, :array_b

    .line 682
    .line 683
    .line 684
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v9

    .line 688
    iget-object v10, v4, Le0/s3;->e:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast v10, Ljava/lang/String;

    .line 691
    .line 692
    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    .line 694
    .line 695
    new-array v9, v7, [B

    .line 696
    .line 697
    fill-array-data v9, :array_c

    .line 698
    .line 699
    .line 700
    new-array v10, v8, [B

    .line 701
    .line 702
    fill-array-data v10, :array_d

    .line 703
    .line 704
    .line 705
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v9

    .line 709
    iget-object v10, v4, Le0/s3;->f:Ljava/lang/Object;

    .line 710
    .line 711
    check-cast v10, Ljava/lang/String;

    .line 712
    .line 713
    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 714
    .line 715
    .line 716
    new-array v7, v7, [B

    .line 717
    .line 718
    fill-array-data v7, :array_e

    .line 719
    .line 720
    .line 721
    new-array v9, v8, [B

    .line 722
    .line 723
    fill-array-data v9, :array_f

    .line 724
    .line 725
    .line 726
    invoke-static {v7, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v7

    .line 730
    iget-object v4, v4, Le0/s3;->g:Ljava/lang/Object;

    .line 731
    .line 732
    check-cast v4, Ljava/lang/String;

    .line 733
    .line 734
    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 735
    .line 736
    .line 737
    new-array v4, v3, [B

    .line 738
    .line 739
    fill-array-data v4, :array_10

    .line 740
    .line 741
    .line 742
    new-array v7, v8, [B

    .line 743
    .line 744
    fill-array-data v7, :array_11

    .line 745
    .line 746
    .line 747
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v4

    .line 751
    invoke-static {}, Ly5/k;->i()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v7

    .line 755
    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 756
    .line 757
    .line 758
    new-array v3, v3, [B

    .line 759
    .line 760
    fill-array-data v3, :array_12

    .line 761
    .line 762
    .line 763
    new-array v4, v8, [B

    .line 764
    .line 765
    fill-array-data v4, :array_13

    .line 766
    .line 767
    .line 768
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    sget-object v4, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 773
    .line 774
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 775
    .line 776
    .line 777
    move-result-object v4

    .line 778
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v4

    .line 782
    const-wide/16 v9, 0x0

    .line 783
    .line 784
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 785
    .line 786
    .line 787
    move-result-object v7

    .line 788
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 789
    .line 790
    .line 791
    move-result-object v9

    .line 792
    invoke-virtual {v9, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 793
    .line 794
    .line 795
    move-result-object v6

    .line 796
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 797
    .line 798
    .line 799
    move-result-object v6

    .line 800
    :cond_d
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 801
    .line 802
    .line 803
    move-result v9

    .line 804
    if-eqz v9, :cond_e

    .line 805
    .line 806
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v9

    .line 810
    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 811
    .line 812
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 813
    .line 814
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v10

    .line 818
    if-eqz v10, :cond_d

    .line 819
    .line 820
    iget-wide v9, v9, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 821
    .line 822
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 823
    .line 824
    .line 825
    move-result-object v7

    .line 826
    goto :goto_5

    .line 827
    :cond_e
    invoke-virtual {v5, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 828
    .line 829
    .line 830
    :catch_2
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    const/16 v4, 0x1f

    .line 835
    .line 836
    new-array v4, v4, [B

    .line 837
    .line 838
    fill-array-data v4, :array_14

    .line 839
    .line 840
    .line 841
    new-array v5, v8, [B

    .line 842
    .line 843
    fill-array-data v5, :array_15

    .line 844
    .line 845
    .line 846
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v4

    .line 850
    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 851
    .line 852
    .line 853
    move-result-object v4

    .line 854
    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 855
    .line 856
    .line 857
    move-result-object v3

    .line 858
    new-instance v4, Lokhttp3/Request$Builder;

    .line 859
    .line 860
    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 861
    .line 862
    .line 863
    new-instance v5, Ljava/lang/StringBuilder;

    .line 864
    .line 865
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    .line 867
    .line 868
    new-array v6, v8, [B

    .line 869
    .line 870
    fill-array-data v6, :array_16

    .line 871
    .line 872
    .line 873
    new-array v7, v8, [B

    .line 874
    .line 875
    fill-array-data v7, :array_17

    .line 876
    .line 877
    .line 878
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v6

    .line 882
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    sget-object v6, Lcom/example/navistart/punto;->u:Ljava/lang/String;

    .line 886
    .line 887
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v5

    .line 894
    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 895
    .line 896
    .line 897
    move-result-object v4

    .line 898
    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 899
    .line 900
    .line 901
    move-result-object v3

    .line 902
    new-array v2, v2, [B

    .line 903
    .line 904
    fill-array-data v2, :array_18

    .line 905
    .line 906
    .line 907
    new-array v4, v8, [B

    .line 908
    .line 909
    fill-array-data v4, :array_19

    .line 910
    .line 911
    .line 912
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v2

    .line 916
    const/16 v4, 0x10

    .line 917
    .line 918
    new-array v5, v4, [B

    .line 919
    .line 920
    fill-array-data v5, :array_1a

    .line 921
    .line 922
    .line 923
    new-array v6, v8, [B

    .line 924
    .line 925
    fill-array-data v6, :array_1b

    .line 926
    .line 927
    .line 928
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v5

    .line 932
    invoke-virtual {v3, v2, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 933
    .line 934
    .line 935
    move-result-object v2

    .line 936
    const/4 v3, 0x6

    .line 937
    new-array v3, v3, [B

    .line 938
    .line 939
    fill-array-data v3, :array_1c

    .line 940
    .line 941
    .line 942
    new-array v5, v8, [B

    .line 943
    .line 944
    fill-array-data v5, :array_1d

    .line 945
    .line 946
    .line 947
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v3

    .line 951
    new-array v4, v4, [B

    .line 952
    .line 953
    fill-array-data v4, :array_1e

    .line 954
    .line 955
    .line 956
    new-array v5, v8, [B

    .line 957
    .line 958
    fill-array-data v5, :array_1f

    .line 959
    .line 960
    .line 961
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v4

    .line 965
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 970
    .line 971
    .line 972
    move-result-object v2

    .line 973
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 974
    .line 975
    .line 976
    invoke-static {}, Lh0/b;->m()Lokhttp3/OkHttpClient;

    .line 977
    .line 978
    .line 979
    move-result-object v3

    .line 980
    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    new-instance v3, Lr5/c;

    .line 985
    .line 986
    invoke-direct {v3, v8, v0}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 987
    .line 988
    .line 989
    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 990
    .line 991
    .line 992
    return-void

    .line 993
    :pswitch_17
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 994
    .line 995
    check-cast v0, Le0/y2;

    .line 996
    .line 997
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 998
    .line 999
    check-cast v2, Landroid/content/Context;

    .line 1000
    .line 1001
    invoke-virtual {v0, v2}, Le0/y2;->d(Landroid/content/Context;)V

    .line 1002
    .line 1003
    .line 1004
    return-void

    .line 1005
    :pswitch_18
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 1006
    .line 1007
    check-cast v0, Le0/y2;

    .line 1008
    .line 1009
    iget-object v4, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 1010
    .line 1011
    check-cast v4, Landroidx/appcompat/app/AppCompatActivity;

    .line 1012
    .line 1013
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v9

    .line 1022
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v9

    .line 1026
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    .line 1029
    new-array v5, v5, [B

    .line 1030
    .line 1031
    aput-byte v2, v5, v6

    .line 1032
    .line 1033
    new-array v2, v8, [B

    .line 1034
    .line 1035
    fill-array-data v2, :array_20

    .line 1036
    .line 1037
    .line 1038
    invoke-static {v5, v2, v7}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v2

    .line 1042
    iput-object v2, v0, Le0/y2;->c:Ljava/lang/String;

    .line 1043
    .line 1044
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v5

    .line 1053
    const v7, 0x7f1303f1

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v5

    .line 1060
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v5

    .line 1067
    const v7, 0x7f13013b

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v5

    .line 1074
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v2

    .line 1081
    new-instance v5, La4/g;

    .line 1082
    .line 1083
    const/16 v7, 0x16

    .line 1084
    .line 1085
    invoke-direct {v5, v7, v0}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 1086
    .line 1087
    .line 1088
    new-instance v7, Le0/g2;

    .line 1089
    .line 1090
    invoke-direct {v7}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v9

    .line 1097
    iput-object v2, v7, Le0/g2;->h:Ljava/lang/String;

    .line 1098
    .line 1099
    iput-object v4, v7, Le0/g2;->e:Landroidx/appcompat/app/AppCompatActivity;

    .line 1100
    .line 1101
    iput-object v5, v7, Le0/g2;->g:La4/g;

    .line 1102
    .line 1103
    iput-object v7, v7, Le0/g2;->i:Le0/g2;

    .line 1104
    .line 1105
    new-array v2, v3, [B

    .line 1106
    .line 1107
    fill-array-data v2, :array_21

    .line 1108
    .line 1109
    .line 1110
    new-array v3, v8, [B

    .line 1111
    .line 1112
    fill-array-data v3, :array_22

    .line 1113
    .line 1114
    .line 1115
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v2

    .line 1119
    invoke-virtual {v7, v9, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1120
    .line 1121
    .line 1122
    iput-object v7, v0, Le0/y2;->a:Le0/g2;

    .line 1123
    .line 1124
    sget-boolean v2, Le0/z2;->b:Z

    .line 1125
    .line 1126
    if-eqz v2, :cond_10

    .line 1127
    .line 1128
    iget-object v2, v0, Le0/y2;->d:Ljava/lang/String;

    .line 1129
    .line 1130
    if-eqz v2, :cond_10

    .line 1131
    .line 1132
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v2

    .line 1136
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1137
    .line 1138
    .line 1139
    move-result v2

    .line 1140
    if-nez v2, :cond_10

    .line 1141
    .line 1142
    iput-boolean v6, v0, Le0/y2;->b:Z

    .line 1143
    .line 1144
    iput v6, v0, Le0/y2;->g:I

    .line 1145
    .line 1146
    new-instance v2, Ljava/io/File;

    .line 1147
    .line 1148
    iget-object v3, v0, Le0/y2;->c:Ljava/lang/String;

    .line 1149
    .line 1150
    iget-object v5, v0, Le0/y2;->e:Ljava/lang/String;

    .line 1151
    .line 1152
    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 1156
    .line 1157
    .line 1158
    move-result v3

    .line 1159
    if-eqz v3, :cond_f

    .line 1160
    .line 1161
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1162
    .line 1163
    .line 1164
    :cond_f
    invoke-virtual {v0, v4}, Le0/y2;->d(Landroid/content/Context;)V

    .line 1165
    .line 1166
    .line 1167
    goto :goto_6

    .line 1168
    :cond_10
    invoke-virtual {v0, v4}, Le0/y2;->b(Landroid/content/Context;)V

    .line 1169
    .line 1170
    .line 1171
    :goto_6
    return-void

    .line 1172
    :pswitch_19
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 1173
    .line 1174
    check-cast v0, Lcom/example/navistart/TestSpaceActivity;

    .line 1175
    .line 1176
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 1177
    .line 1178
    check-cast v2, Landroid/text/SpannableStringBuilder;

    .line 1179
    .line 1180
    iget-object v3, v0, Lcom/example/navistart/TestSpaceActivity;->b:Landroid/widget/TextView;

    .line 1181
    .line 1182
    if-eqz v3, :cond_15

    .line 1183
    .line 1184
    :try_start_3
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 1185
    .line 1186
    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1190
    .line 1191
    .line 1192
    move-result v2

    .line 1193
    const-class v7, Landroid/text/style/ForegroundColorSpan;

    .line 1194
    .line 1195
    invoke-virtual {v3, v6, v2, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v2

    .line 1199
    check-cast v2, [Landroid/text/style/ForegroundColorSpan;

    .line 1200
    .line 1201
    array-length v7, v2

    .line 1202
    :goto_7
    if-ge v6, v7, :cond_14

    .line 1203
    .line 1204
    aget-object v9, v2, v6

    .line 1205
    .line 1206
    invoke-virtual {v9}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    .line 1207
    .line 1208
    .line 1209
    move-result v10

    .line 1210
    const/high16 v11, -0x1000000

    .line 1211
    .line 1212
    if-ne v10, v11, :cond_11

    .line 1213
    .line 1214
    const v10, 0x7f050381

    .line 1215
    .line 1216
    .line 1217
    goto :goto_8

    .line 1218
    :cond_11
    const/high16 v11, -0x10000

    .line 1219
    .line 1220
    if-ne v10, v11, :cond_12

    .line 1221
    .line 1222
    const v10, 0x7f050378

    .line 1223
    .line 1224
    .line 1225
    goto :goto_8

    .line 1226
    :cond_12
    const v11, -0xff0100

    .line 1227
    .line 1228
    .line 1229
    if-ne v10, v11, :cond_13

    .line 1230
    .line 1231
    const v10, 0x7f05037e

    .line 1232
    .line 1233
    .line 1234
    :goto_8
    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 1235
    .line 1236
    .line 1237
    move-result v11

    .line 1238
    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 1239
    .line 1240
    .line 1241
    move-result v12

    .line 1242
    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    .line 1243
    .line 1244
    .line 1245
    move-result v13

    .line 1246
    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1247
    .line 1248
    .line 1249
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    .line 1250
    .line 1251
    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    .line 1252
    .line 1253
    .line 1254
    move-result v10

    .line 1255
    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v3, v9, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1259
    .line 1260
    .line 1261
    :cond_13
    add-int/lit8 v6, v6, 0x1

    .line 1262
    .line 1263
    goto :goto_7

    .line 1264
    :cond_14
    iget-object v2, v0, Lcom/example/navistart/TestSpaceActivity;->b:Landroid/widget/TextView;

    .line 1265
    .line 1266
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    .line 1268
    .line 1269
    iget-object v2, v0, Lcom/example/navistart/TestSpaceActivity;->c:Landroid/widget/ScrollView;

    .line 1270
    .line 1271
    if-eqz v2, :cond_15

    .line 1272
    .line 1273
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v2

    .line 1277
    new-array v3, v4, [B

    .line 1278
    .line 1279
    fill-array-data v3, :array_23

    .line 1280
    .line 1281
    .line 1282
    new-array v4, v8, [B

    .line 1283
    .line 1284
    fill-array-data v4, :array_24

    .line 1285
    .line 1286
    .line 1287
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v3

    .line 1291
    invoke-virtual {v2, v3, v5}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 1292
    .line 1293
    .line 1294
    move-result v2

    .line 1295
    if-eqz v2, :cond_15

    .line 1296
    .line 1297
    iget-object v2, v0, Lcom/example/navistart/TestSpaceActivity;->c:Landroid/widget/ScrollView;

    .line 1298
    .line 1299
    new-instance v3, La4/g;

    .line 1300
    .line 1301
    const/16 v4, 0x15

    .line 1302
    .line 1303
    invoke-direct {v3, v4, v0}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1307
    .line 1308
    .line 1309
    :catch_3
    :cond_15
    return-void

    .line 1310
    :pswitch_1a
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 1311
    .line 1312
    check-cast v0, Lcom/example/navistart/SystemMessageReceiver;

    .line 1313
    .line 1314
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 1315
    .line 1316
    check-cast v2, Landroid/content/Context;

    .line 1317
    .line 1318
    sget v3, Lcom/example/navistart/SystemMessageReceiver;->e:I

    .line 1319
    .line 1320
    invoke-static {}, Lcom/example/navistart/MainActivity;->w()Z

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v2

    .line 1327
    invoke-static {v2}, Lcom/example/navistart/MainActivity;->v(Landroid/content/Context;)Z

    .line 1328
    .line 1329
    .line 1330
    iget-object v2, v0, Lcom/example/navistart/SystemMessageReceiver;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1331
    .line 1332
    new-instance v3, La4/g;

    .line 1333
    .line 1334
    const/16 v4, 0x13

    .line 1335
    .line 1336
    invoke-direct {v3, v4, v0}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 1337
    .line 1338
    .line 1339
    const-wide/32 v4, 0x186a0

    .line 1340
    .line 1341
    .line 1342
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1343
    .line 1344
    invoke-interface {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1345
    .line 1346
    .line 1347
    return-void

    .line 1348
    :pswitch_1b
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 1349
    .line 1350
    move-object v2, v0

    .line 1351
    check-cast v2, Lcom/example/navistart/ProgressActivity;

    .line 1352
    .line 1353
    iget-object v0, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 1354
    .line 1355
    move-object v3, v0

    .line 1356
    check-cast v3, Ljava/lang/String;

    .line 1357
    .line 1358
    sget-object v0, Lcom/example/navistart/ProgressActivity;->e:Ljava/lang/String;

    .line 1359
    .line 1360
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v0

    .line 1364
    const-string v7, ""

    .line 1365
    .line 1366
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1367
    .line 1368
    .line 1369
    move-result v7

    .line 1370
    const/4 v9, -0x1

    .line 1371
    if-nez v7, :cond_16

    .line 1372
    .line 1373
    if-eqz v0, :cond_16

    .line 1374
    .line 1375
    new-instance v7, Ljava/io/File;

    .line 1376
    .line 1377
    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 1381
    .line 1382
    .line 1383
    move-result v10

    .line 1384
    if-nez v10, :cond_17

    .line 1385
    .line 1386
    new-array v0, v4, [B

    .line 1387
    .line 1388
    fill-array-data v0, :array_25

    .line 1389
    .line 1390
    .line 1391
    new-array v3, v8, [B

    .line 1392
    .line 1393
    fill-array-data v3, :array_26

    .line 1394
    .line 1395
    .line 1396
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v0

    .line 1400
    const/16 v3, 0x2a

    .line 1401
    .line 1402
    new-array v3, v3, [B

    .line 1403
    .line 1404
    fill-array-data v3, :array_27

    .line 1405
    .line 1406
    .line 1407
    new-array v4, v8, [B

    .line 1408
    .line 1409
    fill-array-data v4, :array_28

    .line 1410
    .line 1411
    .line 1412
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v3

    .line 1416
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    .line 1418
    .line 1419
    :cond_16
    :goto_9
    move v5, v9

    .line 1420
    goto/16 :goto_16

    .line 1421
    .line 1422
    :cond_17
    const/16 v10, 0x45

    .line 1423
    .line 1424
    invoke-virtual {v0, v3, v10}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v10

    .line 1428
    if-eqz v10, :cond_16

    .line 1429
    .line 1430
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1431
    .line 1432
    iget v12, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1433
    .line 1434
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1435
    .line 1436
    new-array v13, v4, [B

    .line 1437
    .line 1438
    fill-array-data v13, :array_29

    .line 1439
    .line 1440
    .line 1441
    new-array v14, v8, [B

    .line 1442
    .line 1443
    fill-array-data v14, :array_2a

    .line 1444
    .line 1445
    .line 1446
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v13

    .line 1450
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1451
    .line 1452
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1453
    .line 1454
    .line 1455
    const/16 v15, 0x1d

    .line 1456
    .line 1457
    new-array v15, v15, [B

    .line 1458
    .line 1459
    fill-array-data v15, :array_2b

    .line 1460
    .line 1461
    .line 1462
    new-array v4, v8, [B

    .line 1463
    .line 1464
    fill-array-data v4, :array_2c

    .line 1465
    .line 1466
    .line 1467
    invoke-static {v15, v4, v14, v11}, Lcom/google/protobuf/q;->u([B[BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1468
    .line 1469
    .line 1470
    const/16 v4, 0xe

    .line 1471
    .line 1472
    new-array v11, v4, [B

    .line 1473
    .line 1474
    fill-array-data v11, :array_2d

    .line 1475
    .line 1476
    .line 1477
    new-array v15, v8, [B

    .line 1478
    .line 1479
    fill-array-data v15, :array_2e

    .line 1480
    .line 1481
    .line 1482
    invoke-static {v11, v15, v14, v12}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    .line 1483
    .line 1484
    .line 1485
    new-array v4, v4, [B

    .line 1486
    .line 1487
    fill-array-data v4, :array_2f

    .line 1488
    .line 1489
    .line 1490
    new-array v11, v8, [B

    .line 1491
    .line 1492
    fill-array-data v11, :array_30

    .line 1493
    .line 1494
    .line 1495
    invoke-static {v4, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v4

    .line 1499
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v4

    .line 1509
    invoke-static {v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v4

    .line 1516
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1517
    .line 1518
    invoke-direct {v0, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 1522
    .line 1523
    .line 1524
    move-result-wide v10

    .line 1525
    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 1526
    .line 1527
    .line 1528
    :try_start_4
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    .line 1529
    .line 1530
    .line 1531
    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1532
    goto :goto_a

    .line 1533
    :catch_4
    move-exception v0

    .line 1534
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1535
    .line 1536
    .line 1537
    move v0, v9

    .line 1538
    :goto_a
    if-eq v0, v9, :cond_16

    .line 1539
    .line 1540
    :try_start_5
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1544
    :try_start_6
    new-instance v7, Ljava/io/FileInputStream;

    .line 1545
    .line 1546
    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1547
    .line 1548
    .line 1549
    const/4 v11, 0x7

    .line 1550
    :try_start_7
    new-array v11, v11, [B

    .line 1551
    .line 1552
    fill-array-data v11, :array_31

    .line 1553
    .line 1554
    .line 1555
    new-array v12, v8, [B

    .line 1556
    .line 1557
    fill-array-data v12, :array_32

    .line 1558
    .line 1559
    .line 1560
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v11

    .line 1564
    const-wide/16 v12, 0x0

    .line 1565
    .line 1566
    const-wide/16 v14, -0x1

    .line 1567
    .line 1568
    invoke-virtual/range {v10 .. v15}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1572
    const/16 v12, 0x400

    .line 1573
    .line 1574
    :try_start_8
    new-array v12, v12, [B

    .line 1575
    .line 1576
    new-instance v13, Ljava/io/File;

    .line 1577
    .line 1578
    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual {v13}, Ljava/io/File;->length()J

    .line 1582
    .line 1583
    .line 1584
    move-result-wide v13

    .line 1585
    move v3, v6

    .line 1586
    :goto_b
    invoke-virtual {v7, v12}, Ljava/io/FileInputStream;->read([B)I

    .line 1587
    .line 1588
    .line 1589
    move-result v15

    .line 1590
    if-eq v15, v9, :cond_18

    .line 1591
    .line 1592
    invoke-virtual {v11, v12, v6, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1593
    .line 1594
    .line 1595
    add-int/2addr v3, v15

    .line 1596
    move-object/from16 v16, v7

    .line 1597
    .line 1598
    int-to-long v6, v3

    .line 1599
    const-wide/16 v17, 0x64

    .line 1600
    .line 1601
    mul-long v6, v6, v17

    .line 1602
    .line 1603
    :try_start_9
    div-long/2addr v6, v13

    .line 1604
    long-to-int v6, v6

    .line 1605
    new-instance v7, Le0/k2;

    .line 1606
    .line 1607
    invoke-direct {v7, v2, v6, v5}, Le0/k2;-><init>(Lcom/example/navistart/ProgressActivity;II)V

    .line 1608
    .line 1609
    .line 1610
    invoke-virtual {v2, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1611
    .line 1612
    .line 1613
    move-object/from16 v7, v16

    .line 1614
    .line 1615
    const/4 v6, 0x0

    .line 1616
    goto :goto_b

    .line 1617
    :goto_c
    move-object v3, v0

    .line 1618
    goto :goto_f

    .line 1619
    :catchall_0
    move-exception v0

    .line 1620
    goto :goto_c

    .line 1621
    :catchall_1
    move-exception v0

    .line 1622
    move-object/from16 v16, v7

    .line 1623
    .line 1624
    goto :goto_c

    .line 1625
    :cond_18
    move-object/from16 v16, v7

    .line 1626
    .line 1627
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1628
    .line 1629
    .line 1630
    if-eqz v11, :cond_19

    .line 1631
    .line 1632
    :try_start_a
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1633
    .line 1634
    .line 1635
    goto :goto_e

    .line 1636
    :catchall_2
    move-exception v0

    .line 1637
    :goto_d
    move-object v3, v0

    .line 1638
    goto :goto_11

    .line 1639
    :cond_19
    :goto_e
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1640
    .line 1641
    .line 1642
    :try_start_c
    invoke-virtual {v10}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 1643
    .line 1644
    .line 1645
    invoke-static {v2, v4, v0}, Le0/m;->g(Landroid/content/Context;Landroid/content/pm/PackageInstaller;I)Z

    .line 1646
    .line 1647
    .line 1648
    move-result v0

    .line 1649
    if-eqz v0, :cond_16

    .line 1650
    .line 1651
    const/16 v3, 0x12

    .line 1652
    .line 1653
    new-array v0, v3, [B

    .line 1654
    .line 1655
    fill-array-data v0, :array_33

    .line 1656
    .line 1657
    .line 1658
    new-array v3, v8, [B

    .line 1659
    .line 1660
    fill-array-data v3, :array_34

    .line 1661
    .line 1662
    .line 1663
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v0

    .line 1667
    const/16 v3, 0x11

    .line 1668
    .line 1669
    new-array v3, v3, [B

    .line 1670
    .line 1671
    fill-array-data v3, :array_35

    .line 1672
    .line 1673
    .line 1674
    new-array v4, v8, [B

    .line 1675
    .line 1676
    fill-array-data v4, :array_36

    .line 1677
    .line 1678
    .line 1679
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v3

    .line 1683
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    .line 1685
    .line 1686
    goto :goto_16

    .line 1687
    :catch_5
    move-exception v0

    .line 1688
    const/16 v3, 0x12

    .line 1689
    .line 1690
    goto :goto_15

    .line 1691
    :catchall_3
    move-exception v0

    .line 1692
    move-object v3, v0

    .line 1693
    goto :goto_13

    .line 1694
    :goto_f
    if-eqz v11, :cond_1a

    .line 1695
    .line 1696
    :try_start_d
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1697
    .line 1698
    .line 1699
    goto :goto_10

    .line 1700
    :catchall_4
    move-exception v0

    .line 1701
    :try_start_e
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1702
    .line 1703
    .line 1704
    :cond_1a
    :goto_10
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1705
    :catchall_5
    move-exception v0

    .line 1706
    move-object/from16 v16, v7

    .line 1707
    .line 1708
    goto :goto_d

    .line 1709
    :goto_11
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1710
    .line 1711
    .line 1712
    goto :goto_12

    .line 1713
    :catchall_6
    move-exception v0

    .line 1714
    :try_start_10
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1715
    .line 1716
    .line 1717
    :goto_12
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1718
    :goto_13
    if-eqz v10, :cond_1b

    .line 1719
    .line 1720
    :try_start_11
    invoke-virtual {v10}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 1721
    .line 1722
    .line 1723
    goto :goto_14

    .line 1724
    :catchall_7
    move-exception v0

    .line 1725
    :try_start_12
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1726
    .line 1727
    .line 1728
    :cond_1b
    :goto_14
    throw v3
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    .line 1729
    :goto_15
    new-array v3, v3, [B

    .line 1730
    .line 1731
    fill-array-data v3, :array_37

    .line 1732
    .line 1733
    .line 1734
    new-array v4, v8, [B

    .line 1735
    .line 1736
    fill-array-data v4, :array_38

    .line 1737
    .line 1738
    .line 1739
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v3

    .line 1743
    const/16 v4, 0x21

    .line 1744
    .line 1745
    new-array v4, v4, [B

    .line 1746
    .line 1747
    fill-array-data v4, :array_39

    .line 1748
    .line 1749
    .line 1750
    new-array v5, v8, [B

    .line 1751
    .line 1752
    fill-array-data v5, :array_3a

    .line 1753
    .line 1754
    .line 1755
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v4

    .line 1759
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1760
    .line 1761
    .line 1762
    goto/16 :goto_9

    .line 1763
    .line 1764
    :goto_16
    new-instance v0, Le0/k2;

    .line 1765
    .line 1766
    const/4 v15, 0x0

    .line 1767
    invoke-direct {v0, v2, v5, v15}, Le0/k2;-><init>(Lcom/example/navistart/ProgressActivity;II)V

    .line 1768
    .line 1769
    .line 1770
    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1771
    .line 1772
    .line 1773
    return-void

    .line 1774
    :pswitch_1c
    iget-object v0, v1, Le0/j2;->d:Ljava/lang/Object;

    .line 1775
    .line 1776
    check-cast v0, Landroid/content/ContentResolver;

    .line 1777
    .line 1778
    iget-object v2, v1, Le0/j2;->c:Ljava/lang/Object;

    .line 1779
    .line 1780
    check-cast v2, Ljava/lang/String;

    .line 1781
    .line 1782
    invoke-static {v0, v2}, Lb1/m;->j(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1783
    .line 1784
    .line 1785
    return-void

    .line 1786
    nop

    .line 1787
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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

    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    :array_0
    .array-data 1
        0x7ct
        0x53t
        0x7bt
        0xct
        -0x11t
        0x75t
        -0x38t
    .end array-data

    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    :array_1
    .array-data 1
        0xbt
        0x36t
        0x1at
        0x78t
        -0x79t
        0x10t
        -0x46t
        -0x61t
    .end array-data

    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    :array_2
    .array-data 1
        0xft
        0x3ct
        0x5bt
        -0xct
        -0x2ct
        0x20t
        -0x4t
    .end array-data

    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    :array_3
    .array-data 1
        0x78t
        0x59t
        0x3at
        -0x80t
        -0x44t
        0x45t
        -0x72t
        0x57t
    .end array-data

    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    :array_4
    .array-data 1
        0x56t
        -0x76t
        -0x10t
        0x5ft
        0x54t
        -0x11t
        -0x46t
        -0x7et
        0x41t
        -0x78t
        -0xct
    .end array-data

    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    :array_5
    .array-data 1
        0x23t
        -0x1ct
        -0x6ft
        0x29t
        0x35t
        -0x7at
        -0x2at
        -0x1dt
    .end array-data

    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    :array_6
    .array-data 1
        0x77t
        0x5bt
    .end array-data

    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    nop

    .line 1905
    :array_7
    .array-data 1
        0x12t
        0x36t
        -0x75t
        0x2ct
        0x6dt
        -0x6ct
        -0x2ft
        0x41t
    .end array-data

    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    :array_8
    .array-data 1
        -0x64t
        -0x44t
    .end array-data

    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    nop

    .line 1919
    :array_9
    .array-data 1
        -0xbt
        -0x28t
        0x7et
        -0x75t
        0xdt
        -0x32t
        -0xft
        0x21t
    .end array-data

    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    :array_a
    .array-data 1
        0x71t
        -0x4t
    .end array-data

    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    nop

    .line 1933
    :array_b
    .array-data 1
        0x2t
        -0x6ct
        0x3bt
        -0x64t
        -0x18t
        -0x57t
        0xdt
        0x11t
    .end array-data

    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    :array_c
    .array-data 1
        -0x6dt
        -0xct
    .end array-data

    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    nop

    .line 1947
    :array_d
    .array-data 1
        -0x1dt
        -0x63t
        -0x62t
        0x15t
        0x3t
        0x35t
        -0x76t
        -0x6et
    .end array-data

    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    :array_e
    .array-data 1
        -0x80t
        -0x4ft
    .end array-data

    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    nop

    .line 1961
    :array_f
    .array-data 1
        -0x1dt
        -0x24t
        -0x6bt
        -0x56t
        0x2at
        -0x40t
        0x5dt
        0x43t
    .end array-data

    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    :array_10
    .array-data 1
        -0x2dt
        -0x2ft
        0x59t
    .end array-data

    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    :array_11
    .array-data 1
        -0x46t
        -0x41t
        0x3ft
        -0x24t
        -0x6at
        -0x30t
        0xct
        -0x26t
    .end array-data

    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    :array_12
    .array-data 1
        0x53t
        -0x3et
        0x75t
    .end array-data

    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    :array_13
    .array-data 1
        0x3bt
        -0x4ft
        0x1dt
        0x53t
        -0x79t
        0x73t
        -0x4ft
        -0x7ft
    .end array-data

    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    :array_14
    .array-data 1
        0x4et
        -0x67t
        -0x31t
        -0x46t
        0x30t
        0x11t
        -0x68t
        0x45t
        0x46t
        -0x7at
        -0x2ft
        -0x7t
        0x33t
        0x1t
        -0x6at
        0x5ft
        0x14t
        -0x37t
        -0x24t
        -0x42t
        0x38t
        0x0t
        -0x76t
        0x54t
        0x5bt
        -0x2ct
        -0x36t
        -0x5et
        0x3ft
        0x5ft
        -0x3ft
    .end array-data

    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    :array_15
    .array-data 1
        0x2ft
        -0x17t
        -0x41t
        -0x2at
        0x59t
        0x72t
        -0x7t
        0x31t
    .end array-data

    .line 2018
    .line 2019
    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    :array_16
    .array-data 1
        0x23t
        0x6at
        0x2t
        -0x5et
        -0x6t
        0x1ct
        -0x4bt
        -0x46t
    .end array-data

    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    :array_17
    .array-data 1
        0x4bt
        0x1et
        0x76t
        -0x2et
        -0x77t
        0x26t
        -0x66t
        -0x6bt
    .end array-data

    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    :array_18
    .array-data 1
        -0x52t
        0x44t
        -0x31t
        -0x6ct
        -0x6ct
        -0xet
        0x75t
        -0x5at
        -0x47t
        0x52t
        -0x2ft
        -0x7bt
    .end array-data

    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    :array_19
    .array-data 1
        -0x13t
        0x2bt
        -0x5ft
        -0x20t
        -0xft
        -0x64t
        0x1t
        -0x75t
    .end array-data

    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    :array_1a
    .array-data 1
        0x10t
        -0x79t
        0x7et
        -0x13t
        -0x16t
        -0x28t
        0x42t
        -0x13t
        0x18t
        -0x68t
        0x60t
        -0x52t
        -0x17t
        -0x38t
        0x4ct
        -0x9t
    .end array-data

    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    .line 2065
    .line 2066
    .line 2067
    .line 2068
    .line 2069
    .line 2070
    .line 2071
    :array_1b
    .array-data 1
        0x71t
        -0x9t
        0xet
        -0x7ft
        -0x7dt
        -0x45t
        0x23t
        -0x67t
    .end array-data

    .line 2072
    .line 2073
    .line 2074
    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    :array_1c
    .array-data 1
        -0x18t
        0x32t
        -0x40t
        0x18t
        -0x3bt
        0x5ft
    .end array-data

    .line 2080
    .line 2081
    .line 2082
    .line 2083
    .line 2084
    .line 2085
    .line 2086
    nop

    .line 2087
    :array_1d
    .array-data 1
        -0x57t
        0x51t
        -0x5dt
        0x7dt
        -0x4bt
        0x2bt
        0x10t
        0x74t
    .end array-data

    .line 2088
    .line 2089
    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    .line 2095
    :array_1e
    .array-data 1
        0x13t
        0x16t
        -0x26t
        0x7bt
        -0x77t
        0x70t
        -0x42t
        -0x3at
        0x1bt
        0x9t
        -0x3ct
        0x38t
        -0x76t
        0x60t
        -0x50t
        -0x24t
    .end array-data

    .line 2096
    .line 2097
    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    .line 2106
    .line 2107
    :array_1f
    .array-data 1
        0x72t
        0x66t
        -0x56t
        0x17t
        -0x20t
        0x13t
        -0x21t
        -0x4et
    .end array-data

    .line 2108
    .line 2109
    .line 2110
    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    :array_20
    .array-data 1
        0x23t
        -0x69t
        0x5et
        0x54t
        0x3ft
        0x7ft
        -0x6at
        -0x63t
    .end array-data

    .line 2116
    .line 2117
    .line 2118
    .line 2119
    .line 2120
    .line 2121
    .line 2122
    .line 2123
    :array_21
    .array-data 1
        0x22t
        0x70t
        0x6ft
    .end array-data

    .line 2124
    .line 2125
    .line 2126
    .line 2127
    .line 2128
    .line 2129
    :array_22
    .array-data 1
        0x56t
        0x11t
        0x8t
        -0x46t
        -0x5dt
        -0x20t
        -0x68t
        -0x4ct
    .end array-data

    .line 2130
    .line 2131
    .line 2132
    .line 2133
    .line 2134
    .line 2135
    .line 2136
    .line 2137
    :array_23
    .array-data 1
        -0x16t
        -0x16t
        -0x69t
        -0x51t
        -0x30t
        -0x59t
        0x7dt
        0x56t
        -0x25t
        -0x1at
        -0x6ft
        -0x4ct
        -0x2dt
        -0x5at
        0x7dt
        0x5ct
        -0x16t
        -0x3t
    .end array-data

    .line 2138
    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    nop

    .line 2151
    :array_24
    .array-data 1
        -0x67t
        -0x77t
        -0x1bt
        -0x40t
        -0x44t
        -0x35t
        0x29t
        0x39t
    .end array-data

    .line 2152
    .line 2153
    .line 2154
    .line 2155
    .line 2156
    .line 2157
    .line 2158
    .line 2159
    :array_25
    .array-data 1
        -0x31t
        -0x11t
        -0x73t
        0xet
        0x42t
        -0x32t
        -0x6dt
        0x54t
        -0x4ft
        -0x17t
        -0x5ft
        0x3et
        0x5et
        -0x36t
        -0x70t
        0x41t
        -0x18t
        -0x17t
    .end array-data

    .line 2160
    .line 2161
    .line 2162
    .line 2163
    .line 2164
    .line 2165
    .line 2166
    .line 2167
    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    nop

    .line 2173
    :array_26
    .array-data 1
        -0x64t
        -0x47t
        -0x34t
        0x7dt
        0x31t
        -0x59t
        -0x20t
        0x20t
    .end array-data

    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    .line 2180
    .line 2181
    :array_27
    .array-data 1
        -0x76t
        0x5bt
        0x68t
        -0x47t
        0x11t
        0x53t
        0x3ft
        0x2t
        -0x7et
        0x5bt
        0x6at
        -0x51t
        0xbt
        0x51t
        0x36t
        0x33t
        -0xft
        0x53t
        0x76t
        -0x5ft
        0x45t
        0x5ct
        0x3ct
        0x1at
        -0xft
        0x57t
        0x7et
        -0x5dt
        0x16t
        0x46t
        0x7ft
        0x4et
        -0x5et
        0x5dt
        0x26t
        -0x48t
        0x0t
        0x46t
        0x26t
        0x1ct
        -0x41t
        0x1ct
    .end array-data

    .line 2182
    .line 2183
    .line 2184
    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    .line 2192
    .line 2193
    .line 2194
    .line 2195
    .line 2196
    .line 2197
    .line 2198
    .line 2199
    .line 2200
    .line 2201
    .line 2202
    .line 2203
    .line 2204
    .line 2205
    .line 2206
    nop

    .line 2207
    :array_28
    .array-data 1
        -0x2ft
        0x32t
        0x6t
        -0x36t
        0x65t
        0x32t
        0x53t
        0x6et
    .end array-data

    .line 2208
    .line 2209
    .line 2210
    .line 2211
    .line 2212
    .line 2213
    .line 2214
    .line 2215
    :array_29
    .array-data 1
        0x2t
        -0x68t
        0x22t
        0x61t
        -0x48t
        0x60t
        0x7at
        0x16t
        0x7ct
        -0x62t
        0xet
        0x51t
        -0x5ct
        0x64t
        0x79t
        0x3t
        0x25t
        -0x62t
    .end array-data

    .line 2216
    .line 2217
    .line 2218
    .line 2219
    .line 2220
    .line 2221
    .line 2222
    .line 2223
    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    nop

    .line 2229
    :array_2a
    .array-data 1
        0x51t
        -0x32t
        0x63t
        0x12t
        -0x35t
        0x9t
        0x9t
        0x62t
    .end array-data

    .line 2230
    .line 2231
    .line 2232
    .line 2233
    .line 2234
    .line 2235
    .line 2236
    .line 2237
    :array_2b
    .array-data 1
        0x34t
        0x9t
        0x4dt
        -0x33t
        0x20t
        -0x50t
        -0xat
        0x40t
        0x3ct
        0x9t
        0x4ft
        -0x25t
        0x3at
        -0x4et
        -0x1t
        0x71t
        0x4ft
        0x10t
        0x42t
        -0x23t
        0x3ft
        -0x50t
        -0x3t
        0x49t
        0x21t
        0x1t
        0x4et
        -0x25t
        0x69t
    .end array-data

    .line 2238
    .line 2239
    .line 2240
    .line 2241
    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    nop

    .line 2257
    :array_2c
    .array-data 1
        0x6ft
        0x60t
        0x23t
        -0x42t
        0x54t
        -0x2ft
        -0x66t
        0x2ct
    .end array-data

    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    :array_2d
    .array-data 1
        -0x1et
        -0x79t
        0x54t
        -0x46t
        -0x75t
        -0x78t
        -0x70t
        -0x59t
        -0x60t
        -0x1ct
        0x4dt
        -0x45t
        -0x64t
        -0x3at
    .end array-data

    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    .line 2272
    .line 2273
    .line 2274
    .line 2275
    .line 2276
    nop

    .line 2277
    :array_2e
    .array-data 1
        -0x32t
        -0x59t
        0x22t
        -0x21t
        -0x7t
        -0x5t
        -0x7t
        -0x38t
    .end array-data

    .line 2278
    .line 2279
    .line 2280
    .line 2281
    .line 2282
    .line 2283
    .line 2284
    .line 2285
    :array_2f
    .array-data 1
        0x4t
        -0x42t
        0x79t
        -0x15t
        -0x42t
        -0x77t
        -0x4ft
        -0x6at
        0x46t
        -0x30t
        0x6et
        -0x1dt
        -0x57t
        -0x39t
    .end array-data

    .line 2286
    .line 2287
    .line 2288
    .line 2289
    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    .line 2296
    nop

    .line 2297
    :array_30
    .array-data 1
        0x28t
        -0x62t
        0xft
        -0x72t
        -0x34t
        -0x6t
        -0x28t
        -0x7t
    .end array-data

    .line 2298
    .line 2299
    .line 2300
    .line 2301
    .line 2302
    .line 2303
    .line 2304
    .line 2305
    :array_31
    .array-data 1
        -0x6ft
        -0x33t
        0x1bt
        -0x5t
        -0x1dt
        -0x6et
        0x4dt
    .end array-data

    .line 2306
    .line 2307
    .line 2308
    .line 2309
    .line 2310
    .line 2311
    .line 2312
    .line 2313
    :array_32
    .array-data 1
        -0x1ft
        -0x54t
        0x78t
        -0x70t
        -0x7et
        -0xbt
        0x28t
        0x4dt
    .end array-data

    .line 2314
    .line 2315
    .line 2316
    .line 2317
    .line 2318
    .line 2319
    .line 2320
    .line 2321
    :array_33
    .array-data 1
        -0x3ft
        0x6bt
        -0x61t
        -0x73t
        0x67t
        -0x6bt
        0xdt
        0x77t
        -0x41t
        0x6dt
        -0x4dt
        -0x43t
        0x7bt
        -0x6ft
        0xet
        0x62t
        -0x1at
        0x6dt
    .end array-data

    .line 2322
    .line 2323
    .line 2324
    .line 2325
    .line 2326
    .line 2327
    .line 2328
    .line 2329
    .line 2330
    .line 2331
    .line 2332
    .line 2333
    .line 2334
    nop

    .line 2335
    :array_34
    .array-data 1
        -0x6et
        0x3dt
        -0x22t
        -0x2t
        0x14t
        -0x4t
        0x7et
        0x3t
    .end array-data

    .line 2336
    .line 2337
    .line 2338
    .line 2339
    .line 2340
    .line 2341
    .line 2342
    .line 2343
    :array_35
    .array-data 1
        -0xet
        0x6ct
        -0x24t
        0x0t
        0x4dt
        0xft
        0x44t
        0x14t
        -0x31t
        0x6bt
        -0x40t
        0x1at
        0xct
        0x7t
        0x47t
        0x1bt
        -0x22t
    .end array-data

    .line 2344
    .line 2345
    .line 2346
    .line 2347
    .line 2348
    .line 2349
    .line 2350
    .line 2351
    .line 2352
    .line 2353
    .line 2354
    .line 2355
    .line 2356
    nop

    .line 2357
    :array_36
    .array-data 1
        -0x45t
        0x2t
        -0x51t
        0x74t
        0x2ct
        0x63t
        0x28t
        0x75t
    .end array-data

    .line 2358
    .line 2359
    .line 2360
    .line 2361
    .line 2362
    .line 2363
    .line 2364
    .line 2365
    :array_37
    .array-data 1
        0x5dt
        0x69t
        0x56t
        -0x72t
        -0x65t
        0x2t
        -0x38t
        -0x5bt
        0x23t
        0x6ft
        0x7at
        -0x42t
        -0x79t
        0x6t
        -0x35t
        -0x50t
        0x7at
        0x6ft
    .end array-data

    .line 2366
    .line 2367
    .line 2368
    .line 2369
    .line 2370
    .line 2371
    .line 2372
    .line 2373
    .line 2374
    .line 2375
    .line 2376
    .line 2377
    .line 2378
    nop

    .line 2379
    :array_38
    .array-data 1
        0xet
        0x3ft
        0x17t
        -0x3t
        -0x18t
        0x6bt
        -0x45t
        -0x2ft
    .end array-data

    .line 2380
    .line 2381
    .line 2382
    .line 2383
    .line 2384
    .line 2385
    .line 2386
    .line 2387
    :array_39
    .array-data 1
        -0x35t
        -0x62t
        -0x1ct
        0xft
        0x20t
        -0x2et
        -0x6t
        -0x33t
        -0x11t
        -0x7et
        -0x1bt
        0x6t
        0x37t
        -0x80t
        -0x4t
        -0x2at
        -0x20t
        -0x75t
        -0x4at
        0x21t
        0x2t
        -0x47t
        -0x52t
        -0x35t
        -0x1ft
        -0x34t
        -0x1bt
        0x5t
        0x21t
        -0x7ft
        -0x19t
        -0x30t
        -0x20t
    .end array-data

    .line 2388
    .line 2389
    .line 2390
    .line 2391
    .line 2392
    .line 2393
    .line 2394
    .line 2395
    .line 2396
    .line 2397
    .line 2398
    .line 2399
    .line 2400
    .line 2401
    .line 2402
    .line 2403
    .line 2404
    .line 2405
    .line 2406
    .line 2407
    .line 2408
    nop

    .line 2409
    :array_3a
    .array-data 1
        -0x72t
        -0x14t
        -0x6at
        0x60t
        0x52t
        -0xet
        -0x72t
        -0x41t
    .end array-data
.end method
