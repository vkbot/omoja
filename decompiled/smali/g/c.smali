.class public final Lg/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:[B

.field public b:Ljava/nio/ByteBuffer;

.field public c:Lg/b;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lg/c;->a:[B

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lg/c;->d:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/c;->c:Lg/b;

    .line 2
    .line 3
    iget v0, v0, Lg/b;->b:I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final b()Lg/b;
    .locals 10

    .line 1
    iget-object v0, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_1b

    .line 4
    .line 5
    invoke-virtual {p0}, Lg/c;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lg/c;->c:Lg/b;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    :goto_0
    const/4 v3, 0x6

    .line 22
    if-ge v2, v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lg/c;->c()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    int-to-char v3, v3

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v2, "GIF"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v2, p0, Lg/c;->c:Lg/b;

    .line 46
    .line 47
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    iput v5, v2, Lg/b;->b:I

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    iget-object v0, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, v2, Lg/b;->f:I

    .line 62
    .line 63
    iget-object v0, p0, Lg/c;->c:Lg/b;

    .line 64
    .line 65
    iget-object v2, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iput v2, v0, Lg/b;->g:I

    .line 72
    .line 73
    invoke-virtual {p0}, Lg/c;->c()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iget-object v2, p0, Lg/c;->c:Lg/b;

    .line 78
    .line 79
    and-int/lit16 v6, v0, 0x80

    .line 80
    .line 81
    if-eqz v6, :cond_3

    .line 82
    .line 83
    move v6, v5

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    move v6, v1

    .line 86
    :goto_1
    iput-boolean v6, v2, Lg/b;->h:Z

    .line 87
    .line 88
    and-int/lit8 v0, v0, 0x7

    .line 89
    .line 90
    add-int/2addr v0, v5

    .line 91
    int-to-double v6, v0

    .line 92
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 93
    .line 94
    .line 95
    move-result-wide v6

    .line 96
    double-to-int v0, v6

    .line 97
    iput v0, v2, Lg/b;->i:I

    .line 98
    .line 99
    iget-object v0, p0, Lg/c;->c:Lg/b;

    .line 100
    .line 101
    invoke-virtual {p0}, Lg/c;->c()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    iput v2, v0, Lg/b;->j:I

    .line 106
    .line 107
    iget-object v0, p0, Lg/c;->c:Lg/b;

    .line 108
    .line 109
    invoke-virtual {p0}, Lg/c;->c()I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lg/c;->c:Lg/b;

    .line 116
    .line 117
    iget-boolean v0, v0, Lg/b;->h:Z

    .line 118
    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    invoke-virtual {p0}, Lg/c;->a()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_4

    .line 126
    .line 127
    iget-object v0, p0, Lg/c;->c:Lg/b;

    .line 128
    .line 129
    iget v2, v0, Lg/b;->i:I

    .line 130
    .line 131
    invoke-virtual {p0, v2}, Lg/c;->e(I)[I

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iput-object v2, v0, Lg/b;->a:[I

    .line 136
    .line 137
    iget-object v0, p0, Lg/c;->c:Lg/b;

    .line 138
    .line 139
    iget-object v2, v0, Lg/b;->a:[I

    .line 140
    .line 141
    iget v6, v0, Lg/b;->j:I

    .line 142
    .line 143
    aget v2, v2, v6

    .line 144
    .line 145
    iput v2, v0, Lg/b;->k:I

    .line 146
    .line 147
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lg/c;->a()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_1a

    .line 152
    .line 153
    move v0, v1

    .line 154
    :cond_5
    :goto_3
    if-nez v0, :cond_19

    .line 155
    .line 156
    invoke-virtual {p0}, Lg/c;->a()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_19

    .line 161
    .line 162
    iget-object v2, p0, Lg/c;->c:Lg/b;

    .line 163
    .line 164
    iget v2, v2, Lg/b;->c:I

    .line 165
    .line 166
    const v6, 0x7fffffff

    .line 167
    .line 168
    .line 169
    if-gt v2, v6, :cond_19

    .line 170
    .line 171
    invoke-virtual {p0}, Lg/c;->c()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    const/16 v6, 0x21

    .line 176
    .line 177
    if-eq v2, v6, :cond_d

    .line 178
    .line 179
    const/16 v6, 0x2c

    .line 180
    .line 181
    if-eq v2, v6, :cond_7

    .line 182
    .line 183
    const/16 v6, 0x3b

    .line 184
    .line 185
    if-eq v2, v6, :cond_6

    .line 186
    .line 187
    iget-object v2, p0, Lg/c;->c:Lg/b;

    .line 188
    .line 189
    iput v5, v2, Lg/b;->b:I

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_6
    move v0, v5

    .line 193
    goto :goto_3

    .line 194
    :cond_7
    iget-object v2, p0, Lg/c;->c:Lg/b;

    .line 195
    .line 196
    iget-object v6, v2, Lg/b;->d:Lg/a;

    .line 197
    .line 198
    if-nez v6, :cond_8

    .line 199
    .line 200
    new-instance v6, Lg/a;

    .line 201
    .line 202
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 203
    .line 204
    .line 205
    iput-object v6, v2, Lg/b;->d:Lg/a;

    .line 206
    .line 207
    :cond_8
    iget-object v2, v2, Lg/b;->d:Lg/a;

    .line 208
    .line 209
    iget-object v6, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 210
    .line 211
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    iput v6, v2, Lg/a;->a:I

    .line 216
    .line 217
    iget-object v2, p0, Lg/c;->c:Lg/b;

    .line 218
    .line 219
    iget-object v2, v2, Lg/b;->d:Lg/a;

    .line 220
    .line 221
    iget-object v6, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 222
    .line 223
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    iput v6, v2, Lg/a;->b:I

    .line 228
    .line 229
    iget-object v2, p0, Lg/c;->c:Lg/b;

    .line 230
    .line 231
    iget-object v2, v2, Lg/b;->d:Lg/a;

    .line 232
    .line 233
    iget-object v6, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 234
    .line 235
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    iput v6, v2, Lg/a;->c:I

    .line 240
    .line 241
    iget-object v2, p0, Lg/c;->c:Lg/b;

    .line 242
    .line 243
    iget-object v2, v2, Lg/b;->d:Lg/a;

    .line 244
    .line 245
    iget-object v6, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 246
    .line 247
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    iput v6, v2, Lg/a;->d:I

    .line 252
    .line 253
    invoke-virtual {p0}, Lg/c;->c()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    and-int/lit16 v6, v2, 0x80

    .line 258
    .line 259
    if-eqz v6, :cond_9

    .line 260
    .line 261
    move v6, v5

    .line 262
    goto :goto_4

    .line 263
    :cond_9
    move v6, v1

    .line 264
    :goto_4
    and-int/lit8 v7, v2, 0x7

    .line 265
    .line 266
    add-int/2addr v7, v5

    .line 267
    int-to-double v7, v7

    .line 268
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 269
    .line 270
    .line 271
    move-result-wide v7

    .line 272
    double-to-int v7, v7

    .line 273
    iget-object v8, p0, Lg/c;->c:Lg/b;

    .line 274
    .line 275
    iget-object v8, v8, Lg/b;->d:Lg/a;

    .line 276
    .line 277
    and-int/lit8 v2, v2, 0x40

    .line 278
    .line 279
    if-eqz v2, :cond_a

    .line 280
    .line 281
    move v2, v5

    .line 282
    goto :goto_5

    .line 283
    :cond_a
    move v2, v1

    .line 284
    :goto_5
    iput-boolean v2, v8, Lg/a;->e:Z

    .line 285
    .line 286
    if-eqz v6, :cond_b

    .line 287
    .line 288
    invoke-virtual {p0, v7}, Lg/c;->e(I)[I

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    iput-object v2, v8, Lg/a;->k:[I

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_b
    const/4 v2, 0x0

    .line 296
    iput-object v2, v8, Lg/a;->k:[I

    .line 297
    .line 298
    :goto_6
    iget-object v2, p0, Lg/c;->c:Lg/b;

    .line 299
    .line 300
    iget-object v2, v2, Lg/b;->d:Lg/a;

    .line 301
    .line 302
    iget-object v6, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 303
    .line 304
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    iput v6, v2, Lg/a;->j:I

    .line 309
    .line 310
    invoke-virtual {p0}, Lg/c;->c()I

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0}, Lg/c;->f()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0}, Lg/c;->a()Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-eqz v2, :cond_c

    .line 321
    .line 322
    goto/16 :goto_3

    .line 323
    .line 324
    :cond_c
    iget-object v2, p0, Lg/c;->c:Lg/b;

    .line 325
    .line 326
    iget v6, v2, Lg/b;->c:I

    .line 327
    .line 328
    add-int/2addr v6, v5

    .line 329
    iput v6, v2, Lg/b;->c:I

    .line 330
    .line 331
    iget-object v6, v2, Lg/b;->e:Ljava/util/ArrayList;

    .line 332
    .line 333
    iget-object v2, v2, Lg/b;->d:Lg/a;

    .line 334
    .line 335
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    goto/16 :goto_3

    .line 339
    .line 340
    :cond_d
    invoke-virtual {p0}, Lg/c;->c()I

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-eq v2, v5, :cond_18

    .line 345
    .line 346
    const/16 v6, 0xf9

    .line 347
    .line 348
    const/4 v7, 0x2

    .line 349
    if-eq v2, v6, :cond_14

    .line 350
    .line 351
    const/16 v6, 0xfe

    .line 352
    .line 353
    if-eq v2, v6, :cond_13

    .line 354
    .line 355
    const/16 v6, 0xff

    .line 356
    .line 357
    if-eq v2, v6, :cond_e

    .line 358
    .line 359
    invoke-virtual {p0}, Lg/c;->f()V

    .line 360
    .line 361
    .line 362
    goto/16 :goto_3

    .line 363
    .line 364
    :cond_e
    invoke-virtual {p0}, Lg/c;->d()V

    .line 365
    .line 366
    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    move v6, v1

    .line 373
    :goto_7
    const/16 v8, 0xb

    .line 374
    .line 375
    iget-object v9, p0, Lg/c;->a:[B

    .line 376
    .line 377
    if-ge v6, v8, :cond_f

    .line 378
    .line 379
    aget-byte v8, v9, v6

    .line 380
    .line 381
    int-to-char v8, v8

    .line 382
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    add-int/lit8 v6, v6, 0x1

    .line 386
    .line 387
    goto :goto_7

    .line 388
    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    const-string v6, "NETSCAPE2.0"

    .line 393
    .line 394
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-eqz v2, :cond_12

    .line 399
    .line 400
    :cond_10
    invoke-virtual {p0}, Lg/c;->d()V

    .line 401
    .line 402
    .line 403
    aget-byte v2, v9, v1

    .line 404
    .line 405
    if-ne v2, v5, :cond_11

    .line 406
    .line 407
    aget-byte v2, v9, v5

    .line 408
    .line 409
    aget-byte v2, v9, v7

    .line 410
    .line 411
    iget-object v2, p0, Lg/c;->c:Lg/b;

    .line 412
    .line 413
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    :cond_11
    iget v2, p0, Lg/c;->d:I

    .line 417
    .line 418
    if-lez v2, :cond_5

    .line 419
    .line 420
    invoke-virtual {p0}, Lg/c;->a()Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-eqz v2, :cond_10

    .line 425
    .line 426
    goto/16 :goto_3

    .line 427
    .line 428
    :cond_12
    invoke-virtual {p0}, Lg/c;->f()V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_3

    .line 432
    .line 433
    :cond_13
    invoke-virtual {p0}, Lg/c;->f()V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_3

    .line 437
    .line 438
    :cond_14
    iget-object v2, p0, Lg/c;->c:Lg/b;

    .line 439
    .line 440
    new-instance v6, Lg/a;

    .line 441
    .line 442
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 443
    .line 444
    .line 445
    iput-object v6, v2, Lg/b;->d:Lg/a;

    .line 446
    .line 447
    invoke-virtual {p0}, Lg/c;->c()I

    .line 448
    .line 449
    .line 450
    invoke-virtual {p0}, Lg/c;->c()I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    iget-object v6, p0, Lg/c;->c:Lg/b;

    .line 455
    .line 456
    iget-object v6, v6, Lg/b;->d:Lg/a;

    .line 457
    .line 458
    and-int/lit8 v8, v2, 0x1c

    .line 459
    .line 460
    shr-int/2addr v8, v7

    .line 461
    iput v8, v6, Lg/a;->g:I

    .line 462
    .line 463
    if-nez v8, :cond_15

    .line 464
    .line 465
    iput v5, v6, Lg/a;->g:I

    .line 466
    .line 467
    :cond_15
    and-int/lit8 v2, v2, 0x1

    .line 468
    .line 469
    if-eqz v2, :cond_16

    .line 470
    .line 471
    move v2, v5

    .line 472
    goto :goto_8

    .line 473
    :cond_16
    move v2, v1

    .line 474
    :goto_8
    iput-boolean v2, v6, Lg/a;->f:Z

    .line 475
    .line 476
    iget-object v2, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 477
    .line 478
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    const/16 v6, 0xa

    .line 483
    .line 484
    if-ge v2, v7, :cond_17

    .line 485
    .line 486
    move v2, v6

    .line 487
    :cond_17
    iget-object v7, p0, Lg/c;->c:Lg/b;

    .line 488
    .line 489
    iget-object v7, v7, Lg/b;->d:Lg/a;

    .line 490
    .line 491
    mul-int/2addr v2, v6

    .line 492
    iput v2, v7, Lg/a;->i:I

    .line 493
    .line 494
    invoke-virtual {p0}, Lg/c;->c()I

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    iput v2, v7, Lg/a;->h:I

    .line 499
    .line 500
    invoke-virtual {p0}, Lg/c;->c()I

    .line 501
    .line 502
    .line 503
    goto/16 :goto_3

    .line 504
    .line 505
    :cond_18
    invoke-virtual {p0}, Lg/c;->f()V

    .line 506
    .line 507
    .line 508
    goto/16 :goto_3

    .line 509
    .line 510
    :cond_19
    iget-object v0, p0, Lg/c;->c:Lg/b;

    .line 511
    .line 512
    iget v1, v0, Lg/b;->c:I

    .line 513
    .line 514
    if-gez v1, :cond_1a

    .line 515
    .line 516
    iput v5, v0, Lg/b;->b:I

    .line 517
    .line 518
    :cond_1a
    iget-object v0, p0, Lg/c;->c:Lg/b;

    .line 519
    .line 520
    return-object v0

    .line 521
    :cond_1b
    const-string v0, "You must call setData() before parseHeader()"

    .line 522
    .line 523
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    const/4 v0, 0x0

    .line 527
    return-object v0
.end method

.method public final c()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    return v0

    .line 10
    :catch_0
    iget-object v0, p0, Lg/c;->c:Lg/b;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput v1, v0, Lg/b;->b:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final d()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lg/c;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lg/c;->d:I

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    :try_start_0
    iget v1, p0, Lg/c;->d:I

    .line 12
    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    sub-int/2addr v1, v0

    .line 16
    iget-object v2, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    iget-object v3, p0, Lg/c;->a:[B

    .line 19
    .line 20
    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    const/4 v3, 0x3

    .line 27
    const-string v4, "GifHeaderParser"

    .line 28
    .line 29
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    const-string v3, " count: "

    .line 36
    .line 37
    const-string v5, " blockSize: "

    .line 38
    .line 39
    const-string v6, "Error Reading Block n: "

    .line 40
    .line 41
    invoke-static {v6, v0, v1, v3, v5}, Lai/onnxruntime/a;->v(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v1, p0, Lg/c;->d:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lg/c;->c:Lg/b;

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    iput v1, v0, Lg/b;->b:I

    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final e(I)[I
    .locals 9

    .line 1
    mul-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    iget-object v2, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x100

    .line 12
    .line 13
    new-array v1, v2, [I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v2, p1, :cond_0

    .line 18
    .line 19
    add-int/lit8 v4, v3, 0x1

    .line 20
    .line 21
    aget-byte v5, v0, v3

    .line 22
    .line 23
    and-int/lit16 v5, v5, 0xff

    .line 24
    .line 25
    add-int/lit8 v6, v3, 0x2

    .line 26
    .line 27
    aget-byte v4, v0, v4

    .line 28
    .line 29
    and-int/lit16 v4, v4, 0xff

    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x3

    .line 32
    .line 33
    aget-byte v6, v0, v6

    .line 34
    .line 35
    and-int/lit16 v6, v6, 0xff

    .line 36
    .line 37
    add-int/lit8 v7, v2, 0x1

    .line 38
    .line 39
    shl-int/lit8 v5, v5, 0x10

    .line 40
    .line 41
    const/high16 v8, -0x1000000

    .line 42
    .line 43
    or-int/2addr v5, v8

    .line 44
    shl-int/lit8 v4, v4, 0x8

    .line 45
    .line 46
    or-int/2addr v4, v5

    .line 47
    or-int/2addr v4, v6

    .line 48
    aput v4, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    move v2, v7

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    return-object v1

    .line 55
    :goto_1
    const-string v0, "GifHeaderParser"

    .line 56
    .line 57
    const/4 v2, 0x3

    .line 58
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    const-string v2, "Format Error Reading Color Table"

    .line 65
    .line 66
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object p1, p0, Lg/c;->c:Lg/b;

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    iput v0, p1, Lg/b;->b:I

    .line 73
    .line 74
    return-object v1
.end method

.method public final f()V
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Lg/c;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    iget-object v2, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lg/c;->b:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 25
    .line 26
    .line 27
    if-gtz v0, :cond_0

    .line 28
    .line 29
    return-void
.end method
