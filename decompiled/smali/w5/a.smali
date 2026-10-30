.class public Lw5/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final b:Ljava/io/Reader;

.field public c:Z

.field public final d:[C

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:J

.field public k:I

.field public l:Ljava/lang/String;

.field public m:[I

.field public n:I

.field public o:[Ljava/lang/String;

.field public p:[I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lw5/a;->c:Z

    .line 6
    .line 7
    const/16 v1, 0x400

    .line 8
    .line 9
    new-array v1, v1, [C

    .line 10
    .line 11
    iput-object v1, p0, Lw5/a;->d:[C

    .line 12
    .line 13
    iput v0, p0, Lw5/a;->e:I

    .line 14
    .line 15
    iput v0, p0, Lw5/a;->f:I

    .line 16
    .line 17
    iput v0, p0, Lw5/a;->g:I

    .line 18
    .line 19
    iput v0, p0, Lw5/a;->h:I

    .line 20
    .line 21
    iput v0, p0, Lw5/a;->i:I

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    new-array v2, v1, [I

    .line 26
    .line 27
    iput-object v2, p0, Lw5/a;->m:[I

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    iput v3, p0, Lw5/a;->n:I

    .line 31
    .line 32
    const/4 v3, 0x6

    .line 33
    aput v3, v2, v0

    .line 34
    .line 35
    new-array v0, v1, [Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lw5/a;->o:[Ljava/lang/String;

    .line 38
    .line 39
    new-array v0, v1, [I

    .line 40
    .line 41
    iput-object v0, p0, Lw5/a;->p:[I

    .line 42
    .line 43
    iput-object p1, p0, Lw5/a;->b:Ljava/io/Reader;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final S()I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lw5/a;->m:[I

    .line 4
    .line 5
    iget v2, v0, Lw5/a;->n:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    sub-int/2addr v2, v3

    .line 9
    aget v4, v1, v2

    .line 10
    .line 11
    const/16 v8, 0xa

    .line 12
    .line 13
    const/16 v10, 0x27

    .line 14
    .line 15
    const/4 v11, 0x6

    .line 16
    const/16 v12, 0x5d

    .line 17
    .line 18
    const/16 v13, 0x3b

    .line 19
    .line 20
    const/16 v14, 0x2c

    .line 21
    .line 22
    const/4 v15, 0x3

    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    iget-object v6, v0, Lw5/a;->d:[C

    .line 26
    .line 27
    const/4 v7, 0x4

    .line 28
    const/4 v9, 0x5

    .line 29
    const/16 v18, 0x7

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    if-ne v4, v3, :cond_1

    .line 33
    .line 34
    aput v5, v1, v2

    .line 35
    .line 36
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    if-ne v4, v5, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Lw5/a;->k0(Z)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eq v1, v14, :cond_0

    .line 46
    .line 47
    if-eq v1, v13, :cond_3

    .line 48
    .line 49
    if-ne v1, v12, :cond_2

    .line 50
    .line 51
    iput v7, v0, Lw5/a;->i:I

    .line 52
    .line 53
    return v7

    .line 54
    :cond_2
    const-string v1, "Unterminated array"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lw5/a;->s0(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v16

    .line 60
    :cond_3
    invoke-virtual {v0}, Lw5/a;->y()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const/16 v5, 0x7d

    .line 65
    .line 66
    if-eq v4, v15, :cond_5

    .line 67
    .line 68
    if-ne v4, v9, :cond_6

    .line 69
    .line 70
    :cond_5
    move/from16 v19, v7

    .line 71
    .line 72
    goto/16 :goto_19

    .line 73
    .line 74
    :cond_6
    if-ne v4, v7, :cond_9

    .line 75
    .line 76
    aput v9, v1, v2

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Lw5/a;->k0(Z)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/16 v2, 0x3a

    .line 83
    .line 84
    if-eq v1, v2, :cond_0

    .line 85
    .line 86
    const/16 v2, 0x3d

    .line 87
    .line 88
    if-ne v1, v2, :cond_8

    .line 89
    .line 90
    invoke-virtual {v0}, Lw5/a;->y()V

    .line 91
    .line 92
    .line 93
    iget v1, v0, Lw5/a;->e:I

    .line 94
    .line 95
    iget v2, v0, Lw5/a;->f:I

    .line 96
    .line 97
    if-lt v1, v2, :cond_7

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lw5/a;->d0(I)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_0

    .line 104
    .line 105
    :cond_7
    iget v1, v0, Lw5/a;->e:I

    .line 106
    .line 107
    aget-char v2, v6, v1

    .line 108
    .line 109
    const/16 v5, 0x3e

    .line 110
    .line 111
    if-ne v2, v5, :cond_0

    .line 112
    .line 113
    add-int/2addr v1, v3

    .line 114
    iput v1, v0, Lw5/a;->e:I

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_8
    const-string v1, "Expected \':\'"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lw5/a;->s0(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v16

    .line 123
    :cond_9
    if-ne v4, v11, :cond_d

    .line 124
    .line 125
    iget-boolean v1, v0, Lw5/a;->c:Z

    .line 126
    .line 127
    if-eqz v1, :cond_c

    .line 128
    .line 129
    invoke-virtual {v0, v3}, Lw5/a;->k0(Z)I

    .line 130
    .line 131
    .line 132
    iget v1, v0, Lw5/a;->e:I

    .line 133
    .line 134
    add-int/lit8 v2, v1, -0x1

    .line 135
    .line 136
    iput v2, v0, Lw5/a;->e:I

    .line 137
    .line 138
    add-int/lit8 v1, v1, 0x4

    .line 139
    .line 140
    iget v2, v0, Lw5/a;->f:I

    .line 141
    .line 142
    if-le v1, v2, :cond_a

    .line 143
    .line 144
    invoke-virtual {v0, v9}, Lw5/a;->d0(I)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_a

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_a
    iget v1, v0, Lw5/a;->e:I

    .line 152
    .line 153
    aget-char v2, v6, v1

    .line 154
    .line 155
    const/16 v7, 0x29

    .line 156
    .line 157
    if-ne v2, v7, :cond_c

    .line 158
    .line 159
    add-int/lit8 v2, v1, 0x1

    .line 160
    .line 161
    aget-char v2, v6, v2

    .line 162
    .line 163
    if-ne v2, v12, :cond_c

    .line 164
    .line 165
    add-int/lit8 v2, v1, 0x2

    .line 166
    .line 167
    aget-char v2, v6, v2

    .line 168
    .line 169
    if-ne v2, v5, :cond_c

    .line 170
    .line 171
    add-int/lit8 v2, v1, 0x3

    .line 172
    .line 173
    aget-char v2, v6, v2

    .line 174
    .line 175
    if-ne v2, v10, :cond_c

    .line 176
    .line 177
    add-int/lit8 v2, v1, 0x4

    .line 178
    .line 179
    aget-char v2, v6, v2

    .line 180
    .line 181
    if-eq v2, v8, :cond_b

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_b
    add-int/2addr v1, v9

    .line 185
    iput v1, v0, Lw5/a;->e:I

    .line 186
    .line 187
    :cond_c
    :goto_1
    iget-object v1, v0, Lw5/a;->m:[I

    .line 188
    .line 189
    iget v2, v0, Lw5/a;->n:I

    .line 190
    .line 191
    sub-int/2addr v2, v3

    .line 192
    aput v18, v1, v2

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_d
    move/from16 v1, v18

    .line 197
    .line 198
    if-ne v4, v1, :cond_f

    .line 199
    .line 200
    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Lw5/a;->k0(Z)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    const/4 v5, -0x1

    .line 206
    if-ne v2, v5, :cond_e

    .line 207
    .line 208
    const/16 v1, 0x11

    .line 209
    .line 210
    iput v1, v0, Lw5/a;->i:I

    .line 211
    .line 212
    return v1

    .line 213
    :cond_e
    invoke-virtual {v0}, Lw5/a;->y()V

    .line 214
    .line 215
    .line 216
    iget v2, v0, Lw5/a;->e:I

    .line 217
    .line 218
    sub-int/2addr v2, v3

    .line 219
    iput v2, v0, Lw5/a;->e:I

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_f
    const/4 v1, 0x0

    .line 223
    const/16 v2, 0x8

    .line 224
    .line 225
    if-eq v4, v2, :cond_41

    .line 226
    .line 227
    :goto_2
    invoke-virtual {v0, v3}, Lw5/a;->k0(Z)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    const/16 v5, 0x22

    .line 232
    .line 233
    if-eq v2, v5, :cond_40

    .line 234
    .line 235
    if-eq v2, v10, :cond_3f

    .line 236
    .line 237
    if-eq v2, v14, :cond_3c

    .line 238
    .line 239
    if-eq v2, v13, :cond_3c

    .line 240
    .line 241
    const/16 v5, 0x5b

    .line 242
    .line 243
    if-eq v2, v5, :cond_3b

    .line 244
    .line 245
    if-eq v2, v12, :cond_3a

    .line 246
    .line 247
    const/16 v4, 0x7b

    .line 248
    .line 249
    if-eq v2, v4, :cond_39

    .line 250
    .line 251
    iget v2, v0, Lw5/a;->e:I

    .line 252
    .line 253
    sub-int/2addr v2, v3

    .line 254
    iput v2, v0, Lw5/a;->e:I

    .line 255
    .line 256
    aget-char v2, v6, v2

    .line 257
    .line 258
    const/16 v4, 0x74

    .line 259
    .line 260
    if-eq v2, v4, :cond_15

    .line 261
    .line 262
    const/16 v4, 0x54

    .line 263
    .line 264
    if-ne v2, v4, :cond_10

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_10
    const/16 v4, 0x66

    .line 268
    .line 269
    if-eq v2, v4, :cond_14

    .line 270
    .line 271
    const/16 v4, 0x46

    .line 272
    .line 273
    if-ne v2, v4, :cond_11

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_11
    const/16 v4, 0x6e

    .line 277
    .line 278
    if-eq v2, v4, :cond_13

    .line 279
    .line 280
    const/16 v4, 0x4e

    .line 281
    .line 282
    if-ne v2, v4, :cond_12

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_12
    :goto_3
    move v5, v1

    .line 286
    goto :goto_9

    .line 287
    :cond_13
    :goto_4
    const-string v2, "null"

    .line 288
    .line 289
    const-string v4, "NULL"

    .line 290
    .line 291
    const/4 v5, 0x7

    .line 292
    goto :goto_7

    .line 293
    :cond_14
    :goto_5
    const-string v2, "false"

    .line 294
    .line 295
    const-string v4, "FALSE"

    .line 296
    .line 297
    move v5, v11

    .line 298
    goto :goto_7

    .line 299
    :cond_15
    :goto_6
    const-string v2, "true"

    .line 300
    .line 301
    const-string v4, "TRUE"

    .line 302
    .line 303
    move v5, v9

    .line 304
    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 305
    .line 306
    .line 307
    move-result v7

    .line 308
    move v10, v3

    .line 309
    :goto_8
    iget v12, v0, Lw5/a;->e:I

    .line 310
    .line 311
    iget v13, v0, Lw5/a;->f:I

    .line 312
    .line 313
    if-ge v10, v7, :cond_18

    .line 314
    .line 315
    add-int/2addr v12, v10

    .line 316
    if-lt v12, v13, :cond_16

    .line 317
    .line 318
    add-int/lit8 v12, v10, 0x1

    .line 319
    .line 320
    invoke-virtual {v0, v12}, Lw5/a;->d0(I)Z

    .line 321
    .line 322
    .line 323
    move-result v12

    .line 324
    if-nez v12, :cond_16

    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_16
    iget v12, v0, Lw5/a;->e:I

    .line 328
    .line 329
    add-int/2addr v12, v10

    .line 330
    aget-char v12, v6, v12

    .line 331
    .line 332
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    .line 333
    .line 334
    .line 335
    move-result v13

    .line 336
    if-eq v12, v13, :cond_17

    .line 337
    .line 338
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    .line 339
    .line 340
    .line 341
    move-result v13

    .line 342
    if-eq v12, v13, :cond_17

    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_17
    add-int/lit8 v10, v10, 0x1

    .line 346
    .line 347
    goto :goto_8

    .line 348
    :cond_18
    add-int/2addr v12, v7

    .line 349
    if-lt v12, v13, :cond_19

    .line 350
    .line 351
    add-int/lit8 v2, v7, 0x1

    .line 352
    .line 353
    invoke-virtual {v0, v2}, Lw5/a;->d0(I)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_1a

    .line 358
    .line 359
    :cond_19
    iget v2, v0, Lw5/a;->e:I

    .line 360
    .line 361
    add-int/2addr v2, v7

    .line 362
    aget-char v2, v6, v2

    .line 363
    .line 364
    invoke-virtual {v0, v2}, Lw5/a;->g0(C)Z

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    if-eqz v2, :cond_1a

    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_1a
    iget v2, v0, Lw5/a;->e:I

    .line 372
    .line 373
    add-int/2addr v2, v7

    .line 374
    iput v2, v0, Lw5/a;->e:I

    .line 375
    .line 376
    iput v5, v0, Lw5/a;->i:I

    .line 377
    .line 378
    :goto_9
    if-eqz v5, :cond_1b

    .line 379
    .line 380
    return v5

    .line 381
    :cond_1b
    iget v2, v0, Lw5/a;->e:I

    .line 382
    .line 383
    iget v4, v0, Lw5/a;->f:I

    .line 384
    .line 385
    move v5, v1

    .line 386
    move v7, v5

    .line 387
    move/from16 v17, v7

    .line 388
    .line 389
    move v14, v2

    .line 390
    move v10, v3

    .line 391
    const-wide/16 v1, 0x0

    .line 392
    .line 393
    const-wide/16 v20, 0x0

    .line 394
    .line 395
    :goto_a
    add-int v12, v14, v7

    .line 396
    .line 397
    if-ne v12, v4, :cond_1f

    .line 398
    .line 399
    array-length v4, v6

    .line 400
    if-ne v7, v4, :cond_1d

    .line 401
    .line 402
    :cond_1c
    :goto_b
    const/4 v9, 0x0

    .line 403
    goto/16 :goto_17

    .line 404
    .line 405
    :cond_1d
    add-int/lit8 v4, v7, 0x1

    .line 406
    .line 407
    invoke-virtual {v0, v4}, Lw5/a;->d0(I)Z

    .line 408
    .line 409
    .line 410
    move-result v4

    .line 411
    if-nez v4, :cond_1e

    .line 412
    .line 413
    :goto_c
    const/4 v13, 0x2

    .line 414
    goto/16 :goto_11

    .line 415
    .line 416
    :cond_1e
    iget v4, v0, Lw5/a;->e:I

    .line 417
    .line 418
    iget v12, v0, Lw5/a;->f:I

    .line 419
    .line 420
    move v14, v4

    .line 421
    move v4, v12

    .line 422
    :cond_1f
    add-int v12, v14, v7

    .line 423
    .line 424
    aget-char v12, v6, v12

    .line 425
    .line 426
    const/16 v13, 0x2b

    .line 427
    .line 428
    if-eq v12, v13, :cond_35

    .line 429
    .line 430
    const/16 v13, 0x45

    .line 431
    .line 432
    if-eq v12, v13, :cond_33

    .line 433
    .line 434
    const/16 v13, 0x65

    .line 435
    .line 436
    if-eq v12, v13, :cond_33

    .line 437
    .line 438
    const/16 v13, 0x2d

    .line 439
    .line 440
    if-eq v12, v13, :cond_31

    .line 441
    .line 442
    const/16 v13, 0x2e

    .line 443
    .line 444
    if-eq v12, v13, :cond_30

    .line 445
    .line 446
    const/16 v13, 0x30

    .line 447
    .line 448
    if-lt v12, v13, :cond_29

    .line 449
    .line 450
    const/16 v13, 0x39

    .line 451
    .line 452
    if-le v12, v13, :cond_20

    .line 453
    .line 454
    goto :goto_10

    .line 455
    :cond_20
    if-eq v5, v3, :cond_28

    .line 456
    .line 457
    if-nez v5, :cond_21

    .line 458
    .line 459
    goto :goto_f

    .line 460
    :cond_21
    const/4 v13, 0x2

    .line 461
    if-ne v5, v13, :cond_25

    .line 462
    .line 463
    cmp-long v13, v1, v20

    .line 464
    .line 465
    if-nez v13, :cond_22

    .line 466
    .line 467
    goto :goto_b

    .line 468
    :cond_22
    const-wide/16 v22, 0xa

    .line 469
    .line 470
    mul-long v22, v22, v1

    .line 471
    .line 472
    add-int/lit8 v12, v12, -0x30

    .line 473
    .line 474
    int-to-long v12, v12

    .line 475
    sub-long v22, v22, v12

    .line 476
    .line 477
    const-wide v12, -0xcccccccccccccccL

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    cmp-long v12, v1, v12

    .line 483
    .line 484
    if-gtz v12, :cond_24

    .line 485
    .line 486
    if-nez v12, :cond_23

    .line 487
    .line 488
    cmp-long v1, v22, v1

    .line 489
    .line 490
    if-gez v1, :cond_23

    .line 491
    .line 492
    goto :goto_d

    .line 493
    :cond_23
    const/4 v1, 0x0

    .line 494
    goto :goto_e

    .line 495
    :cond_24
    :goto_d
    move v1, v3

    .line 496
    :goto_e
    and-int/2addr v10, v1

    .line 497
    move-wide/from16 v1, v22

    .line 498
    .line 499
    goto/16 :goto_16

    .line 500
    .line 501
    :cond_25
    if-ne v5, v15, :cond_26

    .line 502
    .line 503
    const/4 v5, 0x4

    .line 504
    goto/16 :goto_16

    .line 505
    .line 506
    :cond_26
    if-eq v5, v9, :cond_27

    .line 507
    .line 508
    if-ne v5, v11, :cond_36

    .line 509
    .line 510
    :cond_27
    const/4 v5, 0x7

    .line 511
    goto/16 :goto_16

    .line 512
    .line 513
    :cond_28
    :goto_f
    add-int/lit8 v12, v12, -0x30

    .line 514
    .line 515
    neg-int v1, v12

    .line 516
    int-to-long v1, v1

    .line 517
    const/4 v5, 0x2

    .line 518
    goto/16 :goto_16

    .line 519
    .line 520
    :cond_29
    :goto_10
    invoke-virtual {v0, v12}, Lw5/a;->g0(C)Z

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    if-nez v3, :cond_1c

    .line 525
    .line 526
    goto :goto_c

    .line 527
    :goto_11
    if-ne v5, v13, :cond_2e

    .line 528
    .line 529
    if-eqz v10, :cond_2a

    .line 530
    .line 531
    const-wide/high16 v3, -0x8000000000000000L

    .line 532
    .line 533
    cmp-long v3, v1, v3

    .line 534
    .line 535
    if-nez v3, :cond_2b

    .line 536
    .line 537
    if-eqz v17, :cond_2a

    .line 538
    .line 539
    goto :goto_12

    .line 540
    :cond_2a
    const/4 v13, 0x2

    .line 541
    goto :goto_14

    .line 542
    :cond_2b
    :goto_12
    cmp-long v3, v1, v20

    .line 543
    .line 544
    if-nez v3, :cond_2c

    .line 545
    .line 546
    if-nez v17, :cond_2a

    .line 547
    .line 548
    :cond_2c
    if-eqz v17, :cond_2d

    .line 549
    .line 550
    goto :goto_13

    .line 551
    :cond_2d
    neg-long v1, v1

    .line 552
    :goto_13
    iput-wide v1, v0, Lw5/a;->j:J

    .line 553
    .line 554
    iget v1, v0, Lw5/a;->e:I

    .line 555
    .line 556
    add-int/2addr v1, v7

    .line 557
    iput v1, v0, Lw5/a;->e:I

    .line 558
    .line 559
    const/16 v9, 0xf

    .line 560
    .line 561
    iput v9, v0, Lw5/a;->i:I

    .line 562
    .line 563
    goto :goto_17

    .line 564
    :cond_2e
    :goto_14
    if-eq v5, v13, :cond_2f

    .line 565
    .line 566
    const/4 v1, 0x4

    .line 567
    if-eq v5, v1, :cond_2f

    .line 568
    .line 569
    const/4 v1, 0x7

    .line 570
    if-ne v5, v1, :cond_1c

    .line 571
    .line 572
    :cond_2f
    iput v7, v0, Lw5/a;->k:I

    .line 573
    .line 574
    const/16 v9, 0x10

    .line 575
    .line 576
    iput v9, v0, Lw5/a;->i:I

    .line 577
    .line 578
    goto :goto_17

    .line 579
    :cond_30
    const/4 v13, 0x2

    .line 580
    if-ne v5, v13, :cond_1c

    .line 581
    .line 582
    move v5, v15

    .line 583
    goto :goto_16

    .line 584
    :cond_31
    const/4 v13, 0x2

    .line 585
    if-nez v5, :cond_32

    .line 586
    .line 587
    move v5, v3

    .line 588
    move/from16 v17, v5

    .line 589
    .line 590
    goto :goto_16

    .line 591
    :cond_32
    if-ne v5, v9, :cond_1c

    .line 592
    .line 593
    :goto_15
    move v5, v11

    .line 594
    goto :goto_16

    .line 595
    :cond_33
    const/4 v13, 0x2

    .line 596
    if-eq v5, v13, :cond_34

    .line 597
    .line 598
    const/4 v12, 0x4

    .line 599
    if-ne v5, v12, :cond_1c

    .line 600
    .line 601
    :cond_34
    move v5, v9

    .line 602
    goto :goto_16

    .line 603
    :cond_35
    if-ne v5, v9, :cond_1c

    .line 604
    .line 605
    goto :goto_15

    .line 606
    :cond_36
    :goto_16
    add-int/lit8 v7, v7, 0x1

    .line 607
    .line 608
    goto/16 :goto_a

    .line 609
    .line 610
    :goto_17
    if-eqz v9, :cond_37

    .line 611
    .line 612
    return v9

    .line 613
    :cond_37
    iget v1, v0, Lw5/a;->e:I

    .line 614
    .line 615
    aget-char v1, v6, v1

    .line 616
    .line 617
    invoke-virtual {v0, v1}, Lw5/a;->g0(C)Z

    .line 618
    .line 619
    .line 620
    move-result v1

    .line 621
    if-eqz v1, :cond_38

    .line 622
    .line 623
    invoke-virtual {v0}, Lw5/a;->y()V

    .line 624
    .line 625
    .line 626
    iput v8, v0, Lw5/a;->i:I

    .line 627
    .line 628
    return v8

    .line 629
    :cond_38
    const-string v1, "Expected value"

    .line 630
    .line 631
    invoke-virtual {v0, v1}, Lw5/a;->s0(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    throw v16

    .line 635
    :cond_39
    iput v3, v0, Lw5/a;->i:I

    .line 636
    .line 637
    return v3

    .line 638
    :cond_3a
    if-ne v4, v3, :cond_3c

    .line 639
    .line 640
    const/4 v1, 0x4

    .line 641
    iput v1, v0, Lw5/a;->i:I

    .line 642
    .line 643
    return v1

    .line 644
    :cond_3b
    iput v15, v0, Lw5/a;->i:I

    .line 645
    .line 646
    return v15

    .line 647
    :cond_3c
    if-eq v4, v3, :cond_3e

    .line 648
    .line 649
    const/4 v13, 0x2

    .line 650
    if-ne v4, v13, :cond_3d

    .line 651
    .line 652
    goto :goto_18

    .line 653
    :cond_3d
    const-string v1, "Unexpected value"

    .line 654
    .line 655
    invoke-virtual {v0, v1}, Lw5/a;->s0(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    throw v16

    .line 659
    :cond_3e
    :goto_18
    invoke-virtual {v0}, Lw5/a;->y()V

    .line 660
    .line 661
    .line 662
    iget v1, v0, Lw5/a;->e:I

    .line 663
    .line 664
    sub-int/2addr v1, v3

    .line 665
    iput v1, v0, Lw5/a;->e:I

    .line 666
    .line 667
    const/4 v1, 0x7

    .line 668
    iput v1, v0, Lw5/a;->i:I

    .line 669
    .line 670
    return v1

    .line 671
    :cond_3f
    invoke-virtual {v0}, Lw5/a;->y()V

    .line 672
    .line 673
    .line 674
    const/16 v2, 0x8

    .line 675
    .line 676
    iput v2, v0, Lw5/a;->i:I

    .line 677
    .line 678
    return v2

    .line 679
    :cond_40
    const/16 v1, 0x9

    .line 680
    .line 681
    iput v1, v0, Lw5/a;->i:I

    .line 682
    .line 683
    return v1

    .line 684
    :cond_41
    const-string v1, "JsonReader is closed"

    .line 685
    .line 686
    invoke-static {v1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    const/4 v1, 0x0

    .line 690
    return v1

    .line 691
    :goto_19
    aput v19, v1, v2

    .line 692
    .line 693
    if-ne v4, v9, :cond_44

    .line 694
    .line 695
    invoke-virtual {v0, v3}, Lw5/a;->k0(Z)I

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    if-eq v1, v14, :cond_44

    .line 700
    .line 701
    if-eq v1, v13, :cond_43

    .line 702
    .line 703
    if-ne v1, v5, :cond_42

    .line 704
    .line 705
    const/4 v13, 0x2

    .line 706
    iput v13, v0, Lw5/a;->i:I

    .line 707
    .line 708
    return v13

    .line 709
    :cond_42
    const-string v1, "Unterminated object"

    .line 710
    .line 711
    invoke-virtual {v0, v1}, Lw5/a;->s0(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    throw v16

    .line 715
    :cond_43
    invoke-virtual {v0}, Lw5/a;->y()V

    .line 716
    .line 717
    .line 718
    :cond_44
    invoke-virtual {v0, v3}, Lw5/a;->k0(Z)I

    .line 719
    .line 720
    .line 721
    move-result v1

    .line 722
    const/16 v2, 0x22

    .line 723
    .line 724
    if-eq v1, v2, :cond_49

    .line 725
    .line 726
    if-eq v1, v10, :cond_48

    .line 727
    .line 728
    const-string v2, "Expected name"

    .line 729
    .line 730
    if-eq v1, v5, :cond_46

    .line 731
    .line 732
    invoke-virtual {v0}, Lw5/a;->y()V

    .line 733
    .line 734
    .line 735
    iget v4, v0, Lw5/a;->e:I

    .line 736
    .line 737
    sub-int/2addr v4, v3

    .line 738
    iput v4, v0, Lw5/a;->e:I

    .line 739
    .line 740
    int-to-char v1, v1

    .line 741
    invoke-virtual {v0, v1}, Lw5/a;->g0(C)Z

    .line 742
    .line 743
    .line 744
    move-result v1

    .line 745
    if-eqz v1, :cond_45

    .line 746
    .line 747
    const/16 v1, 0xe

    .line 748
    .line 749
    iput v1, v0, Lw5/a;->i:I

    .line 750
    .line 751
    return v1

    .line 752
    :cond_45
    invoke-virtual {v0, v2}, Lw5/a;->s0(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    throw v16

    .line 756
    :cond_46
    if-eq v4, v9, :cond_47

    .line 757
    .line 758
    const/4 v13, 0x2

    .line 759
    iput v13, v0, Lw5/a;->i:I

    .line 760
    .line 761
    return v13

    .line 762
    :cond_47
    invoke-virtual {v0, v2}, Lw5/a;->s0(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    throw v16

    .line 766
    :cond_48
    invoke-virtual {v0}, Lw5/a;->y()V

    .line 767
    .line 768
    .line 769
    const/16 v1, 0xc

    .line 770
    .line 771
    iput v1, v0, Lw5/a;->i:I

    .line 772
    .line 773
    return v1

    .line 774
    :cond_49
    const/16 v1, 0xd

    .line 775
    .line 776
    iput v1, v0, Lw5/a;->i:I

    .line 777
    .line 778
    return v1
.end method

.method public final V()V
    .locals 3

    .line 1
    iget v0, p0, Lw5/a;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lw5/a;->S()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lw5/a;->n:I

    .line 13
    .line 14
    add-int/lit8 v1, v0, -0x1

    .line 15
    .line 16
    iput v1, p0, Lw5/a;->n:I

    .line 17
    .line 18
    iget-object v1, p0, Lw5/a;->p:[I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x2

    .line 21
    .line 22
    aget v2, v1, v0

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    aput v2, v1, v0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lw5/a;->i:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0}, Lw5/a;->p0()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {v0}, Lkotlin/collections/unsigned/a;->j(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lw5/a;->h0()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "Expected END_ARRAY but was "

    .line 45
    .line 46
    invoke-static {v0, v2, v1}, Ln0/b;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Lw5/a;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lw5/a;->S()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lw5/a;->q0(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lw5/a;->p:[I

    .line 17
    .line 18
    iget v2, p0, Lw5/a;->n:I

    .line 19
    .line 20
    sub-int/2addr v2, v0

    .line 21
    const/4 v0, 0x0

    .line 22
    aput v0, v1, v2

    .line 23
    .line 24
    iput v0, p0, Lw5/a;->i:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p0}, Lw5/a;->p0()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Lkotlin/collections/unsigned/a;->j(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lw5/a;->h0()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "Expected BEGIN_ARRAY but was "

    .line 40
    .line 41
    invoke-static {v0, v2, v1}, Ln0/b;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Lw5/a;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lw5/a;->S()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, v0}, Lw5/a;->q0(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lw5/a;->i:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Lw5/a;->p0()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Lkotlin/collections/unsigned/a;->j(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lw5/a;->h0()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "Expected BEGIN_OBJECT but was "

    .line 33
    .line 34
    invoke-static {v0, v2, v1}, Ln0/b;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final c0()V
    .locals 5

    .line 1
    iget v0, p0, Lw5/a;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lw5/a;->S()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lw5/a;->n:I

    .line 13
    .line 14
    add-int/lit8 v2, v0, -0x1

    .line 15
    .line 16
    iput v2, p0, Lw5/a;->n:I

    .line 17
    .line 18
    iget-object v3, p0, Lw5/a;->o:[Ljava/lang/String;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v4, v3, v2

    .line 22
    .line 23
    iget-object v2, p0, Lw5/a;->p:[I

    .line 24
    .line 25
    sub-int/2addr v0, v1

    .line 26
    aget v1, v2, v0

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    aput v1, v2, v0

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lw5/a;->i:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Lw5/a;->p0()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {v0}, Lkotlin/collections/unsigned/a;->j(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lw5/a;->h0()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "Expected END_OBJECT but was "

    .line 49
    .line 50
    invoke-static {v0, v2, v1}, Ln0/b;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lw5/a;->i:I

    .line 3
    .line 4
    iget-object v1, p0, Lw5/a;->m:[I

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    aput v2, v1, v0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lw5/a;->n:I

    .line 12
    .line 13
    iget-object v0, p0, Lw5/a;->b:Ljava/io/Reader;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final d0(I)Z
    .locals 7

    .line 1
    iget v0, p0, Lw5/a;->h:I

    .line 2
    .line 3
    iget v1, p0, Lw5/a;->e:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iput v0, p0, Lw5/a;->h:I

    .line 7
    .line 8
    iget v0, p0, Lw5/a;->f:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lw5/a;->d:[C

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    iput v0, p0, Lw5/a;->f:I

    .line 17
    .line 18
    invoke-static {v3, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput v2, p0, Lw5/a;->f:I

    .line 23
    .line 24
    :goto_0
    iput v2, p0, Lw5/a;->e:I

    .line 25
    .line 26
    :cond_1
    iget v0, p0, Lw5/a;->f:I

    .line 27
    .line 28
    array-length v1, v3

    .line 29
    sub-int/2addr v1, v0

    .line 30
    iget-object v4, p0, Lw5/a;->b:Ljava/io/Reader;

    .line 31
    .line 32
    invoke-virtual {v4, v3, v0, v1}, Ljava/io/Reader;->read([CII)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, -0x1

    .line 37
    if-eq v0, v1, :cond_3

    .line 38
    .line 39
    iget v1, p0, Lw5/a;->f:I

    .line 40
    .line 41
    add-int/2addr v1, v0

    .line 42
    iput v1, p0, Lw5/a;->f:I

    .line 43
    .line 44
    iget v0, p0, Lw5/a;->g:I

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    iget v0, p0, Lw5/a;->h:I

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    if-lez v1, :cond_2

    .line 54
    .line 55
    aget-char v5, v3, v2

    .line 56
    .line 57
    const v6, 0xfeff

    .line 58
    .line 59
    .line 60
    if-ne v5, v6, :cond_2

    .line 61
    .line 62
    iget v5, p0, Lw5/a;->e:I

    .line 63
    .line 64
    add-int/2addr v5, v4

    .line 65
    iput v5, p0, Lw5/a;->e:I

    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    iput v0, p0, Lw5/a;->h:I

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    :cond_2
    if-lt v1, p1, :cond_1

    .line 74
    .line 75
    return v4

    .line 76
    :cond_3
    return v2
.end method

.method public final e0(Z)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "$"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget v2, p0, Lw5/a;->n:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_4

    .line 12
    .line 13
    iget-object v3, p0, Lw5/a;->m:[I

    .line 14
    .line 15
    aget v3, v3, v1

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-eq v3, v4, :cond_1

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-eq v3, v4, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq v3, v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    if-eq v3, v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x5

    .line 30
    if-eq v3, v2, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/16 v2, 0x2e

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lw5/a;->o:[Ljava/lang/String;

    .line 39
    .line 40
    aget-object v2, v2, v1

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v3, p0, Lw5/a;->p:[I

    .line 49
    .line 50
    aget v3, v3, v1

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    if-lez v3, :cond_2

    .line 55
    .line 56
    add-int/lit8 v2, v2, -0x1

    .line 57
    .line 58
    if-ne v1, v2, :cond_2

    .line 59
    .line 60
    add-int/lit8 v3, v3, -0x1

    .line 61
    .line 62
    :cond_2
    const/16 v2, 0x5b

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const/16 v2, 0x5d

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method

.method public final f0()Z
    .locals 2

    .line 1
    iget v0, p0, Lw5/a;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lw5/a;->S()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x11

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public final g0(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xc

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xd

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x23

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x2c

    .line 26
    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x2f

    .line 30
    .line 31
    if-eq p1, v0, :cond_0

    .line 32
    .line 33
    const/16 v0, 0x3d

    .line 34
    .line 35
    if-eq p1, v0, :cond_0

    .line 36
    .line 37
    const/16 v0, 0x7b

    .line 38
    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    const/16 v0, 0x7d

    .line 42
    .line 43
    if-eq p1, v0, :cond_1

    .line 44
    .line 45
    const/16 v0, 0x3a

    .line 46
    .line 47
    if-eq p1, v0, :cond_1

    .line 48
    .line 49
    const/16 v0, 0x3b

    .line 50
    .line 51
    if-eq p1, v0, :cond_0

    .line 52
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lw5/a;->y()V

    .line 59
    .line 60
    .line 61
    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    .line 62
    return p1

    .line 63
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final h0()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lw5/a;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lw5/a;->e:I

    .line 6
    .line 7
    iget v2, p0, Lw5/a;->h:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    const-string v2, " column "

    .line 13
    .line 14
    const-string v3, " path "

    .line 15
    .line 16
    const-string v4, " at line "

    .line 17
    .line 18
    invoke-static {v4, v0, v1, v2, v3}, Lai/onnxruntime/a;->v(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v1}, Lw5/a;->e0(Z)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method public final i0()Z
    .locals 5

    .line 1
    iget v0, p0, Lw5/a;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lw5/a;->S()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iput v2, p0, Lw5/a;->i:I

    .line 15
    .line 16
    iget-object v0, p0, Lw5/a;->p:[I

    .line 17
    .line 18
    iget v1, p0, Lw5/a;->n:I

    .line 19
    .line 20
    sub-int/2addr v1, v3

    .line 21
    aget v2, v0, v1

    .line 22
    .line 23
    add-int/2addr v2, v3

    .line 24
    aput v2, v0, v1

    .line 25
    .line 26
    return v3

    .line 27
    :cond_1
    const/4 v1, 0x6

    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    iput v2, p0, Lw5/a;->i:I

    .line 31
    .line 32
    iget-object v0, p0, Lw5/a;->p:[I

    .line 33
    .line 34
    iget v1, p0, Lw5/a;->n:I

    .line 35
    .line 36
    sub-int/2addr v1, v3

    .line 37
    aget v4, v0, v1

    .line 38
    .line 39
    add-int/2addr v4, v3

    .line 40
    aput v4, v0, v1

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    invoke-virtual {p0}, Lw5/a;->p0()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {v0}, Lkotlin/collections/unsigned/a;->j(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lw5/a;->h0()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "Expected a boolean but was "

    .line 56
    .line 57
    invoke-static {v0, v2, v1}, Ln0/b;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    return v0
.end method

.method public final j0()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lw5/a;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lw5/a;->S()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xe

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lw5/a;->o0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0xc

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x27

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lw5/a;->m0(C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0xd

    .line 30
    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x22

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lw5/a;->m0(C)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lw5/a;->i:I

    .line 41
    .line 42
    iget-object v1, p0, Lw5/a;->o:[Ljava/lang/String;

    .line 43
    .line 44
    iget v2, p0, Lw5/a;->n:I

    .line 45
    .line 46
    add-int/lit8 v2, v2, -0x1

    .line 47
    .line 48
    aput-object v0, v1, v2

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    invoke-virtual {p0}, Lw5/a;->p0()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v0}, Lkotlin/collections/unsigned/a;->j(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lw5/a;->h0()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "Expected a name but was "

    .line 64
    .line 65
    invoke-static {v0, v2, v1}, Ln0/b;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    return-object v0
.end method

.method public final k0(Z)I
    .locals 9

    .line 1
    iget v0, p0, Lw5/a;->e:I

    .line 2
    .line 3
    iget v1, p0, Lw5/a;->f:I

    .line 4
    .line 5
    :goto_0
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    iput v0, p0, Lw5/a;->e:I

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Lw5/a;->d0(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    return p1

    .line 20
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 21
    .line 22
    invoke-virtual {p0}, Lw5/a;->h0()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "End of input"

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    iget v0, p0, Lw5/a;->e:I

    .line 37
    .line 38
    iget v1, p0, Lw5/a;->f:I

    .line 39
    .line 40
    :cond_2
    add-int/lit8 v3, v0, 0x1

    .line 41
    .line 42
    iget-object v4, p0, Lw5/a;->d:[C

    .line 43
    .line 44
    aget-char v5, v4, v0

    .line 45
    .line 46
    const/16 v6, 0xa

    .line 47
    .line 48
    if-ne v5, v6, :cond_3

    .line 49
    .line 50
    iget v0, p0, Lw5/a;->g:I

    .line 51
    .line 52
    add-int/2addr v0, v2

    .line 53
    iput v0, p0, Lw5/a;->g:I

    .line 54
    .line 55
    iput v3, p0, Lw5/a;->h:I

    .line 56
    .line 57
    goto/16 :goto_6

    .line 58
    .line 59
    :cond_3
    const/16 v7, 0x20

    .line 60
    .line 61
    if-eq v5, v7, :cond_f

    .line 62
    .line 63
    const/16 v7, 0xd

    .line 64
    .line 65
    if-eq v5, v7, :cond_f

    .line 66
    .line 67
    const/16 v7, 0x9

    .line 68
    .line 69
    if-ne v5, v7, :cond_4

    .line 70
    .line 71
    goto/16 :goto_6

    .line 72
    .line 73
    :cond_4
    const/16 v7, 0x2f

    .line 74
    .line 75
    if-ne v5, v7, :cond_d

    .line 76
    .line 77
    iput v3, p0, Lw5/a;->e:I

    .line 78
    .line 79
    const/4 v8, 0x2

    .line 80
    if-ne v3, v1, :cond_5

    .line 81
    .line 82
    iput v0, p0, Lw5/a;->e:I

    .line 83
    .line 84
    invoke-virtual {p0, v8}, Lw5/a;->d0(I)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget v1, p0, Lw5/a;->e:I

    .line 89
    .line 90
    add-int/2addr v1, v2

    .line 91
    iput v1, p0, Lw5/a;->e:I

    .line 92
    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    invoke-virtual {p0}, Lw5/a;->y()V

    .line 97
    .line 98
    .line 99
    iget v0, p0, Lw5/a;->e:I

    .line 100
    .line 101
    aget-char v1, v4, v0

    .line 102
    .line 103
    const/16 v3, 0x2a

    .line 104
    .line 105
    if-eq v1, v3, :cond_7

    .line 106
    .line 107
    if-eq v1, v7, :cond_6

    .line 108
    .line 109
    :goto_1
    return v5

    .line 110
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 111
    .line 112
    iput v0, p0, Lw5/a;->e:I

    .line 113
    .line 114
    invoke-virtual {p0}, Lw5/a;->r0()V

    .line 115
    .line 116
    .line 117
    iget v0, p0, Lw5/a;->e:I

    .line 118
    .line 119
    iget v1, p0, Lw5/a;->f:I

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 123
    .line 124
    iput v0, p0, Lw5/a;->e:I

    .line 125
    .line 126
    :goto_2
    iget v0, p0, Lw5/a;->e:I

    .line 127
    .line 128
    add-int/2addr v0, v8

    .line 129
    iget v1, p0, Lw5/a;->f:I

    .line 130
    .line 131
    if-le v0, v1, :cond_9

    .line 132
    .line 133
    invoke-virtual {p0, v8}, Lw5/a;->d0(I)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_8
    const-string p1, "Unterminated comment"

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lw5/a;->s0(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const/4 p1, 0x0

    .line 146
    throw p1

    .line 147
    :cond_9
    :goto_3
    iget v0, p0, Lw5/a;->e:I

    .line 148
    .line 149
    aget-char v1, v4, v0

    .line 150
    .line 151
    if-ne v1, v6, :cond_a

    .line 152
    .line 153
    iget v1, p0, Lw5/a;->g:I

    .line 154
    .line 155
    add-int/2addr v1, v2

    .line 156
    iput v1, p0, Lw5/a;->g:I

    .line 157
    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 159
    .line 160
    iput v0, p0, Lw5/a;->h:I

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_a
    const/4 v0, 0x0

    .line 164
    :goto_4
    iget v1, p0, Lw5/a;->e:I

    .line 165
    .line 166
    if-ge v0, v8, :cond_c

    .line 167
    .line 168
    add-int/2addr v1, v0

    .line 169
    aget-char v1, v4, v1

    .line 170
    .line 171
    const-string v3, "*/"

    .line 172
    .line 173
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eq v1, v3, :cond_b

    .line 178
    .line 179
    :goto_5
    iget v0, p0, Lw5/a;->e:I

    .line 180
    .line 181
    add-int/2addr v0, v2

    .line 182
    iput v0, p0, Lw5/a;->e:I

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_c
    add-int/lit8 v0, v1, 0x2

    .line 189
    .line 190
    iget v1, p0, Lw5/a;->f:I

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_d
    const/16 v0, 0x23

    .line 195
    .line 196
    if-ne v5, v0, :cond_e

    .line 197
    .line 198
    iput v3, p0, Lw5/a;->e:I

    .line 199
    .line 200
    invoke-virtual {p0}, Lw5/a;->y()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lw5/a;->r0()V

    .line 204
    .line 205
    .line 206
    iget v0, p0, Lw5/a;->e:I

    .line 207
    .line 208
    iget v1, p0, Lw5/a;->f:I

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_e
    iput v3, p0, Lw5/a;->e:I

    .line 213
    .line 214
    return v5

    .line 215
    :cond_f
    :goto_6
    move v0, v3

    .line 216
    goto/16 :goto_0
.end method

.method public final l0()V
    .locals 3

    .line 1
    iget v0, p0, Lw5/a;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lw5/a;->S()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x7

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lw5/a;->i:I

    .line 14
    .line 15
    iget-object v0, p0, Lw5/a;->p:[I

    .line 16
    .line 17
    iget v1, p0, Lw5/a;->n:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    aget v2, v0, v1

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    aput v2, v0, v1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Lw5/a;->p0()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Lkotlin/collections/unsigned/a;->j(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lw5/a;->h0()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "Expected null but was "

    .line 41
    .line 42
    invoke-static {v0, v2, v1}, Ln0/b;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final m0(C)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lw5/a;->e:I

    .line 4
    .line 5
    iget v3, p0, Lw5/a;->f:I

    .line 6
    .line 7
    :goto_1
    move v4, v3

    .line 8
    move v3, v2

    .line 9
    :goto_2
    const/16 v5, 0x10

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    iget-object v7, p0, Lw5/a;->d:[C

    .line 13
    .line 14
    if-ge v2, v4, :cond_15

    .line 15
    .line 16
    add-int/lit8 v8, v2, 0x1

    .line 17
    .line 18
    aget-char v2, v7, v2

    .line 19
    .line 20
    if-ne v2, p1, :cond_1

    .line 21
    .line 22
    iput v8, p0, Lw5/a;->e:I

    .line 23
    .line 24
    sub-int/2addr v8, v3

    .line 25
    sub-int/2addr v8, v6

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    new-instance p1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {p1, v7, v3, v8}, Ljava/lang/String;-><init>([CII)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    invoke-virtual {v1, v7, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_1
    const/16 v9, 0xa

    .line 43
    .line 44
    const/16 v10, 0x5c

    .line 45
    .line 46
    if-ne v2, v10, :cond_13

    .line 47
    .line 48
    iput v8, p0, Lw5/a;->e:I

    .line 49
    .line 50
    sub-int/2addr v8, v3

    .line 51
    add-int/lit8 v2, v8, -0x1

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    mul-int/lit8 v8, v8, 0x2

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {v1, v7, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v2, p0, Lw5/a;->e:I

    .line 70
    .line 71
    iget v3, p0, Lw5/a;->f:I

    .line 72
    .line 73
    const-string v4, "Unterminated escape sequence"

    .line 74
    .line 75
    if-ne v2, v3, :cond_4

    .line 76
    .line 77
    invoke-virtual {p0, v6}, Lw5/a;->d0(I)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    invoke-virtual {p0, v4}, Lw5/a;->s0(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_4
    :goto_3
    iget v2, p0, Lw5/a;->e:I

    .line 89
    .line 90
    add-int/lit8 v3, v2, 0x1

    .line 91
    .line 92
    iput v3, p0, Lw5/a;->e:I

    .line 93
    .line 94
    aget-char v5, v7, v2

    .line 95
    .line 96
    if-eq v5, v9, :cond_11

    .line 97
    .line 98
    const/16 v3, 0x22

    .line 99
    .line 100
    if-eq v5, v3, :cond_10

    .line 101
    .line 102
    const/16 v3, 0x27

    .line 103
    .line 104
    if-eq v5, v3, :cond_10

    .line 105
    .line 106
    const/16 v3, 0x2f

    .line 107
    .line 108
    if-eq v5, v3, :cond_10

    .line 109
    .line 110
    if-eq v5, v10, :cond_10

    .line 111
    .line 112
    const/16 v3, 0x62

    .line 113
    .line 114
    if-eq v5, v3, :cond_f

    .line 115
    .line 116
    const/16 v3, 0x66

    .line 117
    .line 118
    if-eq v5, v3, :cond_e

    .line 119
    .line 120
    const/16 v6, 0x6e

    .line 121
    .line 122
    if-eq v5, v6, :cond_12

    .line 123
    .line 124
    const/16 v6, 0x72

    .line 125
    .line 126
    if-eq v5, v6, :cond_d

    .line 127
    .line 128
    const/16 v6, 0x74

    .line 129
    .line 130
    if-eq v5, v6, :cond_c

    .line 131
    .line 132
    const/16 v6, 0x75

    .line 133
    .line 134
    if-ne v5, v6, :cond_b

    .line 135
    .line 136
    add-int/lit8 v2, v2, 0x5

    .line 137
    .line 138
    iget v5, p0, Lw5/a;->f:I

    .line 139
    .line 140
    const/4 v6, 0x4

    .line 141
    if-le v2, v5, :cond_6

    .line 142
    .line 143
    invoke-virtual {p0, v6}, Lw5/a;->d0(I)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_5
    invoke-virtual {p0, v4}, Lw5/a;->s0(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_6
    :goto_4
    iget v2, p0, Lw5/a;->e:I

    .line 155
    .line 156
    add-int/lit8 v4, v2, 0x4

    .line 157
    .line 158
    const/4 v5, 0x0

    .line 159
    move v9, v5

    .line 160
    :goto_5
    if-ge v2, v4, :cond_a

    .line 161
    .line 162
    aget-char v5, v7, v2

    .line 163
    .line 164
    shl-int/lit8 v8, v9, 0x4

    .line 165
    .line 166
    int-to-char v8, v8

    .line 167
    const/16 v9, 0x30

    .line 168
    .line 169
    if-lt v5, v9, :cond_7

    .line 170
    .line 171
    const/16 v9, 0x39

    .line 172
    .line 173
    if-gt v5, v9, :cond_7

    .line 174
    .line 175
    add-int/lit8 v5, v5, -0x30

    .line 176
    .line 177
    :goto_6
    add-int/2addr v5, v8

    .line 178
    int-to-char v5, v5

    .line 179
    move v9, v5

    .line 180
    goto :goto_7

    .line 181
    :cond_7
    const/16 v9, 0x61

    .line 182
    .line 183
    if-lt v5, v9, :cond_8

    .line 184
    .line 185
    if-gt v5, v3, :cond_8

    .line 186
    .line 187
    add-int/lit8 v5, v5, -0x57

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_8
    const/16 v9, 0x41

    .line 191
    .line 192
    if-lt v5, v9, :cond_9

    .line 193
    .line 194
    const/16 v9, 0x46

    .line 195
    .line 196
    if-gt v5, v9, :cond_9

    .line 197
    .line 198
    add-int/lit8 v5, v5, -0x37

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_9
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 205
    .line 206
    new-instance v0, Ljava/lang/String;

    .line 207
    .line 208
    iget v1, p0, Lw5/a;->e:I

    .line 209
    .line 210
    invoke-direct {v0, v7, v1, v6}, Ljava/lang/String;-><init>([CII)V

    .line 211
    .line 212
    .line 213
    const-string v1, "\\u"

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw p1

    .line 223
    :cond_a
    iget v2, p0, Lw5/a;->e:I

    .line 224
    .line 225
    add-int/2addr v2, v6

    .line 226
    iput v2, p0, Lw5/a;->e:I

    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_b
    const-string p1, "Invalid escape sequence"

    .line 230
    .line 231
    invoke-virtual {p0, p1}, Lw5/a;->s0(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :cond_c
    const/16 v9, 0x9

    .line 236
    .line 237
    goto :goto_9

    .line 238
    :cond_d
    const/16 v9, 0xd

    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_e
    const/16 v9, 0xc

    .line 242
    .line 243
    goto :goto_9

    .line 244
    :cond_f
    const/16 v9, 0x8

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :cond_10
    :goto_8
    move v9, v5

    .line 248
    goto :goto_9

    .line 249
    :cond_11
    iget v2, p0, Lw5/a;->g:I

    .line 250
    .line 251
    add-int/2addr v2, v6

    .line 252
    iput v2, p0, Lw5/a;->g:I

    .line 253
    .line 254
    iput v3, p0, Lw5/a;->h:I

    .line 255
    .line 256
    goto :goto_8

    .line 257
    :cond_12
    :goto_9
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget v2, p0, Lw5/a;->e:I

    .line 261
    .line 262
    iget v3, p0, Lw5/a;->f:I

    .line 263
    .line 264
    goto/16 :goto_1

    .line 265
    .line 266
    :cond_13
    if-ne v2, v9, :cond_14

    .line 267
    .line 268
    iget v2, p0, Lw5/a;->g:I

    .line 269
    .line 270
    add-int/2addr v2, v6

    .line 271
    iput v2, p0, Lw5/a;->g:I

    .line 272
    .line 273
    iput v8, p0, Lw5/a;->h:I

    .line 274
    .line 275
    :cond_14
    move v2, v8

    .line 276
    goto/16 :goto_2

    .line 277
    .line 278
    :cond_15
    if-nez v1, :cond_16

    .line 279
    .line 280
    sub-int v1, v2, v3

    .line 281
    .line 282
    mul-int/lit8 v1, v1, 0x2

    .line 283
    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 291
    .line 292
    .line 293
    move-object v1, v4

    .line 294
    :cond_16
    sub-int v4, v2, v3

    .line 295
    .line 296
    invoke-virtual {v1, v7, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    iput v2, p0, Lw5/a;->e:I

    .line 300
    .line 301
    invoke-virtual {p0, v6}, Lw5/a;->d0(I)Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-eqz v2, :cond_17

    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :cond_17
    const-string p1, "Unterminated string"

    .line 310
    .line 311
    invoke-virtual {p0, p1}, Lw5/a;->s0(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw v0
.end method

.method public final n0()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lw5/a;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lw5/a;->S()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xa

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lw5/a;->o0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0x8

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x27

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lw5/a;->m0(C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0x9

    .line 30
    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x22

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lw5/a;->m0(C)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/16 v1, 0xb

    .line 41
    .line 42
    if-ne v0, v1, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lw5/a;->l:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lw5/a;->l:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const/16 v1, 0xf

    .line 51
    .line 52
    if-ne v0, v1, :cond_5

    .line 53
    .line 54
    iget-wide v0, p0, Lw5/a;->j:J

    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_5
    const/16 v1, 0x10

    .line 62
    .line 63
    if-ne v0, v1, :cond_6

    .line 64
    .line 65
    new-instance v0, Ljava/lang/String;

    .line 66
    .line 67
    iget v1, p0, Lw5/a;->e:I

    .line 68
    .line 69
    iget v2, p0, Lw5/a;->k:I

    .line 70
    .line 71
    iget-object v3, p0, Lw5/a;->d:[C

    .line 72
    .line 73
    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lw5/a;->e:I

    .line 77
    .line 78
    iget v2, p0, Lw5/a;->k:I

    .line 79
    .line 80
    add-int/2addr v1, v2

    .line 81
    iput v1, p0, Lw5/a;->e:I

    .line 82
    .line 83
    :goto_0
    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lw5/a;->i:I

    .line 85
    .line 86
    iget-object v1, p0, Lw5/a;->p:[I

    .line 87
    .line 88
    iget v2, p0, Lw5/a;->n:I

    .line 89
    .line 90
    add-int/lit8 v2, v2, -0x1

    .line 91
    .line 92
    aget v3, v1, v2

    .line 93
    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    aput v3, v1, v2

    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_6
    invoke-virtual {p0}, Lw5/a;->p0()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-static {v0}, Lkotlin/collections/unsigned/a;->j(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lw5/a;->h0()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v2, "Expected a string but was "

    .line 112
    .line 113
    invoke-static {v0, v2, v1}, Ln0/b;->j(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    return-object v0
.end method

.method public final o0()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :cond_0
    move v2, v1

    .line 4
    :goto_0
    iget v3, p0, Lw5/a;->e:I

    .line 5
    .line 6
    add-int/2addr v3, v2

    .line 7
    iget v4, p0, Lw5/a;->f:I

    .line 8
    .line 9
    iget-object v5, p0, Lw5/a;->d:[C

    .line 10
    .line 11
    if-ge v3, v4, :cond_2

    .line 12
    .line 13
    aget-char v3, v5, v3

    .line 14
    .line 15
    const/16 v4, 0x9

    .line 16
    .line 17
    if-eq v3, v4, :cond_3

    .line 18
    .line 19
    const/16 v4, 0xa

    .line 20
    .line 21
    if-eq v3, v4, :cond_3

    .line 22
    .line 23
    const/16 v4, 0xc

    .line 24
    .line 25
    if-eq v3, v4, :cond_3

    .line 26
    .line 27
    const/16 v4, 0xd

    .line 28
    .line 29
    if-eq v3, v4, :cond_3

    .line 30
    .line 31
    const/16 v4, 0x20

    .line 32
    .line 33
    if-eq v3, v4, :cond_3

    .line 34
    .line 35
    const/16 v4, 0x23

    .line 36
    .line 37
    if-eq v3, v4, :cond_1

    .line 38
    .line 39
    const/16 v4, 0x2c

    .line 40
    .line 41
    if-eq v3, v4, :cond_3

    .line 42
    .line 43
    const/16 v4, 0x2f

    .line 44
    .line 45
    if-eq v3, v4, :cond_1

    .line 46
    .line 47
    const/16 v4, 0x3d

    .line 48
    .line 49
    if-eq v3, v4, :cond_1

    .line 50
    .line 51
    const/16 v4, 0x7b

    .line 52
    .line 53
    if-eq v3, v4, :cond_3

    .line 54
    .line 55
    const/16 v4, 0x7d

    .line 56
    .line 57
    if-eq v3, v4, :cond_3

    .line 58
    .line 59
    const/16 v4, 0x3a

    .line 60
    .line 61
    if-eq v3, v4, :cond_3

    .line 62
    .line 63
    const/16 v4, 0x3b

    .line 64
    .line 65
    if-eq v3, v4, :cond_1

    .line 66
    .line 67
    packed-switch v3, :pswitch_data_0

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lw5/a;->y()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    array-length v3, v5

    .line 78
    if-ge v2, v3, :cond_4

    .line 79
    .line 80
    add-int/lit8 v3, v2, 0x1

    .line 81
    .line 82
    invoke-virtual {p0, v3}, Lw5/a;->d0(I)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    :goto_1
    :pswitch_1
    move v1, v2

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    if-nez v0, :cond_5

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const/16 v3, 0x10

    .line 96
    .line 97
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    .line 103
    .line 104
    :cond_5
    iget v3, p0, Lw5/a;->e:I

    .line 105
    .line 106
    invoke-virtual {v0, v5, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget v3, p0, Lw5/a;->e:I

    .line 110
    .line 111
    add-int/2addr v3, v2

    .line 112
    iput v3, p0, Lw5/a;->e:I

    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    invoke-virtual {p0, v2}, Lw5/a;->d0(I)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_0

    .line 120
    .line 121
    :goto_2
    iget v2, p0, Lw5/a;->e:I

    .line 122
    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    new-instance v0, Ljava/lang/String;

    .line 126
    .line 127
    invoke-direct {v0, v5, v2, v1}, Ljava/lang/String;-><init>([CII)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    invoke-virtual {v0, v5, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :goto_3
    iget v2, p0, Lw5/a;->e:I

    .line 139
    .line 140
    add-int/2addr v2, v1

    .line 141
    iput v2, p0, Lw5/a;->e:I

    .line 142
    .line 143
    return-object v0

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final p0()I
    .locals 1

    .line 1
    iget v0, p0, Lw5/a;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lw5/a;->S()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    const/16 v0, 0xa

    .line 19
    .line 20
    return v0

    .line 21
    :pswitch_1
    const/4 v0, 0x7

    .line 22
    return v0

    .line 23
    :pswitch_2
    const/4 v0, 0x5

    .line 24
    return v0

    .line 25
    :pswitch_3
    const/4 v0, 0x6

    .line 26
    return v0

    .line 27
    :pswitch_4
    const/16 v0, 0x9

    .line 28
    .line 29
    return v0

    .line 30
    :pswitch_5
    const/16 v0, 0x8

    .line 31
    .line 32
    return v0

    .line 33
    :pswitch_6
    const/4 v0, 0x2

    .line 34
    return v0

    .line 35
    :pswitch_7
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :pswitch_8
    const/4 v0, 0x4

    .line 38
    return v0

    .line 39
    :pswitch_9
    const/4 v0, 0x3

    .line 40
    return v0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q0(I)V
    .locals 3

    .line 1
    iget v0, p0, Lw5/a;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lw5/a;->m:[I

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lw5/a;->m:[I

    .line 15
    .line 16
    iget-object v1, p0, Lw5/a;->p:[I

    .line 17
    .line 18
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lw5/a;->p:[I

    .line 23
    .line 24
    iget-object v1, p0, Lw5/a;->o:[Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, [Ljava/lang/String;

    .line 31
    .line 32
    iput-object v0, p0, Lw5/a;->o:[Ljava/lang/String;

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lw5/a;->m:[I

    .line 35
    .line 36
    iget v1, p0, Lw5/a;->n:I

    .line 37
    .line 38
    add-int/lit8 v2, v1, 0x1

    .line 39
    .line 40
    iput v2, p0, Lw5/a;->n:I

    .line 41
    .line 42
    aput p1, v0, v1

    .line 43
    .line 44
    return-void
.end method

.method public final r0()V
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lw5/a;->e:I

    .line 2
    .line 3
    iget v1, p0, Lw5/a;->f:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Lw5/a;->d0(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    :cond_1
    iget v0, p0, Lw5/a;->e:I

    .line 15
    .line 16
    add-int/lit8 v1, v0, 0x1

    .line 17
    .line 18
    iput v1, p0, Lw5/a;->e:I

    .line 19
    .line 20
    iget-object v3, p0, Lw5/a;->d:[C

    .line 21
    .line 22
    aget-char v0, v3, v0

    .line 23
    .line 24
    const/16 v3, 0xa

    .line 25
    .line 26
    if-ne v0, v3, :cond_2

    .line 27
    .line 28
    iget v0, p0, Lw5/a;->g:I

    .line 29
    .line 30
    add-int/2addr v0, v2

    .line 31
    iput v0, p0, Lw5/a;->g:I

    .line 32
    .line 33
    iput v1, p0, Lw5/a;->h:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const/16 v1, 0xd

    .line 37
    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method public final s0(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lw5/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lw5/a;->h0()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lw5/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lw5/a;->h0()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw5/a;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lw5/a;->s0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method
