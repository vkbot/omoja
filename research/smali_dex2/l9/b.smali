.class public abstract Ll9/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ll9/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ll9/j;

    .line 2
    .line 3
    invoke-direct {v0}, Ll9/j;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll9/b;->a:Ll9/j;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Ll9/e0;)Ll9/z;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll9/z;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ll9/z;-><init>(Ll9/e0;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static final b(Ll9/g0;)Ll9/a0;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll9/a0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ll9/a0;-><init>(Ll9/g0;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static c(JLl9/l;ILjava/util/List;IILjava/util/List;)V
    .registers 28

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    move/from16 v2, p5

    .line 8
    .line 9
    move/from16 v10, p6

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    const-string v3, "Failed requirement."

    .line 14
    .line 15
    if-ge v2, v10, :cond_1ab

    .line 16
    .line 17
    move v4, v2

    .line 18
    :goto_11
    if-ge v4, v10, :cond_26

    .line 19
    .line 20
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    check-cast v6, Ll9/o;

    .line 25
    .line 26
    invoke-virtual {v6}, Ll9/o;->c()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-lt v6, v1, :cond_22

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_11

    .line 35
    :cond_22
    invoke-static {v3}, Lj1/i;->k(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_26
    invoke-interface/range {p4 .. p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ll9/o;

    .line 44
    .line 45
    add-int/lit8 v4, v10, -0x1

    .line 46
    .line 47
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ll9/o;

    .line 52
    .line 53
    invoke-virtual {v3}, Ll9/o;->c()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-ne v1, v6, :cond_53

    .line 58
    .line 59
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Ll9/o;

    .line 76
    .line 77
    move-object/from16 v19, v6

    .line 78
    .line 79
    move v6, v2

    .line 80
    move v2, v3

    .line 81
    move-object/from16 v3, v19

    .line 82
    .line 83
    goto :goto_55

    .line 84
    :cond_53
    move v6, v2

    .line 85
    const/4 v2, -0x1

    .line 86
    :goto_55
    invoke-virtual {v3, v1}, Ll9/o;->f(I)B

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-virtual {v4, v1}, Ll9/o;->f(I)B

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    const/4 v12, 0x4

    .line 95
    const/4 v13, 0x2

    .line 96
    if-eq v7, v9, :cond_125

    .line 97
    .line 98
    add-int/lit8 v3, v6, 0x1

    .line 99
    .line 100
    const/4 v4, 0x1

    .line 101
    :goto_64
    if-ge v3, v10, :cond_83

    .line 102
    .line 103
    add-int/lit8 v7, v3, -0x1

    .line 104
    .line 105
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    check-cast v7, Ll9/o;

    .line 110
    .line 111
    invoke-virtual {v7, v1}, Ll9/o;->f(I)B

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    check-cast v9, Ll9/o;

    .line 120
    .line 121
    invoke-virtual {v9, v1}, Ll9/o;->f(I)B

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-eq v7, v9, :cond_80

    .line 126
    .line 127
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    :cond_80
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_64

    .line 132
    :cond_83
    iget-wide v14, v0, Ll9/l;->c:J

    .line 133
    .line 134
    const/16 v16, -0x1

    .line 135
    .line 136
    int-to-long v11, v12

    .line 137
    div-long/2addr v14, v11

    .line 138
    add-long v14, v14, p0

    .line 139
    .line 140
    move-wide/from16 v17, v11

    .line 141
    .line 142
    int-to-long v11, v13

    .line 143
    add-long/2addr v14, v11

    .line 144
    mul-int/lit8 v3, v4, 0x2

    .line 145
    .line 146
    int-to-long v11, v3

    .line 147
    add-long/2addr v14, v11

    .line 148
    invoke-virtual {v0, v4}, Ll9/l;->p0(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ll9/l;->p0(I)V

    .line 152
    .line 153
    .line 154
    move v2, v6

    .line 155
    :goto_9a
    if-ge v2, v10, :cond_be

    .line 156
    .line 157
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Ll9/o;

    .line 162
    .line 163
    invoke-virtual {v3, v1}, Ll9/o;->f(I)B

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eq v2, v6, :cond_b6

    .line 168
    .line 169
    add-int/lit8 v4, v2, -0x1

    .line 170
    .line 171
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    check-cast v4, Ll9/o;

    .line 176
    .line 177
    invoke-virtual {v4, v1}, Ll9/o;->f(I)B

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eq v3, v4, :cond_bb

    .line 182
    .line 183
    :cond_b6
    and-int/lit16 v3, v3, 0xff

    .line 184
    .line 185
    invoke-virtual {v0, v3}, Ll9/l;->p0(I)V

    .line 186
    .line 187
    .line 188
    :cond_bb
    add-int/lit8 v2, v2, 0x1

    .line 189
    .line 190
    goto :goto_9a

    .line 191
    :cond_be
    new-instance v4, Ll9/l;

    .line 192
    .line 193
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 194
    .line 195
    .line 196
    move v7, v6

    .line 197
    :goto_c4
    if-ge v7, v10, :cond_121

    .line 198
    .line 199
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Ll9/o;

    .line 204
    .line 205
    invoke-virtual {v2, v1}, Ll9/o;->f(I)B

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    add-int/lit8 v3, v7, 0x1

    .line 210
    .line 211
    move v6, v3

    .line 212
    :goto_d3
    if-ge v6, v10, :cond_e5

    .line 213
    .line 214
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    check-cast v9, Ll9/o;

    .line 219
    .line 220
    invoke-virtual {v9, v1}, Ll9/o;->f(I)B

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    if-eq v2, v9, :cond_e2

    .line 225
    .line 226
    goto :goto_e6

    .line 227
    :cond_e2
    add-int/lit8 v6, v6, 0x1

    .line 228
    .line 229
    goto :goto_d3

    .line 230
    :cond_e5
    move v6, v10

    .line 231
    :goto_e6
    if-ne v3, v6, :cond_107

    .line 232
    .line 233
    add-int/lit8 v2, v1, 0x1

    .line 234
    .line 235
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    check-cast v3, Ll9/o;

    .line 240
    .line 241
    invoke-virtual {v3}, Ll9/o;->c()I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-ne v2, v3, :cond_107

    .line 246
    .line 247
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    check-cast v2, Ljava/lang/Number;

    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    invoke-virtual {v0, v2}, Ll9/l;->p0(I)V

    .line 258
    .line 259
    .line 260
    move-object v9, v8

    .line 261
    move-wide v2, v14

    .line 262
    move v8, v6

    .line 263
    goto :goto_11d

    .line 264
    :cond_107
    iget-wide v2, v4, Ll9/l;->c:J

    .line 265
    .line 266
    div-long v2, v2, v17

    .line 267
    .line 268
    add-long/2addr v2, v14

    .line 269
    long-to-int v2, v2

    .line 270
    mul-int/lit8 v2, v2, -0x1

    .line 271
    .line 272
    invoke-virtual {v0, v2}, Ll9/l;->p0(I)V

    .line 273
    .line 274
    .line 275
    add-int/lit8 v5, v1, 0x1

    .line 276
    .line 277
    move-object v9, v8

    .line 278
    move-wide v2, v14

    .line 279
    move v8, v6

    .line 280
    move-object/from16 v6, p4

    .line 281
    .line 282
    invoke-static/range {v2 .. v9}, Ll9/b;->c(JLl9/l;ILjava/util/List;IILjava/util/List;)V

    .line 283
    .line 284
    .line 285
    move-object v5, v6

    .line 286
    :goto_11d
    move-wide v14, v2

    .line 287
    move v7, v8

    .line 288
    move-object v8, v9

    .line 289
    goto :goto_c4

    .line 290
    :cond_121
    invoke-virtual {v0, v4}, Ll9/l;->G(Ll9/g0;)J

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :cond_125
    move-object v9, v8

    .line 295
    const/16 v16, -0x1

    .line 296
    .line 297
    invoke-virtual {v3}, Ll9/o;->c()I

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    invoke-virtual {v4}, Ll9/o;->c()I

    .line 302
    .line 303
    .line 304
    move-result v8

    .line 305
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    const/4 v8, 0x0

    .line 310
    move v11, v1

    .line 311
    :goto_136
    if-ge v11, v7, :cond_147

    .line 312
    .line 313
    invoke-virtual {v3, v11}, Ll9/o;->f(I)B

    .line 314
    .line 315
    .line 316
    move-result v14

    .line 317
    invoke-virtual {v4, v11}, Ll9/o;->f(I)B

    .line 318
    .line 319
    .line 320
    move-result v15

    .line 321
    if-ne v14, v15, :cond_147

    .line 322
    .line 323
    add-int/lit8 v8, v8, 0x1

    .line 324
    .line 325
    add-int/lit8 v11, v11, 0x1

    .line 326
    .line 327
    goto :goto_136

    .line 328
    :cond_147
    iget-wide v14, v0, Ll9/l;->c:J

    .line 329
    .line 330
    int-to-long v11, v12

    .line 331
    div-long/2addr v14, v11

    .line 332
    add-long v14, v14, p0

    .line 333
    .line 334
    move-wide/from16 v17, v11

    .line 335
    .line 336
    int-to-long v11, v13

    .line 337
    add-long/2addr v14, v11

    .line 338
    int-to-long v11, v8

    .line 339
    add-long/2addr v14, v11

    .line 340
    const-wide/16 v11, 0x1

    .line 341
    .line 342
    add-long/2addr v14, v11

    .line 343
    neg-int v4, v8

    .line 344
    invoke-virtual {v0, v4}, Ll9/l;->p0(I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v2}, Ll9/l;->p0(I)V

    .line 348
    .line 349
    .line 350
    add-int v4, v1, v8

    .line 351
    .line 352
    :goto_15f
    if-ge v1, v4, :cond_16d

    .line 353
    .line 354
    invoke-virtual {v3, v1}, Ll9/o;->f(I)B

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    and-int/lit16 v2, v2, 0xff

    .line 359
    .line 360
    invoke-virtual {v0, v2}, Ll9/l;->p0(I)V

    .line 361
    .line 362
    .line 363
    add-int/lit8 v1, v1, 0x1

    .line 364
    .line 365
    goto :goto_15f

    .line 366
    :cond_16d
    add-int/lit8 v1, v6, 0x1

    .line 367
    .line 368
    if-ne v1, v10, :cond_191

    .line 369
    .line 370
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    check-cast v1, Ll9/o;

    .line 375
    .line 376
    invoke-virtual {v1}, Ll9/o;->c()I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-ne v4, v1, :cond_18b

    .line 381
    .line 382
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    check-cast v1, Ljava/lang/Number;

    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    invoke-virtual {v0, v1}, Ll9/l;->p0(I)V

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    :cond_18b
    const-string v0, "Check failed."

    .line 397
    .line 398
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    return-void

    .line 402
    :cond_191
    new-instance v3, Ll9/l;

    .line 403
    .line 404
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 405
    .line 406
    .line 407
    iget-wide v1, v3, Ll9/l;->c:J

    .line 408
    .line 409
    div-long v1, v1, v17

    .line 410
    .line 411
    add-long/2addr v1, v14

    .line 412
    long-to-int v1, v1

    .line 413
    mul-int/lit8 v1, v1, -0x1

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Ll9/l;->p0(I)V

    .line 416
    .line 417
    .line 418
    move-object v8, v9

    .line 419
    move v7, v10

    .line 420
    move-wide v1, v14

    .line 421
    invoke-static/range {v1 .. v8}, Ll9/b;->c(JLl9/l;ILjava/util/List;IILjava/util/List;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v3}, Ll9/l;->G(Ll9/g0;)J

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :cond_1ab
    invoke-static {v3}, Lj1/i;->k(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    return-void
.end method

.method public static final d(JJJ)V
    .registers 10

    .line 1
    or-long v0, p2, p4

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_13

    .line 8
    .line 9
    cmp-long v0, p2, p0

    .line 10
    .line 11
    if-gtz v0, :cond_13

    .line 12
    .line 13
    sub-long v0, p0, p2

    .line 14
    .line 15
    cmp-long v0, v0, p4

    .line 16
    .line 17
    if-ltz v0, :cond_13

    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "size="

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, " offset="

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, " byteCount="

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public static final e(Ljava/lang/AssertionError;)Z
    .registers 3

    .line 1
    sget-object v0, Ll9/v;->a:Ljava/util/logging/Logger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1b

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_16

    .line 15
    .line 16
    const-string v0, "getsockname failed"

    .line 17
    .line 18
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->o(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move p0, v1

    .line 24
    :goto_17
    if-eqz p0, :cond_1b

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1b
    return v1
.end method

.method public static varargs f([Ll9/o;)Ll9/w;
    .registers 12

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez v0, :cond_11

    .line 5
    .line 6
    new-instance p0, Ll9/w;

    .line 7
    .line 8
    new-array v0, v2, [Ll9/o;

    .line 9
    .line 10
    filled-new-array {v2, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Ll9/w;-><init>([Ll9/o;[I)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_11
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    array-length v3, p0

    .line 28
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    array-length v3, p0

    .line 32
    move v4, v2

    .line 33
    :goto_20
    if-ge v4, v3, :cond_2e

    .line 34
    .line 35
    aget-object v5, p0, v4

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_20

    .line 47
    :cond_2e
    new-array v1, v2, [Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, [Ljava/lang/Integer;

    .line 54
    .line 55
    array-length v1, v0

    .line 56
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    array-length v0, p0

    .line 65
    move v1, v2

    .line 66
    move v3, v1

    .line 67
    :goto_42
    if-ge v1, v0, :cond_57

    .line 68
    .line 69
    aget-object v4, p0, v1

    .line 70
    .line 71
    add-int/lit8 v5, v3, 0x1

    .line 72
    .line 73
    invoke-static {v7, v4}, Lkotlin/collections/CollectionsKt;->f(Ljava/util/List;Ll9/o;)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v10, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    move v3, v5

    .line 87
    goto :goto_42

    .line 88
    :cond_57
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ll9/o;

    .line 93
    .line 94
    invoke-virtual {v0}, Ll9/o;->c()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-lez v0, :cond_f7

    .line 99
    .line 100
    move v0, v2

    .line 101
    :goto_64
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-ge v0, v1, :cond_c2

    .line 106
    .line 107
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Ll9/o;

    .line 112
    .line 113
    add-int/lit8 v3, v0, 0x1

    .line 114
    .line 115
    move v4, v3

    .line 116
    :goto_73
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-ge v4, v5, :cond_c0

    .line 121
    .line 122
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Ll9/o;

    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ll9/o;->c()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    invoke-virtual {v5, v1, v6}, Ll9/o;->i(Ll9/o;I)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_c0

    .line 143
    .line 144
    invoke-virtual {v5}, Ll9/o;->c()I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    invoke-virtual {v1}, Ll9/o;->c()I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-eq v6, v8, :cond_b9

    .line 153
    .line 154
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Ljava/lang/Number;

    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    check-cast v6, Ljava/lang/Number;

    .line 169
    .line 170
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-le v5, v6, :cond_b6

    .line 175
    .line 176
    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    goto :goto_73

    .line 183
    :cond_b6
    add-int/lit8 v4, v4, 0x1

    .line 184
    .line 185
    goto :goto_73

    .line 186
    :cond_b9
    const-string p0, "duplicate option: "

    .line 187
    .line 188
    invoke-static {v5, p0}, Ll9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const/4 p0, 0x0

    .line 192
    return-object p0

    .line 193
    :cond_c0
    move v0, v3

    .line 194
    goto :goto_64

    .line 195
    :cond_c2
    new-instance v5, Ll9/l;

    .line 196
    .line 197
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 198
    .line 199
    .line 200
    const/4 v8, 0x0

    .line 201
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    const-wide/16 v3, 0x0

    .line 206
    .line 207
    const/4 v6, 0x0

    .line 208
    invoke-static/range {v3 .. v10}, Ll9/b;->c(JLl9/l;ILjava/util/List;IILjava/util/List;)V

    .line 209
    .line 210
    .line 211
    iget-wide v0, v5, Ll9/l;->c:J

    .line 212
    .line 213
    const/4 v3, 0x4

    .line 214
    int-to-long v3, v3

    .line 215
    div-long/2addr v0, v3

    .line 216
    long-to-int v0, v0

    .line 217
    new-array v0, v0, [I

    .line 218
    .line 219
    :goto_da
    invoke-virtual {v5}, Ll9/l;->k()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_ea

    .line 224
    .line 225
    add-int/lit8 v1, v2, 0x1

    .line 226
    .line 227
    invoke-virtual {v5}, Ll9/l;->readInt()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    aput v3, v0, v2

    .line 232
    .line 233
    move v2, v1

    .line 234
    goto :goto_da

    .line 235
    :cond_ea
    new-instance v1, Ll9/w;

    .line 236
    .line 237
    array-length v2, p0

    .line 238
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    check-cast p0, [Ll9/o;

    .line 243
    .line 244
    invoke-direct {v1, p0, v0}, Ll9/w;-><init>([Ll9/o;[I)V

    .line 245
    .line 246
    .line 247
    return-object v1

    .line 248
    :cond_f7
    const-string p0, "the empty byte string is not a supported option"

    .line 249
    .line 250
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const/4 p0, 0x0

    .line 254
    return-object p0
.end method

.method public static final g(Ljava/net/Socket;)Ll9/e0;
    .registers 3

    .line 1
    sget-object v0, Ll9/v;->a:Ljava/util/logging/Logger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ll9/f0;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ll9/f0;-><init>(Ljava/net/Socket;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll9/x;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0, v0}, Ll9/x;-><init>(Ljava/io/OutputStream;Ll9/j0;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ll9/g;->sink(Ll9/e0;)Ll9/e0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static final h(Ljava/net/Socket;)Ll9/g0;
    .registers 3

    .line 1
    sget-object v0, Ll9/v;->a:Ljava/util/logging/Logger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ll9/f0;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ll9/f0;-><init>(Ljava/net/Socket;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll9/f;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0, v0}, Ll9/f;-><init>(Ljava/io/InputStream;Ll9/j0;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ll9/g;->source(Ll9/g0;)Ll9/g0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
