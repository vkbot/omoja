.class public final synthetic Lu1/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lu1/d;


# direct methods
.method public synthetic constructor <init>(Lu1/d;I)V
    .locals 0

    .line 1
    iput p2, p0, Lu1/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lu1/a;->c:Lu1/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lu1/a;->c:Lu1/d;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    new-array v3, v2, [B

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    new-array v4, v2, [B

    .line 17
    .line 18
    fill-array-data v4, :array_1

    .line 19
    .line 20
    .line 21
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/app/ActivityManager;

    .line 30
    .line 31
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    .line 32
    .line 33
    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 37
    .line 38
    .line 39
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 40
    .line 41
    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 42
    .line 43
    sub-long v8, v4, v6

    .line 44
    .line 45
    iget-boolean v1, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 46
    .line 47
    new-instance v3, Landroid/os/StatFs;

    .line 48
    .line 49
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-direct {v3, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/os/StatFs;->getTotalBytes()J

    .line 61
    .line 62
    .line 63
    move-result-wide v10

    .line 64
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 65
    .line 66
    .line 67
    move-result-wide v12

    .line 68
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const/4 v14, 0x7

    .line 73
    new-array v14, v14, [B

    .line 74
    .line 75
    fill-array-data v14, :array_2

    .line 76
    .line 77
    .line 78
    new-array v15, v2, [B

    .line 79
    .line 80
    fill-array-data v15, :array_3

    .line 81
    .line 82
    .line 83
    invoke-static {v14, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_0

    .line 92
    .line 93
    new-instance v3, Landroid/os/StatFs;

    .line 94
    .line 95
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 96
    .line 97
    .line 98
    move-result-object v16

    .line 99
    const-wide/16 v17, 0x0

    .line 100
    .line 101
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    invoke-direct {v3, v14}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/os/StatFs;->getTotalBytes()J

    .line 109
    .line 110
    .line 111
    move-result-wide v14

    .line 112
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 113
    .line 114
    .line 115
    move-result-wide v19

    .line 116
    goto :goto_0

    .line 117
    :cond_0
    const-wide/16 v17, 0x0

    .line 118
    .line 119
    move-wide/from16 v14, v17

    .line 120
    .line 121
    move-wide/from16 v19, v14

    .line 122
    .line 123
    :goto_0
    new-instance v3, Landroid/os/Debug$MemoryInfo;

    .line 124
    .line 125
    invoke-direct {v3}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-static {v3}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    int-to-long v2, v3

    .line 136
    const-wide/16 v21, 0x400

    .line 137
    .line 138
    mul-long v2, v2, v21

    .line 139
    .line 140
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    .line 141
    .line 142
    .line 143
    move-result-wide v21

    .line 144
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 145
    .line 146
    .line 147
    move-result-object v16

    .line 148
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->totalMemory()J

    .line 149
    .line 150
    .line 151
    move-result-wide v23

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    move-wide/from16 v25, v2

    .line 158
    .line 159
    const/16 v2, 0x1c

    .line 160
    .line 161
    new-array v2, v2, [B

    .line 162
    .line 163
    fill-array-data v2, :array_4

    .line 164
    .line 165
    .line 166
    move-wide/from16 v27, v6

    .line 167
    .line 168
    const/16 v3, 0x8

    .line 169
    .line 170
    new-array v6, v3, [B

    .line 171
    .line 172
    fill-array-data v6, :array_5

    .line 173
    .line 174
    .line 175
    invoke-static {v2, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const/4 v2, 0x5

    .line 183
    new-array v2, v2, [B

    .line 184
    .line 185
    fill-array-data v2, :array_6

    .line 186
    .line 187
    .line 188
    new-array v6, v3, [B

    .line 189
    .line 190
    fill-array-data v6, :array_7

    .line 191
    .line 192
    .line 193
    invoke-static {v2, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 201
    .line 202
    const/16 v6, 0xc

    .line 203
    .line 204
    new-array v7, v6, [B

    .line 205
    .line 206
    fill-array-data v7, :array_8

    .line 207
    .line 208
    .line 209
    new-array v6, v3, [B

    .line 210
    .line 211
    fill-array-data v6, :array_9

    .line 212
    .line 213
    .line 214
    invoke-static {v7, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-static {v4, v5}, Lcom/bumptech/glide/d;->g(J)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const/16 v6, 0xb

    .line 234
    .line 235
    new-array v6, v6, [B

    .line 236
    .line 237
    fill-array-data v6, :array_a

    .line 238
    .line 239
    .line 240
    new-array v7, v3, [B

    .line 241
    .line 242
    fill-array-data v7, :array_b

    .line 243
    .line 244
    .line 245
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-static {v8, v9}, Lcom/bumptech/glide/d;->g(J)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const/16 v6, 0x10

    .line 265
    .line 266
    new-array v7, v6, [B

    .line 267
    .line 268
    fill-array-data v7, :array_c

    .line 269
    .line 270
    .line 271
    new-array v6, v3, [B

    .line 272
    .line 273
    fill-array-data v6, :array_d

    .line 274
    .line 275
    .line 276
    invoke-static {v7, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    invoke-static/range {v27 .. v28}, Lcom/bumptech/glide/d;->g(J)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const/16 v6, 0x10

    .line 296
    .line 297
    new-array v7, v6, [B

    .line 298
    .line 299
    fill-array-data v7, :array_e

    .line 300
    .line 301
    .line 302
    new-array v6, v3, [B

    .line 303
    .line 304
    fill-array-data v6, :array_f

    .line 305
    .line 306
    .line 307
    invoke-static {v7, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    long-to-double v6, v8

    .line 312
    long-to-double v4, v4

    .line 313
    div-double/2addr v6, v4

    .line 314
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 315
    .line 316
    mul-double/2addr v6, v4

    .line 317
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const/16 v3, 0xe

    .line 333
    .line 334
    new-array v3, v3, [B

    .line 335
    .line 336
    fill-array-data v3, :array_10

    .line 337
    .line 338
    .line 339
    const/16 v6, 0x8

    .line 340
    .line 341
    new-array v7, v6, [B

    .line 342
    .line 343
    fill-array-data v7, :array_11

    .line 344
    .line 345
    .line 346
    invoke-static {v3, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v1, "\n\n"

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const/16 v1, 0x12

    .line 362
    .line 363
    new-array v1, v1, [B

    .line 364
    .line 365
    fill-array-data v1, :array_12

    .line 366
    .line 367
    .line 368
    new-array v3, v6, [B

    .line 369
    .line 370
    fill-array-data v3, :array_13

    .line 371
    .line 372
    .line 373
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const/16 v1, 0xc

    .line 381
    .line 382
    new-array v3, v1, [B

    .line 383
    .line 384
    fill-array-data v3, :array_14

    .line 385
    .line 386
    .line 387
    new-array v1, v6, [B

    .line 388
    .line 389
    fill-array-data v1, :array_15

    .line 390
    .line 391
    .line 392
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-static {v10, v11}, Lcom/bumptech/glide/d;->g(J)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const/16 v1, 0x10

    .line 412
    .line 413
    new-array v3, v1, [B

    .line 414
    .line 415
    fill-array-data v3, :array_16

    .line 416
    .line 417
    .line 418
    new-array v7, v6, [B

    .line 419
    .line 420
    fill-array-data v7, :array_17

    .line 421
    .line 422
    .line 423
    invoke-static {v3, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    invoke-static {v12, v13}, Lcom/bumptech/glide/d;->g(J)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v7

    .line 431
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v7

    .line 435
    invoke-static {v2, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    new-array v3, v1, [B

    .line 443
    .line 444
    fill-array-data v3, :array_18

    .line 445
    .line 446
    .line 447
    new-array v1, v6, [B

    .line 448
    .line 449
    fill-array-data v1, :array_19

    .line 450
    .line 451
    .line 452
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    sub-long v6, v10, v12

    .line 457
    .line 458
    long-to-double v6, v6

    .line 459
    long-to-double v8, v10

    .line 460
    div-double/2addr v6, v8

    .line 461
    mul-double/2addr v6, v4

    .line 462
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v1, "\n"

    .line 478
    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    cmp-long v3, v14, v17

    .line 483
    .line 484
    if-lez v3, :cond_1

    .line 485
    .line 486
    const/16 v3, 0x1c

    .line 487
    .line 488
    new-array v3, v3, [B

    .line 489
    .line 490
    fill-array-data v3, :array_1a

    .line 491
    .line 492
    .line 493
    const/16 v6, 0x8

    .line 494
    .line 495
    new-array v7, v6, [B

    .line 496
    .line 497
    fill-array-data v7, :array_1b

    .line 498
    .line 499
    .line 500
    invoke-static {v3, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    const/16 v3, 0xc

    .line 508
    .line 509
    new-array v3, v3, [B

    .line 510
    .line 511
    fill-array-data v3, :array_1c

    .line 512
    .line 513
    .line 514
    new-array v7, v6, [B

    .line 515
    .line 516
    fill-array-data v7, :array_1d

    .line 517
    .line 518
    .line 519
    invoke-static {v3, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    invoke-static {v14, v15}, Lcom/bumptech/glide/d;->g(J)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v7

    .line 527
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v7

    .line 531
    invoke-static {v2, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const/16 v3, 0x10

    .line 539
    .line 540
    new-array v7, v3, [B

    .line 541
    .line 542
    fill-array-data v7, :array_1e

    .line 543
    .line 544
    .line 545
    new-array v8, v6, [B

    .line 546
    .line 547
    fill-array-data v8, :array_1f

    .line 548
    .line 549
    .line 550
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v7

    .line 554
    invoke-static/range {v19 .. v20}, Lcom/bumptech/glide/d;->g(J)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v8

    .line 558
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v8

    .line 562
    invoke-static {v2, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v7

    .line 566
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    new-array v3, v3, [B

    .line 570
    .line 571
    fill-array-data v3, :array_20

    .line 572
    .line 573
    .line 574
    new-array v7, v6, [B

    .line 575
    .line 576
    fill-array-data v7, :array_21

    .line 577
    .line 578
    .line 579
    invoke-static {v3, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    sub-long v6, v14, v19

    .line 584
    .line 585
    long-to-double v6, v6

    .line 586
    long-to-double v8, v14

    .line 587
    div-double/2addr v6, v8

    .line 588
    mul-double/2addr v6, v4

    .line 589
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 590
    .line 591
    .line 592
    move-result-object v4

    .line 593
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    :cond_1
    const/16 v1, 0x11

    .line 608
    .line 609
    new-array v1, v1, [B

    .line 610
    .line 611
    fill-array-data v1, :array_22

    .line 612
    .line 613
    .line 614
    const/16 v6, 0x8

    .line 615
    .line 616
    new-array v3, v6, [B

    .line 617
    .line 618
    fill-array-data v3, :array_23

    .line 619
    .line 620
    .line 621
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    const/16 v1, 0xd

    .line 629
    .line 630
    new-array v1, v1, [B

    .line 631
    .line 632
    fill-array-data v1, :array_24

    .line 633
    .line 634
    .line 635
    new-array v3, v6, [B

    .line 636
    .line 637
    fill-array-data v3, :array_25

    .line 638
    .line 639
    .line 640
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    invoke-static/range {v25 .. v26}, Lcom/bumptech/glide/d;->g(J)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v3

    .line 648
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    const/16 v1, 0x12

    .line 660
    .line 661
    new-array v1, v1, [B

    .line 662
    .line 663
    fill-array-data v1, :array_26

    .line 664
    .line 665
    .line 666
    new-array v3, v6, [B

    .line 667
    .line 668
    fill-array-data v3, :array_27

    .line 669
    .line 670
    .line 671
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    invoke-static/range {v21 .. v22}, Lcom/bumptech/glide/d;->g(J)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v3

    .line 679
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v3

    .line 683
    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    const/16 v1, 0x12

    .line 691
    .line 692
    new-array v1, v1, [B

    .line 693
    .line 694
    fill-array-data v1, :array_28

    .line 695
    .line 696
    .line 697
    new-array v3, v6, [B

    .line 698
    .line 699
    fill-array-data v3, :array_29

    .line 700
    .line 701
    .line 702
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    invoke-static/range {v23 .. v24}, Lcom/bumptech/glide/d;->g(J)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v3

    .line 710
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v1

    .line 718
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    return-void

    .line 729
    :array_0
    .array-data 1
        0x4et
        -0x5ft
        0x2t
        0x14t
        0x44t
        -0x2ft
        0x64t
        0x1at
    .end array-data

    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    :array_1
    .array-data 1
        0x2ft
        -0x3et
        0x76t
        0x7dt
        0x32t
        -0x48t
        0x10t
        0x63t
    .end array-data

    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    :array_2
    .array-data 1
        0x7at
        0x57t
        0x62t
        0x55t
        0x76t
        -0x36t
        -0x37t
    .end array-data

    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :array_3
    .array-data 1
        0x17t
        0x38t
        0x17t
        0x3bt
        0x2t
        -0x51t
        -0x53t
        -0x61t
    .end array-data

    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    :array_4
    .array-data 1
        0x64t
        -0x33t
        -0x70t
        -0x44t
        -0x1et
        -0x15t
        -0xft
        -0x1dt
        0x2bt
        -0x77t
        -0x73t
        -0x2bt
        -0x3ft
        -0x18t
        -0xdt
        -0x2t
        0x34t
        -0x6ft
        -0x27t
        -0xbt
        -0x40t
        -0x20t
        -0x44t
        -0x4ft
        0x64t
        -0x33t
        -0x59t
        -0x6at
    .end array-data

    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
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
    :array_5
    .array-data 1
        0x59t
        -0x10t
        -0x53t
        -0x64t
        -0x51t
        -0x72t
        -0x64t
        -0x74t
    .end array-data

    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    :array_6
    .array-data 1
        -0x75t
        -0x64t
        0x5ft
        0x21t
        -0x77t
    .end array-data

    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    nop

    .line 795
    :array_7
    .array-data 1
        -0x27t
        -0x23t
        0x12t
        0x1bt
        -0x7dt
        -0x64t
        0x7bt
        0x5ct
    .end array-data

    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    :array_8
    .array-data 1
        0x27t
        -0x17t
        0x57t
        0x5t
        -0xbt
        -0x47t
        0x57t
        -0x6ct
        0x27t
        -0x14t
        0x70t
        0x60t
    .end array-data

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
    :array_9
    .array-data 1
        0x7t
        -0x37t
        0x3t
        0x6at
        -0x7ft
        -0x28t
        0x3bt
        -0x52t
    .end array-data

    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    :array_a
    .array-data 1
        0x53t
        0x1bt
        -0x3et
        0x32t
        0x2ft
        -0x78t
        0x53t
        -0x5ct
        0x56t
        0x48t
        -0x63t
    .end array-data

    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    :array_b
    .array-data 1
        0x73t
        0x3bt
        -0x69t
        0x41t
        0x4at
        -0x14t
        0x69t
        -0x7ct
    .end array-data

    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    :array_c
    .array-data 1
        -0x6bt
        -0x28t
        -0x3ct
        -0x62t
        -0x5dt
        -0x38t
        -0x2at
        0xft
        -0x29t
        -0x6ct
        -0x20t
        -0x2et
        -0x1et
        -0x7ct
        -0x37t
        0x64t
    .end array-data

    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    :array_d
    .array-data 1
        -0x4bt
        -0x8t
        -0x7bt
        -0x18t
        -0x3et
        -0x5ft
        -0x46t
        0x6et
    .end array-data

    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    :array_e
    .array-data 1
        0x47t
        0x35t
        -0x3ct
        0x71t
        -0x6bt
        0x1ct
        -0x43t
        0x3dt
        0x47t
        0x30t
        -0x41t
        0x33t
        -0x6et
        0x5et
        -0x3t
        0xdt
    .end array-data

    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    :array_f
    .array-data 1
        0x67t
        0x15t
        -0x6ft
        0x2t
        -0xct
        0x7bt
        -0x28t
        0x7t
    .end array-data

    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    :array_10
    .array-data 1
        0x8t
        -0x14t
        0x30t
        -0x3t
        0x6ft
        -0xft
        0x29t
        -0x36t
        0x45t
        -0x5dt
        0xet
        -0x15t
        0x22t
        -0xft
    .end array-data

    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    nop

    .line 891
    :array_11
    .array-data 1
        0x28t
        -0x34t
        0x7ct
        -0x6et
        0x18t
        -0x2ft
        0x64t
        -0x51t
    .end array-data

    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    :array_12
    .array-data 1
        0x67t
        -0x21t
        0x17t
        0x47t
        -0x7t
        0x35t
        -0x1et
        0xct
        0xet
        -0x1et
        0x17t
        0x4dt
        -0x7t
        0x3at
        -0x1ct
        0x5t
        0x14t
        -0x45t
    .end array-data

    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    nop

    .line 913
    :array_13
    .array-data 1
        0x2et
        -0x4ft
        0x63t
        0x22t
        -0x75t
        0x5bt
        -0x7dt
        0x60t
    .end array-data

    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    :array_14
    .array-data 1
        0x43t
        0x45t
        0x53t
        0x40t
        -0x1t
        -0x7et
        -0x4bt
        0x3et
        0x43t
        0x40t
        0x74t
        0x25t
    .end array-data

    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    :array_15
    .array-data 1
        0x63t
        0x65t
        0x7t
        0x2ft
        -0x75t
        -0x1dt
        -0x27t
        0x4t
    .end array-data

    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    :array_16
    .array-data 1
        0x5at
        0x52t
        -0xbt
        -0x6ft
        -0x9t
        0x24t
        0x61t
        -0x43t
        0x18t
        0x1et
        -0x2ft
        -0x23t
        -0x4at
        0x68t
        0x7et
        -0x2at
    .end array-data

    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    :array_17
    .array-data 1
        0x7at
        0x72t
        -0x4ct
        -0x19t
        -0x6at
        0x4dt
        0xdt
        -0x24t
    .end array-data

    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    :array_18
    .array-data 1
        0x43t
        0x1at
        -0x61t
        0x59t
        0x69t
        -0x2ct
        0x3t
        0x10t
        0x43t
        0x1ft
        -0x1ct
        0x1bt
        0x6et
        -0x6at
        0x43t
        0x20t
    .end array-data

    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    :array_19
    .array-data 1
        0x63t
        0x3at
        -0x36t
        0x2at
        0x8t
        -0x4dt
        0x66t
        0x2at
    .end array-data

    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    :array_1a
    .array-data 1
        0x58t
        -0x16t
        -0x2ft
        -0x3t
        0x20t
        -0x30t
        -0x44t
        -0x2dt
        0x3dt
        -0x3ft
        -0x2ft
        -0x9t
        0x20t
        -0x21t
        -0x46t
        -0x26t
        0x3dt
        -0x46t
        -0xat
        -0x24t
        0x72t
        -0x3t
        -0x44t
        -0x33t
        0x79t
        -0x45t
        -0x61t
        -0x6et
    .end array-data

    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
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
    .line 997
    :array_1b
    .array-data 1
        0x1dt
        -0x6et
        -0x5bt
        -0x68t
        0x52t
        -0x42t
        -0x23t
        -0x41t
    .end array-data

    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    :array_1c
    .array-data 1
        -0xdt
        0x23t
        0x4bt
        0x32t
        0xct
        0x38t
        -0x60t
        -0x2dt
        -0xdt
        0x26t
        0x6ct
        0x57t
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
    :array_1d
    .array-data 1
        -0x2dt
        0x3t
        0x1ft
        0x5dt
        0x78t
        0x59t
        -0x34t
        -0x17t
    .end array-data

    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    :array_1e
    .array-data 1
        -0x76t
        0x78t
        0x65t
        -0x65t
        -0x4dt
        0x43t
        0x63t
        -0x5et
        -0x38t
        0x34t
        0x41t
        -0x29t
        -0xet
        0xft
        0x7ct
        -0x37t
    .end array-data

    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    :array_1f
    .array-data 1
        -0x56t
        0x58t
        0x24t
        -0x13t
        -0x2et
        0x2at
        0xft
        -0x3dt
    .end array-data

    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    :array_20
    .array-data 1
        0x70t
        0x1et
        0x1t
        0x3dt
        -0x21t
        -0xdt
        0x3at
        -0xdt
        0x70t
        0x1bt
        0x7at
        0x7ft
        -0x28t
        -0x4ft
        0x7at
        -0x3dt
    .end array-data

    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    :array_21
    .array-data 1
        0x50t
        0x3et
        0x54t
        0x4et
        -0x42t
        -0x6ct
        0x5ft
        -0x37t
    .end array-data

    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    :array_22
    .array-data 1
        0x3at
        -0x69t
        0x13t
        -0xat
        0x69t
        -0x31t
        0x22t
        0x1bt
        0x29t
        -0x70t
        0xet
        -0x19t
        0x69t
        -0x2et
        0x25t
        0x1t
        0x73t
    .end array-data

    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    nop

    .line 1077
    :array_23
    .array-data 1
        0x79t
        -0x1et
        0x61t
        -0x7ct
        0xct
        -0x5ft
        0x56t
        0x3bt
    .end array-data

    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    :array_24
    .array-data 1
        -0x67t
        -0x50t
        -0x61t
        0x74t
        -0x29t
        -0x4ft
        -0x5at
        0x70t
        -0x7dt
        -0x50t
        -0x9t
        0x62t
        -0x50t
    .end array-data

    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    nop

    .line 1097
    :array_25
    .array-data 1
        -0x47t
        -0x70t
        -0x2et
        0x11t
        -0x46t
        -0x22t
        -0x2ct
        0x9t
    .end array-data

    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    :array_26
    .array-data 1
        -0x5t
        -0x6t
        0x57t
        -0xdt
        0x20t
        -0x11t
        -0x5t
        -0x40t
        -0x5t
        -0x6et
        0x7ct
        -0xdt
        0x24t
        -0x44t
        -0x53t
        -0x80t
        -0x58t
        -0x30t
    .end array-data

    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    nop

    .line 1119
    :array_27
    .array-data 1
        -0x25t
        -0x26t
        0x19t
        -0x6et
        0x54t
        -0x7at
        -0x73t
        -0x5bt
    .end array-data

    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    :array_28
    .array-data 1
        0x42t
        -0x35t
        0x57t
        -0x50t
        -0x1dt
        -0x34t
        0x6dt
        -0x2t
        0x42t
        -0x5dt
        0x76t
        -0x50t
        -0x1t
        -0x80t
        0x24t
        -0x50t
        0x11t
        -0x1ft
    .end array-data

    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    nop

    .line 1141
    :array_29
    .array-data 1
        0x62t
        -0x15t
        0x13t
        -0x2ft
        -0x71t
        -0x46t
        0x4t
        -0x6bt
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Lu1/a;->b:I

    const/4 v3, 0x2

    const/16 v4, 0x8

    packed-switch v0, :pswitch_data_0

    .line 1
    new-instance v0, Le0/y2;

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    new-array v3, v4, [B

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lu1/a;->c:Lu1/d;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v2, v3}, Le0/y2;-><init>(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void

    .line 2
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lu1/a;->a(Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object v3, v1, Lu1/a;->c:Lu1/d;

    .line 3
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Lcom/example/navistart/BlackActivity;

    const-class v7, Landroid/app/ActivityOptions;

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    array-length v8, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_1

    aget-object v9, v0, v2

    .line 5
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x9

    new-array v11, v11, [B

    fill-array-data v11, :array_2

    new-array v12, v4, [B

    fill-array-data v12, :array_3

    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0xe

    new-array v11, v11, [B

    fill-array-data v11, :array_4

    new-array v12, v4, [B

    fill-array-data v12, :array_5

    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x9

    new-array v11, v11, [B

    fill-array-data v11, :array_6

    new-array v12, v4, [B

    fill-array-data v12, :array_7

    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-static {v9}, Lh0/b;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    invoke-static {v0, v2}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    :cond_1
    const/16 v2, 0x258

    const/16 v8, 0x12c

    const/16 v9, 0x64

    .line 10
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v10, 0x8080000

    .line 11
    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v10

    const/16 v11, 0x16

    .line 13
    new-array v11, v11, [B

    fill-array-data v11, :array_8

    new-array v12, v4, [B

    fill-array-data v12, :array_9

    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v9, v9, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v10, v12}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v11, v0, v10}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    invoke-static {v0, v10}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 16
    :goto_3
    :try_start_2
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 17
    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v9, v9, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 20
    invoke-virtual {v6, v0}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/16 v0, 0x16

    .line 21
    :try_start_3
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    new-array v2, v4, [B

    fill-array-data v2, :array_b

    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x5

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 23
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x18

    new-array v8, v8, [B

    fill-array-data v8, :array_c

    new-array v9, v4, [B

    fill-array-data v9, :array_d

    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    const/16 v0, 0x18

    .line 24
    :try_start_5
    new-array v0, v0, [B

    fill-array-data v0, :array_e

    new-array v2, v4, [B

    fill-array-data v2, :array_f

    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 26
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x14

    new-array v5, v5, [B

    fill-array-data v5, :array_10

    new-array v4, v4, [B

    fill-array-data v4, :array_11

    invoke-static {v5, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 27
    :goto_5
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    invoke-static {v0, v2}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    :goto_6
    return-void

    .line 29
    :pswitch_2
    iget-object v0, v1, Lu1/a;->c:Lu1/d;

    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x7

    .line 31
    new-array v5, v5, [B

    fill-array-data v5, :array_12

    new-array v6, v4, [B

    fill-array-data v6, :array_13

    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_2

    const/16 v0, 0x16

    .line 33
    new-array v0, v0, [B

    fill-array-data v0, :array_14

    new-array v2, v4, [B

    fill-array-data v2, :array_15

    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    invoke-static {v0, v2}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    goto/16 :goto_a

    .line 34
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/16 v5, 0x22

    .line 35
    new-array v5, v5, [B

    fill-array-data v5, :array_16

    new-array v6, v4, [B

    fill-array-data v6, :array_17

    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    invoke-static {v5, v6}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x10

    new-array v7, v7, [B

    fill-array-data v7, :array_18

    new-array v8, v4, [B

    fill-array-data v8, :array_19

    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    const/4 v5, 0x0

    .line 37
    :goto_7
    array-length v6, v0

    if-ge v5, v6, :cond_b

    .line 38
    aget-object v6, v0, v5

    .line 39
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 40
    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 41
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 42
    invoke-virtual {v6, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 43
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 44
    invoke-virtual {v6, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 45
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 46
    invoke-virtual {v6, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 47
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0xf

    new-array v13, v12, [B

    fill-array-data v13, :array_1a

    new-array v14, v4, [B

    fill-array-data v14, :array_1b

    .line 48
    invoke-static {v13, v14, v11, v5}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    const/4 v13, 0x6

    .line 49
    new-array v13, v13, [B

    fill-array-data v13, :array_1c

    new-array v14, v4, [B

    fill-array-data v14, :array_1d

    .line 50
    invoke-static {v13, v14, v11}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 51
    sget-object v13, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    invoke-static {v11, v13}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 52
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    new-array v14, v12, [B

    fill-array-data v14, :array_1e

    new-array v15, v4, [B

    fill-array-data v15, :array_1f

    invoke-static {v14, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v13}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 53
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    new-array v14, v12, [B

    fill-array-data v14, :array_20

    new-array v15, v4, [B

    fill-array-data v15, :array_21

    invoke-static {v14, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v13}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 54
    new-array v11, v12, [B

    fill-array-data v11, :array_22

    new-array v14, v4, [B

    fill-array-data v14, :array_23

    invoke-static {v11, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Landroid/view/Display;->getState()I

    move-result v14

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v2, 0xc

    const/4 v12, 0x1

    if-eq v14, v12, :cond_6

    if-eq v14, v3, :cond_5

    if-eq v14, v15, :cond_4

    const/4 v12, 0x4

    if-eq v14, v12, :cond_3

    .line 55
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    new-array v15, v4, [B

    fill-array-data v15, :array_24

    new-array v3, v4, [B

    fill-array-data v3, :array_25

    .line 56
    invoke-static {v15, v3, v12, v14}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    const/4 v3, 0x1

    .line 57
    new-array v3, v3, [B

    const/16 v14, 0x33

    aput-byte v14, v3, v16

    new-array v14, v4, [B

    fill-array-data v14, :array_26

    .line 58
    invoke-static {v3, v14, v12}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 59
    :cond_3
    new-array v3, v2, [B

    fill-array-data v3, :array_27

    new-array v12, v4, [B

    fill-array-data v12, :array_28

    invoke-static {v3, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_4
    const/4 v3, 0x4

    .line 60
    new-array v3, v3, [B

    fill-array-data v3, :array_29

    new-array v12, v4, [B

    fill-array-data v12, :array_2a

    invoke-static {v3, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 61
    :cond_5
    new-array v12, v3, [B

    fill-array-data v12, :array_2b

    new-array v3, v4, [B

    fill-array-data v3, :array_2c

    invoke-static {v12, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_6
    move v3, v15

    .line 62
    new-array v12, v3, [B

    fill-array-data v12, :array_2d

    new-array v3, v4, [B

    fill-array-data v3, :array_2e

    invoke-static {v12, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    .line 63
    :goto_8
    invoke-virtual {v11, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    const/16 v3, 0xf

    .line 64
    new-array v11, v3, [B

    fill-array-data v11, :array_2f

    new-array v3, v4, [B

    fill-array-data v3, :array_30

    invoke-static {v11, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v11

    if-eqz v11, :cond_a

    const/4 v12, 0x1

    if-eq v11, v12, :cond_9

    const/4 v12, 0x2

    if-eq v11, v12, :cond_8

    const/4 v14, 0x3

    if-eq v11, v14, :cond_7

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v14, v4, [B

    fill-array-data v14, :array_31

    new-array v15, v4, [B

    fill-array-data v15, :array_32

    .line 66
    invoke-static {v14, v15, v2, v11}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    const/4 v11, 0x1

    .line 67
    new-array v11, v11, [B

    const/16 v14, 0x14

    aput-byte v14, v11, v16

    new-array v14, v4, [B

    fill-array-data v14, :array_33

    .line 68
    invoke-static {v11, v14, v2}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 69
    :cond_7
    new-array v2, v2, [B

    fill-array-data v2, :array_34

    new-array v11, v4, [B

    fill-array-data v11, :array_35

    invoke-static {v2, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 70
    :cond_8
    new-array v2, v2, [B

    fill-array-data v2, :array_36

    new-array v11, v4, [B

    fill-array-data v11, :array_37

    invoke-static {v2, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_9
    const/4 v12, 0x2

    const/16 v2, 0xb

    .line 71
    new-array v2, v2, [B

    fill-array-data v2, :array_38

    new-array v11, v4, [B

    fill-array-data v11, :array_39

    invoke-static {v2, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_a
    const/4 v12, 0x2

    const/16 v2, 0xa

    .line 72
    new-array v2, v2, [B

    fill-array-data v2, :array_3a

    new-array v11, v4, [B

    fill-array-data v11, :array_3b

    invoke-static {v2, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v2

    .line 73
    :goto_9
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xf

    new-array v11, v3, [B

    fill-array-data v11, :array_3c

    new-array v3, v4, [B

    fill-array-data v3, :array_3d

    invoke-static {v11, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v14, 0x3

    new-array v3, v14, [B

    fill-array-data v3, :array_3e

    new-array v11, v4, [B

    fill-array-data v11, :array_3f

    invoke-static {v3, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xe

    new-array v3, v3, [B

    fill-array-data v3, :array_40

    new-array v9, v4, [B

    fill-array-data v9, :array_41

    invoke-static {v3, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v14, 0x3

    new-array v3, v14, [B

    fill-array-data v3, :array_42

    new-array v9, v4, [B

    fill-array-data v9, :array_43

    invoke-static {v3, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xf

    new-array v9, v3, [B

    fill-array-data v9, :array_44

    new-array v3, v4, [B

    fill-array-data v3, :array_45

    invoke-static {v9, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xf

    new-array v9, v3, [B

    fill-array-data v9, :array_46

    new-array v3, v4, [B

    fill-array-data v3, :array_47

    invoke-static {v9, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x11

    new-array v3, v3, [B

    fill-array-data v3, :array_48

    new-array v7, v4, [B

    fill-array-data v7, :array_49

    invoke-static {v3, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xf

    new-array v3, v3, [B

    fill-array-data v3, :array_4a

    new-array v7, v4, [B

    fill-array-data v7, :array_4b

    invoke-static {v3, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v14, 0x3

    new-array v3, v14, [B

    fill-array-data v3, :array_4c

    new-array v7, v4, [B

    fill-array-data v7, :array_4d

    invoke-static {v3, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x11

    new-array v3, v3, [B

    fill-array-data v3, :array_4e

    new-array v7, v4, [B

    fill-array-data v7, :array_4f

    invoke-static {v3, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/view/Display;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    const/16 v2, 0x20

    .line 81
    new-array v2, v2, [B

    fill-array-data v2, :array_50

    new-array v3, v4, [B

    fill-array-data v3, :array_51

    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lh0/b;->v(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    move v3, v12

    goto/16 :goto_7

    :cond_b
    const/16 v0, 0x21

    .line 82
    new-array v0, v0, [B

    fill-array-data v0, :array_52

    new-array v2, v4, [B

    fill-array-data v2, :array_53

    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x77t
        -0x15t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3dt
        -0x45t
        -0xbt
        0x5dt
        -0x5at
        -0x1dt
        -0x36t
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x72t
        -0xft
        0x1t
        -0xft
        0x43t
        -0x62t
        -0x3t
        -0x31t
        0x62t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5t
        -0x68t
        0x6ft
        -0x6bt
        0x2ct
        -0x17t
        -0x6ct
        -0x5ft
    .end array-data

    :array_4
    .array-data 1
        0x58t
        0x5t
        0x2dt
        -0x45t
        0x37t
        -0x3et
        -0x6t
        0x5dt
        0x6at
        0x2t
        0x37t
        -0x4ft
        0x69t
        -0x3et
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1et
        0x6at
        0x58t
        -0x2bt
        0x53t
        -0x1et
        -0x69t
        0x38t
    .end array-data

    :array_6
    .array-data 1
        -0x7t
        -0x42t
        -0x4et
        -0x2t
        0x1ft
        0x66t
        -0x1ft
        0xct
        -0x7t
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x27t
        -0x32t
        -0x2dt
        -0x74t
        0x7et
        0xbt
        -0x6et
        0x36t
    .end array-data

    :array_8
    .array-data 1
        -0x6et
        0x10t
        0x1at
        -0x1bt
        -0x49t
        0x32t
        0x78t
        0x36t
        -0x77t
        0x22t
        0x7t
        -0x39t
        -0x4et
        0x28t
        0x61t
        0x3ct
        -0x71t
        0x12t
        0x23t
        -0x3at
        -0x4et
        0x22t
    .end array-data

    nop

    :array_9
    .array-data 1
        -0x1ft
        0x75t
        0x6et
        -0x57t
        -0x2at
        0x47t
        0x16t
        0x55t
    .end array-data

    :array_a
    .array-data 1
        0x1at
        0x1ct
        -0x44t
        0x7et
        -0x6dt
        0x18t
        -0x8t
        0x3dt
        0x1t
        0x2et
        -0x5ft
        0x5ct
        -0x6at
        0x2t
        -0x1ft
        0x37t
        0x7t
        0x1et
        -0x7bt
        0x5dt
        -0x6at
        0x8t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x69t
        0x79t
        -0x38t
        0x32t
        -0xet
        0x6dt
        -0x6at
        0x5et
    .end array-data

    :array_c
    .array-data 1
        -0x39t
        -0x11t
        0x51t
        0x54t
        -0x55t
        0x44t
        -0x2ct
        -0x6bt
        -0x9t
        -0x5at
        0x52t
        0x5ft
        -0x60t
        0x56t
        -0x63t
        -0x63t
        -0xft
        -0x11t
        0x53t
        0x55t
        -0x60t
        0x13t
        -0x70t
        -0x25t
    .end array-data

    :array_d
    .array-data 1
        -0x70t
        -0x7at
        0x3ft
        0x30t
        -0x3ct
        0x33t
        -0x43t
        -0x5t
    .end array-data

    :array_e
    .array-data 1
        0x1bt
        -0x75t
        -0x38t
        -0x1bt
        0x5at
        0x62t
        0x37t
        0x5ft
        0x3bt
        -0x73t
        -0x32t
        -0x2dt
        0x4ft
        0x60t
        0x1dt
        0x59t
        0xdt
        -0x71t
        -0x38t
        -0x2dt
        0x67t
        0x61t
        0x3at
        0x4et
    .end array-data

    :array_f
    .array-data 1
        0x68t
        -0x12t
        -0x44t
        -0x4at
        0x2at
        0xet
        0x5et
        0x2bt
    .end array-data

    :array_10
    .array-data 1
        0x30t
        -0x11t
        -0x76t
        -0x80t
        0x3at
        0xat
        -0x16t
        -0x16t
        0x7t
        -0x6t
        -0x3at
        -0x71t
        0x2ft
        0x43t
        -0x15t
        -0x20t
        0x7t
        -0x41t
        -0x35t
        -0x37t
    .end array-data

    :array_11
    .array-data 1
        0x63t
        -0x61t
        -0x1at
        -0x17t
        0x4et
        0x2at
        -0x79t
        -0x7bt
    .end array-data

    :array_12
    .array-data 1
        -0x6dt
        -0x59t
        -0x6dt
        0x76t
        0x1bt
        -0x30t
        0x58t
    .end array-data

    :array_13
    .array-data 1
        -0x9t
        -0x32t
        -0x20t
        0x6t
        0x77t
        -0x4ft
        0x21t
        0xdt
    .end array-data

    :array_14
    .array-data 1
        -0x10t
        0x1ft
        -0x40t
        0x31t
        -0x34t
        0x54t
        0x50t
        -0x77t
        -0x2bt
        0x18t
        -0x2et
        0x26t
        -0x3bt
        0x47t
        0x9t
        -0x7t
        -0x77t
        0x56t
        -0x23t
        0x34t
        -0x34t
        0x59t
    .end array-data

    nop

    :array_15
    .array-data 1
        -0x4ct
        0x76t
        -0x4dt
        0x41t
        -0x60t
        0x35t
        0x29t
        -0x3ct
    .end array-data

    :array_16
    .array-data 1
        0x7ft
        -0x7ct
        -0x30t
        0x22t
        0x2at
        0x48t
        0x57t
        0x1ft
        0x7ft
        -0x7ct
        -0x33t
        0x5bt
        0x5et
        0x26t
        0x3at
        0x6et
        0x3t
        -0x20t
        -0x33t
        0x53t
        0x5et
        0x26t
        0x3et
        0x2t
        0x7ft
        -0x7ct
        -0x30t
        0x22t
        0x2at
        0x48t
        0x57t
        0x1ft
        0x7ft
        -0x7ct
    .end array-data

    nop

    :array_17
    .array-data 1
        0x42t
        -0x47t
        -0x13t
        0x1ft
        0x17t
        0x75t
        0x6at
        0x22t
    .end array-data

    :array_18
    .array-data 1
        -0x78t
        -0x7ft
        0x5bt
        0x12t
        0x7ft
        0x3bt
        -0x4ct
        0x47t
        -0x51t
        -0x62t
        0x43t
        0x12t
        0x6at
        0x68t
        -0x16t
        0xet
    .end array-data

    :array_19
    .array-data 1
        -0x24t
        -0x12t
        0x2ft
        0x73t
        0x13t
        0x1bt
        -0x30t
        0x2et
    .end array-data

    :array_1a
    .array-data 1
        0x79t
        -0x7dt
        -0x69t
        0x2dt
        0x68t
        0x73t
        0x53t
        -0x4dt
        0x27t
        -0x22t
        -0x2at
        0x61t
        0x3ct
        0x73t
        0x34t
    .end array-data

    :array_1b
    .array-data 1
        0x54t
        -0x52t
        -0x46t
        0x0t
        0x45t
        0x53t
        0x17t
        -0x26t
    .end array-data

    :array_1c
    .array-data 1
        -0x69t
        -0x60t
        -0x45t
        0x38t
        -0x61t
        0x29t
    .end array-data

    nop

    :array_1d
    .array-data 1
        -0x49t
        -0x73t
        -0x6at
        0x15t
        -0x4et
        0x4t
        -0x58t
        0xat
    .end array-data

    :array_1e
    .array-data 1
        0xet
        -0x38t
        -0x6dt
        0x3ct
        -0x3t
        0x2at
        -0x4et
        -0x4ft
        0x47t
        -0x74t
        -0x6dt
        0x3ct
        -0x3t
        0x37t
        -0x4et
    .end array-data

    :array_1f
    .array-data 1
        0x67t
        -0x54t
        -0x4dt
        0x1ct
        -0x23t
        0xat
        -0x6et
        -0x6ft
    .end array-data

    :array_20
    .array-data 1
        0x16t
        0x62t
        -0x6dt
        0x5dt
        0x54t
        0x22t
        -0x4at
        0x2ft
        0x58t
        0x23t
        -0x22t
        0x18t
        0x54t
        0x3ft
        -0x4at
    .end array-data

    :array_21
    .array-data 1
        0x78t
        0x3t
        -0x2t
        0x38t
        0x74t
        0x2t
        -0x6at
        0xft
    .end array-data

    :array_22
    .array-data 1
        -0x37t
        0x7ct
        0x39t
        0x4at
        0x46t
        -0x11t
        -0x36t
        0x5at
        -0x66t
        0x28t
        0x78t
        0x1et
        0x3t
        -0xet
        -0x36t
    .end array-data

    :array_23
    .array-data 1
        -0x46t
        0x8t
        0x58t
        0x3et
        0x23t
        -0x31t
        -0x16t
        0x7at
    .end array-data

    :array_24
    .array-data 1
        0x37t
        0x69t
        -0x22t
        -0x20t
        -0x32t
        -0x43t
        0x27t
        0xct
    .end array-data

    :array_25
    .array-data 1
        0x62t
        0x27t
        -0x6bt
        -0x52t
        -0x7ft
        -0x16t
        0x69t
        0x24t
    .end array-data

    :array_26
    .array-data 1
        0x1at
        -0x27t
        0x61t
        -0x4et
        -0x1bt
        0x6bt
        0x3bt
        -0x57t
    .end array-data

    :array_27
    .array-data 1
        -0x1dt
        -0x31t
        -0x41t
        -0x33t
        0x19t
        0x42t
        0xbt
        0x74t
        -0x9t
        -0x3bt
        -0x55t
        -0x34t
    .end array-data

    :array_28
    .array-data 1
        -0x59t
        -0x80t
        -0x1bt
        -0x78t
        0x46t
        0x11t
        0x5et
        0x27t
    .end array-data

    :array_29
    .array-data 1
        -0x21t
        -0x59t
        -0x74t
        0x8t
    .end array-data

    :array_2a
    .array-data 1
        -0x65t
        -0x18t
        -0x2at
        0x4dt
        -0x75t
        -0x5at
        -0x2dt
        -0x75t
    .end array-data

    :array_2b
    .array-data 1
        -0x4ft
        0x71t
    .end array-data

    nop

    :array_2c
    .array-data 1
        -0x2t
        0x3ft
        -0x7et
        -0x26t
        0x35t
        -0x3bt
        0xct
        0x4bt
    .end array-data

    :array_2d
    .array-data 1
        -0x3ft
        0x49t
        0x7bt
    .end array-data

    :array_2e
    .array-data 1
        -0x72t
        0xft
        0x3dt
        0x25t
        0x75t
        0x76t
        -0x75t
        -0x4ft
    .end array-data

    :array_2f
    .array-data 1
        -0x10t
        0x43t
        0xdt
        -0x28t
        0x20t
        0x40t
        0x6bt
        0x6t
        -0x5et
        0xct
        0x59t
        -0x67t
        0x74t
        0x14t
        0x24t
    .end array-data

    :array_30
    .array-data 1
        -0x7et
        0x2ct
        0x79t
        -0x47t
        0x54t
        0x29t
        0x4t
        0x68t
    .end array-data

    :array_31
    .array-data 1
        0x31t
        0x14t
        -0x2t
        -0x60t
        -0x33t
        -0x39t
        -0x1et
        -0x57t
    .end array-data

    :array_32
    .array-data 1
        0x64t
        0x5at
        -0x4bt
        -0x12t
        -0x7et
        -0x70t
        -0x54t
        -0x7ft
    .end array-data

    :array_33
    .array-data 1
        0x3dt
        0x5at
        -0x66t
        0x2dt
        0x4bt
        0x1ft
        0x36t
        -0x38t
    .end array-data

    :array_34
    .array-data 1
        -0x6et
        0x5dt
        0x59t
        -0x3at
        -0x1at
        0x1bt
        0x45t
        -0x54t
        -0x61t
        0x20t
        0x3at
        -0x49t
    .end array-data

    :array_35
    .array-data 1
        -0x40t
        0x12t
        0xdt
        -0x79t
        -0x4et
        0x52t
        0xat
        -0x1et
    .end array-data

    :array_36
    .array-data 1
        -0x75t
        0x23t
        -0x1ct
        0x5t
        -0x4at
        0x7t
        -0x3t
        -0x42t
        -0x7at
        0x5dt
        -0x78t
        0x74t
    .end array-data

    :array_37
    .array-data 1
        -0x27t
        0x6ct
        -0x50t
        0x44t
        -0x1et
        0x4et
        -0x4et
        -0x10t
    .end array-data

    :array_38
    .array-data 1
        -0x8t
        0x37t
        -0x76t
        0x19t
        0x7at
        -0xet
        0x53t
        0x34t
        -0xbt
        0x41t
        -0x12t
    .end array-data

    :array_39
    .array-data 1
        -0x56t
        0x78t
        -0x22t
        0x58t
        0x2et
        -0x45t
        0x1ct
        0x7at
    .end array-data

    :array_3a
    .array-data 1
        0x2et
        -0x1t
        -0x20t
        0x79t
        0x6et
        0x7dt
        0x72t
        0xdt
        0x23t
        -0x80t
    .end array-data

    nop

    :array_3b
    .array-data 1
        0x7ct
        -0x50t
        -0x4ct
        0x38t
        0x3at
        0x34t
        0x3dt
        0x43t
    .end array-data

    :array_3c
    .array-data 1
        0x44t
        -0x70t
        -0xat
        -0x54t
        -0x3ct
        -0x6et
        0x46t
        0x5dt
        0x1et
        -0x27t
        -0x54t
        -0x17t
        -0x3ct
        -0x79t
        0x2t
    .end array-data

    :array_3d
    .array-data 1
        0x37t
        -0x7t
        -0x74t
        -0x37t
        -0x1ct
        -0x46t
        0x22t
        0x2dt
    .end array-data

    :array_3e
    .array-data 1
        -0x38t
        -0x5dt
        0x6at
    .end array-data

    :array_3f
    .array-data 1
        -0x18t
        -0x25t
        0x4at
        0x61t
        0x5ft
        0x46t
        -0x67t
        -0x46t
    .end array-data

    :array_40
    .array-data 1
        0x38t
        -0x74t
        0x7bt
        -0x3et
        0x70t
        -0x22t
        0x4t
        -0x69t
        0x62t
        -0x67t
        0x62t
        -0x79t
        0x1et
        -0x69t
    .end array-data

    nop

    :array_41
    .array-data 1
        0x4at
        -0x17t
        0x1at
        -0x52t
        0x23t
        -0x49t
        0x7et
        -0xet
    .end array-data

    :array_42
    .array-data 1
        0x48t
        0x2at
        -0x7ft
    .end array-data

    :array_43
    .array-data 1
        0x68t
        0x52t
        -0x5ft
        0x7at
        -0x4dt
        -0x4ft
        -0x53t
        -0x48t
    .end array-data

    :array_44
    .array-data 1
        0x3ct
        -0x2dt
        0x50t
        0x26t
        0x7et
        -0x75t
        0x34t
        0x79t
        0x28t
        -0x21t
        0x1et
        0x75t
        0x37t
        -0x3et
        0x6dt
    .end array-data

    :array_45
    .array-data 1
        0x58t
        -0x4at
        0x3et
        0x55t
        0x17t
        -0x1t
        0x4dt
        0x3dt
    .end array-data

    :array_46
    .array-data 1
        -0x27t
        -0x68t
        -0x60t
        -0x54t
        -0x6t
        -0x2et
        0x3bt
        0x25t
        -0x63t
        -0x23t
        -0x12t
        -0x1t
        -0x4dt
        -0x65t
        0x62t
    .end array-data

    :array_47
    .array-data 1
        -0x43t
        -0x3t
        -0x32t
        -0x21t
        -0x6dt
        -0x5at
        0x42t
        0x5t
    .end array-data

    :array_48
    .array-data 1
        -0x6bt
        0x6et
        0x8t
        -0x78t
        0x5ft
        0x3dt
        0x3dt
        -0x67t
        -0x72t
        0x7ft
        0x10t
        -0x60t
        0x6bt
        0x31t
        0x73t
        -0x29t
        -0x39t
    .end array-data

    nop

    :array_49
    .array-data 1
        -0x19t
        0xbt
        0x69t
        -0x1ct
        0x1bt
        0x58t
        0x53t
        -0x16t
    .end array-data

    :array_4a
    .array-data 1
        -0x5ft
        0x2ct
        0x5ct
        0xct
        -0x53t
        -0x55t
        -0x76t
        -0x71t
        -0x43t
        0x38t
        0x45t
        0x45t
        -0x53t
        -0x47t
        -0x76t
    .end array-data

    :array_4b
    .array-data 1
        -0x27t
        0x48t
        0x2ct
        0x65t
        -0x73t
        -0x7ct
        -0x56t
        -0xat
    .end array-data

    :array_4c
    .array-data 1
        -0x5t
        0x79t
        -0x3ft
    .end array-data

    :array_4d
    .array-data 1
        -0x25t
        0x56t
        -0x1ft
        0x4ft
        0x14t
        -0x1ft
        0x6et
        0x1ct
    .end array-data

    :array_4e
    .array-data 1
        -0x7ft
        0x8t
        -0x51t
        0x65t
        -0x7t
        0x3bt
        0x2bt
        -0x6et
        -0x39t
        0x44t
        -0x12t
        0x22t
        -0x56t
        0x26t
        0x2bt
        -0x7et
        -0x61t
    .end array-data

    nop

    :array_4f
    .array-data 1
        -0x19t
        0x64t
        -0x32t
        0x2t
        -0x76t
        0x1bt
        0xbt
        -0x4et
    .end array-data

    :array_50
    .array-data 1
        -0x38t
        -0xct
        -0x6t
        -0x56t
        0x12t
        0x24t
        0x0t
        -0x1ft
        -0x38t
        -0xct
        -0x6t
        -0x56t
        0x12t
        0x24t
        0x0t
        -0x1ft
        -0x38t
        -0xct
        -0x6t
        -0x56t
        0x12t
        0x24t
        0x0t
        -0x1ft
        -0x38t
        -0xct
        -0x6t
        -0x56t
        0x12t
        0x24t
        0x0t
        -0x1ft
    .end array-data

    :array_51
    .array-data 1
        -0x1bt
        -0x27t
        -0x29t
        -0x79t
        0x3ft
        0x9t
        0x2dt
        -0x34t
    .end array-data

    :array_52
    .array-data 1
        -0xet
        -0x1et
        -0x55t
        0x3bt
        0x4at
        -0x10t
        -0x4et
        0x44t
        -0xet
        -0x1et
        -0x55t
        0x3bt
        0x4at
        -0x10t
        -0x4et
        0x44t
        -0xet
        -0x1et
        -0x55t
        0x3bt
        0x4at
        -0x10t
        -0x4et
        0x44t
        -0xet
        -0x1et
        -0x55t
        0x3bt
        0x4at
        -0x10t
        -0x4et
        0x44t
        -0xet
    .end array-data

    nop

    :array_53
    .array-data 1
        -0x31t
        -0x21t
        -0x6at
        0x6t
        0x77t
        -0x33t
        -0x71t
        0x79t
    .end array-data
.end method
