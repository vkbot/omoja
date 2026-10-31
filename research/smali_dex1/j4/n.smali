.class public final Lj4/n;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# static fields
.field public static final h:Lj4/n;


# instance fields
.field public transient b:Lj4/k;

.field public transient c:Lj4/l;

.field public transient d:Lj4/m;

.field public final transient e:Ljava/lang/Object;

.field public final transient f:[Ljava/lang/Object;

.field public final transient g:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lj4/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v1, v3}, Lj4/n;-><init>([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lj4/n;->h:Lj4/n;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lj4/n;->e:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p1, p0, Lj4/n;->f:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p2, p0, Lj4/n;->g:I

    .line 9
    .line 10
    return-void
.end method

.method public static a(Ljava/util/HashMap;)Lj4/n;
    .registers 19

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v1, 0x4

    .line 13
    :goto_c
    const/4 v2, 0x2

    .line 14
    mul-int/2addr v1, v2

    .line 15
    new-array v3, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    if-eqz v0, :cond_21

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    mul-int/2addr v4, v2

    .line 24
    if-le v4, v1, :cond_21

    .line 25
    .line 26
    invoke-static {v1, v4}, Lj4/b;->b(II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :cond_21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x0

    .line 39
    move v4, v1

    .line 40
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/4 v6, 0x1

    .line 45
    if-eqz v5, :cond_86

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Ljava/util/Map$Entry;

    .line 52
    .line 53
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    add-int/lit8 v8, v4, 0x1

    .line 62
    .line 63
    mul-int/lit8 v9, v8, 0x2

    .line 64
    .line 65
    array-length v10, v3

    .line 66
    if-le v9, v10, :cond_4c

    .line 67
    .line 68
    array-length v10, v3

    .line 69
    invoke-static {v10, v9}, Lj4/b;->b(II)I

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_4c
    if-eqz v7, :cond_72

    .line 78
    .line 79
    if-eqz v5, :cond_59

    .line 80
    .line 81
    mul-int/lit8 v4, v4, 0x2

    .line 82
    .line 83
    aput-object v7, v3, v4

    .line 84
    .line 85
    add-int/2addr v4, v6

    .line 86
    aput-object v5, v3, v4

    .line 87
    .line 88
    move v4, v8

    .line 89
    goto :goto_27

    .line 90
    :cond_59
    new-instance v0, Ljava/lang/NullPointerException;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v2, "null value in entry: "

    .line 95
    .line 96
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, "=null"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_72
    new-instance v0, Ljava/lang/NullPointerException;

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v2, "null key in entry: null="

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_86
    const/4 v0, 0x0

    .line 136
    if-nez v4, :cond_8d

    .line 137
    .line 138
    sget-object v1, Lj4/n;->h:Lj4/n;

    .line 139
    .line 140
    goto/16 :goto_22b

    .line 141
    .line 142
    :cond_8d
    if-ne v4, v6, :cond_a0

    .line 143
    .line 144
    aget-object v1, v3, v1

    .line 145
    .line 146
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    aget-object v1, v3, v6

    .line 150
    .line 151
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    new-instance v1, Lj4/n;

    .line 155
    .line 156
    invoke-direct {v1, v3, v6, v0}, Lj4/n;-><init>([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_22b

    .line 160
    .line 161
    :cond_a0
    array-length v5, v3

    .line 162
    shr-int/2addr v5, v6

    .line 163
    invoke-static {v4, v5}, Lo4/b;->j(II)V

    .line 164
    .line 165
    .line 166
    invoke-static {v4}, Lj4/g;->i(I)I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-ne v4, v6, :cond_bc

    .line 171
    .line 172
    aget-object v5, v3, v1

    .line 173
    .line 174
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    aget-object v5, v3, v6

    .line 178
    .line 179
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-object v5, v0

    .line 183
    move/from16 v16, v1

    .line 184
    .line 185
    :goto_b8
    move/from16 v17, v2

    .line 186
    .line 187
    goto/16 :goto_208

    .line 188
    .line 189
    :cond_bc
    add-int/lit8 v7, v5, -0x1

    .line 190
    .line 191
    const/16 v8, 0x80

    .line 192
    .line 193
    const/4 v9, 0x3

    .line 194
    const/4 v10, -0x1

    .line 195
    if-gt v5, v8, :cond_132

    .line 196
    .line 197
    new-array v5, v5, [B

    .line 198
    .line 199
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 200
    .line 201
    .line 202
    move-object v11, v0

    .line 203
    move v8, v1

    .line 204
    move v10, v8

    .line 205
    :goto_cc
    if-ge v8, v4, :cond_11f

    .line 206
    .line 207
    mul-int/lit8 v12, v8, 0x2

    .line 208
    .line 209
    mul-int/lit8 v13, v10, 0x2

    .line 210
    .line 211
    aget-object v14, v3, v12

    .line 212
    .line 213
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    xor-int/2addr v12, v6

    .line 217
    aget-object v12, v3, v12

    .line 218
    .line 219
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 223
    .line 224
    .line 225
    move-result v15

    .line 226
    invoke-static {v15}, Lcom/bumptech/glide/c;->s(I)I

    .line 227
    .line 228
    .line 229
    move-result v15

    .line 230
    :goto_e5
    and-int/2addr v15, v7

    .line 231
    aget-byte v0, v5, v15

    .line 232
    .line 233
    move/from16 v16, v1

    .line 234
    .line 235
    const/16 v1, 0xff

    .line 236
    .line 237
    and-int/2addr v0, v1

    .line 238
    if-ne v0, v1, :cond_fd

    .line 239
    .line 240
    int-to-byte v0, v13

    .line 241
    aput-byte v0, v5, v15

    .line 242
    .line 243
    if-ge v10, v8, :cond_fa

    .line 244
    .line 245
    aput-object v14, v3, v13

    .line 246
    .line 247
    xor-int/lit8 v0, v13, 0x1

    .line 248
    .line 249
    aput-object v12, v3, v0

    .line 250
    .line 251
    :cond_fa
    add-int/lit8 v10, v10, 0x1

    .line 252
    .line 253
    goto :goto_113

    .line 254
    :cond_fd
    aget-object v1, v3, v0

    .line 255
    .line 256
    invoke-virtual {v14, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_119

    .line 261
    .line 262
    new-instance v11, Lj4/f;

    .line 263
    .line 264
    xor-int/lit8 v0, v0, 0x1

    .line 265
    .line 266
    aget-object v1, v3, v0

    .line 267
    .line 268
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    invoke-direct {v11, v14, v12, v1}, Lj4/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    aput-object v12, v3, v0

    .line 275
    .line 276
    :goto_113
    add-int/lit8 v8, v8, 0x1

    .line 277
    .line 278
    move/from16 v1, v16

    .line 279
    .line 280
    const/4 v0, 0x0

    .line 281
    goto :goto_cc

    .line 282
    :cond_119
    add-int/lit8 v15, v15, 0x1

    .line 283
    .line 284
    move/from16 v1, v16

    .line 285
    .line 286
    const/4 v0, 0x0

    .line 287
    goto :goto_e5

    .line 288
    :cond_11f
    move/from16 v16, v1

    .line 289
    .line 290
    if-ne v10, v4, :cond_124

    .line 291
    .line 292
    :goto_123
    goto :goto_b8

    .line 293
    :cond_124
    new-array v0, v9, [Ljava/lang/Object;

    .line 294
    .line 295
    aput-object v5, v0, v16

    .line 296
    .line 297
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    aput-object v1, v0, v6

    .line 302
    .line 303
    aput-object v11, v0, v2

    .line 304
    .line 305
    :goto_130
    move-object v5, v0

    .line 306
    goto :goto_b8

    .line 307
    :cond_132
    move/from16 v16, v1

    .line 308
    .line 309
    const v0, 0x8000

    .line 310
    .line 311
    .line 312
    if-gt v5, v0, :cond_19e

    .line 313
    .line 314
    new-array v5, v5, [S

    .line 315
    .line 316
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([SS)V

    .line 317
    .line 318
    .line 319
    move/from16 v0, v16

    .line 320
    .line 321
    move v1, v0

    .line 322
    const/4 v8, 0x0

    .line 323
    :goto_142
    if-ge v0, v4, :cond_18e

    .line 324
    .line 325
    mul-int/lit8 v10, v0, 0x2

    .line 326
    .line 327
    mul-int/lit8 v11, v1, 0x2

    .line 328
    .line 329
    aget-object v12, v3, v10

    .line 330
    .line 331
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    xor-int/2addr v10, v6

    .line 335
    aget-object v10, v3, v10

    .line 336
    .line 337
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 341
    .line 342
    .line 343
    move-result v13

    .line 344
    invoke-static {v13}, Lcom/bumptech/glide/c;->s(I)I

    .line 345
    .line 346
    .line 347
    move-result v13

    .line 348
    :goto_15b
    and-int/2addr v13, v7

    .line 349
    aget-short v14, v5, v13

    .line 350
    .line 351
    const v15, 0xffff

    .line 352
    .line 353
    .line 354
    and-int/2addr v14, v15

    .line 355
    if-ne v14, v15, :cond_172

    .line 356
    .line 357
    int-to-short v14, v11

    .line 358
    aput-short v14, v5, v13

    .line 359
    .line 360
    if-ge v1, v0, :cond_16f

    .line 361
    .line 362
    aput-object v12, v3, v11

    .line 363
    .line 364
    xor-int/lit8 v11, v11, 0x1

    .line 365
    .line 366
    aput-object v10, v3, v11

    .line 367
    .line 368
    :cond_16f
    add-int/lit8 v1, v1, 0x1

    .line 369
    .line 370
    goto :goto_188

    .line 371
    :cond_172
    aget-object v15, v3, v14

    .line 372
    .line 373
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v15

    .line 377
    if-eqz v15, :cond_18b

    .line 378
    .line 379
    new-instance v8, Lj4/f;

    .line 380
    .line 381
    xor-int/lit8 v11, v14, 0x1

    .line 382
    .line 383
    aget-object v13, v3, v11

    .line 384
    .line 385
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    invoke-direct {v8, v12, v10, v13}, Lj4/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    aput-object v10, v3, v11

    .line 392
    .line 393
    :goto_188
    add-int/lit8 v0, v0, 0x1

    .line 394
    .line 395
    goto :goto_142

    .line 396
    :cond_18b
    add-int/lit8 v13, v13, 0x1

    .line 397
    .line 398
    goto :goto_15b

    .line 399
    :cond_18e
    if-ne v1, v4, :cond_191

    .line 400
    .line 401
    goto :goto_123

    .line 402
    :cond_191
    new-array v0, v9, [Ljava/lang/Object;

    .line 403
    .line 404
    aput-object v5, v0, v16

    .line 405
    .line 406
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    aput-object v1, v0, v6

    .line 411
    .line 412
    aput-object v8, v0, v2

    .line 413
    .line 414
    goto :goto_130

    .line 415
    :cond_19e
    new-array v5, v5, [I

    .line 416
    .line 417
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([II)V

    .line 418
    .line 419
    .line 420
    move/from16 v0, v16

    .line 421
    .line 422
    move v1, v0

    .line 423
    const/4 v8, 0x0

    .line 424
    :goto_1a7
    if-ge v0, v4, :cond_1f6

    .line 425
    .line 426
    mul-int/lit8 v11, v0, 0x2

    .line 427
    .line 428
    mul-int/lit8 v12, v1, 0x2

    .line 429
    .line 430
    aget-object v13, v3, v11

    .line 431
    .line 432
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    xor-int/2addr v11, v6

    .line 436
    aget-object v11, v3, v11

    .line 437
    .line 438
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 442
    .line 443
    .line 444
    move-result v14

    .line 445
    invoke-static {v14}, Lcom/bumptech/glide/c;->s(I)I

    .line 446
    .line 447
    .line 448
    move-result v14

    .line 449
    :goto_1c0
    and-int/2addr v14, v7

    .line 450
    aget v15, v5, v14

    .line 451
    .line 452
    if-ne v15, v10, :cond_1d4

    .line 453
    .line 454
    aput v12, v5, v14

    .line 455
    .line 456
    if-ge v1, v0, :cond_1cf

    .line 457
    .line 458
    aput-object v13, v3, v12

    .line 459
    .line 460
    xor-int/lit8 v12, v12, 0x1

    .line 461
    .line 462
    aput-object v11, v3, v12

    .line 463
    .line 464
    :cond_1cf
    add-int/lit8 v1, v1, 0x1

    .line 465
    .line 466
    move/from16 v17, v2

    .line 467
    .line 468
    goto :goto_1ec

    .line 469
    :cond_1d4
    move/from16 v17, v2

    .line 470
    .line 471
    aget-object v2, v3, v15

    .line 472
    .line 473
    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    if-eqz v2, :cond_1f1

    .line 478
    .line 479
    new-instance v8, Lj4/f;

    .line 480
    .line 481
    xor-int/lit8 v2, v15, 0x1

    .line 482
    .line 483
    aget-object v12, v3, v2

    .line 484
    .line 485
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    invoke-direct {v8, v13, v11, v12}, Lj4/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    aput-object v11, v3, v2

    .line 492
    .line 493
    :goto_1ec
    add-int/lit8 v0, v0, 0x1

    .line 494
    .line 495
    move/from16 v2, v17

    .line 496
    .line 497
    goto :goto_1a7

    .line 498
    :cond_1f1
    add-int/lit8 v14, v14, 0x1

    .line 499
    .line 500
    move/from16 v2, v17

    .line 501
    .line 502
    goto :goto_1c0

    .line 503
    :cond_1f6
    move/from16 v17, v2

    .line 504
    .line 505
    if-ne v1, v4, :cond_1fb

    .line 506
    .line 507
    goto :goto_208

    .line 508
    :cond_1fb
    new-array v0, v9, [Ljava/lang/Object;

    .line 509
    .line 510
    aput-object v5, v0, v16

    .line 511
    .line 512
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    aput-object v1, v0, v6

    .line 517
    .line 518
    aput-object v8, v0, v17

    .line 519
    .line 520
    move-object v5, v0

    .line 521
    :goto_208
    nop

    .line 522
    instance-of v0, v5, [Ljava/lang/Object;

    .line 523
    .line 524
    if-eqz v0, :cond_225

    .line 525
    .line 526
    check-cast v5, [Ljava/lang/Object;

    .line 527
    .line 528
    aget-object v0, v5, v17

    .line 529
    .line 530
    check-cast v0, Lj4/f;

    .line 531
    .line 532
    aget-object v1, v5, v16

    .line 533
    .line 534
    aget-object v2, v5, v6

    .line 535
    .line 536
    check-cast v2, Ljava/lang/Integer;

    .line 537
    .line 538
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 539
    .line 540
    .line 541
    move-result v4

    .line 542
    mul-int/lit8 v2, v4, 0x2

    .line 543
    .line 544
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    move-object v5, v1

    .line 549
    goto :goto_226

    .line 550
    :cond_225
    const/4 v0, 0x0

    .line 551
    :goto_226
    new-instance v1, Lj4/n;

    .line 552
    .line 553
    invoke-direct {v1, v3, v4, v5}, Lj4/n;-><init>([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    :goto_22b
    if-nez v0, :cond_22e

    .line 557
    .line 558
    return-object v1

    .line 559
    :cond_22e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 560
    .line 561
    const-string v2, "Multiple entries with same key: "

    .line 562
    .line 563
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    iget-object v2, v0, Lj4/f;->a:Ljava/lang/Object;

    .line 567
    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    const-string v3, "="

    .line 572
    .line 573
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    iget-object v4, v0, Lj4/f;->b:Ljava/lang/Object;

    .line 577
    .line 578
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    const-string v4, " and "

    .line 582
    .line 583
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    iget-object v0, v0, Lj4/f;->c:Ljava/lang/Object;

    .line 590
    .line 591
    invoke-static {v1, v3, v0}, Landroidx/navigation/b;->s(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    const/4 v0, 0x0

    .line 595
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lj4/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lj4/n;->d:Lj4/m;

    .line 2
    .line 3
    if-nez v0, :cond_10

    .line 4
    .line 5
    new-instance v0, Lj4/m;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iget v2, p0, Lj4/n;->g:I

    .line 9
    .line 10
    iget-object v3, p0, Lj4/n;->f:[Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3}, Lj4/m;-><init>(II[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lj4/n;->d:Lj4/m;

    .line 16
    .line 17
    :cond_10
    invoke-virtual {v0, p1}, Lj4/e;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 4

    .line 1
    iget-object v0, p0, Lj4/n;->b:Lj4/k;

    .line 2
    .line 3
    if-nez v0, :cond_f

    .line 4
    .line 5
    new-instance v0, Lj4/k;

    .line 6
    .line 7
    iget-object v1, p0, Lj4/n;->f:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v2, p0, Lj4/n;->g:I

    .line 10
    .line 11
    invoke-direct {v0, p0, v1, v2}, Lj4/k;-><init>(Lj4/n;[Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lj4/n;->b:Lj4/k;

    .line 15
    .line 16
    :cond_f
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-ne p0, p1, :cond_4

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    .line 6
    .line 7
    if-eqz v0, :cond_19

    .line 8
    .line 9
    check-cast p1, Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {p0}, Lj4/n;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast v0, Lj4/g;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lj4/g;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_6

    .line 3
    .line 4
    :cond_3
    :goto_3
    move-object p1, v0

    .line 5
    goto/16 :goto_9c

    .line 6
    .line 7
    :cond_6
    iget-object v1, p0, Lj4/n;->f:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v2, p0, Lj4/n;->g:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_20

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aget-object v2, v1, v2

    .line 16
    .line 17
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    aget-object p1, v1, v3

    .line 27
    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto/16 :goto_9c

    .line 32
    .line 33
    :cond_20
    iget-object v2, p0, Lj4/n;->e:Ljava/lang/Object;

    .line 34
    .line 35
    if-nez v2, :cond_25

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_25
    instance-of v4, v2, [B

    .line 39
    .line 40
    if-eqz v4, :cond_50

    .line 41
    .line 42
    move-object v4, v2

    .line 43
    check-cast v4, [B

    .line 44
    .line 45
    array-length v2, v4

    .line 46
    add-int/lit8 v5, v2, -0x1

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v2}, Lcom/bumptech/glide/c;->s(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    :goto_37
    and-int/2addr v2, v5

    .line 57
    aget-byte v6, v4, v2

    .line 58
    .line 59
    const/16 v7, 0xff

    .line 60
    .line 61
    and-int/2addr v6, v7

    .line 62
    if-ne v6, v7, :cond_40

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_40
    aget-object v7, v1, v6

    .line 66
    .line 67
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_4d

    .line 72
    .line 73
    xor-int/lit8 p1, v6, 0x1

    .line 74
    .line 75
    aget-object p1, v1, p1

    .line 76
    .line 77
    goto :goto_9c

    .line 78
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_37

    .line 81
    :cond_50
    instance-of v4, v2, [S

    .line 82
    .line 83
    if-eqz v4, :cond_7c

    .line 84
    .line 85
    move-object v4, v2

    .line 86
    check-cast v4, [S

    .line 87
    .line 88
    array-length v2, v4

    .line 89
    add-int/lit8 v5, v2, -0x1

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-static {v2}, Lcom/bumptech/glide/c;->s(I)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    :goto_62
    and-int/2addr v2, v5

    .line 100
    aget-short v6, v4, v2

    .line 101
    .line 102
    const v7, 0xffff

    .line 103
    .line 104
    .line 105
    and-int/2addr v6, v7

    .line 106
    if-ne v6, v7, :cond_6c

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6c
    aget-object v7, v1, v6

    .line 110
    .line 111
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_79

    .line 116
    .line 117
    xor-int/lit8 p1, v6, 0x1

    .line 118
    .line 119
    aget-object p1, v1, p1

    .line 120
    .line 121
    goto :goto_9c

    .line 122
    :cond_79
    add-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    goto :goto_62

    .line 125
    :cond_7c
    check-cast v2, [I

    .line 126
    .line 127
    array-length v4, v2

    .line 128
    sub-int/2addr v4, v3

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    invoke-static {v5}, Lcom/bumptech/glide/c;->s(I)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    :goto_88
    and-int/2addr v5, v4

    .line 138
    aget v6, v2, v5

    .line 139
    .line 140
    const/4 v7, -0x1

    .line 141
    if-ne v6, v7, :cond_90

    .line 142
    .line 143
    goto/16 :goto_3

    .line 144
    .line 145
    :cond_90
    aget-object v7, v1, v6

    .line 146
    .line 147
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eqz v7, :cond_a0

    .line 152
    .line 153
    xor-int/lit8 p1, v6, 0x1

    .line 154
    .line 155
    aget-object p1, v1, p1

    .line 156
    .line 157
    :goto_9c
    if-nez p1, :cond_9f

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_9f
    return-object p1

    .line 161
    :cond_a0
    add-int/lit8 v5, v5, 0x1

    .line 162
    .line 163
    goto :goto_88
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lj4/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_7
    return-object p2
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Lj4/n;->b:Lj4/k;

    .line 2
    .line 3
    if-nez v0, :cond_f

    .line 4
    .line 5
    new-instance v0, Lj4/k;

    .line 6
    .line 7
    iget-object v1, p0, Lj4/n;->f:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v2, p0, Lj4/n;->g:I

    .line 10
    .line 11
    invoke-direct {v0, p0, v1, v2}, Lj4/k;-><init>(Lj4/n;[Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lj4/n;->b:Lj4/k;

    .line 15
    .line 16
    :cond_f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_2b

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_26

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v3, v1

    .line 40
    :goto_27
    add-int/2addr v2, v3

    .line 41
    not-int v2, v2

    .line 42
    not-int v2, v2

    .line 43
    goto :goto_15

    .line 44
    :cond_2b
    return v2
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lj4/n;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 5

    .line 1
    iget-object v0, p0, Lj4/n;->c:Lj4/l;

    .line 2
    .line 3
    if-nez v0, :cond_16

    .line 4
    .line 5
    new-instance v0, Lj4/m;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iget v2, p0, Lj4/n;->g:I

    .line 9
    .line 10
    iget-object v3, p0, Lj4/n;->f:[Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3}, Lj4/m;-><init>(II[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lj4/l;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lj4/l;-><init>(Lj4/n;Lj4/m;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lj4/n;->c:Lj4/l;

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_16
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget v0, p0, Lj4/n;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "size"

    .line 2
    .line 3
    iget v1, p0, Lj4/n;->g:I

    .line 4
    .line 5
    invoke-static {v1, v0}, Lb1/u;->c(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    int-to-long v1, v1

    .line 11
    const-wide/16 v3, 0x8

    .line 12
    .line 13
    mul-long/2addr v1, v3

    .line 14
    const-wide/32 v3, 0x40000000

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    long-to-int v1, v1

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x7b

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lj4/n;->entrySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lj4/k;

    .line 35
    .line 36
    invoke-virtual {v1}, Lj4/k;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x1

    .line 41
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_50

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/util/Map$Entry;

    .line 52
    .line 53
    if-nez v2, :cond_3b

    .line 54
    .line 55
    const-string v2, ", "

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_3b
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/16 v2, 0x3d

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    goto :goto_28

    .line 81
    :cond_50
    const/16 v1, 0x7d

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 5

    .line 1
    iget-object v0, p0, Lj4/n;->d:Lj4/m;

    .line 2
    .line 3
    if-nez v0, :cond_10

    .line 4
    .line 5
    new-instance v0, Lj4/m;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iget v2, p0, Lj4/n;->g:I

    .line 9
    .line 10
    iget-object v3, p0, Lj4/n;->f:[Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3}, Lj4/m;-><init>(II[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lj4/n;->d:Lj4/m;

    .line 16
    .line 17
    :cond_10
    return-object v0
.end method
