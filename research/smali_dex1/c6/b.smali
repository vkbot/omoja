.class public final Lc6/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final g:[I


# instance fields
.field public final a:Lf6/b;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const/16 v0, 0x83b

    .line 2
    .line 3
    const/16 v1, 0x707

    .line 4
    .line 5
    const/16 v2, 0xee0

    .line 6
    .line 7
    const/16 v3, 0x1dc

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lc6/b;->g:[I

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lf6/b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc6/b;->a:Lf6/b;

    .line 5
    .line 6
    return-void
.end method

.method public static b([Lz5/o;II)[Lz5/o;
    .registers 10

    .line 1
    int-to-float p2, p2

    .line 2
    int-to-float p1, p1

    .line 3
    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    .line 5
    mul-float/2addr p1, v0

    .line 6
    div-float/2addr p2, p1

    .line 7
    const/4 p1, 0x0

    .line 8
    aget-object p1, p0, p1

    .line 9
    .line 10
    iget v1, p1, Lz5/o;->a:F

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    aget-object v2, p0, v2

    .line 14
    .line 15
    iget v3, v2, Lz5/o;->a:F

    .line 16
    .line 17
    sub-float v4, v1, v3

    .line 18
    .line 19
    iget p1, p1, Lz5/o;->b:F

    .line 20
    .line 21
    iget v2, v2, Lz5/o;->b:F

    .line 22
    .line 23
    sub-float v5, p1, v2

    .line 24
    .line 25
    add-float/2addr v1, v3

    .line 26
    div-float/2addr v1, v0

    .line 27
    add-float/2addr p1, v2

    .line 28
    div-float/2addr p1, v0

    .line 29
    new-instance v2, Lz5/o;

    .line 30
    .line 31
    mul-float/2addr v4, p2

    .line 32
    add-float v3, v1, v4

    .line 33
    .line 34
    mul-float/2addr v5, p2

    .line 35
    add-float v6, p1, v5

    .line 36
    .line 37
    invoke-direct {v2, v3, v6}, Lz5/o;-><init>(FF)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lz5/o;

    .line 41
    .line 42
    sub-float/2addr v1, v4

    .line 43
    sub-float/2addr p1, v5

    .line 44
    invoke-direct {v3, v1, p1}, Lz5/o;-><init>(FF)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    aget-object p1, p0, p1

    .line 49
    .line 50
    iget v1, p1, Lz5/o;->a:F

    .line 51
    .line 52
    const/4 v4, 0x3

    .line 53
    aget-object p0, p0, v4

    .line 54
    .line 55
    iget v4, p0, Lz5/o;->a:F

    .line 56
    .line 57
    sub-float v5, v1, v4

    .line 58
    .line 59
    iget p1, p1, Lz5/o;->b:F

    .line 60
    .line 61
    iget p0, p0, Lz5/o;->b:F

    .line 62
    .line 63
    sub-float v6, p1, p0

    .line 64
    .line 65
    add-float/2addr v1, v4

    .line 66
    div-float/2addr v1, v0

    .line 67
    add-float/2addr p1, p0

    .line 68
    div-float/2addr p1, v0

    .line 69
    new-instance p0, Lz5/o;

    .line 70
    .line 71
    mul-float/2addr v5, p2

    .line 72
    add-float v0, v1, v5

    .line 73
    .line 74
    mul-float/2addr p2, v6

    .line 75
    add-float v4, p1, p2

    .line 76
    .line 77
    invoke-direct {p0, v0, v4}, Lz5/o;-><init>(FF)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lz5/o;

    .line 81
    .line 82
    sub-float/2addr v1, v5

    .line 83
    sub-float/2addr p1, p2

    .line 84
    invoke-direct {v0, v1, p1}, Lz5/o;-><init>(FF)V

    .line 85
    .line 86
    .line 87
    filled-new-array {v2, p0, v3, v0}, [Lz5/o;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method


# virtual methods
.method public final a(Z)La6/a;
    .registers 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lc6/b;->a:Lf6/b;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, -0x1

    .line 8
    const/4 v5, 0x7

    .line 9
    const/4 v6, 0x1

    .line 10
    const/4 v7, 0x0

    .line 11
    :try_start_a
    new-instance v8, Lg6/a;

    .line 12
    .line 13
    invoke-direct {v8, v1}, Lg6/a;-><init>(Lf6/b;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v8}, Lg6/a;->b()[Lz5/o;

    .line 17
    .line 18
    .line 19
    move-result-object v8

    .line 20
    aget-object v9, v8, v7

    .line 21
    .line 22
    aget-object v10, v8, v6

    .line 23
    .line 24
    aget-object v11, v8, v3

    .line 25
    .line 26
    aget-object v8, v8, v2
    :try_end_1b
    .catch Lz5/i; {:try_start_a .. :try_end_1b} :catch_1c

    .line 27
    .line 28
    goto :goto_64

    .line 29
    :catch_1c
    iget v8, v1, Lf6/b;->b:I

    .line 30
    .line 31
    div-int/2addr v8, v3

    .line 32
    iget v9, v1, Lf6/b;->c:I

    .line 33
    .line 34
    div-int/2addr v9, v3

    .line 35
    new-instance v10, Lc6/a;

    .line 36
    .line 37
    add-int/lit8 v11, v8, 0x7

    .line 38
    .line 39
    add-int/lit8 v12, v9, -0x7

    .line 40
    .line 41
    const/4 v13, 0x0

    .line 42
    invoke-direct {v10, v11, v12, v13}, Lc6/a;-><init>(III)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v10, v7, v6, v4}, Lc6/b;->e(Lc6/a;ZII)Lc6/a;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    invoke-virtual {v10}, Lc6/a;->a()Lz5/o;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    new-instance v13, Lc6/a;

    .line 54
    .line 55
    add-int/2addr v9, v5

    .line 56
    const/4 v14, 0x0

    .line 57
    invoke-direct {v13, v11, v9, v14}, Lc6/a;-><init>(III)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v13, v7, v6, v6}, Lc6/b;->e(Lc6/a;ZII)Lc6/a;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-virtual {v11}, Lc6/a;->a()Lz5/o;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    new-instance v13, Lc6/a;

    .line 69
    .line 70
    sub-int/2addr v8, v5

    .line 71
    invoke-direct {v13, v8, v9, v14}, Lc6/a;-><init>(III)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v13, v7, v4, v6}, Lc6/b;->e(Lc6/a;ZII)Lc6/a;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v9}, Lc6/a;->a()Lz5/o;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    new-instance v13, Lc6/a;

    .line 83
    .line 84
    invoke-direct {v13, v8, v12, v14}, Lc6/a;-><init>(III)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v13, v7, v4, v4}, Lc6/b;->e(Lc6/a;ZII)Lc6/a;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v8}, Lc6/a;->a()Lz5/o;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    move-object/from16 v37, v11

    .line 96
    .line 97
    move-object v11, v9

    .line 98
    move-object v9, v10

    .line 99
    move-object/from16 v10, v37

    .line 100
    .line 101
    :goto_64
    iget v12, v9, Lz5/o;->a:F

    .line 102
    .line 103
    iget v13, v8, Lz5/o;->a:F

    .line 104
    .line 105
    add-float/2addr v12, v13

    .line 106
    iget v13, v10, Lz5/o;->a:F

    .line 107
    .line 108
    add-float/2addr v12, v13

    .line 109
    iget v13, v11, Lz5/o;->a:F

    .line 110
    .line 111
    add-float/2addr v12, v13

    .line 112
    const/high16 v13, 0x40800000    # 4.0f

    .line 113
    .line 114
    div-float/2addr v12, v13

    .line 115
    invoke-static {v12}, La/a;->u(F)I

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    iget v9, v9, Lz5/o;->b:F

    .line 120
    .line 121
    iget v8, v8, Lz5/o;->b:F

    .line 122
    .line 123
    add-float/2addr v9, v8

    .line 124
    iget v8, v10, Lz5/o;->b:F

    .line 125
    .line 126
    add-float/2addr v9, v8

    .line 127
    iget v8, v11, Lz5/o;->b:F

    .line 128
    .line 129
    add-float/2addr v9, v8

    .line 130
    div-float/2addr v9, v13

    .line 131
    invoke-static {v9}, La/a;->u(F)I

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    const/16 v9, 0xf

    .line 136
    .line 137
    :try_start_88
    new-instance v10, Lg6/a;

    .line 138
    .line 139
    invoke-direct {v10, v1, v9, v12, v8}, Lg6/a;-><init>(Lf6/b;III)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10}, Lg6/a;->b()[Lz5/o;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    aget-object v11, v10, v7

    .line 147
    .line 148
    aget-object v14, v10, v6

    .line 149
    .line 150
    aget-object v15, v10, v3

    .line 151
    .line 152
    aget-object v8, v10, v2
    :try_end_99
    .catch Lz5/i; {:try_start_88 .. :try_end_99} :catch_9c

    .line 153
    .line 154
    move/from16 v16, v2

    .line 155
    .line 156
    goto :goto_de

    .line 157
    :catch_9c
    new-instance v10, Lc6/a;

    .line 158
    .line 159
    add-int/lit8 v11, v12, 0x7

    .line 160
    .line 161
    add-int/lit8 v14, v8, -0x7

    .line 162
    .line 163
    const/4 v15, 0x0

    .line 164
    invoke-direct {v10, v11, v14, v15}, Lc6/a;-><init>(III)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v10, v7, v6, v4}, Lc6/b;->e(Lc6/a;ZII)Lc6/a;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    invoke-virtual {v10}, Lc6/a;->a()Lz5/o;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    new-instance v15, Lc6/a;

    .line 176
    .line 177
    add-int/2addr v8, v5

    .line 178
    move/from16 v16, v2

    .line 179
    .line 180
    const/4 v2, 0x0

    .line 181
    invoke-direct {v15, v11, v8, v2}, Lc6/a;-><init>(III)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v15, v7, v6, v6}, Lc6/b;->e(Lc6/a;ZII)Lc6/a;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2}, Lc6/a;->a()Lz5/o;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    new-instance v11, Lc6/a;

    .line 193
    .line 194
    sub-int/2addr v12, v5

    .line 195
    const/4 v15, 0x0

    .line 196
    invoke-direct {v11, v12, v8, v15}, Lc6/a;-><init>(III)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v11, v7, v4, v6}, Lc6/b;->e(Lc6/a;ZII)Lc6/a;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-virtual {v8}, Lc6/a;->a()Lz5/o;

    .line 204
    .line 205
    .line 206
    move-result-object v15

    .line 207
    new-instance v8, Lc6/a;

    .line 208
    .line 209
    const/4 v11, 0x0

    .line 210
    invoke-direct {v8, v12, v14, v11}, Lc6/a;-><init>(III)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v8, v7, v4, v4}, Lc6/b;->e(Lc6/a;ZII)Lc6/a;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    invoke-virtual {v8}, Lc6/a;->a()Lz5/o;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    move-object v14, v2

    .line 222
    move-object v11, v10

    .line 223
    :goto_de
    iget v2, v11, Lz5/o;->a:F

    .line 224
    .line 225
    iget v10, v8, Lz5/o;->a:F

    .line 226
    .line 227
    add-float/2addr v2, v10

    .line 228
    iget v10, v14, Lz5/o;->a:F

    .line 229
    .line 230
    add-float/2addr v2, v10

    .line 231
    iget v10, v15, Lz5/o;->a:F

    .line 232
    .line 233
    add-float/2addr v2, v10

    .line 234
    div-float/2addr v2, v13

    .line 235
    invoke-static {v2}, La/a;->u(F)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    iget v10, v11, Lz5/o;->b:F

    .line 240
    .line 241
    iget v8, v8, Lz5/o;->b:F

    .line 242
    .line 243
    add-float/2addr v10, v8

    .line 244
    iget v8, v14, Lz5/o;->b:F

    .line 245
    .line 246
    add-float/2addr v10, v8

    .line 247
    iget v8, v15, Lz5/o;->b:F

    .line 248
    .line 249
    add-float/2addr v10, v8

    .line 250
    div-float/2addr v10, v13

    .line 251
    invoke-static {v10}, La/a;->u(F)I

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    new-instance v10, Lc6/a;

    .line 256
    .line 257
    const/4 v11, 0x0

    .line 258
    invoke-direct {v10, v2, v8, v11}, Lc6/a;-><init>(III)V

    .line 259
    .line 260
    .line 261
    iput v6, v0, Lc6/b;->e:I

    .line 262
    .line 263
    move v12, v6

    .line 264
    move-object v2, v10

    .line 265
    move-object v8, v2

    .line 266
    move-object v11, v8

    .line 267
    :goto_10a
    iget v13, v11, Lc6/a;->c:I

    .line 268
    .line 269
    iget v14, v11, Lc6/a;->b:I

    .line 270
    .line 271
    iget v15, v10, Lc6/a;->c:I

    .line 272
    .line 273
    move/from16 v17, v7

    .line 274
    .line 275
    iget v7, v10, Lc6/a;->b:I

    .line 276
    .line 277
    move/from16 v18, v9

    .line 278
    .line 279
    iget v9, v0, Lc6/b;->e:I

    .line 280
    .line 281
    const/16 v5, 0x9

    .line 282
    .line 283
    if-ge v9, v5, :cond_1cf

    .line 284
    .line 285
    invoke-virtual {v0, v10, v12, v6, v4}, Lc6/b;->e(Lc6/a;ZII)Lc6/a;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    iget v5, v10, Lc6/a;->c:I

    .line 290
    .line 291
    iget v9, v10, Lc6/a;->b:I

    .line 292
    .line 293
    invoke-virtual {v0, v2, v12, v6, v6}, Lc6/b;->e(Lc6/a;ZII)Lc6/a;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    move-object/from16 v21, v10

    .line 298
    .line 299
    invoke-virtual {v0, v8, v12, v4, v6}, Lc6/b;->e(Lc6/a;ZII)Lc6/a;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    invoke-virtual {v0, v11, v12, v4, v4}, Lc6/b;->e(Lc6/a;ZII)Lc6/a;

    .line 304
    .line 305
    .line 306
    move-result-object v11

    .line 307
    iget v4, v11, Lc6/a;->c:I

    .line 308
    .line 309
    move/from16 v23, v6

    .line 310
    .line 311
    iget v6, v11, Lc6/a;->b:I

    .line 312
    .line 313
    move-object/from16 v24, v11

    .line 314
    .line 315
    iget v11, v0, Lc6/b;->e:I

    .line 316
    .line 317
    move/from16 v25, v12

    .line 318
    .line 319
    const/4 v12, 0x2

    .line 320
    if-le v11, v12, :cond_1b3

    .line 321
    .line 322
    invoke-static {v6, v4, v9, v5}, La/a;->h(IIII)F

    .line 323
    .line 324
    .line 325
    move-result v11

    .line 326
    move/from16 v20, v12

    .line 327
    .line 328
    iget v12, v0, Lc6/b;->e:I

    .line 329
    .line 330
    int-to-float v12, v12

    .line 331
    mul-float/2addr v11, v12

    .line 332
    invoke-static {v14, v13, v7, v15}, La/a;->h(IIII)F

    .line 333
    .line 334
    .line 335
    move-result v12

    .line 336
    move/from16 v26, v4

    .line 337
    .line 338
    iget v4, v0, Lc6/b;->e:I

    .line 339
    .line 340
    add-int/lit8 v4, v4, 0x2

    .line 341
    .line 342
    int-to-float v4, v4

    .line 343
    mul-float/2addr v12, v4

    .line 344
    div-float/2addr v11, v12

    .line 345
    float-to-double v11, v11

    .line 346
    const-wide/high16 v27, 0x3fe8000000000000L    # 0.75

    .line 347
    .line 348
    cmpg-double v4, v11, v27

    .line 349
    .line 350
    if-ltz v4, :cond_1d1

    .line 351
    .line 352
    const-wide/high16 v27, 0x3ff4000000000000L    # 1.25

    .line 353
    .line 354
    cmpl-double v4, v11, v27

    .line 355
    .line 356
    if-gtz v4, :cond_1d1

    .line 357
    .line 358
    new-instance v4, Lc6/a;

    .line 359
    .line 360
    add-int/lit8 v9, v9, -0x3

    .line 361
    .line 362
    add-int/lit8 v5, v5, 0x3

    .line 363
    .line 364
    const/4 v11, 0x0

    .line 365
    invoke-direct {v4, v9, v5, v11}, Lc6/a;-><init>(III)V

    .line 366
    .line 367
    .line 368
    new-instance v5, Lc6/a;

    .line 369
    .line 370
    iget v9, v3, Lc6/a;->b:I

    .line 371
    .line 372
    add-int/lit8 v9, v9, -0x3

    .line 373
    .line 374
    iget v11, v3, Lc6/a;->c:I

    .line 375
    .line 376
    add-int/lit8 v11, v11, -0x3

    .line 377
    .line 378
    const/4 v12, 0x0

    .line 379
    invoke-direct {v5, v9, v11, v12}, Lc6/a;-><init>(III)V

    .line 380
    .line 381
    .line 382
    new-instance v9, Lc6/a;

    .line 383
    .line 384
    iget v11, v10, Lc6/a;->b:I

    .line 385
    .line 386
    add-int/lit8 v11, v11, 0x3

    .line 387
    .line 388
    iget v12, v10, Lc6/a;->c:I

    .line 389
    .line 390
    add-int/lit8 v12, v12, -0x3

    .line 391
    .line 392
    move-object/from16 v27, v3

    .line 393
    .line 394
    const/4 v3, 0x0

    .line 395
    invoke-direct {v9, v11, v12, v3}, Lc6/a;-><init>(III)V

    .line 396
    .line 397
    .line 398
    new-instance v3, Lc6/a;

    .line 399
    .line 400
    add-int/lit8 v6, v6, 0x3

    .line 401
    .line 402
    add-int/lit8 v11, v26, 0x3

    .line 403
    .line 404
    const/4 v12, 0x0

    .line 405
    invoke-direct {v3, v6, v11, v12}, Lc6/a;-><init>(III)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v3, v4}, Lc6/b;->c(Lc6/a;Lc6/a;)I

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    if-nez v6, :cond_19e

    .line 413
    .line 414
    goto :goto_1d1

    .line 415
    :cond_19e
    invoke-virtual {v0, v4, v5}, Lc6/b;->c(Lc6/a;Lc6/a;)I

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    if-eq v4, v6, :cond_1a5

    .line 420
    .line 421
    goto :goto_1d1

    .line 422
    :cond_1a5
    invoke-virtual {v0, v5, v9}, Lc6/b;->c(Lc6/a;Lc6/a;)I

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    if-eq v4, v6, :cond_1ac

    .line 427
    .line 428
    goto :goto_1d1

    .line 429
    :cond_1ac
    invoke-virtual {v0, v9, v3}, Lc6/b;->c(Lc6/a;Lc6/a;)I

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    if-ne v3, v6, :cond_1d1

    .line 434
    .line 435
    goto :goto_1b5

    .line 436
    :cond_1b3
    move-object/from16 v27, v3

    .line 437
    .line 438
    :goto_1b5
    xor-int/lit8 v12, v25, 0x1

    .line 439
    .line 440
    iget v2, v0, Lc6/b;->e:I

    .line 441
    .line 442
    add-int/lit8 v2, v2, 0x1

    .line 443
    .line 444
    iput v2, v0, Lc6/b;->e:I

    .line 445
    .line 446
    move-object v8, v10

    .line 447
    move/from16 v7, v17

    .line 448
    .line 449
    move/from16 v9, v18

    .line 450
    .line 451
    move-object/from16 v10, v21

    .line 452
    .line 453
    move/from16 v6, v23

    .line 454
    .line 455
    move-object/from16 v11, v24

    .line 456
    .line 457
    move-object/from16 v2, v27

    .line 458
    .line 459
    const/4 v3, 0x2

    .line 460
    const/4 v4, -0x1

    .line 461
    const/4 v5, 0x7

    .line 462
    goto/16 :goto_10a

    .line 463
    .line 464
    :cond_1cf
    move/from16 v23, v6

    .line 465
    .line 466
    :cond_1d1
    :goto_1d1
    iget v3, v0, Lc6/b;->e:I

    .line 467
    .line 468
    const/4 v4, 0x5

    .line 469
    if-eq v3, v4, :cond_1dd

    .line 470
    .line 471
    const/4 v5, 0x7

    .line 472
    if-ne v3, v5, :cond_1da

    .line 473
    .line 474
    goto :goto_1dd

    .line 475
    :cond_1da
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 476
    .line 477
    throw v1

    .line 478
    :cond_1dd
    :goto_1dd
    if-ne v3, v4, :cond_1e2

    .line 479
    .line 480
    move/from16 v4, v23

    .line 481
    .line 482
    goto :goto_1e4

    .line 483
    :cond_1e2
    move/from16 v4, v17

    .line 484
    .line 485
    :goto_1e4
    iput-boolean v4, v0, Lc6/b;->b:Z

    .line 486
    .line 487
    new-instance v4, Lz5/o;

    .line 488
    .line 489
    int-to-float v5, v7

    .line 490
    const/high16 v6, 0x3f000000    # 0.5f

    .line 491
    .line 492
    add-float/2addr v5, v6

    .line 493
    int-to-float v7, v15

    .line 494
    sub-float/2addr v7, v6

    .line 495
    invoke-direct {v4, v5, v7}, Lz5/o;-><init>(FF)V

    .line 496
    .line 497
    .line 498
    new-instance v5, Lz5/o;

    .line 499
    .line 500
    iget v7, v2, Lc6/a;->b:I

    .line 501
    .line 502
    int-to-float v7, v7

    .line 503
    add-float/2addr v7, v6

    .line 504
    iget v2, v2, Lc6/a;->c:I

    .line 505
    .line 506
    int-to-float v2, v2

    .line 507
    add-float/2addr v2, v6

    .line 508
    invoke-direct {v5, v7, v2}, Lz5/o;-><init>(FF)V

    .line 509
    .line 510
    .line 511
    new-instance v2, Lz5/o;

    .line 512
    .line 513
    iget v7, v8, Lc6/a;->b:I

    .line 514
    .line 515
    int-to-float v7, v7

    .line 516
    sub-float/2addr v7, v6

    .line 517
    iget v8, v8, Lc6/a;->c:I

    .line 518
    .line 519
    int-to-float v8, v8

    .line 520
    add-float/2addr v8, v6

    .line 521
    invoke-direct {v2, v7, v8}, Lz5/o;-><init>(FF)V

    .line 522
    .line 523
    .line 524
    new-instance v7, Lz5/o;

    .line 525
    .line 526
    int-to-float v8, v14

    .line 527
    sub-float/2addr v8, v6

    .line 528
    int-to-float v9, v13

    .line 529
    sub-float/2addr v9, v6

    .line 530
    invoke-direct {v7, v8, v9}, Lz5/o;-><init>(FF)V

    .line 531
    .line 532
    .line 533
    filled-new-array {v4, v5, v2, v7}, [Lz5/o;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    const/16 v20, 0x2

    .line 538
    .line 539
    mul-int/lit8 v3, v3, 0x2

    .line 540
    .line 541
    add-int/lit8 v4, v3, -0x3

    .line 542
    .line 543
    invoke-static {v2, v4, v3}, Lc6/b;->b([Lz5/o;II)[Lz5/o;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    if-eqz p1, :cond_22c

    .line 548
    .line 549
    aget-object v3, v2, v17

    .line 550
    .line 551
    aget-object v4, v2, v20

    .line 552
    .line 553
    aput-object v4, v2, v17

    .line 554
    .line 555
    aput-object v3, v2, v20

    .line 556
    .line 557
    :cond_22c
    aget-object v3, v2, v17

    .line 558
    .line 559
    invoke-virtual {v0, v3}, Lc6/b;->g(Lz5/o;)Z

    .line 560
    .line 561
    .line 562
    move-result v3

    .line 563
    if-eqz v3, :cond_3a5

    .line 564
    .line 565
    aget-object v3, v2, v23

    .line 566
    .line 567
    invoke-virtual {v0, v3}, Lc6/b;->g(Lz5/o;)Z

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    if-eqz v3, :cond_3a5

    .line 572
    .line 573
    aget-object v3, v2, v20

    .line 574
    .line 575
    invoke-virtual {v0, v3}, Lc6/b;->g(Lz5/o;)Z

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    if-eqz v3, :cond_3a5

    .line 580
    .line 581
    aget-object v3, v2, v16

    .line 582
    .line 583
    invoke-virtual {v0, v3}, Lc6/b;->g(Lz5/o;)Z

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    if-eqz v3, :cond_3a5

    .line 588
    .line 589
    iget v3, v0, Lc6/b;->e:I

    .line 590
    .line 591
    mul-int/lit8 v3, v3, 0x2

    .line 592
    .line 593
    aget-object v4, v2, v17

    .line 594
    .line 595
    aget-object v5, v2, v23

    .line 596
    .line 597
    invoke-virtual {v0, v4, v5, v3}, Lc6/b;->h(Lz5/o;Lz5/o;I)I

    .line 598
    .line 599
    .line 600
    move-result v4

    .line 601
    aget-object v5, v2, v23

    .line 602
    .line 603
    aget-object v6, v2, v20

    .line 604
    .line 605
    invoke-virtual {v0, v5, v6, v3}, Lc6/b;->h(Lz5/o;Lz5/o;I)I

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    aget-object v6, v2, v20

    .line 610
    .line 611
    aget-object v7, v2, v16

    .line 612
    .line 613
    invoke-virtual {v0, v6, v7, v3}, Lc6/b;->h(Lz5/o;Lz5/o;I)I

    .line 614
    .line 615
    .line 616
    move-result v6

    .line 617
    aget-object v7, v2, v16

    .line 618
    .line 619
    aget-object v8, v2, v17

    .line 620
    .line 621
    invoke-virtual {v0, v7, v8, v3}, Lc6/b;->h(Lz5/o;Lz5/o;I)I

    .line 622
    .line 623
    .line 624
    move-result v7

    .line 625
    filled-new-array {v4, v5, v6, v7}, [I

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    move/from16 v5, v17

    .line 630
    .line 631
    move v6, v5

    .line 632
    :goto_277
    const/4 v12, 0x4

    .line 633
    if-ge v5, v12, :cond_28d

    .line 634
    .line 635
    aget v7, v4, v5

    .line 636
    .line 637
    add-int/lit8 v8, v3, -0x2

    .line 638
    .line 639
    shr-int v8, v7, v8

    .line 640
    .line 641
    shl-int/lit8 v8, v8, 0x1

    .line 642
    .line 643
    and-int/lit8 v7, v7, 0x1

    .line 644
    .line 645
    add-int/2addr v8, v7

    .line 646
    shl-int/lit8 v6, v6, 0x3

    .line 647
    .line 648
    add-int/2addr v6, v8

    .line 649
    add-int/lit8 v5, v5, 0x1

    .line 650
    .line 651
    const/16 v20, 0x2

    .line 652
    .line 653
    goto :goto_277

    .line 654
    :cond_28d
    and-int/lit8 v3, v6, 0x1

    .line 655
    .line 656
    shl-int/lit8 v3, v3, 0xb

    .line 657
    .line 658
    shr-int/lit8 v5, v6, 0x1

    .line 659
    .line 660
    add-int/2addr v3, v5

    .line 661
    move/from16 v5, v17

    .line 662
    .line 663
    :goto_296
    if-ge v5, v12, :cond_3a2

    .line 664
    .line 665
    sget-object v6, Lc6/b;->g:[I

    .line 666
    .line 667
    aget v6, v6, v5

    .line 668
    .line 669
    xor-int/2addr v6, v3

    .line 670
    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    .line 671
    .line 672
    .line 673
    move-result v6

    .line 674
    const/4 v7, 0x2

    .line 675
    if-gt v6, v7, :cond_39a

    .line 676
    .line 677
    iput v5, v0, Lc6/b;->f:I

    .line 678
    .line 679
    const-wide/16 v5, 0x0

    .line 680
    .line 681
    move/from16 v3, v17

    .line 682
    .line 683
    :goto_2aa
    const/16 v7, 0xa

    .line 684
    .line 685
    if-ge v3, v12, :cond_2d3

    .line 686
    .line 687
    iget v8, v0, Lc6/b;->f:I

    .line 688
    .line 689
    add-int/2addr v8, v3

    .line 690
    rem-int/2addr v8, v12

    .line 691
    aget v8, v4, v8

    .line 692
    .line 693
    iget-boolean v9, v0, Lc6/b;->b:Z

    .line 694
    .line 695
    if-eqz v9, :cond_2c3

    .line 696
    .line 697
    const/16 v19, 0x7

    .line 698
    .line 699
    shl-long v5, v5, v19

    .line 700
    .line 701
    shr-int/lit8 v7, v8, 0x1

    .line 702
    .line 703
    and-int/lit8 v7, v7, 0x7f

    .line 704
    .line 705
    :goto_2c0
    int-to-long v7, v7

    .line 706
    add-long/2addr v5, v7

    .line 707
    goto :goto_2d0

    .line 708
    :cond_2c3
    const/16 v19, 0x7

    .line 709
    .line 710
    shl-long/2addr v5, v7

    .line 711
    shr-int/lit8 v7, v8, 0x2

    .line 712
    .line 713
    and-int/lit16 v7, v7, 0x3e0

    .line 714
    .line 715
    shr-int/lit8 v8, v8, 0x1

    .line 716
    .line 717
    and-int/lit8 v8, v8, 0x1f

    .line 718
    .line 719
    add-int/2addr v7, v8

    .line 720
    goto :goto_2c0

    .line 721
    :goto_2d0
    add-int/lit8 v3, v3, 0x1

    .line 722
    .line 723
    goto :goto_2aa

    .line 724
    :cond_2d3
    const/16 v19, 0x7

    .line 725
    .line 726
    iget-boolean v3, v0, Lc6/b;->b:Z

    .line 727
    .line 728
    if-eqz v3, :cond_2dd

    .line 729
    .line 730
    move/from16 v7, v19

    .line 731
    .line 732
    const/4 v3, 0x2

    .line 733
    goto :goto_2de

    .line 734
    :cond_2dd
    move v3, v12

    .line 735
    :goto_2de
    sub-int v4, v7, v3

    .line 736
    .line 737
    new-array v8, v7, [I

    .line 738
    .line 739
    add-int/lit8 v7, v7, -0x1

    .line 740
    .line 741
    :goto_2e4
    if-ltz v7, :cond_2ef

    .line 742
    .line 743
    long-to-int v9, v5

    .line 744
    and-int/lit8 v9, v9, 0xf

    .line 745
    .line 746
    aput v9, v8, v7

    .line 747
    .line 748
    shr-long/2addr v5, v12

    .line 749
    add-int/lit8 v7, v7, -0x1

    .line 750
    .line 751
    goto :goto_2e4

    .line 752
    :cond_2ef
    :try_start_2ef
    new-instance v5, Lr5/c;

    .line 753
    .line 754
    sget-object v6, Lh6/a;->k:Lh6/a;

    .line 755
    .line 756
    const/16 v7, 0x13

    .line 757
    .line 758
    invoke-direct {v5, v7, v6}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v5, v8, v4}, Lr5/c;->f([II)V
    :try_end_2fb
    .catch Lh6/c; {:try_start_2ef .. :try_end_2fb} :catch_397

    .line 762
    .line 763
    .line 764
    move/from16 v4, v17

    .line 765
    .line 766
    move v7, v4

    .line 767
    :goto_2fe
    if-ge v7, v3, :cond_308

    .line 768
    .line 769
    shl-int/lit8 v4, v4, 0x4

    .line 770
    .line 771
    aget v5, v8, v7

    .line 772
    .line 773
    add-int/2addr v4, v5

    .line 774
    add-int/lit8 v7, v7, 0x1

    .line 775
    .line 776
    goto :goto_2fe

    .line 777
    :cond_308
    iget-boolean v3, v0, Lc6/b;->b:Z

    .line 778
    .line 779
    if-eqz v3, :cond_319

    .line 780
    .line 781
    shr-int/lit8 v3, v4, 0x6

    .line 782
    .line 783
    add-int/lit8 v3, v3, 0x1

    .line 784
    .line 785
    iput v3, v0, Lc6/b;->c:I

    .line 786
    .line 787
    and-int/lit8 v3, v4, 0x3f

    .line 788
    .line 789
    add-int/lit8 v3, v3, 0x1

    .line 790
    .line 791
    iput v3, v0, Lc6/b;->d:I

    .line 792
    .line 793
    goto :goto_325

    .line 794
    :cond_319
    shr-int/lit8 v3, v4, 0xb

    .line 795
    .line 796
    add-int/lit8 v3, v3, 0x1

    .line 797
    .line 798
    iput v3, v0, Lc6/b;->c:I

    .line 799
    .line 800
    and-int/lit16 v3, v4, 0x7ff

    .line 801
    .line 802
    add-int/lit8 v3, v3, 0x1

    .line 803
    .line 804
    iput v3, v0, Lc6/b;->d:I

    .line 805
    .line 806
    :goto_325
    iget v3, v0, Lc6/b;->f:I

    .line 807
    .line 808
    rem-int/lit8 v4, v3, 0x4

    .line 809
    .line 810
    aget-object v4, v2, v4

    .line 811
    .line 812
    add-int/lit8 v5, v3, 0x1

    .line 813
    .line 814
    rem-int/2addr v5, v12

    .line 815
    aget-object v5, v2, v5

    .line 816
    .line 817
    add-int/lit8 v6, v3, 0x2

    .line 818
    .line 819
    rem-int/2addr v6, v12

    .line 820
    aget-object v6, v2, v6

    .line 821
    .line 822
    add-int/lit8 v3, v3, 0x3

    .line 823
    .line 824
    rem-int/2addr v3, v12

    .line 825
    aget-object v3, v2, v3

    .line 826
    .line 827
    invoke-virtual {v0}, Lc6/b;->d()I

    .line 828
    .line 829
    .line 830
    move-result v7

    .line 831
    int-to-float v8, v7

    .line 832
    const/high16 v9, 0x40000000    # 2.0f

    .line 833
    .line 834
    div-float/2addr v8, v9

    .line 835
    iget v9, v0, Lc6/b;->e:I

    .line 836
    .line 837
    int-to-float v9, v9

    .line 838
    sub-float v21, v8, v9

    .line 839
    .line 840
    add-float v23, v8, v9

    .line 841
    .line 842
    iget v8, v4, Lz5/o;->a:F

    .line 843
    .line 844
    iget v4, v4, Lz5/o;->b:F

    .line 845
    .line 846
    iget v9, v5, Lz5/o;->a:F

    .line 847
    .line 848
    iget v5, v5, Lz5/o;->b:F

    .line 849
    .line 850
    iget v10, v6, Lz5/o;->a:F

    .line 851
    .line 852
    iget v6, v6, Lz5/o;->b:F

    .line 853
    .line 854
    iget v11, v3, Lz5/o;->a:F

    .line 855
    .line 856
    iget v3, v3, Lz5/o;->b:F

    .line 857
    .line 858
    move/from16 v22, v21

    .line 859
    .line 860
    move/from16 v24, v21

    .line 861
    .line 862
    move/from16 v25, v23

    .line 863
    .line 864
    move/from16 v26, v23

    .line 865
    .line 866
    move/from16 v27, v21

    .line 867
    .line 868
    move/from16 v28, v23

    .line 869
    .line 870
    move/from16 v36, v3

    .line 871
    .line 872
    move/from16 v30, v4

    .line 873
    .line 874
    move/from16 v32, v5

    .line 875
    .line 876
    move/from16 v34, v6

    .line 877
    .line 878
    move/from16 v29, v8

    .line 879
    .line 880
    move/from16 v31, v9

    .line 881
    .line 882
    move/from16 v33, v10

    .line 883
    .line 884
    move/from16 v35, v11

    .line 885
    .line 886
    invoke-static/range {v21 .. v36}, Lf6/f;->a(FFFFFFFFFFFFFFFF)Lf6/f;

    .line 887
    .line 888
    .line 889
    move-result-object v3

    .line 890
    invoke-static {v1, v7, v7, v3}, Ly5/k;->q(Lf6/b;IILf6/f;)Lf6/b;

    .line 891
    .line 892
    .line 893
    move-result-object v9

    .line 894
    iget v1, v0, Lc6/b;->e:I

    .line 895
    .line 896
    const/16 v20, 0x2

    .line 897
    .line 898
    mul-int/lit8 v1, v1, 0x2

    .line 899
    .line 900
    invoke-virtual {v0}, Lc6/b;->d()I

    .line 901
    .line 902
    .line 903
    move-result v3

    .line 904
    invoke-static {v2, v1, v3}, Lc6/b;->b([Lz5/o;II)[Lz5/o;

    .line 905
    .line 906
    .line 907
    move-result-object v10

    .line 908
    new-instance v8, La6/a;

    .line 909
    .line 910
    iget-boolean v11, v0, Lc6/b;->b:Z

    .line 911
    .line 912
    iget v12, v0, Lc6/b;->d:I

    .line 913
    .line 914
    iget v13, v0, Lc6/b;->c:I

    .line 915
    .line 916
    invoke-direct/range {v8 .. v13}, La6/a;-><init>(Lf6/b;[Lz5/o;ZII)V

    .line 917
    .line 918
    .line 919
    return-object v8

    .line 920
    :catch_397
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 921
    .line 922
    throw v1

    .line 923
    :cond_39a
    move/from16 v20, v7

    .line 924
    .line 925
    const/16 v19, 0x7

    .line 926
    .line 927
    add-int/lit8 v5, v5, 0x1

    .line 928
    .line 929
    goto/16 :goto_296

    .line 930
    .line 931
    :cond_3a2
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 932
    .line 933
    throw v1

    .line 934
    :cond_3a5
    sget-object v1, Lz5/i;->d:Lz5/i;

    .line 935
    .line 936
    throw v1
.end method

.method public final c(Lc6/a;Lc6/a;)I
    .registers 14

    .line 1
    iget v0, p1, Lc6/a;->b:I

    .line 2
    .line 3
    iget p1, p1, Lc6/a;->c:I

    .line 4
    .line 5
    iget v1, p2, Lc6/a;->b:I

    .line 6
    .line 7
    iget p2, p2, Lc6/a;->c:I

    .line 8
    .line 9
    invoke-static {v0, p1, v1, p2}, La/a;->h(IIII)F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v1, v0

    .line 14
    int-to-float v1, v1

    .line 15
    div-float/2addr v1, v2

    .line 16
    sub-int/2addr p2, p1

    .line 17
    int-to-float p2, p2

    .line 18
    div-float/2addr p2, v2

    .line 19
    int-to-float v3, v0

    .line 20
    int-to-float v4, p1

    .line 21
    iget-object v5, p0, Lc6/b;->a:Lf6/b;

    .line 22
    .line 23
    invoke-virtual {v5, v0, p1}, Lf6/b;->b(II)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    float-to-double v6, v2

    .line 28
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    double-to-int v0, v6

    .line 33
    const/4 v6, 0x0

    .line 34
    move v7, v6

    .line 35
    move v8, v7

    .line 36
    :goto_23
    if-ge v7, v0, :cond_3a

    .line 37
    .line 38
    add-float/2addr v3, v1

    .line 39
    add-float/2addr v4, p2

    .line 40
    invoke-static {v3}, La/a;->u(F)I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    invoke-static {v4}, La/a;->u(F)I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    invoke-virtual {v5, v9, v10}, Lf6/b;->b(II)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-eq v9, p1, :cond_37

    .line 53
    .line 54
    add-int/lit8 v8, v8, 0x1

    .line 55
    .line 56
    :cond_37
    add-int/lit8 v7, v7, 0x1

    .line 57
    .line 58
    goto :goto_23

    .line 59
    :cond_3a
    int-to-float p2, v8

    .line 60
    div-float/2addr p2, v2

    .line 61
    const v0, 0x3dcccccd    # 0.1f

    .line 62
    .line 63
    .line 64
    cmpl-float v1, p2, v0

    .line 65
    .line 66
    if-lez v1, :cond_4b

    .line 67
    .line 68
    const v1, 0x3f666666    # 0.9f

    .line 69
    .line 70
    .line 71
    cmpg-float v1, p2, v1

    .line 72
    .line 73
    if-gez v1, :cond_4b

    .line 74
    .line 75
    return v6

    .line 76
    :cond_4b
    cmpg-float p2, p2, v0

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    if-gtz p2, :cond_51

    .line 80
    .line 81
    move v6, v0

    .line 82
    :cond_51
    if-ne v6, p1, :cond_54

    .line 83
    .line 84
    return v0

    .line 85
    :cond_54
    const/4 p1, -0x1

    .line 86
    return p1
.end method

.method public final d()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lc6/b;->b:Z

    .line 2
    .line 3
    iget v1, p0, Lc6/b;->c:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-eqz v0, :cond_b

    .line 7
    .line 8
    mul-int/2addr v1, v2

    .line 9
    add-int/lit8 v1, v1, 0xb

    .line 10
    .line 11
    return v1

    .line 12
    :cond_b
    if-gt v1, v2, :cond_11

    .line 13
    .line 14
    mul-int/2addr v1, v2

    .line 15
    add-int/lit8 v1, v1, 0xf

    .line 16
    .line 17
    return v1

    .line 18
    :cond_11
    mul-int/lit8 v0, v1, 0x4

    .line 19
    .line 20
    sub-int/2addr v1, v2

    .line 21
    div-int/lit8 v1, v1, 0x8

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    mul-int/lit8 v1, v1, 0x2

    .line 26
    .line 27
    add-int/2addr v1, v0

    .line 28
    add-int/lit8 v1, v1, 0xf

    .line 29
    .line 30
    return v1
.end method

.method public final e(Lc6/a;ZII)Lc6/a;
    .registers 8

    .line 1
    iget v0, p1, Lc6/a;->b:I

    .line 2
    .line 3
    add-int/2addr v0, p3

    .line 4
    iget p1, p1, Lc6/a;->c:I

    .line 5
    .line 6
    :goto_5
    add-int/2addr p1, p4

    .line 7
    invoke-virtual {p0, v0, p1}, Lc6/b;->f(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lc6/b;->a:Lf6/b;

    .line 12
    .line 13
    if-eqz v1, :cond_16

    .line 14
    .line 15
    invoke-virtual {v2, v0, p1}, Lf6/b;->b(II)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v1, p2, :cond_16

    .line 20
    .line 21
    add-int/2addr v0, p3

    .line 22
    goto :goto_5

    .line 23
    :cond_16
    sub-int/2addr v0, p3

    .line 24
    sub-int/2addr p1, p4

    .line 25
    :goto_18
    invoke-virtual {p0, v0, p1}, Lc6/b;->f(II)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_26

    .line 30
    .line 31
    invoke-virtual {v2, v0, p1}, Lf6/b;->b(II)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v1, p2, :cond_26

    .line 36
    .line 37
    add-int/2addr v0, p3

    .line 38
    goto :goto_18

    .line 39
    :cond_26
    sub-int/2addr v0, p3

    .line 40
    :goto_27
    invoke-virtual {p0, v0, p1}, Lc6/b;->f(II)Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_35

    .line 45
    .line 46
    invoke-virtual {v2, v0, p1}, Lf6/b;->b(II)Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-ne p3, p2, :cond_35

    .line 51
    .line 52
    add-int/2addr p1, p4

    .line 53
    goto :goto_27

    .line 54
    :cond_35
    sub-int/2addr p1, p4

    .line 55
    new-instance p2, Lc6/a;

    .line 56
    .line 57
    const/4 p3, 0x0

    .line 58
    invoke-direct {p2, v0, p1, p3}, Lc6/a;-><init>(III)V

    .line 59
    .line 60
    .line 61
    return-object p2
.end method

.method public final f(II)Z
    .registers 5

    .line 1
    if-ltz p1, :cond_10

    .line 2
    .line 3
    iget-object v0, p0, Lc6/b;->a:Lf6/b;

    .line 4
    .line 5
    iget v1, v0, Lf6/b;->b:I

    .line 6
    .line 7
    if-ge p1, v1, :cond_10

    .line 8
    .line 9
    if-lez p2, :cond_10

    .line 10
    .line 11
    iget p1, v0, Lf6/b;->c:I

    .line 12
    .line 13
    if-ge p2, p1, :cond_10

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final g(Lz5/o;)Z
    .registers 3

    .line 1
    iget v0, p1, Lz5/o;->a:F

    .line 2
    .line 3
    invoke-static {v0}, La/a;->u(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget p1, p1, Lz5/o;->b:F

    .line 8
    .line 9
    invoke-static {p1}, La/a;->u(F)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, v0, p1}, Lc6/b;->f(II)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final h(Lz5/o;Lz5/o;I)I
    .registers 11

    .line 1
    iget v0, p1, Lz5/o;->a:F

    .line 2
    .line 3
    iget v1, p1, Lz5/o;->b:F

    .line 4
    .line 5
    iget v2, p2, Lz5/o;->a:F

    .line 6
    .line 7
    iget v3, p2, Lz5/o;->b:F

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, La/a;->g(FFFF)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v2, p3

    .line 14
    div-float v2, v0, v2

    .line 15
    .line 16
    iget p1, p1, Lz5/o;->a:F

    .line 17
    .line 18
    iget p2, p2, Lz5/o;->a:F

    .line 19
    .line 20
    sub-float/2addr p2, p1

    .line 21
    mul-float/2addr p2, v2

    .line 22
    div-float/2addr p2, v0

    .line 23
    sub-float/2addr v3, v1

    .line 24
    mul-float/2addr v3, v2

    .line 25
    div-float/2addr v3, v0

    .line 26
    const/4 v0, 0x0

    .line 27
    move v2, v0

    .line 28
    :goto_1b
    if-ge v0, p3, :cond_3d

    .line 29
    .line 30
    int-to-float v4, v0

    .line 31
    mul-float v5, v4, p2

    .line 32
    .line 33
    add-float/2addr v5, p1

    .line 34
    invoke-static {v5}, La/a;->u(F)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    mul-float/2addr v4, v3

    .line 39
    add-float/2addr v4, v1

    .line 40
    invoke-static {v4}, La/a;->u(F)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iget-object v6, p0, Lc6/b;->a:Lf6/b;

    .line 45
    .line 46
    invoke-virtual {v6, v5, v4}, Lf6/b;->b(II)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_3a

    .line 51
    .line 52
    sub-int v4, p3, v0

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    sub-int/2addr v4, v5

    .line 56
    shl-int v4, v5, v4

    .line 57
    .line 58
    or-int/2addr v2, v4

    .line 59
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_1b

    .line 62
    :cond_3d
    return v2
.end method
