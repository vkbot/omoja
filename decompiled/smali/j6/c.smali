.class public final Lj6/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lr5/c;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lr5/c;

    .line 8
    .line 9
    sget-object v0, Lh6/a;->m:Lh6/a;

    .line 10
    .line 11
    const/16 v1, 0x13

    .line 12
    .line 13
    invoke-direct {p1, v1, v0}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lj6/c;->a:Lr5/c;

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lr5/c;

    .line 23
    .line 24
    sget-object v0, Lh6/a;->l:Lh6/a;

    .line 25
    .line 26
    const/16 v1, 0x13

    .line 27
    .line 28
    invoke-direct {p1, v1, v0}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lj6/c;->a:Lr5/c;

    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lr5/c;

    .line 38
    .line 39
    sget-object v0, Lh6/a;->o:Lh6/a;

    .line 40
    .line 41
    const/16 v1, 0x13

    .line 42
    .line 43
    invoke-direct {p1, v1, v0}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lj6/c;->a:Lr5/c;

    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(IIII[B)V
    .locals 7

    .line 1
    add-int v0, p2, p3

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x2

    .line 8
    :goto_0
    div-int v2, v0, v1

    .line 9
    .line 10
    new-array v2, v2, [I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_1
    if-ge v4, v0, :cond_3

    .line 15
    .line 16
    if-eqz p4, :cond_1

    .line 17
    .line 18
    rem-int/lit8 v5, v4, 0x2

    .line 19
    .line 20
    add-int/lit8 v6, p4, -0x1

    .line 21
    .line 22
    if-ne v5, v6, :cond_2

    .line 23
    .line 24
    :cond_1
    div-int v5, v4, v1

    .line 25
    .line 26
    add-int v6, v4, p1

    .line 27
    .line 28
    aget-byte v6, p5, v6

    .line 29
    .line 30
    and-int/lit16 v6, v6, 0xff

    .line 31
    .line 32
    aput v6, v2, v5

    .line 33
    .line 34
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    :try_start_0
    iget-object v0, p0, Lj6/c;->a:Lr5/c;

    .line 38
    .line 39
    div-int/2addr p3, v1

    .line 40
    invoke-virtual {v0, v2, p3}, Lr5/c;->f([II)V
    :try_end_0
    .catch Lh6/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :goto_2
    if-ge v3, p2, :cond_6

    .line 44
    .line 45
    if-eqz p4, :cond_4

    .line 46
    .line 47
    rem-int/lit8 p3, v3, 0x2

    .line 48
    .line 49
    add-int/lit8 v0, p4, -0x1

    .line 50
    .line 51
    if-ne p3, v0, :cond_5

    .line 52
    .line 53
    :cond_4
    add-int p3, v3, p1

    .line 54
    .line 55
    div-int v0, v3, v1

    .line 56
    .line 57
    aget v0, v2, v0

    .line 58
    .line 59
    int-to-byte v0, v0

    .line 60
    aput-byte v0, p5, p3

    .line 61
    .line 62
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_6
    return-void

    .line 66
    :catch_0
    invoke-static {}, Lz5/c;->a()Lz5/c;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    throw p1
.end method

.method public b(Lcom/bumptech/glide/manager/s;Ljava/util/Map;)Lf6/d;
    .locals 23

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/manager/s;->i()Lw6/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/manager/s;->h()Lw6/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v1, v1, Lw6/c;->a:I

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/manager/s;->h()Lw6/c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/manager/s;->i()Lw6/f;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/16 v4, 0x8

    .line 20
    .line 21
    invoke-static {v4}, Lcom/bumptech/glide/g;->d(I)[I

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-byte v2, v2, Lw6/c;->b:B

    .line 26
    .line 27
    aget v2, v5, v2

    .line 28
    .line 29
    move-object/from16 v5, p1

    .line 30
    .line 31
    iget-object v5, v5, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v5, Lf6/b;

    .line 34
    .line 35
    iget v6, v5, Lf6/b;->c:I

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    move v8, v7

    .line 39
    :goto_0
    if-ge v8, v6, :cond_2

    .line 40
    .line 41
    move v9, v7

    .line 42
    :goto_1
    if-ge v9, v6, :cond_1

    .line 43
    .line 44
    invoke-static {v2, v8, v9}, Lw6/b;->a(III)Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-eqz v10, :cond_0

    .line 49
    .line 50
    invoke-virtual {v5, v9, v8}, Lf6/b;->a(II)V

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget v2, v3, Lw6/f;->a:I

    .line 60
    .line 61
    const/4 v8, 0x4

    .line 62
    mul-int/2addr v2, v8

    .line 63
    add-int/lit8 v9, v2, 0x11

    .line 64
    .line 65
    iget v10, v3, Lw6/f;->d:I

    .line 66
    .line 67
    new-instance v11, Lf6/b;

    .line 68
    .line 69
    invoke-direct {v11, v9, v9}, Lf6/b;-><init>(II)V

    .line 70
    .line 71
    .line 72
    const/16 v9, 0x9

    .line 73
    .line 74
    invoke-virtual {v11, v7, v7, v9, v9}, Lf6/b;->g(IIII)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v12, v2, 0x9

    .line 78
    .line 79
    invoke-virtual {v11, v12, v7, v4, v9}, Lf6/b;->g(IIII)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v11, v7, v12, v9, v4}, Lf6/b;->g(IIII)V

    .line 83
    .line 84
    .line 85
    iget-object v12, v3, Lw6/f;->b:[I

    .line 86
    .line 87
    array-length v13, v12

    .line 88
    move v14, v7

    .line 89
    :goto_2
    const/4 v15, 0x2

    .line 90
    const/4 v8, 0x5

    .line 91
    if-ge v14, v13, :cond_7

    .line 92
    .line 93
    aget v16, v12, v14

    .line 94
    .line 95
    add-int/lit8 v4, v16, -0x2

    .line 96
    .line 97
    move/from16 v16, v15

    .line 98
    .line 99
    move v15, v7

    .line 100
    :goto_3
    if-ge v15, v13, :cond_6

    .line 101
    .line 102
    if-nez v14, :cond_3

    .line 103
    .line 104
    if-eqz v15, :cond_5

    .line 105
    .line 106
    add-int/lit8 v7, v13, -0x1

    .line 107
    .line 108
    if-eq v15, v7, :cond_5

    .line 109
    .line 110
    :cond_3
    add-int/lit8 v7, v13, -0x1

    .line 111
    .line 112
    if-ne v14, v7, :cond_4

    .line 113
    .line 114
    if-eqz v15, :cond_5

    .line 115
    .line 116
    :cond_4
    aget v7, v12, v15

    .line 117
    .line 118
    add-int/lit8 v7, v7, -0x2

    .line 119
    .line 120
    invoke-virtual {v11, v7, v4, v8, v8}, Lf6/b;->g(IIII)V

    .line 121
    .line 122
    .line 123
    :cond_5
    add-int/lit8 v15, v15, 0x1

    .line 124
    .line 125
    const/4 v7, 0x0

    .line 126
    goto :goto_3

    .line 127
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 128
    .line 129
    const/16 v4, 0x8

    .line 130
    .line 131
    const/4 v7, 0x0

    .line 132
    const/4 v8, 0x4

    .line 133
    goto :goto_2

    .line 134
    :cond_7
    move/from16 v16, v15

    .line 135
    .line 136
    const/4 v4, 0x6

    .line 137
    const/4 v7, 0x1

    .line 138
    invoke-virtual {v11, v4, v9, v7, v2}, Lf6/b;->g(IIII)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11, v9, v4, v2, v7}, Lf6/b;->g(IIII)V

    .line 142
    .line 143
    .line 144
    iget v3, v3, Lw6/f;->a:I

    .line 145
    .line 146
    const/4 v12, 0x3

    .line 147
    if-le v3, v4, :cond_8

    .line 148
    .line 149
    add-int/2addr v2, v4

    .line 150
    const/4 v3, 0x0

    .line 151
    invoke-virtual {v11, v2, v3, v12, v4}, Lf6/b;->g(IIII)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11, v3, v2, v4, v12}, Lf6/b;->g(IIII)V

    .line 155
    .line 156
    .line 157
    :cond_8
    new-array v2, v10, [B

    .line 158
    .line 159
    add-int/lit8 v3, v6, -0x1

    .line 160
    .line 161
    move v9, v3

    .line 162
    move/from16 v19, v7

    .line 163
    .line 164
    const/4 v13, 0x0

    .line 165
    const/4 v14, 0x0

    .line 166
    const/4 v15, 0x0

    .line 167
    :goto_4
    if-lez v9, :cond_f

    .line 168
    .line 169
    if-ne v9, v4, :cond_9

    .line 170
    .line 171
    add-int/lit8 v9, v9, -0x1

    .line 172
    .line 173
    :cond_9
    const/4 v4, 0x0

    .line 174
    :goto_5
    if-ge v4, v6, :cond_e

    .line 175
    .line 176
    if-eqz v19, :cond_a

    .line 177
    .line 178
    sub-int v20, v3, v4

    .line 179
    .line 180
    move/from16 v8, v20

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_a
    move v8, v4

    .line 184
    :goto_6
    move/from16 v21, v7

    .line 185
    .line 186
    move/from16 v7, v16

    .line 187
    .line 188
    const/4 v12, 0x0

    .line 189
    :goto_7
    if-ge v12, v7, :cond_d

    .line 190
    .line 191
    sub-int v7, v9, v12

    .line 192
    .line 193
    invoke-virtual {v11, v7, v8}, Lf6/b;->b(II)Z

    .line 194
    .line 195
    .line 196
    move-result v22

    .line 197
    if-nez v22, :cond_c

    .line 198
    .line 199
    add-int/lit8 v14, v14, 0x1

    .line 200
    .line 201
    shl-int/lit8 v15, v15, 0x1

    .line 202
    .line 203
    invoke-virtual {v5, v7, v8}, Lf6/b;->b(II)Z

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-eqz v7, :cond_b

    .line 208
    .line 209
    or-int/lit8 v7, v15, 0x1

    .line 210
    .line 211
    move v15, v7

    .line 212
    :cond_b
    const/16 v7, 0x8

    .line 213
    .line 214
    if-ne v14, v7, :cond_c

    .line 215
    .line 216
    add-int/lit8 v7, v13, 0x1

    .line 217
    .line 218
    int-to-byte v14, v15

    .line 219
    aput-byte v14, v2, v13

    .line 220
    .line 221
    move v13, v7

    .line 222
    const/4 v14, 0x0

    .line 223
    const/4 v15, 0x0

    .line 224
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 225
    .line 226
    const/4 v7, 0x2

    .line 227
    goto :goto_7

    .line 228
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 229
    .line 230
    move/from16 v7, v21

    .line 231
    .line 232
    const/4 v8, 0x5

    .line 233
    const/4 v12, 0x3

    .line 234
    const/16 v16, 0x2

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_e
    move/from16 v21, v7

    .line 238
    .line 239
    xor-int/lit8 v19, v19, 0x1

    .line 240
    .line 241
    add-int/lit8 v9, v9, -0x2

    .line 242
    .line 243
    const/4 v4, 0x6

    .line 244
    const/4 v8, 0x5

    .line 245
    const/4 v12, 0x3

    .line 246
    const/16 v16, 0x2

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_f
    move/from16 v21, v7

    .line 250
    .line 251
    if-ne v13, v10, :cond_41

    .line 252
    .line 253
    iget v3, v0, Lw6/f;->d:I

    .line 254
    .line 255
    if-ne v10, v3, :cond_40

    .line 256
    .line 257
    iget-object v3, v0, Lw6/f;->c:[Lj/i;

    .line 258
    .line 259
    invoke-static {v1}, Lcom/bumptech/glide/g;->c(I)I

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    aget-object v3, v3, v5

    .line 264
    .line 265
    iget-object v5, v3, Lj/i;->c:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v5, [Lc6/a;

    .line 268
    .line 269
    iget v3, v3, Lj/i;->b:I

    .line 270
    .line 271
    array-length v6, v5

    .line 272
    const/4 v7, 0x0

    .line 273
    const/4 v8, 0x0

    .line 274
    :goto_8
    if-ge v8, v6, :cond_10

    .line 275
    .line 276
    aget-object v9, v5, v8

    .line 277
    .line 278
    iget v9, v9, Lc6/a;->b:I

    .line 279
    .line 280
    add-int/2addr v7, v9

    .line 281
    add-int/lit8 v8, v8, 0x1

    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_10
    new-array v6, v7, [Lj6/a;

    .line 285
    .line 286
    array-length v8, v5

    .line 287
    const/4 v9, 0x0

    .line 288
    const/4 v10, 0x0

    .line 289
    :goto_9
    if-ge v10, v8, :cond_12

    .line 290
    .line 291
    aget-object v11, v5, v10

    .line 292
    .line 293
    const/4 v12, 0x0

    .line 294
    :goto_a
    iget v13, v11, Lc6/a;->b:I

    .line 295
    .line 296
    if-ge v12, v13, :cond_11

    .line 297
    .line 298
    iget v13, v11, Lc6/a;->c:I

    .line 299
    .line 300
    add-int v14, v3, v13

    .line 301
    .line 302
    add-int/lit8 v15, v9, 0x1

    .line 303
    .line 304
    const/16 v19, 0x0

    .line 305
    .line 306
    new-instance v4, Lj6/a;

    .line 307
    .line 308
    new-array v14, v14, [B

    .line 309
    .line 310
    invoke-direct {v4, v13, v14}, Lj6/a;-><init>(I[B)V

    .line 311
    .line 312
    .line 313
    aput-object v4, v6, v9

    .line 314
    .line 315
    add-int/lit8 v12, v12, 0x1

    .line 316
    .line 317
    move v9, v15

    .line 318
    goto :goto_a

    .line 319
    :cond_11
    const/16 v19, 0x0

    .line 320
    .line 321
    add-int/lit8 v10, v10, 0x1

    .line 322
    .line 323
    goto :goto_9

    .line 324
    :cond_12
    const/16 v17, 0x0

    .line 325
    .line 326
    const/16 v19, 0x0

    .line 327
    .line 328
    aget-object v4, v6, v17

    .line 329
    .line 330
    iget-object v4, v4, Lj6/a;->a:[B

    .line 331
    .line 332
    array-length v4, v4

    .line 333
    add-int/lit8 v5, v7, -0x1

    .line 334
    .line 335
    :goto_b
    if-ltz v5, :cond_13

    .line 336
    .line 337
    aget-object v8, v6, v5

    .line 338
    .line 339
    iget-object v8, v8, Lj6/a;->a:[B

    .line 340
    .line 341
    array-length v8, v8

    .line 342
    if-eq v8, v4, :cond_13

    .line 343
    .line 344
    add-int/lit8 v5, v5, -0x1

    .line 345
    .line 346
    goto :goto_b

    .line 347
    :cond_13
    add-int/lit8 v5, v5, 0x1

    .line 348
    .line 349
    sub-int/2addr v4, v3

    .line 350
    const/4 v3, 0x0

    .line 351
    const/4 v8, 0x0

    .line 352
    :goto_c
    if-ge v3, v4, :cond_15

    .line 353
    .line 354
    move v10, v8

    .line 355
    const/4 v8, 0x0

    .line 356
    :goto_d
    if-ge v8, v9, :cond_14

    .line 357
    .line 358
    aget-object v11, v6, v8

    .line 359
    .line 360
    iget-object v11, v11, Lj6/a;->a:[B

    .line 361
    .line 362
    add-int/lit8 v12, v10, 0x1

    .line 363
    .line 364
    aget-byte v10, v2, v10

    .line 365
    .line 366
    aput-byte v10, v11, v3

    .line 367
    .line 368
    add-int/lit8 v8, v8, 0x1

    .line 369
    .line 370
    move v10, v12

    .line 371
    goto :goto_d

    .line 372
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 373
    .line 374
    move v8, v10

    .line 375
    goto :goto_c

    .line 376
    :cond_15
    move v3, v5

    .line 377
    :goto_e
    if-ge v3, v9, :cond_16

    .line 378
    .line 379
    aget-object v10, v6, v3

    .line 380
    .line 381
    iget-object v10, v10, Lj6/a;->a:[B

    .line 382
    .line 383
    add-int/lit8 v11, v8, 0x1

    .line 384
    .line 385
    aget-byte v8, v2, v8

    .line 386
    .line 387
    aput-byte v8, v10, v4

    .line 388
    .line 389
    add-int/lit8 v3, v3, 0x1

    .line 390
    .line 391
    move v8, v11

    .line 392
    goto :goto_e

    .line 393
    :cond_16
    const/16 v17, 0x0

    .line 394
    .line 395
    aget-object v3, v6, v17

    .line 396
    .line 397
    iget-object v3, v3, Lj6/a;->a:[B

    .line 398
    .line 399
    array-length v3, v3

    .line 400
    :goto_f
    if-ge v4, v3, :cond_19

    .line 401
    .line 402
    move v10, v8

    .line 403
    move/from16 v8, v17

    .line 404
    .line 405
    :goto_10
    if-ge v8, v9, :cond_18

    .line 406
    .line 407
    if-ge v8, v5, :cond_17

    .line 408
    .line 409
    move v11, v4

    .line 410
    goto :goto_11

    .line 411
    :cond_17
    add-int/lit8 v11, v4, 0x1

    .line 412
    .line 413
    :goto_11
    aget-object v12, v6, v8

    .line 414
    .line 415
    iget-object v12, v12, Lj6/a;->a:[B

    .line 416
    .line 417
    add-int/lit8 v13, v10, 0x1

    .line 418
    .line 419
    aget-byte v10, v2, v10

    .line 420
    .line 421
    aput-byte v10, v12, v11

    .line 422
    .line 423
    add-int/lit8 v8, v8, 0x1

    .line 424
    .line 425
    move v10, v13

    .line 426
    goto :goto_10

    .line 427
    :cond_18
    add-int/lit8 v4, v4, 0x1

    .line 428
    .line 429
    move v8, v10

    .line 430
    goto :goto_f

    .line 431
    :cond_19
    move/from16 v2, v17

    .line 432
    .line 433
    move v3, v2

    .line 434
    :goto_12
    if-ge v3, v7, :cond_1a

    .line 435
    .line 436
    aget-object v4, v6, v3

    .line 437
    .line 438
    iget v4, v4, Lj6/a;->b:I

    .line 439
    .line 440
    add-int/2addr v2, v4

    .line 441
    add-int/lit8 v3, v3, 0x1

    .line 442
    .line 443
    goto :goto_12

    .line 444
    :cond_1a
    new-array v9, v2, [B

    .line 445
    .line 446
    move/from16 v2, v17

    .line 447
    .line 448
    move v3, v2

    .line 449
    :goto_13
    if-ge v3, v7, :cond_1e

    .line 450
    .line 451
    aget-object v4, v6, v3

    .line 452
    .line 453
    iget-object v5, v4, Lj6/a;->a:[B

    .line 454
    .line 455
    iget v4, v4, Lj6/a;->b:I

    .line 456
    .line 457
    array-length v8, v5

    .line 458
    new-array v10, v8, [I

    .line 459
    .line 460
    move/from16 v11, v17

    .line 461
    .line 462
    :goto_14
    if-ge v11, v8, :cond_1b

    .line 463
    .line 464
    aget-byte v12, v5, v11

    .line 465
    .line 466
    and-int/lit16 v12, v12, 0xff

    .line 467
    .line 468
    aput v12, v10, v11

    .line 469
    .line 470
    add-int/lit8 v11, v11, 0x1

    .line 471
    .line 472
    goto :goto_14

    .line 473
    :cond_1b
    move-object/from16 v15, p0

    .line 474
    .line 475
    :try_start_0
    iget-object v8, v15, Lj6/c;->a:Lr5/c;

    .line 476
    .line 477
    array-length v11, v5

    .line 478
    sub-int/2addr v11, v4

    .line 479
    invoke-virtual {v8, v10, v11}, Lr5/c;->f([II)V
    :try_end_0
    .catch Lh6/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .line 481
    .line 482
    move/from16 v8, v17

    .line 483
    .line 484
    :goto_15
    if-ge v8, v4, :cond_1c

    .line 485
    .line 486
    aget v11, v10, v8

    .line 487
    .line 488
    int-to-byte v11, v11

    .line 489
    aput-byte v11, v5, v8

    .line 490
    .line 491
    add-int/lit8 v8, v8, 0x1

    .line 492
    .line 493
    goto :goto_15

    .line 494
    :cond_1c
    move/from16 v8, v17

    .line 495
    .line 496
    :goto_16
    if-ge v8, v4, :cond_1d

    .line 497
    .line 498
    add-int/lit8 v10, v2, 0x1

    .line 499
    .line 500
    aget-byte v11, v5, v8

    .line 501
    .line 502
    aput-byte v11, v9, v2

    .line 503
    .line 504
    add-int/lit8 v8, v8, 0x1

    .line 505
    .line 506
    move v2, v10

    .line 507
    goto :goto_16

    .line 508
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    .line 509
    .line 510
    goto :goto_13

    .line 511
    :catch_0
    invoke-static {}, Lz5/c;->a()Lz5/c;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    throw v0

    .line 516
    :cond_1e
    move-object/from16 v15, p0

    .line 517
    .line 518
    sget-object v2, Lw6/a;->a:[C

    .line 519
    .line 520
    new-instance v3, Lb7/s;

    .line 521
    .line 522
    invoke-direct {v3, v9}, Lb7/s;-><init>([B)V

    .line 523
    .line 524
    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    const/16 v2, 0x32

    .line 528
    .line 529
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 530
    .line 531
    .line 532
    new-instance v7, Ljava/util/ArrayList;

    .line 533
    .line 534
    move/from16 v2, v21

    .line 535
    .line 536
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 537
    .line 538
    .line 539
    const/4 v2, -0x1

    .line 540
    move v10, v2

    .line 541
    move/from16 v11, v17

    .line 542
    .line 543
    move-object/from16 v6, v19

    .line 544
    .line 545
    :goto_17
    :try_start_1
    invoke-virtual {v3}, Lb7/s;->a()I

    .line 546
    .line 547
    .line 548
    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 549
    const/4 v8, 0x7

    .line 550
    sget-object v12, Lw6/d;->d:Lw6/d;

    .line 551
    .line 552
    const/4 v13, 0x4

    .line 553
    if-ge v5, v13, :cond_1f

    .line 554
    .line 555
    move-object v13, v12

    .line 556
    goto :goto_19

    .line 557
    :cond_1f
    :try_start_2
    invoke-virtual {v3, v13}, Lb7/s;->b(I)I

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    if-eqz v5, :cond_29

    .line 562
    .line 563
    const/4 v14, 0x1

    .line 564
    if-eq v5, v14, :cond_28

    .line 565
    .line 566
    const/4 v14, 0x2

    .line 567
    if-eq v5, v14, :cond_27

    .line 568
    .line 569
    const/4 v14, 0x3

    .line 570
    if-eq v5, v14, :cond_26

    .line 571
    .line 572
    if-eq v5, v13, :cond_25

    .line 573
    .line 574
    const/4 v13, 0x5

    .line 575
    if-eq v5, v13, :cond_24

    .line 576
    .line 577
    if-eq v5, v8, :cond_23

    .line 578
    .line 579
    const/16 v13, 0x8

    .line 580
    .line 581
    if-eq v5, v13, :cond_22

    .line 582
    .line 583
    const/16 v13, 0x9

    .line 584
    .line 585
    if-eq v5, v13, :cond_21

    .line 586
    .line 587
    const/16 v13, 0xd

    .line 588
    .line 589
    if-ne v5, v13, :cond_20

    .line 590
    .line 591
    sget-object v5, Lw6/d;->m:Lw6/d;

    .line 592
    .line 593
    goto :goto_18

    .line 594
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 595
    .line 596
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 597
    .line 598
    .line 599
    throw v0

    .line 600
    :cond_21
    sget-object v5, Lw6/d;->l:Lw6/d;

    .line 601
    .line 602
    goto :goto_18

    .line 603
    :cond_22
    sget-object v5, Lw6/d;->j:Lw6/d;

    .line 604
    .line 605
    goto :goto_18

    .line 606
    :cond_23
    sget-object v5, Lw6/d;->i:Lw6/d;

    .line 607
    .line 608
    goto :goto_18

    .line 609
    :cond_24
    sget-object v5, Lw6/d;->k:Lw6/d;

    .line 610
    .line 611
    goto :goto_18

    .line 612
    :cond_25
    sget-object v5, Lw6/d;->h:Lw6/d;

    .line 613
    .line 614
    goto :goto_18

    .line 615
    :cond_26
    sget-object v5, Lw6/d;->g:Lw6/d;

    .line 616
    .line 617
    goto :goto_18

    .line 618
    :cond_27
    sget-object v5, Lw6/d;->f:Lw6/d;

    .line 619
    .line 620
    goto :goto_18

    .line 621
    :cond_28
    sget-object v5, Lw6/d;->e:Lw6/d;

    .line 622
    .line 623
    goto :goto_18

    .line 624
    :cond_29
    move-object v5, v12

    .line 625
    :goto_18
    move-object v13, v5

    .line 626
    :goto_19
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 627
    .line 628
    .line 629
    move-result v5

    .line 630
    if-eqz v5, :cond_2a

    .line 631
    .line 632
    const/4 v14, 0x3

    .line 633
    if-eq v5, v14, :cond_38

    .line 634
    .line 635
    const/4 v14, 0x5

    .line 636
    if-eq v5, v14, :cond_32

    .line 637
    .line 638
    if-eq v5, v8, :cond_31

    .line 639
    .line 640
    const/16 v8, 0x8

    .line 641
    .line 642
    if-eq v5, v8, :cond_31

    .line 643
    .line 644
    const/16 v8, 0x9

    .line 645
    .line 646
    if-eq v5, v8, :cond_30

    .line 647
    .line 648
    invoke-virtual {v13, v0}, Lw6/d;->a(Lw6/f;)I

    .line 649
    .line 650
    .line 651
    move-result v5

    .line 652
    invoke-virtual {v3, v5}, Lb7/s;->b(I)I

    .line 653
    .line 654
    .line 655
    move-result v5

    .line 656
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 657
    .line 658
    .line 659
    move-result v8

    .line 660
    const/4 v14, 0x1

    .line 661
    if-eq v8, v14, :cond_2f

    .line 662
    .line 663
    const/4 v14, 0x2

    .line 664
    if-eq v8, v14, :cond_2e

    .line 665
    .line 666
    const/4 v14, 0x4

    .line 667
    if-eq v8, v14, :cond_2c

    .line 668
    .line 669
    const/4 v14, 0x6

    .line 670
    if-ne v8, v14, :cond_2b

    .line 671
    .line 672
    invoke-static {v3, v4, v5}, Lw6/a;->d(Lb7/s;Ljava/lang/StringBuilder;I)V

    .line 673
    .line 674
    .line 675
    :cond_2a
    const/16 v8, 0x8

    .line 676
    .line 677
    const/16 v18, 0x9

    .line 678
    .line 679
    goto/16 :goto_1c

    .line 680
    .line 681
    :cond_2b
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    throw v0

    .line 686
    :cond_2c
    move-object/from16 v8, p2

    .line 687
    .line 688
    const/4 v14, 0x6

    .line 689
    const/16 v18, 0x9

    .line 690
    .line 691
    invoke-static/range {v3 .. v8}, Lw6/a;->b(Lb7/s;Ljava/lang/StringBuilder;ILf6/c;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 692
    .line 693
    .line 694
    :cond_2d
    :goto_1a
    const/16 v8, 0x8

    .line 695
    .line 696
    goto/16 :goto_1c

    .line 697
    .line 698
    :cond_2e
    const/4 v14, 0x6

    .line 699
    const/16 v18, 0x9

    .line 700
    .line 701
    invoke-static {v3, v4, v5, v11}, Lw6/a;->a(Lb7/s;Ljava/lang/StringBuilder;IZ)V

    .line 702
    .line 703
    .line 704
    goto :goto_1a

    .line 705
    :cond_2f
    const/4 v14, 0x6

    .line 706
    const/16 v18, 0x9

    .line 707
    .line 708
    invoke-static {v3, v4, v5}, Lw6/a;->e(Lb7/s;Ljava/lang/StringBuilder;I)V

    .line 709
    .line 710
    .line 711
    goto :goto_1a

    .line 712
    :cond_30
    move/from16 v18, v8

    .line 713
    .line 714
    const/4 v5, 0x4

    .line 715
    const/4 v14, 0x6

    .line 716
    invoke-virtual {v3, v5}, Lb7/s;->b(I)I

    .line 717
    .line 718
    .line 719
    move-result v8

    .line 720
    invoke-virtual {v13, v0}, Lw6/d;->a(Lw6/f;)I

    .line 721
    .line 722
    .line 723
    move-result v5

    .line 724
    invoke-virtual {v3, v5}, Lb7/s;->b(I)I

    .line 725
    .line 726
    .line 727
    move-result v5

    .line 728
    const/4 v14, 0x1

    .line 729
    if-ne v8, v14, :cond_2d

    .line 730
    .line 731
    invoke-static {v3, v4, v5}, Lw6/a;->c(Lb7/s;Ljava/lang/StringBuilder;I)V

    .line 732
    .line 733
    .line 734
    goto :goto_1a

    .line 735
    :cond_31
    const/16 v18, 0x9

    .line 736
    .line 737
    move v14, v10

    .line 738
    const/16 v8, 0x8

    .line 739
    .line 740
    const/4 v11, 0x1

    .line 741
    goto/16 :goto_1d

    .line 742
    .line 743
    :cond_32
    const/16 v8, 0x8

    .line 744
    .line 745
    const/16 v18, 0x9

    .line 746
    .line 747
    invoke-virtual {v3, v8}, Lb7/s;->b(I)I

    .line 748
    .line 749
    .line 750
    move-result v5

    .line 751
    and-int/lit16 v6, v5, 0x80

    .line 752
    .line 753
    if-nez v6, :cond_33

    .line 754
    .line 755
    and-int/lit8 v5, v5, 0x7f

    .line 756
    .line 757
    goto :goto_1b

    .line 758
    :cond_33
    and-int/lit16 v6, v5, 0xc0

    .line 759
    .line 760
    const/16 v8, 0x80

    .line 761
    .line 762
    if-ne v6, v8, :cond_34

    .line 763
    .line 764
    const/16 v8, 0x8

    .line 765
    .line 766
    invoke-virtual {v3, v8}, Lb7/s;->b(I)I

    .line 767
    .line 768
    .line 769
    move-result v6

    .line 770
    and-int/lit8 v5, v5, 0x3f

    .line 771
    .line 772
    shl-int/2addr v5, v8

    .line 773
    or-int/2addr v5, v6

    .line 774
    goto :goto_1b

    .line 775
    :cond_34
    and-int/lit16 v6, v5, 0xe0

    .line 776
    .line 777
    const/16 v8, 0xc0

    .line 778
    .line 779
    if-ne v6, v8, :cond_37

    .line 780
    .line 781
    const/16 v6, 0x10

    .line 782
    .line 783
    invoke-virtual {v3, v6}, Lb7/s;->b(I)I

    .line 784
    .line 785
    .line 786
    move-result v8

    .line 787
    and-int/lit8 v5, v5, 0x1f

    .line 788
    .line 789
    shl-int/2addr v5, v6

    .line 790
    or-int/2addr v5, v8

    .line 791
    :goto_1b
    sget-object v6, Lf6/c;->d:Ljava/util/HashMap;

    .line 792
    .line 793
    if-ltz v5, :cond_36

    .line 794
    .line 795
    const/16 v6, 0x384

    .line 796
    .line 797
    if-ge v5, v6, :cond_36

    .line 798
    .line 799
    sget-object v6, Lf6/c;->d:Ljava/util/HashMap;

    .line 800
    .line 801
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 802
    .line 803
    .line 804
    move-result-object v5

    .line 805
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v5

    .line 809
    move-object v6, v5

    .line 810
    check-cast v6, Lf6/c;

    .line 811
    .line 812
    if-eqz v6, :cond_35

    .line 813
    .line 814
    move v14, v10

    .line 815
    const/16 v8, 0x8

    .line 816
    .line 817
    goto :goto_1d

    .line 818
    :cond_35
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    throw v0

    .line 823
    :cond_36
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    throw v0

    .line 828
    :cond_37
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    throw v0

    .line 833
    :cond_38
    const/16 v18, 0x9

    .line 834
    .line 835
    invoke-virtual {v3}, Lb7/s;->a()I

    .line 836
    .line 837
    .line 838
    move-result v2

    .line 839
    const/16 v5, 0x10

    .line 840
    .line 841
    if-lt v2, v5, :cond_39

    .line 842
    .line 843
    const/16 v8, 0x8

    .line 844
    .line 845
    invoke-virtual {v3, v8}, Lb7/s;->b(I)I

    .line 846
    .line 847
    .line 848
    move-result v2

    .line 849
    invoke-virtual {v3, v8}, Lb7/s;->b(I)I

    .line 850
    .line 851
    .line 852
    move-result v10

    .line 853
    :goto_1c
    move v14, v10

    .line 854
    goto :goto_1d

    .line 855
    :cond_39
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 860
    :goto_1d
    if-ne v13, v12, :cond_3f

    .line 861
    .line 862
    new-instance v8, Lf6/d;

    .line 863
    .line 864
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v10

    .line 868
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    if-eqz v0, :cond_3a

    .line 873
    .line 874
    move-object/from16 v11, v19

    .line 875
    .line 876
    :goto_1e
    const/4 v5, 0x1

    .line 877
    goto :goto_1f

    .line 878
    :cond_3a
    move-object v11, v7

    .line 879
    goto :goto_1e

    .line 880
    :goto_1f
    if-eq v1, v5, :cond_3e

    .line 881
    .line 882
    const/4 v12, 0x2

    .line 883
    if-eq v1, v12, :cond_3d

    .line 884
    .line 885
    const/4 v13, 0x3

    .line 886
    if-eq v1, v13, :cond_3c

    .line 887
    .line 888
    const/4 v0, 0x4

    .line 889
    if-ne v1, v0, :cond_3b

    .line 890
    .line 891
    const-string v0, "H"

    .line 892
    .line 893
    :goto_20
    move-object v12, v0

    .line 894
    move v13, v2

    .line 895
    goto :goto_21

    .line 896
    :cond_3b
    throw v19

    .line 897
    :cond_3c
    const-string v0, "Q"

    .line 898
    .line 899
    goto :goto_20

    .line 900
    :cond_3d
    const-string v0, "M"

    .line 901
    .line 902
    goto :goto_20

    .line 903
    :cond_3e
    const-string v0, "L"

    .line 904
    .line 905
    goto :goto_20

    .line 906
    :goto_21
    invoke-direct/range {v8 .. v14}, Lf6/d;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    .line 907
    .line 908
    .line 909
    return-object v8

    .line 910
    :cond_3f
    move v10, v14

    .line 911
    goto/16 :goto_17

    .line 912
    .line 913
    :catch_1
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    throw v0

    .line 918
    :cond_40
    move-object/from16 v15, p0

    .line 919
    .line 920
    const/16 v19, 0x0

    .line 921
    .line 922
    invoke-static {}, Ll9/i;->a()V

    .line 923
    .line 924
    .line 925
    return-object v19

    .line 926
    :cond_41
    move-object/from16 v15, p0

    .line 927
    .line 928
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    throw v0
.end method

.method public c(Lf6/b;)Lf6/d;
    .locals 24

    .line 1
    new-instance v0, La5/h;

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0, v1}, La5/h;-><init>(Lf6/b;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, La5/h;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lj6/d;

    .line 11
    .line 12
    iget-object v2, v0, La5/h;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lf6/b;

    .line 15
    .line 16
    iget v3, v1, Lj6/d;->g:I

    .line 17
    .line 18
    new-array v4, v3, [B

    .line 19
    .line 20
    iget-object v5, v0, La5/h;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v5, Lf6/b;

    .line 23
    .line 24
    iget v6, v5, Lf6/b;->c:I

    .line 25
    .line 26
    iget v5, v5, Lf6/b;->b:I

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    move v10, v7

    .line 30
    move v11, v10

    .line 31
    move v12, v11

    .line 32
    move v13, v12

    .line 33
    move v14, v13

    .line 34
    move v15, v14

    .line 35
    const/4 v9, 0x4

    .line 36
    :goto_0
    if-ne v9, v6, :cond_7

    .line 37
    .line 38
    if-nez v10, :cond_7

    .line 39
    .line 40
    if-nez v11, :cond_7

    .line 41
    .line 42
    add-int/lit8 v11, v12, 0x1

    .line 43
    .line 44
    const/16 v18, 0x1

    .line 45
    .line 46
    add-int/lit8 v8, v6, -0x1

    .line 47
    .line 48
    invoke-virtual {v0, v8, v7, v6, v5}, La5/h;->t(IIII)Z

    .line 49
    .line 50
    .line 51
    move-result v19

    .line 52
    shl-int/lit8 v19, v19, 0x1

    .line 53
    .line 54
    move/from16 v7, v18

    .line 55
    .line 56
    invoke-virtual {v0, v8, v7, v6, v5}, La5/h;->t(IIII)Z

    .line 57
    .line 58
    .line 59
    move-result v18

    .line 60
    if-eqz v18, :cond_0

    .line 61
    .line 62
    or-int/lit8 v19, v19, 0x1

    .line 63
    .line 64
    :cond_0
    shl-int/lit8 v18, v19, 0x1

    .line 65
    .line 66
    move/from16 v19, v7

    .line 67
    .line 68
    const/4 v7, 0x2

    .line 69
    invoke-virtual {v0, v8, v7, v6, v5}, La5/h;->t(IIII)Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_1

    .line 74
    .line 75
    or-int/lit8 v18, v18, 0x1

    .line 76
    .line 77
    :cond_1
    shl-int/lit8 v7, v18, 0x1

    .line 78
    .line 79
    add-int/lit8 v8, v5, -0x2

    .line 80
    .line 81
    move-object/from16 v21, v4

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    invoke-virtual {v0, v4, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_2

    .line 89
    .line 90
    or-int/lit8 v7, v7, 0x1

    .line 91
    .line 92
    :cond_2
    shl-int/lit8 v7, v7, 0x1

    .line 93
    .line 94
    add-int/lit8 v8, v5, -0x1

    .line 95
    .line 96
    invoke-virtual {v0, v4, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 97
    .line 98
    .line 99
    move-result v18

    .line 100
    if-eqz v18, :cond_3

    .line 101
    .line 102
    or-int/lit8 v7, v7, 0x1

    .line 103
    .line 104
    :cond_3
    shl-int/lit8 v4, v7, 0x1

    .line 105
    .line 106
    move/from16 v7, v19

    .line 107
    .line 108
    invoke-virtual {v0, v7, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 109
    .line 110
    .line 111
    move-result v18

    .line 112
    if-eqz v18, :cond_4

    .line 113
    .line 114
    or-int/lit8 v4, v4, 0x1

    .line 115
    .line 116
    :cond_4
    shl-int/2addr v4, v7

    .line 117
    move/from16 v18, v7

    .line 118
    .line 119
    const/4 v7, 0x2

    .line 120
    invoke-virtual {v0, v7, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 121
    .line 122
    .line 123
    move-result v19

    .line 124
    if-eqz v19, :cond_5

    .line 125
    .line 126
    or-int/lit8 v4, v4, 0x1

    .line 127
    .line 128
    :cond_5
    shl-int/lit8 v4, v4, 0x1

    .line 129
    .line 130
    const/4 v7, 0x3

    .line 131
    invoke-virtual {v0, v7, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-eqz v8, :cond_6

    .line 136
    .line 137
    or-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    :cond_6
    int-to-byte v4, v4

    .line 140
    aput-byte v4, v21, v12

    .line 141
    .line 142
    add-int/lit8 v9, v9, -0x2

    .line 143
    .line 144
    add-int/lit8 v10, v10, 0x2

    .line 145
    .line 146
    move v12, v11

    .line 147
    const/4 v11, 0x1

    .line 148
    goto/16 :goto_6

    .line 149
    .line 150
    :cond_7
    move-object/from16 v21, v4

    .line 151
    .line 152
    add-int/lit8 v4, v6, -0x2

    .line 153
    .line 154
    if-ne v9, v4, :cond_f

    .line 155
    .line 156
    if-nez v10, :cond_f

    .line 157
    .line 158
    and-int/lit8 v7, v5, 0x3

    .line 159
    .line 160
    if-eqz v7, :cond_f

    .line 161
    .line 162
    if-nez v13, :cond_f

    .line 163
    .line 164
    add-int/lit8 v7, v12, 0x1

    .line 165
    .line 166
    add-int/lit8 v8, v6, -0x3

    .line 167
    .line 168
    const/4 v13, 0x0

    .line 169
    invoke-virtual {v0, v8, v13, v6, v5}, La5/h;->t(IIII)Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    move/from16 v19, v7

    .line 174
    .line 175
    const/4 v7, 0x1

    .line 176
    shl-int/2addr v8, v7

    .line 177
    invoke-virtual {v0, v4, v13, v6, v5}, La5/h;->t(IIII)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_8

    .line 182
    .line 183
    or-int/lit8 v8, v8, 0x1

    .line 184
    .line 185
    :cond_8
    shl-int/lit8 v4, v8, 0x1

    .line 186
    .line 187
    add-int/lit8 v8, v6, -0x1

    .line 188
    .line 189
    invoke-virtual {v0, v8, v13, v6, v5}, La5/h;->t(IIII)Z

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    if-eqz v8, :cond_9

    .line 194
    .line 195
    or-int/lit8 v4, v4, 0x1

    .line 196
    .line 197
    :cond_9
    shl-int/2addr v4, v7

    .line 198
    add-int/lit8 v8, v5, -0x4

    .line 199
    .line 200
    invoke-virtual {v0, v13, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    if-eqz v8, :cond_a

    .line 205
    .line 206
    or-int/lit8 v4, v4, 0x1

    .line 207
    .line 208
    :cond_a
    shl-int/2addr v4, v7

    .line 209
    add-int/lit8 v8, v5, -0x3

    .line 210
    .line 211
    invoke-virtual {v0, v13, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    if-eqz v8, :cond_b

    .line 216
    .line 217
    or-int/lit8 v4, v4, 0x1

    .line 218
    .line 219
    :cond_b
    shl-int/2addr v4, v7

    .line 220
    add-int/lit8 v8, v5, -0x2

    .line 221
    .line 222
    invoke-virtual {v0, v13, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    if-eqz v8, :cond_c

    .line 227
    .line 228
    or-int/lit8 v4, v4, 0x1

    .line 229
    .line 230
    :cond_c
    shl-int/2addr v4, v7

    .line 231
    add-int/lit8 v8, v5, -0x1

    .line 232
    .line 233
    invoke-virtual {v0, v13, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 234
    .line 235
    .line 236
    move-result v18

    .line 237
    if-eqz v18, :cond_d

    .line 238
    .line 239
    or-int/lit8 v4, v4, 0x1

    .line 240
    .line 241
    :cond_d
    shl-int/2addr v4, v7

    .line 242
    invoke-virtual {v0, v7, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    if-eqz v8, :cond_e

    .line 247
    .line 248
    or-int/lit8 v4, v4, 0x1

    .line 249
    .line 250
    :cond_e
    int-to-byte v4, v4

    .line 251
    aput-byte v4, v21, v12

    .line 252
    .line 253
    add-int/lit8 v9, v9, -0x2

    .line 254
    .line 255
    add-int/lit8 v10, v10, 0x2

    .line 256
    .line 257
    move/from16 v12, v19

    .line 258
    .line 259
    const/4 v13, 0x1

    .line 260
    goto/16 :goto_6

    .line 261
    .line 262
    :cond_f
    add-int/lit8 v7, v6, 0x4

    .line 263
    .line 264
    if-ne v9, v7, :cond_17

    .line 265
    .line 266
    const/4 v7, 0x2

    .line 267
    if-ne v10, v7, :cond_17

    .line 268
    .line 269
    and-int/lit8 v7, v5, 0x7

    .line 270
    .line 271
    if-nez v7, :cond_17

    .line 272
    .line 273
    if-nez v14, :cond_17

    .line 274
    .line 275
    add-int/lit8 v4, v12, 0x1

    .line 276
    .line 277
    add-int/lit8 v7, v6, -0x1

    .line 278
    .line 279
    const/4 v8, 0x0

    .line 280
    invoke-virtual {v0, v7, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 281
    .line 282
    .line 283
    move-result v14

    .line 284
    const/4 v8, 0x1

    .line 285
    shl-int/2addr v14, v8

    .line 286
    move/from16 v18, v8

    .line 287
    .line 288
    add-int/lit8 v8, v5, -0x1

    .line 289
    .line 290
    invoke-virtual {v0, v7, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    if-eqz v7, :cond_10

    .line 295
    .line 296
    or-int/lit8 v14, v14, 0x1

    .line 297
    .line 298
    :cond_10
    shl-int/lit8 v7, v14, 0x1

    .line 299
    .line 300
    add-int/lit8 v14, v5, -0x3

    .line 301
    .line 302
    move/from16 v19, v4

    .line 303
    .line 304
    const/4 v4, 0x0

    .line 305
    invoke-virtual {v0, v4, v14, v6, v5}, La5/h;->t(IIII)Z

    .line 306
    .line 307
    .line 308
    move-result v20

    .line 309
    if-eqz v20, :cond_11

    .line 310
    .line 311
    or-int/lit8 v7, v7, 0x1

    .line 312
    .line 313
    :cond_11
    shl-int/lit8 v7, v7, 0x1

    .line 314
    .line 315
    move/from16 v20, v7

    .line 316
    .line 317
    add-int/lit8 v7, v5, -0x2

    .line 318
    .line 319
    invoke-virtual {v0, v4, v7, v6, v5}, La5/h;->t(IIII)Z

    .line 320
    .line 321
    .line 322
    move-result v22

    .line 323
    if-eqz v22, :cond_12

    .line 324
    .line 325
    or-int/lit8 v20, v20, 0x1

    .line 326
    .line 327
    :cond_12
    shl-int/lit8 v22, v20, 0x1

    .line 328
    .line 329
    invoke-virtual {v0, v4, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 330
    .line 331
    .line 332
    move-result v23

    .line 333
    if-eqz v23, :cond_13

    .line 334
    .line 335
    or-int/lit8 v22, v22, 0x1

    .line 336
    .line 337
    :cond_13
    shl-int/lit8 v4, v22, 0x1

    .line 338
    .line 339
    move/from16 v22, v4

    .line 340
    .line 341
    move/from16 v4, v18

    .line 342
    .line 343
    invoke-virtual {v0, v4, v14, v6, v5}, La5/h;->t(IIII)Z

    .line 344
    .line 345
    .line 346
    move-result v14

    .line 347
    if-eqz v14, :cond_14

    .line 348
    .line 349
    or-int/lit8 v14, v22, 0x1

    .line 350
    .line 351
    goto :goto_1

    .line 352
    :cond_14
    move/from16 v14, v22

    .line 353
    .line 354
    :goto_1
    shl-int/2addr v14, v4

    .line 355
    invoke-virtual {v0, v4, v7, v6, v5}, La5/h;->t(IIII)Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    if-eqz v7, :cond_15

    .line 360
    .line 361
    or-int/lit8 v14, v14, 0x1

    .line 362
    .line 363
    :cond_15
    shl-int/lit8 v7, v14, 0x1

    .line 364
    .line 365
    invoke-virtual {v0, v4, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 366
    .line 367
    .line 368
    move-result v8

    .line 369
    if-eqz v8, :cond_16

    .line 370
    .line 371
    or-int/lit8 v7, v7, 0x1

    .line 372
    .line 373
    :cond_16
    int-to-byte v4, v7

    .line 374
    aput-byte v4, v21, v12

    .line 375
    .line 376
    add-int/lit8 v9, v9, -0x2

    .line 377
    .line 378
    add-int/lit8 v10, v10, 0x2

    .line 379
    .line 380
    move/from16 v12, v19

    .line 381
    .line 382
    const/4 v14, 0x1

    .line 383
    goto/16 :goto_6

    .line 384
    .line 385
    :cond_17
    if-ne v9, v4, :cond_1f

    .line 386
    .line 387
    if-nez v10, :cond_1f

    .line 388
    .line 389
    and-int/lit8 v7, v5, 0x7

    .line 390
    .line 391
    const/4 v8, 0x4

    .line 392
    if-ne v7, v8, :cond_1f

    .line 393
    .line 394
    if-nez v15, :cond_1f

    .line 395
    .line 396
    add-int/lit8 v7, v12, 0x1

    .line 397
    .line 398
    add-int/lit8 v8, v6, -0x3

    .line 399
    .line 400
    const/4 v15, 0x0

    .line 401
    invoke-virtual {v0, v8, v15, v6, v5}, La5/h;->t(IIII)Z

    .line 402
    .line 403
    .line 404
    move-result v8

    .line 405
    move/from16 v19, v7

    .line 406
    .line 407
    const/4 v7, 0x1

    .line 408
    shl-int/2addr v8, v7

    .line 409
    invoke-virtual {v0, v4, v15, v6, v5}, La5/h;->t(IIII)Z

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    if-eqz v4, :cond_18

    .line 414
    .line 415
    or-int/lit8 v8, v8, 0x1

    .line 416
    .line 417
    :cond_18
    shl-int/lit8 v4, v8, 0x1

    .line 418
    .line 419
    add-int/lit8 v8, v6, -0x1

    .line 420
    .line 421
    invoke-virtual {v0, v8, v15, v6, v5}, La5/h;->t(IIII)Z

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    if-eqz v8, :cond_19

    .line 426
    .line 427
    or-int/lit8 v4, v4, 0x1

    .line 428
    .line 429
    :cond_19
    shl-int/2addr v4, v7

    .line 430
    add-int/lit8 v8, v5, -0x2

    .line 431
    .line 432
    invoke-virtual {v0, v15, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 433
    .line 434
    .line 435
    move-result v8

    .line 436
    if-eqz v8, :cond_1a

    .line 437
    .line 438
    or-int/lit8 v4, v4, 0x1

    .line 439
    .line 440
    :cond_1a
    shl-int/2addr v4, v7

    .line 441
    add-int/lit8 v8, v5, -0x1

    .line 442
    .line 443
    invoke-virtual {v0, v15, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 444
    .line 445
    .line 446
    move-result v18

    .line 447
    if-eqz v18, :cond_1b

    .line 448
    .line 449
    or-int/lit8 v4, v4, 0x1

    .line 450
    .line 451
    :cond_1b
    shl-int/2addr v4, v7

    .line 452
    invoke-virtual {v0, v7, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 453
    .line 454
    .line 455
    move-result v15

    .line 456
    if-eqz v15, :cond_1c

    .line 457
    .line 458
    or-int/lit8 v4, v4, 0x1

    .line 459
    .line 460
    :cond_1c
    shl-int/2addr v4, v7

    .line 461
    const/4 v15, 0x2

    .line 462
    invoke-virtual {v0, v15, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 463
    .line 464
    .line 465
    move-result v18

    .line 466
    if-eqz v18, :cond_1d

    .line 467
    .line 468
    or-int/lit8 v4, v4, 0x1

    .line 469
    .line 470
    :cond_1d
    shl-int/2addr v4, v7

    .line 471
    const/4 v7, 0x3

    .line 472
    invoke-virtual {v0, v7, v8, v6, v5}, La5/h;->t(IIII)Z

    .line 473
    .line 474
    .line 475
    move-result v8

    .line 476
    if-eqz v8, :cond_1e

    .line 477
    .line 478
    or-int/lit8 v4, v4, 0x1

    .line 479
    .line 480
    :cond_1e
    int-to-byte v4, v4

    .line 481
    aput-byte v4, v21, v12

    .line 482
    .line 483
    add-int/lit8 v9, v9, -0x2

    .line 484
    .line 485
    add-int/lit8 v10, v10, 0x2

    .line 486
    .line 487
    move/from16 v12, v19

    .line 488
    .line 489
    const/4 v15, 0x1

    .line 490
    goto :goto_6

    .line 491
    :cond_1f
    :goto_2
    if-ge v9, v6, :cond_20

    .line 492
    .line 493
    if-ltz v10, :cond_20

    .line 494
    .line 495
    invoke-virtual {v2, v10, v9}, Lf6/b;->b(II)Z

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    if-nez v4, :cond_20

    .line 500
    .line 501
    add-int/lit8 v4, v12, 0x1

    .line 502
    .line 503
    invoke-virtual {v0, v9, v10, v6, v5}, La5/h;->u(IIII)I

    .line 504
    .line 505
    .line 506
    move-result v7

    .line 507
    int-to-byte v7, v7

    .line 508
    aput-byte v7, v21, v12

    .line 509
    .line 510
    move v12, v4

    .line 511
    :cond_20
    add-int/lit8 v4, v9, -0x2

    .line 512
    .line 513
    add-int/lit8 v7, v10, 0x2

    .line 514
    .line 515
    if-ltz v4, :cond_22

    .line 516
    .line 517
    if-lt v7, v5, :cond_21

    .line 518
    .line 519
    goto :goto_3

    .line 520
    :cond_21
    move v9, v4

    .line 521
    move v10, v7

    .line 522
    goto :goto_2

    .line 523
    :cond_22
    :goto_3
    add-int/lit8 v9, v9, -0x1

    .line 524
    .line 525
    add-int/lit8 v10, v10, 0x5

    .line 526
    .line 527
    :goto_4
    if-ltz v9, :cond_23

    .line 528
    .line 529
    if-ge v10, v5, :cond_23

    .line 530
    .line 531
    invoke-virtual {v2, v10, v9}, Lf6/b;->b(II)Z

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    if-nez v4, :cond_23

    .line 536
    .line 537
    add-int/lit8 v4, v12, 0x1

    .line 538
    .line 539
    invoke-virtual {v0, v9, v10, v6, v5}, La5/h;->u(IIII)I

    .line 540
    .line 541
    .line 542
    move-result v7

    .line 543
    int-to-byte v7, v7

    .line 544
    aput-byte v7, v21, v12

    .line 545
    .line 546
    move v12, v4

    .line 547
    :cond_23
    add-int/lit8 v4, v9, 0x2

    .line 548
    .line 549
    add-int/lit8 v7, v10, -0x2

    .line 550
    .line 551
    if-ge v4, v6, :cond_25

    .line 552
    .line 553
    if-gez v7, :cond_24

    .line 554
    .line 555
    goto :goto_5

    .line 556
    :cond_24
    move v9, v4

    .line 557
    move v10, v7

    .line 558
    goto :goto_4

    .line 559
    :cond_25
    :goto_5
    add-int/lit8 v9, v9, 0x5

    .line 560
    .line 561
    add-int/lit8 v10, v10, -0x1

    .line 562
    .line 563
    :goto_6
    if-lt v9, v6, :cond_82

    .line 564
    .line 565
    if-lt v10, v5, :cond_82

    .line 566
    .line 567
    iget v0, v1, Lj6/d;->g:I

    .line 568
    .line 569
    if-ne v12, v0, :cond_81

    .line 570
    .line 571
    iget-object v0, v1, Lj6/d;->f:Lj/i;

    .line 572
    .line 573
    iget-object v2, v0, Lj/i;->c:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast v2, [Lc6/a;

    .line 576
    .line 577
    iget v0, v0, Lj/i;->b:I

    .line 578
    .line 579
    array-length v4, v2

    .line 580
    const/4 v5, 0x0

    .line 581
    const/4 v6, 0x0

    .line 582
    :goto_7
    if-ge v5, v4, :cond_26

    .line 583
    .line 584
    aget-object v7, v2, v5

    .line 585
    .line 586
    iget v7, v7, Lc6/a;->b:I

    .line 587
    .line 588
    add-int/2addr v6, v7

    .line 589
    add-int/lit8 v5, v5, 0x1

    .line 590
    .line 591
    goto :goto_7

    .line 592
    :cond_26
    new-array v4, v6, [Lj6/a;

    .line 593
    .line 594
    array-length v5, v2

    .line 595
    const/4 v7, 0x0

    .line 596
    const/4 v8, 0x0

    .line 597
    :goto_8
    if-ge v7, v5, :cond_28

    .line 598
    .line 599
    aget-object v9, v2, v7

    .line 600
    .line 601
    const/4 v10, 0x0

    .line 602
    :goto_9
    iget v11, v9, Lc6/a;->b:I

    .line 603
    .line 604
    if-ge v10, v11, :cond_27

    .line 605
    .line 606
    iget v11, v9, Lc6/a;->c:I

    .line 607
    .line 608
    add-int v12, v0, v11

    .line 609
    .line 610
    add-int/lit8 v13, v8, 0x1

    .line 611
    .line 612
    new-instance v14, Lj6/a;

    .line 613
    .line 614
    new-array v12, v12, [B

    .line 615
    .line 616
    invoke-direct {v14, v11, v12}, Lj6/a;-><init>(I[B)V

    .line 617
    .line 618
    .line 619
    aput-object v14, v4, v8

    .line 620
    .line 621
    add-int/lit8 v10, v10, 0x1

    .line 622
    .line 623
    move v8, v13

    .line 624
    goto :goto_9

    .line 625
    :cond_27
    add-int/lit8 v7, v7, 0x1

    .line 626
    .line 627
    goto :goto_8

    .line 628
    :cond_28
    const/16 v20, 0x0

    .line 629
    .line 630
    aget-object v2, v4, v20

    .line 631
    .line 632
    iget-object v2, v2, Lj6/a;->a:[B

    .line 633
    .line 634
    array-length v2, v2

    .line 635
    sub-int/2addr v2, v0

    .line 636
    add-int/lit8 v0, v2, -0x1

    .line 637
    .line 638
    const/4 v5, 0x0

    .line 639
    const/4 v7, 0x0

    .line 640
    :goto_a
    if-ge v5, v0, :cond_2a

    .line 641
    .line 642
    const/4 v9, 0x0

    .line 643
    :goto_b
    if-ge v9, v8, :cond_29

    .line 644
    .line 645
    aget-object v10, v4, v9

    .line 646
    .line 647
    iget-object v10, v10, Lj6/a;->a:[B

    .line 648
    .line 649
    add-int/lit8 v11, v7, 0x1

    .line 650
    .line 651
    aget-byte v7, v21, v7

    .line 652
    .line 653
    aput-byte v7, v10, v5

    .line 654
    .line 655
    add-int/lit8 v9, v9, 0x1

    .line 656
    .line 657
    move v7, v11

    .line 658
    goto :goto_b

    .line 659
    :cond_29
    add-int/lit8 v5, v5, 0x1

    .line 660
    .line 661
    goto :goto_a

    .line 662
    :cond_2a
    iget v1, v1, Lj6/d;->a:I

    .line 663
    .line 664
    const/16 v5, 0x18

    .line 665
    .line 666
    if-ne v1, v5, :cond_2b

    .line 667
    .line 668
    const/4 v1, 0x1

    .line 669
    goto :goto_c

    .line 670
    :cond_2b
    const/4 v1, 0x0

    .line 671
    :goto_c
    const/16 v5, 0x8

    .line 672
    .line 673
    if-eqz v1, :cond_2c

    .line 674
    .line 675
    move v9, v5

    .line 676
    goto :goto_d

    .line 677
    :cond_2c
    move v9, v8

    .line 678
    :goto_d
    const/4 v10, 0x0

    .line 679
    :goto_e
    if-ge v10, v9, :cond_2d

    .line 680
    .line 681
    aget-object v11, v4, v10

    .line 682
    .line 683
    iget-object v11, v11, Lj6/a;->a:[B

    .line 684
    .line 685
    add-int/lit8 v12, v7, 0x1

    .line 686
    .line 687
    aget-byte v7, v21, v7

    .line 688
    .line 689
    aput-byte v7, v11, v0

    .line 690
    .line 691
    add-int/lit8 v10, v10, 0x1

    .line 692
    .line 693
    move v7, v12

    .line 694
    goto :goto_e

    .line 695
    :cond_2d
    const/16 v20, 0x0

    .line 696
    .line 697
    aget-object v0, v4, v20

    .line 698
    .line 699
    iget-object v0, v0, Lj6/a;->a:[B

    .line 700
    .line 701
    array-length v0, v0

    .line 702
    :goto_f
    const/4 v9, 0x7

    .line 703
    if-ge v2, v0, :cond_31

    .line 704
    .line 705
    const/4 v10, 0x0

    .line 706
    :goto_10
    if-ge v10, v8, :cond_30

    .line 707
    .line 708
    if-eqz v1, :cond_2e

    .line 709
    .line 710
    add-int/lit8 v11, v10, 0x8

    .line 711
    .line 712
    rem-int/2addr v11, v8

    .line 713
    goto :goto_11

    .line 714
    :cond_2e
    move v11, v10

    .line 715
    :goto_11
    if-eqz v1, :cond_2f

    .line 716
    .line 717
    if-le v11, v9, :cond_2f

    .line 718
    .line 719
    add-int/lit8 v12, v2, -0x1

    .line 720
    .line 721
    goto :goto_12

    .line 722
    :cond_2f
    move v12, v2

    .line 723
    :goto_12
    aget-object v11, v4, v11

    .line 724
    .line 725
    iget-object v11, v11, Lj6/a;->a:[B

    .line 726
    .line 727
    add-int/lit8 v13, v7, 0x1

    .line 728
    .line 729
    aget-byte v7, v21, v7

    .line 730
    .line 731
    aput-byte v7, v11, v12

    .line 732
    .line 733
    add-int/lit8 v10, v10, 0x1

    .line 734
    .line 735
    move v7, v13

    .line 736
    goto :goto_10

    .line 737
    :cond_30
    add-int/lit8 v2, v2, 0x1

    .line 738
    .line 739
    goto :goto_f

    .line 740
    :cond_31
    if-ne v7, v3, :cond_80

    .line 741
    .line 742
    const/4 v0, 0x0

    .line 743
    const/4 v1, 0x0

    .line 744
    :goto_13
    if-ge v0, v6, :cond_32

    .line 745
    .line 746
    aget-object v2, v4, v0

    .line 747
    .line 748
    iget v2, v2, Lj6/a;->b:I

    .line 749
    .line 750
    add-int/2addr v1, v2

    .line 751
    add-int/lit8 v0, v0, 0x1

    .line 752
    .line 753
    goto :goto_13

    .line 754
    :cond_32
    new-array v0, v1, [B

    .line 755
    .line 756
    const/4 v1, 0x0

    .line 757
    :goto_14
    if-ge v1, v6, :cond_36

    .line 758
    .line 759
    aget-object v2, v4, v1

    .line 760
    .line 761
    iget-object v3, v2, Lj6/a;->a:[B

    .line 762
    .line 763
    iget v2, v2, Lj6/a;->b:I

    .line 764
    .line 765
    array-length v7, v3

    .line 766
    new-array v8, v7, [I

    .line 767
    .line 768
    const/4 v10, 0x0

    .line 769
    :goto_15
    if-ge v10, v7, :cond_33

    .line 770
    .line 771
    aget-byte v11, v3, v10

    .line 772
    .line 773
    and-int/lit16 v11, v11, 0xff

    .line 774
    .line 775
    aput v11, v8, v10

    .line 776
    .line 777
    add-int/lit8 v10, v10, 0x1

    .line 778
    .line 779
    goto :goto_15

    .line 780
    :cond_33
    move-object/from16 v10, p0

    .line 781
    .line 782
    :try_start_0
    iget-object v7, v10, Lj6/c;->a:Lr5/c;

    .line 783
    .line 784
    array-length v11, v3

    .line 785
    sub-int/2addr v11, v2

    .line 786
    invoke-virtual {v7, v8, v11}, Lr5/c;->f([II)V
    :try_end_0
    .catch Lh6/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .line 788
    .line 789
    const/4 v7, 0x0

    .line 790
    :goto_16
    if-ge v7, v2, :cond_34

    .line 791
    .line 792
    aget v11, v8, v7

    .line 793
    .line 794
    int-to-byte v11, v11

    .line 795
    aput-byte v11, v3, v7

    .line 796
    .line 797
    add-int/lit8 v7, v7, 0x1

    .line 798
    .line 799
    goto :goto_16

    .line 800
    :cond_34
    const/4 v7, 0x0

    .line 801
    :goto_17
    if-ge v7, v2, :cond_35

    .line 802
    .line 803
    mul-int v8, v7, v6

    .line 804
    .line 805
    add-int/2addr v8, v1

    .line 806
    aget-byte v11, v3, v7

    .line 807
    .line 808
    aput-byte v11, v0, v8

    .line 809
    .line 810
    add-int/lit8 v7, v7, 0x1

    .line 811
    .line 812
    goto :goto_17

    .line 813
    :cond_35
    add-int/lit8 v1, v1, 0x1

    .line 814
    .line 815
    goto :goto_14

    .line 816
    :catch_0
    invoke-static {}, Lz5/c;->a()Lz5/c;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    throw v0

    .line 821
    :cond_36
    move-object/from16 v10, p0

    .line 822
    .line 823
    new-instance v1, Lb7/s;

    .line 824
    .line 825
    invoke-direct {v1, v0}, Lb7/s;-><init>([B)V

    .line 826
    .line 827
    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    .line 829
    .line 830
    const/16 v3, 0x64

    .line 831
    .line 832
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 833
    .line 834
    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    .line 836
    .line 837
    const/4 v4, 0x0

    .line 838
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 839
    .line 840
    .line 841
    new-instance v4, Ljava/util/ArrayList;

    .line 842
    .line 843
    const/4 v7, 0x1

    .line 844
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 845
    .line 846
    .line 847
    const/4 v6, 0x2

    .line 848
    :goto_18
    const/4 v7, 0x6

    .line 849
    const/4 v8, 0x5

    .line 850
    const/16 v11, 0x1d

    .line 851
    .line 852
    const/16 v12, 0xfe

    .line 853
    .line 854
    const/4 v15, 0x2

    .line 855
    if-ne v6, v15, :cond_3f

    .line 856
    .line 857
    const/4 v6, 0x0

    .line 858
    :cond_37
    invoke-virtual {v1, v5}, Lb7/s;->b(I)I

    .line 859
    .line 860
    .line 861
    move-result v13

    .line 862
    if-eqz v13, :cond_3e

    .line 863
    .line 864
    const/16 v14, 0x80

    .line 865
    .line 866
    if-gt v13, v14, :cond_39

    .line 867
    .line 868
    if-eqz v6, :cond_38

    .line 869
    .line 870
    add-int/lit16 v13, v13, 0x80

    .line 871
    .line 872
    :cond_38
    const/16 v18, 0x1

    .line 873
    .line 874
    add-int/lit8 v13, v13, -0x1

    .line 875
    .line 876
    int-to-char v6, v13

    .line 877
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    const/4 v7, 0x2

    .line 881
    :goto_19
    :pswitch_0
    const/4 v13, 0x0

    .line 882
    goto :goto_1c

    .line 883
    :cond_39
    const/16 v14, 0x81

    .line 884
    .line 885
    if-ne v13, v14, :cond_3a

    .line 886
    .line 887
    const/4 v7, 0x1

    .line 888
    goto :goto_19

    .line 889
    :cond_3a
    const/16 v14, 0xe5

    .line 890
    .line 891
    if-gt v13, v14, :cond_3c

    .line 892
    .line 893
    add-int/lit16 v13, v13, -0x82

    .line 894
    .line 895
    const/16 v14, 0xa

    .line 896
    .line 897
    if-ge v13, v14, :cond_3b

    .line 898
    .line 899
    const/16 v14, 0x30

    .line 900
    .line 901
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 902
    .line 903
    .line 904
    :cond_3b
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    :goto_1a
    :pswitch_1
    const/4 v13, 0x0

    .line 908
    goto :goto_1b

    .line 909
    :cond_3c
    const-string v14, "\u001e\u0004"

    .line 910
    .line 911
    packed-switch v13, :pswitch_data_0

    .line 912
    .line 913
    .line 914
    if-ne v13, v12, :cond_3d

    .line 915
    .line 916
    invoke-virtual {v1}, Lb7/s;->a()I

    .line 917
    .line 918
    .line 919
    move-result v13

    .line 920
    if-nez v13, :cond_3d

    .line 921
    .line 922
    goto :goto_1a

    .line 923
    :cond_3d
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    throw v0

    .line 928
    :pswitch_2
    const/4 v7, 0x4

    .line 929
    goto :goto_19

    .line 930
    :pswitch_3
    move v7, v8

    .line 931
    goto :goto_19

    .line 932
    :pswitch_4
    const-string v13, "[)>\u001e06\u001d"

    .line 933
    .line 934
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    const/4 v13, 0x0

    .line 938
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    goto :goto_1b

    .line 942
    :pswitch_5
    const/4 v13, 0x0

    .line 943
    const-string v15, "[)>\u001e05\u001d"

    .line 944
    .line 945
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    .line 947
    .line 948
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    goto :goto_1b

    .line 952
    :pswitch_6
    const/4 v13, 0x0

    .line 953
    const/4 v6, 0x1

    .line 954
    goto :goto_1b

    .line 955
    :pswitch_7
    const/4 v13, 0x0

    .line 956
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    .line 959
    :goto_1b
    invoke-virtual {v1}, Lb7/s;->a()I

    .line 960
    .line 961
    .line 962
    move-result v14

    .line 963
    if-gtz v14, :cond_37

    .line 964
    .line 965
    const/4 v7, 0x2

    .line 966
    goto :goto_1c

    .line 967
    :pswitch_8
    const/4 v13, 0x0

    .line 968
    move v7, v9

    .line 969
    goto :goto_1c

    .line 970
    :pswitch_9
    const/4 v13, 0x0

    .line 971
    const/4 v7, 0x3

    .line 972
    :goto_1c
    move v6, v7

    .line 973
    const/4 v11, 0x2

    .line 974
    :goto_1d
    const/4 v13, 0x1

    .line 975
    goto/16 :goto_34

    .line 976
    .line 977
    :cond_3e
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    throw v0

    .line 982
    :cond_3f
    const/4 v13, 0x0

    .line 983
    invoke-static {v6}, Lcom/bumptech/glide/g;->c(I)I

    .line 984
    .line 985
    .line 986
    move-result v6

    .line 987
    const/16 v14, 0x1e

    .line 988
    .line 989
    const/16 v15, 0x1b

    .line 990
    .line 991
    const/16 v9, 0x28

    .line 992
    .line 993
    const/4 v13, 0x2

    .line 994
    if-eq v6, v13, :cond_6a

    .line 995
    .line 996
    const/16 v13, 0x20

    .line 997
    .line 998
    const/4 v11, 0x3

    .line 999
    if-eq v6, v11, :cond_57

    .line 1000
    .line 1001
    const/4 v11, 0x4

    .line 1002
    if-eq v6, v11, :cond_4c

    .line 1003
    .line 1004
    if-eq v6, v8, :cond_47

    .line 1005
    .line 1006
    if-ne v6, v7, :cond_46

    .line 1007
    .line 1008
    iget v6, v1, Lb7/s;->a:I

    .line 1009
    .line 1010
    add-int/lit8 v7, v6, 0x1

    .line 1011
    .line 1012
    invoke-virtual {v1, v5}, Lb7/s;->b(I)I

    .line 1013
    .line 1014
    .line 1015
    move-result v8

    .line 1016
    add-int/lit8 v9, v6, 0x2

    .line 1017
    .line 1018
    invoke-static {v8, v7}, Lj6/b;->b(II)I

    .line 1019
    .line 1020
    .line 1021
    move-result v7

    .line 1022
    if-nez v7, :cond_40

    .line 1023
    .line 1024
    invoke-virtual {v1}, Lb7/s;->a()I

    .line 1025
    .line 1026
    .line 1027
    move-result v6

    .line 1028
    div-int/lit8 v7, v6, 0x8

    .line 1029
    .line 1030
    goto :goto_1e

    .line 1031
    :cond_40
    const/16 v8, 0xfa

    .line 1032
    .line 1033
    if-ge v7, v8, :cond_41

    .line 1034
    .line 1035
    goto :goto_1e

    .line 1036
    :cond_41
    add-int/lit16 v7, v7, -0xf9

    .line 1037
    .line 1038
    mul-int/2addr v7, v8

    .line 1039
    invoke-virtual {v1, v5}, Lb7/s;->b(I)I

    .line 1040
    .line 1041
    .line 1042
    move-result v8

    .line 1043
    add-int/lit8 v6, v6, 0x3

    .line 1044
    .line 1045
    invoke-static {v8, v9}, Lj6/b;->b(II)I

    .line 1046
    .line 1047
    .line 1048
    move-result v8

    .line 1049
    add-int/2addr v7, v8

    .line 1050
    move v9, v6

    .line 1051
    :goto_1e
    if-ltz v7, :cond_45

    .line 1052
    .line 1053
    new-array v6, v7, [B

    .line 1054
    .line 1055
    const/4 v8, 0x0

    .line 1056
    :goto_1f
    if-ge v8, v7, :cond_43

    .line 1057
    .line 1058
    invoke-virtual {v1}, Lb7/s;->a()I

    .line 1059
    .line 1060
    .line 1061
    move-result v11

    .line 1062
    if-lt v11, v5, :cond_42

    .line 1063
    .line 1064
    invoke-virtual {v1, v5}, Lb7/s;->b(I)I

    .line 1065
    .line 1066
    .line 1067
    move-result v11

    .line 1068
    add-int/lit8 v12, v9, 0x1

    .line 1069
    .line 1070
    invoke-static {v11, v9}, Lj6/b;->b(II)I

    .line 1071
    .line 1072
    .line 1073
    move-result v9

    .line 1074
    int-to-byte v9, v9

    .line 1075
    aput-byte v9, v6, v8

    .line 1076
    .line 1077
    add-int/lit8 v8, v8, 0x1

    .line 1078
    .line 1079
    move v9, v12

    .line 1080
    goto :goto_1f

    .line 1081
    :cond_42
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v0

    .line 1085
    throw v0

    .line 1086
    :cond_43
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    .line 1088
    .line 1089
    :try_start_1
    new-instance v7, Ljava/lang/String;

    .line 1090
    .line 1091
    const-string v8, "ISO8859_1"

    .line 1092
    .line 1093
    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1097
    .line 1098
    .line 1099
    :cond_44
    :goto_20
    const/4 v11, 0x2

    .line 1100
    goto/16 :goto_33

    .line 1101
    .line 1102
    :catch_1
    move-exception v0

    .line 1103
    const-string v1, "Platform does not support required encoding: "

    .line 1104
    .line 1105
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v0

    .line 1113
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    :goto_21
    const/4 v0, 0x0

    .line 1117
    return-object v0

    .line 1118
    :cond_45
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    throw v0

    .line 1123
    :cond_46
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    throw v0

    .line 1128
    :cond_47
    invoke-virtual {v1}, Lb7/s;->a()I

    .line 1129
    .line 1130
    .line 1131
    move-result v6

    .line 1132
    const/16 v8, 0x10

    .line 1133
    .line 1134
    if-gt v6, v8, :cond_48

    .line 1135
    .line 1136
    const/4 v8, 0x4

    .line 1137
    goto :goto_23

    .line 1138
    :cond_48
    const/4 v6, 0x0

    .line 1139
    const/4 v8, 0x4

    .line 1140
    :goto_22
    if-ge v6, v8, :cond_4b

    .line 1141
    .line 1142
    invoke-virtual {v1, v7}, Lb7/s;->b(I)I

    .line 1143
    .line 1144
    .line 1145
    move-result v9

    .line 1146
    const/16 v11, 0x1f

    .line 1147
    .line 1148
    if-ne v9, v11, :cond_49

    .line 1149
    .line 1150
    iget v6, v1, Lb7/s;->b:I

    .line 1151
    .line 1152
    rsub-int/lit8 v6, v6, 0x8

    .line 1153
    .line 1154
    if-eq v6, v5, :cond_44

    .line 1155
    .line 1156
    invoke-virtual {v1, v6}, Lb7/s;->b(I)I

    .line 1157
    .line 1158
    .line 1159
    goto :goto_23

    .line 1160
    :cond_49
    and-int/lit8 v11, v9, 0x20

    .line 1161
    .line 1162
    if-nez v11, :cond_4a

    .line 1163
    .line 1164
    or-int/lit8 v9, v9, 0x40

    .line 1165
    .line 1166
    :cond_4a
    int-to-char v9, v9

    .line 1167
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    .line 1170
    add-int/lit8 v6, v6, 0x1

    .line 1171
    .line 1172
    goto :goto_22

    .line 1173
    :cond_4b
    invoke-virtual {v1}, Lb7/s;->a()I

    .line 1174
    .line 1175
    .line 1176
    move-result v6

    .line 1177
    if-gtz v6, :cond_47

    .line 1178
    .line 1179
    :goto_23
    goto :goto_20

    .line 1180
    :cond_4c
    move v8, v11

    .line 1181
    const/4 v11, 0x3

    .line 1182
    new-array v6, v11, [I

    .line 1183
    .line 1184
    :goto_24
    invoke-virtual {v1}, Lb7/s;->a()I

    .line 1185
    .line 1186
    .line 1187
    move-result v7

    .line 1188
    if-ne v7, v5, :cond_4d

    .line 1189
    .line 1190
    goto :goto_27

    .line 1191
    :cond_4d
    invoke-virtual {v1, v5}, Lb7/s;->b(I)I

    .line 1192
    .line 1193
    .line 1194
    move-result v7

    .line 1195
    if-ne v7, v12, :cond_4e

    .line 1196
    .line 1197
    goto :goto_27

    .line 1198
    :cond_4e
    invoke-virtual {v1, v5}, Lb7/s;->b(I)I

    .line 1199
    .line 1200
    .line 1201
    move-result v14

    .line 1202
    invoke-static {v7, v14, v6}, Lj6/b;->a(II[I)V

    .line 1203
    .line 1204
    .line 1205
    const/4 v7, 0x0

    .line 1206
    :goto_25
    if-ge v7, v11, :cond_55

    .line 1207
    .line 1208
    aget v14, v6, v7

    .line 1209
    .line 1210
    if-eqz v14, :cond_54

    .line 1211
    .line 1212
    const/4 v15, 0x1

    .line 1213
    if-eq v14, v15, :cond_53

    .line 1214
    .line 1215
    const/4 v15, 0x2

    .line 1216
    if-eq v14, v15, :cond_52

    .line 1217
    .line 1218
    if-eq v14, v11, :cond_51

    .line 1219
    .line 1220
    const/16 v11, 0xe

    .line 1221
    .line 1222
    if-ge v14, v11, :cond_4f

    .line 1223
    .line 1224
    add-int/lit8 v14, v14, 0x2c

    .line 1225
    .line 1226
    int-to-char v11, v14

    .line 1227
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    .line 1230
    goto :goto_26

    .line 1231
    :cond_4f
    if-ge v14, v9, :cond_50

    .line 1232
    .line 1233
    add-int/lit8 v14, v14, 0x33

    .line 1234
    .line 1235
    int-to-char v11, v14

    .line 1236
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1237
    .line 1238
    .line 1239
    goto :goto_26

    .line 1240
    :cond_50
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    throw v0

    .line 1245
    :cond_51
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    .line 1248
    goto :goto_26

    .line 1249
    :cond_52
    const/16 v11, 0x3e

    .line 1250
    .line 1251
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    goto :goto_26

    .line 1255
    :cond_53
    const/16 v11, 0x2a

    .line 1256
    .line 1257
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1258
    .line 1259
    .line 1260
    goto :goto_26

    .line 1261
    :cond_54
    const/16 v11, 0xd

    .line 1262
    .line 1263
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1264
    .line 1265
    .line 1266
    :goto_26
    add-int/lit8 v7, v7, 0x1

    .line 1267
    .line 1268
    const/4 v11, 0x3

    .line 1269
    goto :goto_25

    .line 1270
    :cond_55
    invoke-virtual {v1}, Lb7/s;->a()I

    .line 1271
    .line 1272
    .line 1273
    move-result v7

    .line 1274
    if-gtz v7, :cond_56

    .line 1275
    .line 1276
    :goto_27
    goto/16 :goto_20

    .line 1277
    .line 1278
    :cond_56
    const/4 v11, 0x3

    .line 1279
    goto :goto_24

    .line 1280
    :cond_57
    move v7, v11

    .line 1281
    const/4 v8, 0x4

    .line 1282
    new-array v6, v7, [I

    .line 1283
    .line 1284
    const/4 v11, 0x0

    .line 1285
    const/16 v16, 0x0

    .line 1286
    .line 1287
    :goto_28
    invoke-virtual {v1}, Lb7/s;->a()I

    .line 1288
    .line 1289
    .line 1290
    move-result v8

    .line 1291
    if-ne v8, v5, :cond_58

    .line 1292
    .line 1293
    goto/16 :goto_2d

    .line 1294
    .line 1295
    :cond_58
    invoke-virtual {v1, v5}, Lb7/s;->b(I)I

    .line 1296
    .line 1297
    .line 1298
    move-result v8

    .line 1299
    if-ne v8, v12, :cond_59

    .line 1300
    .line 1301
    goto/16 :goto_2d

    .line 1302
    .line 1303
    :cond_59
    invoke-virtual {v1, v5}, Lb7/s;->b(I)I

    .line 1304
    .line 1305
    .line 1306
    move-result v12

    .line 1307
    invoke-static {v8, v12, v6}, Lj6/b;->a(II[I)V

    .line 1308
    .line 1309
    .line 1310
    move/from16 v12, v16

    .line 1311
    .line 1312
    const/4 v8, 0x0

    .line 1313
    :goto_29
    if-ge v8, v7, :cond_68

    .line 1314
    .line 1315
    aget v5, v6, v8

    .line 1316
    .line 1317
    if-eqz v12, :cond_64

    .line 1318
    .line 1319
    const/4 v9, 0x1

    .line 1320
    if-eq v12, v9, :cond_62

    .line 1321
    .line 1322
    const/4 v9, 0x2

    .line 1323
    if-eq v12, v9, :cond_5d

    .line 1324
    .line 1325
    if-ne v12, v7, :cond_5c

    .line 1326
    .line 1327
    if-ge v5, v13, :cond_5b

    .line 1328
    .line 1329
    sget-object v7, Lj6/b;->e:[C

    .line 1330
    .line 1331
    aget-char v5, v7, v5

    .line 1332
    .line 1333
    if-eqz v11, :cond_5a

    .line 1334
    .line 1335
    add-int/lit16 v5, v5, 0x80

    .line 1336
    .line 1337
    int-to-char v5, v5

    .line 1338
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    :goto_2a
    const/4 v11, 0x0

    .line 1342
    goto :goto_2b

    .line 1343
    :cond_5a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1344
    .line 1345
    .line 1346
    :goto_2b
    const/4 v12, 0x0

    .line 1347
    goto :goto_2c

    .line 1348
    :cond_5b
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v0

    .line 1352
    throw v0

    .line 1353
    :cond_5c
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v0

    .line 1357
    throw v0

    .line 1358
    :cond_5d
    if-ge v5, v15, :cond_5f

    .line 1359
    .line 1360
    sget-object v7, Lj6/b;->d:[C

    .line 1361
    .line 1362
    aget-char v5, v7, v5

    .line 1363
    .line 1364
    if-eqz v11, :cond_5e

    .line 1365
    .line 1366
    add-int/lit16 v5, v5, 0x80

    .line 1367
    .line 1368
    int-to-char v5, v5

    .line 1369
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1370
    .line 1371
    .line 1372
    goto :goto_2a

    .line 1373
    :cond_5e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1374
    .line 1375
    .line 1376
    goto :goto_2b

    .line 1377
    :cond_5f
    if-eq v5, v15, :cond_61

    .line 1378
    .line 1379
    if-ne v5, v14, :cond_60

    .line 1380
    .line 1381
    const/4 v11, 0x1

    .line 1382
    goto :goto_2b

    .line 1383
    :cond_60
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v0

    .line 1387
    throw v0

    .line 1388
    :cond_61
    const/16 v5, 0x1d

    .line 1389
    .line 1390
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1391
    .line 1392
    .line 1393
    goto :goto_2b

    .line 1394
    :cond_62
    if-eqz v11, :cond_63

    .line 1395
    .line 1396
    add-int/lit16 v5, v5, 0x80

    .line 1397
    .line 1398
    int-to-char v5, v5

    .line 1399
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1400
    .line 1401
    .line 1402
    goto :goto_2a

    .line 1403
    :cond_63
    int-to-char v5, v5

    .line 1404
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1405
    .line 1406
    .line 1407
    goto :goto_2b

    .line 1408
    :cond_64
    if-ge v5, v7, :cond_65

    .line 1409
    .line 1410
    add-int/lit8 v5, v5, 0x1

    .line 1411
    .line 1412
    move v12, v5

    .line 1413
    goto :goto_2c

    .line 1414
    :cond_65
    const/16 v7, 0x28

    .line 1415
    .line 1416
    if-ge v5, v7, :cond_67

    .line 1417
    .line 1418
    sget-object v7, Lj6/b;->c:[C

    .line 1419
    .line 1420
    aget-char v5, v7, v5

    .line 1421
    .line 1422
    if-eqz v11, :cond_66

    .line 1423
    .line 1424
    add-int/lit16 v5, v5, 0x80

    .line 1425
    .line 1426
    int-to-char v5, v5

    .line 1427
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1428
    .line 1429
    .line 1430
    const/4 v11, 0x0

    .line 1431
    goto :goto_2c

    .line 1432
    :cond_66
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1433
    .line 1434
    .line 1435
    :goto_2c
    add-int/lit8 v8, v8, 0x1

    .line 1436
    .line 1437
    const/16 v5, 0x8

    .line 1438
    .line 1439
    const/4 v7, 0x3

    .line 1440
    const/16 v9, 0x28

    .line 1441
    .line 1442
    goto/16 :goto_29

    .line 1443
    .line 1444
    :cond_67
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v0

    .line 1448
    throw v0

    .line 1449
    :cond_68
    invoke-virtual {v1}, Lb7/s;->a()I

    .line 1450
    .line 1451
    .line 1452
    move-result v5

    .line 1453
    if-gtz v5, :cond_69

    .line 1454
    .line 1455
    :goto_2d
    goto/16 :goto_20

    .line 1456
    .line 1457
    :cond_69
    move/from16 v16, v12

    .line 1458
    .line 1459
    const/16 v5, 0x8

    .line 1460
    .line 1461
    const/4 v7, 0x3

    .line 1462
    const/16 v9, 0x28

    .line 1463
    .line 1464
    const/16 v12, 0xfe

    .line 1465
    .line 1466
    goto/16 :goto_28

    .line 1467
    .line 1468
    :cond_6a
    const/4 v7, 0x3

    .line 1469
    new-array v5, v7, [I

    .line 1470
    .line 1471
    const/4 v6, 0x0

    .line 1472
    const/4 v8, 0x0

    .line 1473
    :goto_2e
    invoke-virtual {v1}, Lb7/s;->a()I

    .line 1474
    .line 1475
    .line 1476
    move-result v9

    .line 1477
    const/16 v11, 0x8

    .line 1478
    .line 1479
    if-ne v9, v11, :cond_6b

    .line 1480
    .line 1481
    goto/16 :goto_20

    .line 1482
    .line 1483
    :cond_6b
    invoke-virtual {v1, v11}, Lb7/s;->b(I)I

    .line 1484
    .line 1485
    .line 1486
    move-result v9

    .line 1487
    const/16 v12, 0xfe

    .line 1488
    .line 1489
    if-ne v9, v12, :cond_6c

    .line 1490
    .line 1491
    goto/16 :goto_20

    .line 1492
    .line 1493
    :cond_6c
    invoke-virtual {v1, v11}, Lb7/s;->b(I)I

    .line 1494
    .line 1495
    .line 1496
    move-result v13

    .line 1497
    invoke-static {v9, v13, v5}, Lj6/b;->a(II[I)V

    .line 1498
    .line 1499
    .line 1500
    move v9, v8

    .line 1501
    move v8, v6

    .line 1502
    const/4 v6, 0x0

    .line 1503
    :goto_2f
    if-ge v6, v7, :cond_7a

    .line 1504
    .line 1505
    aget v13, v5, v6

    .line 1506
    .line 1507
    if-eqz v9, :cond_76

    .line 1508
    .line 1509
    const/4 v11, 0x1

    .line 1510
    if-eq v9, v11, :cond_74

    .line 1511
    .line 1512
    const/4 v11, 0x2

    .line 1513
    if-eq v9, v11, :cond_6f

    .line 1514
    .line 1515
    if-ne v9, v7, :cond_6e

    .line 1516
    .line 1517
    if-eqz v8, :cond_6d

    .line 1518
    .line 1519
    add-int/lit16 v13, v13, 0xe0

    .line 1520
    .line 1521
    int-to-char v7, v13

    .line 1522
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1523
    .line 1524
    .line 1525
    :goto_30
    const/4 v8, 0x0

    .line 1526
    goto :goto_31

    .line 1527
    :cond_6d
    add-int/lit8 v13, v13, 0x60

    .line 1528
    .line 1529
    int-to-char v7, v13

    .line 1530
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1531
    .line 1532
    .line 1533
    :goto_31
    const/16 v7, 0x28

    .line 1534
    .line 1535
    const/4 v9, 0x0

    .line 1536
    goto :goto_32

    .line 1537
    :cond_6e
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v0

    .line 1541
    throw v0

    .line 1542
    :cond_6f
    if-ge v13, v15, :cond_71

    .line 1543
    .line 1544
    sget-object v7, Lj6/b;->b:[C

    .line 1545
    .line 1546
    aget-char v7, v7, v13

    .line 1547
    .line 1548
    if-eqz v8, :cond_70

    .line 1549
    .line 1550
    add-int/lit16 v7, v7, 0x80

    .line 1551
    .line 1552
    int-to-char v7, v7

    .line 1553
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1554
    .line 1555
    .line 1556
    const/16 v7, 0x1d

    .line 1557
    .line 1558
    goto :goto_30

    .line 1559
    :cond_70
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1560
    .line 1561
    .line 1562
    const/16 v7, 0x1d

    .line 1563
    .line 1564
    goto :goto_31

    .line 1565
    :cond_71
    if-eq v13, v15, :cond_73

    .line 1566
    .line 1567
    if-ne v13, v14, :cond_72

    .line 1568
    .line 1569
    const/16 v7, 0x1d

    .line 1570
    .line 1571
    const/4 v8, 0x1

    .line 1572
    goto :goto_31

    .line 1573
    :cond_72
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v0

    .line 1577
    throw v0

    .line 1578
    :cond_73
    const/16 v7, 0x1d

    .line 1579
    .line 1580
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1581
    .line 1582
    .line 1583
    goto :goto_31

    .line 1584
    :cond_74
    const/16 v7, 0x1d

    .line 1585
    .line 1586
    const/4 v11, 0x2

    .line 1587
    if-eqz v8, :cond_75

    .line 1588
    .line 1589
    add-int/lit16 v13, v13, 0x80

    .line 1590
    .line 1591
    int-to-char v8, v13

    .line 1592
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1593
    .line 1594
    .line 1595
    goto :goto_30

    .line 1596
    :cond_75
    int-to-char v9, v13

    .line 1597
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1598
    .line 1599
    .line 1600
    goto :goto_31

    .line 1601
    :cond_76
    const/4 v11, 0x2

    .line 1602
    if-ge v13, v7, :cond_77

    .line 1603
    .line 1604
    add-int/lit8 v9, v13, 0x1

    .line 1605
    .line 1606
    const/16 v7, 0x28

    .line 1607
    .line 1608
    goto :goto_32

    .line 1609
    :cond_77
    const/16 v7, 0x28

    .line 1610
    .line 1611
    if-ge v13, v7, :cond_79

    .line 1612
    .line 1613
    sget-object v17, Lj6/b;->a:[C

    .line 1614
    .line 1615
    aget-char v13, v17, v13

    .line 1616
    .line 1617
    if-eqz v8, :cond_78

    .line 1618
    .line 1619
    add-int/lit16 v13, v13, 0x80

    .line 1620
    .line 1621
    int-to-char v8, v13

    .line 1622
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1623
    .line 1624
    .line 1625
    const/4 v8, 0x0

    .line 1626
    goto :goto_32

    .line 1627
    :cond_78
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1628
    .line 1629
    .line 1630
    :goto_32
    add-int/lit8 v6, v6, 0x1

    .line 1631
    .line 1632
    const/4 v7, 0x3

    .line 1633
    const/16 v11, 0x8

    .line 1634
    .line 1635
    goto/16 :goto_2f

    .line 1636
    .line 1637
    :cond_79
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v0

    .line 1641
    throw v0

    .line 1642
    :cond_7a
    const/16 v7, 0x28

    .line 1643
    .line 1644
    const/4 v11, 0x2

    .line 1645
    invoke-virtual {v1}, Lb7/s;->a()I

    .line 1646
    .line 1647
    .line 1648
    move-result v6

    .line 1649
    if-gtz v6, :cond_7f

    .line 1650
    .line 1651
    :goto_33
    move v6, v11

    .line 1652
    goto/16 :goto_1d

    .line 1653
    .line 1654
    :goto_34
    if-eq v6, v13, :cond_7c

    .line 1655
    .line 1656
    invoke-virtual {v1}, Lb7/s;->a()I

    .line 1657
    .line 1658
    .line 1659
    move-result v5

    .line 1660
    if-gtz v5, :cond_7b

    .line 1661
    .line 1662
    goto :goto_35

    .line 1663
    :cond_7b
    const/16 v5, 0x8

    .line 1664
    .line 1665
    const/4 v9, 0x7

    .line 1666
    goto/16 :goto_18

    .line 1667
    .line 1668
    :cond_7c
    :goto_35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 1669
    .line 1670
    .line 1671
    move-result v1

    .line 1672
    if-lez v1, :cond_7d

    .line 1673
    .line 1674
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1675
    .line 1676
    .line 1677
    :cond_7d
    new-instance v1, Lf6/d;

    .line 1678
    .line 1679
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v2

    .line 1683
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1684
    .line 1685
    .line 1686
    move-result v3

    .line 1687
    const/4 v5, 0x0

    .line 1688
    if-eqz v3, :cond_7e

    .line 1689
    .line 1690
    move-object v4, v5

    .line 1691
    :cond_7e
    invoke-direct {v1, v0, v2, v4, v5}, Lf6/d;-><init>([BLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1692
    .line 1693
    .line 1694
    return-object v1

    .line 1695
    :cond_7f
    move v6, v8

    .line 1696
    move v8, v9

    .line 1697
    const/4 v7, 0x3

    .line 1698
    goto/16 :goto_2e

    .line 1699
    .line 1700
    :cond_80
    move-object/from16 v10, p0

    .line 1701
    .line 1702
    invoke-static {}, Ll9/i;->a()V

    .line 1703
    .line 1704
    .line 1705
    goto/16 :goto_21

    .line 1706
    .line 1707
    :cond_81
    move-object/from16 v10, p0

    .line 1708
    .line 1709
    invoke-static {}, Lz5/e;->a()Lz5/e;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v0

    .line 1713
    throw v0

    .line 1714
    :cond_82
    const/16 v20, 0x0

    .line 1715
    .line 1716
    move/from16 v7, v20

    .line 1717
    .line 1718
    move-object/from16 v4, v21

    .line 1719
    .line 1720
    goto/16 :goto_0

    .line 1721
    .line 1722
    nop

    .line 1723
    :pswitch_data_0
    .packed-switch 0xe6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d(Lf6/b;Ljava/util/Map;)Lf6/d;
    .locals 8

    .line 1
    new-instance v0, Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bumptech/glide/manager/s;-><init>(Lf6/b;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lj6/c;->b(Lcom/bumptech/glide/manager/s;Ljava/util/Map;)Lf6/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Lz5/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lz5/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception v1

    .line 13
    move-object v2, v1

    .line 14
    move-object v1, p1

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception v1

    .line 17
    move-object v2, p1

    .line 18
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->j()V

    .line 19
    .line 20
    .line 21
    iput-object p1, v0, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p1, v0, Lcom/bumptech/glide/manager/s;->e:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, v0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->i()Lw6/f;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->h()Lw6/c;

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lf6/b;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_1
    iget v4, p1, Lf6/b;->b:I

    .line 40
    .line 41
    if-ge v3, v4, :cond_2

    .line 42
    .line 43
    add-int/lit8 v4, v3, 0x1

    .line 44
    .line 45
    move v5, v4

    .line 46
    :goto_2
    iget v6, p1, Lf6/b;->c:I

    .line 47
    .line 48
    if-ge v5, v6, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1, v3, v5}, Lf6/b;->b(II)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-virtual {p1, v5, v3}, Lf6/b;->b(II)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eq v6, v7, :cond_0

    .line 59
    .line 60
    invoke-virtual {p1, v5, v3}, Lf6/b;->a(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v3, v5}, Lf6/b;->a(II)V

    .line 64
    .line 65
    .line 66
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    move v3, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {p0, v0, p2}, Lj6/c;->b(Lcom/bumptech/glide/manager/s;Ljava/util/Map;)Lf6/d;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance p2, Lw6/e;

    .line 76
    .line 77
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p2, p1, Lf6/d;->g:Ljava/lang/Object;
    :try_end_1
    .catch Lz5/e; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lz5/c; {:try_start_1 .. :try_end_1} :catch_2

    .line 81
    .line 82
    return-object p1

    .line 83
    :catch_2
    if-eqz v1, :cond_3

    .line 84
    .line 85
    throw v1

    .line 86
    :cond_3
    throw v2
.end method
