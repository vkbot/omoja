.class public abstract Lw6/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lw6/a;->a:[C

    .line 8
    .line 9
    return-void
.end method

.method public static a(Lb7/s;Ljava/lang/StringBuilder;IZ)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    const/4 v1, 0x1

    .line 6
    if-le p2, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lb7/s;->a()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0xb

    .line 13
    .line 14
    if-lt v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lb7/s;->b(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    div-int/lit8 v2, v1, 0x2d

    .line 21
    .line 22
    invoke-static {v2}, Lw6/a;->f(I)C

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    rem-int/lit8 v1, v1, 0x2d

    .line 30
    .line 31
    invoke-static {v1}, Lw6/a;->f(I)C

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 p2, p2, -0x2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    throw p0

    .line 46
    :cond_1
    if-ne p2, v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lb7/s;->a()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/4 v2, 0x6

    .line 53
    if-lt p2, v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Lb7/s;->b(I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    invoke-static {p0}, Lw6/a;->f(I)C

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    throw p0

    .line 72
    :cond_3
    :goto_1
    if-eqz p3, :cond_6

    .line 73
    .line 74
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-ge v0, p0, :cond_6

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    const/16 p2, 0x25

    .line 85
    .line 86
    if-ne p0, p2, :cond_5

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    sub-int/2addr p0, v1

    .line 93
    if-ge v0, p0, :cond_4

    .line 94
    .line 95
    add-int/lit8 p0, v0, 0x1

    .line 96
    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    if-ne p3, p2, :cond_4

    .line 102
    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    const/16 p0, 0x1d

    .line 108
    .line 109
    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    return-void
.end method

.method public static b(Lb7/s;Ljava/lang/StringBuilder;ILf6/c;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 22

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    shl-int/lit8 v2, v0, 0x3

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lb7/s;->a()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-gt v2, v3, :cond_25

    .line 12
    .line 13
    new-array v2, v0, [B

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v4, v0, :cond_0

    .line 18
    .line 19
    const/16 v5, 0x8

    .line 20
    .line 21
    move-object/from16 v6, p0

    .line 22
    .line 23
    invoke-virtual {v6, v5}, Lb7/s;->b(I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    int-to-byte v5, v5

    .line 28
    aput-byte v5, v2, v4

    .line 29
    .line 30
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-nez p3, :cond_24

    .line 34
    .line 35
    sget-object v4, Lf6/g;->a:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    sget-object v4, Lz5/d;->f:Lz5/d;

    .line 40
    .line 41
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto/16 :goto_11

    .line 56
    .line 57
    :cond_1
    const/4 v1, 0x1

    .line 58
    const/4 v4, 0x3

    .line 59
    const/4 v5, 0x2

    .line 60
    if-le v0, v4, :cond_2

    .line 61
    .line 62
    aget-byte v6, v2, v3

    .line 63
    .line 64
    const/16 v7, -0x11

    .line 65
    .line 66
    if-ne v6, v7, :cond_2

    .line 67
    .line 68
    aget-byte v6, v2, v1

    .line 69
    .line 70
    const/16 v7, -0x45

    .line 71
    .line 72
    if-ne v6, v7, :cond_2

    .line 73
    .line 74
    aget-byte v6, v2, v5

    .line 75
    .line 76
    const/16 v7, -0x41

    .line 77
    .line 78
    if-ne v6, v7, :cond_2

    .line 79
    .line 80
    move v6, v1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v6, v3

    .line 83
    :goto_1
    move v7, v1

    .line 84
    move v8, v7

    .line 85
    move v5, v3

    .line 86
    move v9, v5

    .line 87
    move v10, v9

    .line 88
    move v11, v10

    .line 89
    move v12, v11

    .line 90
    move v13, v12

    .line 91
    move v14, v13

    .line 92
    move v15, v14

    .line 93
    move/from16 v17, v15

    .line 94
    .line 95
    move/from16 v18, v17

    .line 96
    .line 97
    move/from16 v19, v18

    .line 98
    .line 99
    :goto_2
    if-ge v9, v0, :cond_3

    .line 100
    .line 101
    if-nez v1, :cond_4

    .line 102
    .line 103
    if-nez v7, :cond_4

    .line 104
    .line 105
    if-eqz v8, :cond_3

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    move/from16 p5, v1

    .line 109
    .line 110
    move/from16 v20, v6

    .line 111
    .line 112
    goto/16 :goto_c

    .line 113
    .line 114
    :cond_4
    :goto_3
    aget-byte v4, v2, v9

    .line 115
    .line 116
    move/from16 p5, v1

    .line 117
    .line 118
    and-int/lit16 v1, v4, 0xff

    .line 119
    .line 120
    if-eqz v8, :cond_5

    .line 121
    .line 122
    if-lez v10, :cond_7

    .line 123
    .line 124
    and-int/lit16 v4, v4, 0x80

    .line 125
    .line 126
    if-eqz v4, :cond_6

    .line 127
    .line 128
    add-int/lit8 v10, v10, -0x1

    .line 129
    .line 130
    :cond_5
    move/from16 v20, v6

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_6
    move/from16 v20, v6

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_7
    move/from16 v20, v6

    .line 137
    .line 138
    and-int/lit16 v6, v4, 0x80

    .line 139
    .line 140
    if-eqz v6, :cond_b

    .line 141
    .line 142
    and-int/lit8 v6, v4, 0x40

    .line 143
    .line 144
    if-eqz v6, :cond_a

    .line 145
    .line 146
    add-int/lit8 v6, v10, 0x1

    .line 147
    .line 148
    and-int/lit8 v21, v4, 0x20

    .line 149
    .line 150
    if-nez v21, :cond_8

    .line 151
    .line 152
    add-int/lit8 v12, v12, 0x1

    .line 153
    .line 154
    :goto_4
    move v10, v6

    .line 155
    goto :goto_6

    .line 156
    :cond_8
    add-int/lit8 v6, v10, 0x2

    .line 157
    .line 158
    and-int/lit8 v21, v4, 0x10

    .line 159
    .line 160
    if-nez v21, :cond_9

    .line 161
    .line 162
    add-int/lit8 v13, v13, 0x1

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_9
    add-int/lit8 v10, v10, 0x3

    .line 166
    .line 167
    and-int/lit8 v4, v4, 0x8

    .line 168
    .line 169
    if-nez v4, :cond_a

    .line 170
    .line 171
    add-int/lit8 v14, v14, 0x1

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_a
    :goto_5
    const/4 v8, 0x0

    .line 175
    :cond_b
    :goto_6
    const/16 v4, 0xa0

    .line 176
    .line 177
    const/16 v6, 0x7f

    .line 178
    .line 179
    if-eqz p5, :cond_e

    .line 180
    .line 181
    if-le v1, v6, :cond_c

    .line 182
    .line 183
    if-ge v1, v4, :cond_c

    .line 184
    .line 185
    const/4 v4, 0x0

    .line 186
    goto :goto_7

    .line 187
    :cond_c
    const/16 v4, 0x9f

    .line 188
    .line 189
    if-le v1, v4, :cond_e

    .line 190
    .line 191
    const/16 v4, 0xc0

    .line 192
    .line 193
    if-lt v1, v4, :cond_d

    .line 194
    .line 195
    const/16 v4, 0xd7

    .line 196
    .line 197
    if-eq v1, v4, :cond_d

    .line 198
    .line 199
    const/16 v4, 0xf7

    .line 200
    .line 201
    if-ne v1, v4, :cond_e

    .line 202
    .line 203
    :cond_d
    add-int/lit8 v17, v17, 0x1

    .line 204
    .line 205
    :cond_e
    move/from16 v4, p5

    .line 206
    .line 207
    :goto_7
    if-eqz v7, :cond_17

    .line 208
    .line 209
    if-lez v11, :cond_11

    .line 210
    .line 211
    move/from16 p5, v4

    .line 212
    .line 213
    const/16 v4, 0x40

    .line 214
    .line 215
    if-lt v1, v4, :cond_10

    .line 216
    .line 217
    if-eq v1, v6, :cond_10

    .line 218
    .line 219
    const/16 v4, 0xfc

    .line 220
    .line 221
    if-le v1, v4, :cond_f

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_f
    add-int/lit8 v11, v11, -0x1

    .line 225
    .line 226
    goto :goto_b

    .line 227
    :cond_10
    :goto_8
    const/4 v7, 0x0

    .line 228
    goto :goto_b

    .line 229
    :cond_11
    move/from16 p5, v4

    .line 230
    .line 231
    const/16 v4, 0x80

    .line 232
    .line 233
    if-eq v1, v4, :cond_10

    .line 234
    .line 235
    const/16 v4, 0xa0

    .line 236
    .line 237
    if-eq v1, v4, :cond_10

    .line 238
    .line 239
    const/16 v6, 0xef

    .line 240
    .line 241
    if-le v1, v6, :cond_12

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_12
    if-le v1, v4, :cond_14

    .line 245
    .line 246
    const/16 v4, 0xe0

    .line 247
    .line 248
    if-ge v1, v4, :cond_14

    .line 249
    .line 250
    add-int/lit8 v5, v5, 0x1

    .line 251
    .line 252
    add-int/lit8 v1, v19, 0x1

    .line 253
    .line 254
    if-le v1, v15, :cond_13

    .line 255
    .line 256
    move v15, v1

    .line 257
    move/from16 v19, v15

    .line 258
    .line 259
    :goto_9
    const/16 v18, 0x0

    .line 260
    .line 261
    goto :goto_b

    .line 262
    :cond_13
    move/from16 v19, v1

    .line 263
    .line 264
    goto :goto_9

    .line 265
    :cond_14
    const/16 v4, 0x7f

    .line 266
    .line 267
    if-le v1, v4, :cond_16

    .line 268
    .line 269
    add-int/lit8 v11, v11, 0x1

    .line 270
    .line 271
    add-int/lit8 v1, v18, 0x1

    .line 272
    .line 273
    if-le v1, v3, :cond_15

    .line 274
    .line 275
    move v3, v1

    .line 276
    move/from16 v18, v3

    .line 277
    .line 278
    :goto_a
    const/16 v19, 0x0

    .line 279
    .line 280
    goto :goto_b

    .line 281
    :cond_15
    move/from16 v18, v1

    .line 282
    .line 283
    goto :goto_a

    .line 284
    :cond_16
    const/16 v18, 0x0

    .line 285
    .line 286
    goto :goto_a

    .line 287
    :cond_17
    move/from16 p5, v4

    .line 288
    .line 289
    :goto_b
    add-int/lit8 v9, v9, 0x1

    .line 290
    .line 291
    move/from16 v1, p5

    .line 292
    .line 293
    move/from16 v6, v20

    .line 294
    .line 295
    const/4 v4, 0x3

    .line 296
    goto/16 :goto_2

    .line 297
    .line 298
    :goto_c
    if-eqz v8, :cond_18

    .line 299
    .line 300
    if-lez v10, :cond_18

    .line 301
    .line 302
    const/4 v8, 0x0

    .line 303
    :cond_18
    if-eqz v7, :cond_19

    .line 304
    .line 305
    if-lez v11, :cond_19

    .line 306
    .line 307
    const/16 v16, 0x0

    .line 308
    .line 309
    goto :goto_d

    .line 310
    :cond_19
    move/from16 v16, v7

    .line 311
    .line 312
    :goto_d
    const-string v1, "UTF8"

    .line 313
    .line 314
    if-eqz v8, :cond_1b

    .line 315
    .line 316
    if-nez v20, :cond_1a

    .line 317
    .line 318
    add-int/2addr v12, v13

    .line 319
    add-int/2addr v12, v14

    .line 320
    if-lez v12, :cond_1b

    .line 321
    .line 322
    :cond_1a
    :goto_e
    move-object v0, v1

    .line 323
    goto :goto_11

    .line 324
    :cond_1b
    const-string v4, "SJIS"

    .line 325
    .line 326
    if-eqz v16, :cond_1d

    .line 327
    .line 328
    sget-boolean v6, Lf6/g;->b:Z

    .line 329
    .line 330
    if-nez v6, :cond_1c

    .line 331
    .line 332
    const/4 v6, 0x3

    .line 333
    if-ge v15, v6, :cond_1c

    .line 334
    .line 335
    if-lt v3, v6, :cond_1d

    .line 336
    .line 337
    :cond_1c
    :goto_f
    move-object v0, v4

    .line 338
    goto :goto_11

    .line 339
    :cond_1d
    const-string v3, "ISO8859_1"

    .line 340
    .line 341
    if-eqz p5, :cond_20

    .line 342
    .line 343
    if-eqz v16, :cond_20

    .line 344
    .line 345
    const/4 v6, 0x2

    .line 346
    if-ne v15, v6, :cond_1e

    .line 347
    .line 348
    if-eq v5, v6, :cond_1c

    .line 349
    .line 350
    :cond_1e
    mul-int/lit8 v1, v17, 0xa

    .line 351
    .line 352
    if-lt v1, v0, :cond_1f

    .line 353
    .line 354
    goto :goto_f

    .line 355
    :cond_1f
    :goto_10
    move-object v0, v3

    .line 356
    goto :goto_11

    .line 357
    :cond_20
    if-eqz p5, :cond_21

    .line 358
    .line 359
    goto :goto_10

    .line 360
    :cond_21
    if-eqz v16, :cond_22

    .line 361
    .line 362
    goto :goto_f

    .line 363
    :cond_22
    if-eqz v8, :cond_23

    .line 364
    .line 365
    goto :goto_e

    .line 366
    :cond_23
    sget-object v0, Lf6/g;->a:Ljava/lang/String;

    .line 367
    .line 368
    goto :goto_11

    .line 369
    :cond_24
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    :goto_11
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 374
    .line 375
    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    move-object/from16 v0, p1

    .line 379
    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .line 382
    .line 383
    move-object/from16 v0, p4

    .line 384
    .line 385
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    return-void

    .line 389
    :catch_0
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    throw v0

    .line 394
    :cond_25
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    throw v0
.end method

.method public static c(Lb7/s;Ljava/lang/StringBuilder;I)V
    .locals 4

    .line 1
    mul-int/lit8 v0, p2, 0xd

    .line 2
    .line 3
    invoke-virtual {p0}, Lb7/s;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gt v0, v1, :cond_2

    .line 8
    .line 9
    mul-int/lit8 v0, p2, 0x2

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-lez p2, :cond_1

    .line 15
    .line 16
    const/16 v2, 0xd

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lb7/s;->b(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    div-int/lit8 v3, v2, 0x60

    .line 23
    .line 24
    shl-int/lit8 v3, v3, 0x8

    .line 25
    .line 26
    rem-int/lit8 v2, v2, 0x60

    .line 27
    .line 28
    or-int/2addr v2, v3

    .line 29
    const/16 v3, 0xa00

    .line 30
    .line 31
    if-ge v2, v3, :cond_0

    .line 32
    .line 33
    const v3, 0xa1a1

    .line 34
    .line 35
    .line 36
    :goto_1
    add-int/2addr v2, v3

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    const v3, 0xa6a1

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :goto_2
    shr-int/lit8 v3, v2, 0x8

    .line 43
    .line 44
    int-to-byte v3, v3

    .line 45
    aput-byte v3, v0, v1

    .line 46
    .line 47
    add-int/lit8 v3, v1, 0x1

    .line 48
    .line 49
    int-to-byte v2, v2

    .line 50
    aput-byte v2, v0, v3

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x2

    .line 53
    .line 54
    add-int/lit8 p2, p2, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    .line 58
    .line 59
    const-string p2, "GB2312"

    .line 60
    .line 61
    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    throw p0

    .line 73
    :cond_2
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    throw p0
.end method

.method public static d(Lb7/s;Ljava/lang/StringBuilder;I)V
    .locals 4

    .line 1
    mul-int/lit8 v0, p2, 0xd

    .line 2
    .line 3
    invoke-virtual {p0}, Lb7/s;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gt v0, v1, :cond_2

    .line 8
    .line 9
    mul-int/lit8 v0, p2, 0x2

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-lez p2, :cond_1

    .line 15
    .line 16
    const/16 v2, 0xd

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lb7/s;->b(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    div-int/lit16 v3, v2, 0xc0

    .line 23
    .line 24
    shl-int/lit8 v3, v3, 0x8

    .line 25
    .line 26
    rem-int/lit16 v2, v2, 0xc0

    .line 27
    .line 28
    or-int/2addr v2, v3

    .line 29
    const/16 v3, 0x1f00

    .line 30
    .line 31
    if-ge v2, v3, :cond_0

    .line 32
    .line 33
    const v3, 0x8140

    .line 34
    .line 35
    .line 36
    :goto_1
    add-int/2addr v2, v3

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    const v3, 0xc140

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :goto_2
    shr-int/lit8 v3, v2, 0x8

    .line 43
    .line 44
    int-to-byte v3, v3

    .line 45
    aput-byte v3, v0, v1

    .line 46
    .line 47
    add-int/lit8 v3, v1, 0x1

    .line 48
    .line 49
    int-to-byte v2, v2

    .line 50
    aput-byte v2, v0, v3

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x2

    .line 53
    .line 54
    add-int/lit8 p2, p2, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    .line 58
    .line 59
    const-string p2, "SJIS"

    .line 60
    .line 61
    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    throw p0

    .line 73
    :cond_2
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    throw p0
.end method

.method public static e(Lb7/s;Ljava/lang/StringBuilder;I)V
    .locals 3

    .line 1
    :goto_0
    const/4 v0, 0x3

    .line 2
    const/16 v1, 0xa

    .line 3
    .line 4
    if-lt p2, v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Lb7/s;->a()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lt v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lb7/s;->b(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v2, 0x3e8

    .line 17
    .line 18
    if-ge v0, v2, :cond_0

    .line 19
    .line 20
    div-int/lit8 v2, v0, 0x64

    .line 21
    .line 22
    invoke-static {v2}, Lw6/a;->f(I)C

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    div-int/lit8 v2, v0, 0xa

    .line 30
    .line 31
    rem-int/2addr v2, v1

    .line 32
    invoke-static {v2}, Lw6/a;->f(I)C

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    rem-int/lit8 v0, v0, 0xa

    .line 40
    .line 41
    invoke-static {v0}, Lw6/a;->f(I)C

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    add-int/lit8 p2, p2, -0x3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    throw p0

    .line 56
    :cond_1
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    throw p0

    .line 61
    :cond_2
    const/4 v0, 0x2

    .line 62
    if-ne p2, v0, :cond_5

    .line 63
    .line 64
    invoke-virtual {p0}, Lb7/s;->a()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    const/4 v0, 0x7

    .line 69
    if-lt p2, v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lb7/s;->b(I)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    const/16 p2, 0x64

    .line 76
    .line 77
    if-ge p0, p2, :cond_3

    .line 78
    .line 79
    div-int/lit8 p2, p0, 0xa

    .line 80
    .line 81
    invoke-static {p2}, Lw6/a;->f(I)C

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    rem-int/2addr p0, v1

    .line 89
    invoke-static {p0}, Lw6/a;->f(I)C

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    throw p0

    .line 102
    :cond_4
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    throw p0

    .line 107
    :cond_5
    const/4 v0, 0x1

    .line 108
    if-ne p2, v0, :cond_8

    .line 109
    .line 110
    invoke-virtual {p0}, Lb7/s;->a()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    const/4 v0, 0x4

    .line 115
    if-lt p2, v0, :cond_7

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lb7/s;->b(I)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-ge p0, v1, :cond_6

    .line 122
    .line 123
    invoke-static {p0}, Lw6/a;->f(I)C

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_6
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    throw p0

    .line 136
    :cond_7
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    throw p0

    .line 141
    :cond_8
    return-void
.end method

.method public static f(I)C
    .locals 2

    .line 1
    sget-object v0, Lw6/a;->a:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p0, v1, :cond_0

    .line 5
    .line 6
    aget-char p0, v0, p0

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    throw p0
.end method
