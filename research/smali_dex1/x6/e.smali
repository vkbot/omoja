.class public final Lx6/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final f:Lx6/d;


# instance fields
.field public final a:Lf6/b;

.field public final b:Ljava/util/ArrayList;

.field public c:Z

.field public final d:[I

.field public final e:Lz5/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lx6/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx6/e;->f:Lx6/d;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lf6/b;Lz5/p;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx6/e;->a:Lf6/b;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lx6/e;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 p1, 0x5

    .line 14
    new-array p1, p1, [I

    .line 15
    .line 16
    iput-object p1, p0, Lx6/e;->d:[I

    .line 17
    .line 18
    iput-object p2, p0, Lx6/e;->e:Lz5/p;

    .line 19
    .line 20
    return-void
.end method

.method public static a([II)F
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    aget v0, p0, v0

    .line 3
    .line 4
    sub-int/2addr p1, v0

    .line 5
    const/4 v0, 0x3

    .line 6
    aget v0, p0, v0

    .line 7
    .line 8
    sub-int/2addr p1, v0

    .line 9
    int-to-float p1, p1

    .line 10
    const/4 v0, 0x2

    .line 11
    aget p0, p0, v0

    .line 12
    .line 13
    int-to-float p0, p0

    .line 14
    const/high16 v0, 0x40000000    # 2.0f

    .line 15
    .line 16
    div-float/2addr p0, v0

    .line 17
    sub-float/2addr p1, p0

    .line 18
    return p1
.end method

.method public static b([I)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    const/4 v3, 0x5

    .line 5
    if-ge v1, v3, :cond_f

    .line 6
    .line 7
    aget v3, p0, v1

    .line 8
    .line 9
    if-nez v3, :cond_b

    .line 10
    .line 11
    goto :goto_64

    .line 12
    :cond_b
    add-int/2addr v2, v3

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_f
    const/4 v1, 0x7

    .line 17
    if-ge v2, v1, :cond_13

    .line 18
    .line 19
    goto :goto_64

    .line 20
    :cond_13
    int-to-float v1, v2

    .line 21
    const/high16 v2, 0x40e00000    # 7.0f

    .line 22
    .line 23
    div-float/2addr v1, v2

    .line 24
    const/high16 v2, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float v2, v1, v2

    .line 27
    .line 28
    aget v3, p0, v0

    .line 29
    .line 30
    int-to-float v3, v3

    .line 31
    sub-float v3, v1, v3

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    cmpg-float v3, v3, v2

    .line 38
    .line 39
    if-gez v3, :cond_64

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    aget v4, p0, v3

    .line 43
    .line 44
    int-to-float v4, v4

    .line 45
    sub-float v4, v1, v4

    .line 46
    .line 47
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    cmpg-float v4, v4, v2

    .line 52
    .line 53
    if-gez v4, :cond_64

    .line 54
    .line 55
    const/high16 v4, 0x40400000    # 3.0f

    .line 56
    .line 57
    mul-float v5, v1, v4

    .line 58
    .line 59
    const/4 v6, 0x2

    .line 60
    aget v6, p0, v6

    .line 61
    .line 62
    int-to-float v6, v6

    .line 63
    sub-float/2addr v5, v6

    .line 64
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    mul-float/2addr v4, v2

    .line 69
    cmpg-float v4, v5, v4

    .line 70
    .line 71
    if-gez v4, :cond_64

    .line 72
    .line 73
    const/4 v4, 0x3

    .line 74
    aget v4, p0, v4

    .line 75
    .line 76
    int-to-float v4, v4

    .line 77
    sub-float v4, v1, v4

    .line 78
    .line 79
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    cmpg-float v4, v4, v2

    .line 84
    .line 85
    if-gez v4, :cond_64

    .line 86
    .line 87
    const/4 v4, 0x4

    .line 88
    aget p0, p0, v4

    .line 89
    .line 90
    int-to-float p0, p0

    .line 91
    sub-float/2addr v1, p0

    .line 92
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    cmpg-float p0, p0, v2

    .line 97
    .line 98
    if-gez p0, :cond_64

    .line 99
    .line 100
    return v3

    .line 101
    :cond_64
    :goto_64
    return v0
.end method

.method public static e(Lx6/c;Lx6/c;)D
    .registers 4

    .line 1
    iget v0, p0, Lz5/o;->a:F

    .line 2
    .line 3
    iget v1, p1, Lz5/o;->a:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    float-to-double v0, v0

    .line 7
    iget p0, p0, Lz5/o;->b:F

    .line 8
    .line 9
    iget p1, p1, Lz5/o;->b:F

    .line 10
    .line 11
    sub-float/2addr p0, p1

    .line 12
    float-to-double p0, p0

    .line 13
    mul-double/2addr v0, v0

    .line 14
    mul-double/2addr p0, p0

    .line 15
    add-double/2addr p0, v0

    .line 16
    return-wide p0
.end method


# virtual methods
.method public final c(II[I)Z
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v3, v1, v2

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    aget v5, v1, v4

    .line 10
    .line 11
    add-int/2addr v3, v5

    .line 12
    const/4 v5, 0x2

    .line 13
    aget v6, v1, v5

    .line 14
    .line 15
    add-int/2addr v3, v6

    .line 16
    const/4 v6, 0x3

    .line 17
    aget v7, v1, v6

    .line 18
    .line 19
    add-int/2addr v3, v7

    .line 20
    const/4 v7, 0x4

    .line 21
    aget v8, v1, v7

    .line 22
    .line 23
    add-int/2addr v3, v8

    .line 24
    move/from16 v8, p2

    .line 25
    .line 26
    invoke-static {v1, v8}, Lx6/e;->a([II)F

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    float-to-int v8, v8

    .line 31
    aget v9, v1, v5

    .line 32
    .line 33
    iget-object v10, v0, Lx6/e;->a:Lf6/b;

    .line 34
    .line 35
    iget v11, v10, Lf6/b;->c:I

    .line 36
    .line 37
    iget v12, v10, Lf6/b;->b:I

    .line 38
    .line 39
    iget-object v13, v0, Lx6/e;->d:[I

    .line 40
    .line 41
    invoke-static {v13, v2}, Ljava/util/Arrays;->fill([II)V

    .line 42
    .line 43
    .line 44
    move/from16 v14, p1

    .line 45
    .line 46
    :goto_2d
    if-ltz v14, :cond_3d

    .line 47
    .line 48
    invoke-virtual {v10, v8, v14}, Lf6/b;->b(II)Z

    .line 49
    .line 50
    .line 51
    move-result v15

    .line 52
    if-eqz v15, :cond_3d

    .line 53
    .line 54
    aget v15, v13, v5

    .line 55
    .line 56
    add-int/2addr v15, v4

    .line 57
    aput v15, v13, v5

    .line 58
    .line 59
    add-int/lit8 v14, v14, -0x1

    .line 60
    .line 61
    goto :goto_2d

    .line 62
    :cond_3d
    const/4 v15, 0x5

    .line 63
    const/high16 v16, 0x7fc00000    # Float.NaN

    .line 64
    .line 65
    if-gez v14, :cond_48

    .line 66
    .line 67
    move/from16 v17, v5

    .line 68
    .line 69
    :cond_44
    :goto_44
    move/from16 v5, v16

    .line 70
    .line 71
    goto/16 :goto_e8

    .line 72
    .line 73
    :cond_48
    :goto_48
    if-ltz v14, :cond_5f

    .line 74
    .line 75
    invoke-virtual {v10, v8, v14}, Lf6/b;->b(II)Z

    .line 76
    .line 77
    .line 78
    move-result v17

    .line 79
    if-nez v17, :cond_5f

    .line 80
    .line 81
    move/from16 v17, v5

    .line 82
    .line 83
    aget v5, v13, v4

    .line 84
    .line 85
    if-gt v5, v9, :cond_61

    .line 86
    .line 87
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    aput v5, v13, v4

    .line 90
    .line 91
    add-int/lit8 v14, v14, -0x1

    .line 92
    .line 93
    move/from16 v5, v17

    .line 94
    .line 95
    goto :goto_48

    .line 96
    :cond_5f
    move/from16 v17, v5

    .line 97
    .line 98
    :cond_61
    if-ltz v14, :cond_44

    .line 99
    .line 100
    aget v5, v13, v4

    .line 101
    .line 102
    if-le v5, v9, :cond_68

    .line 103
    .line 104
    goto :goto_44

    .line 105
    :cond_68
    :goto_68
    if-ltz v14, :cond_7b

    .line 106
    .line 107
    invoke-virtual {v10, v8, v14}, Lf6/b;->b(II)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_7b

    .line 112
    .line 113
    aget v5, v13, v2

    .line 114
    .line 115
    if-gt v5, v9, :cond_7b

    .line 116
    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 118
    .line 119
    aput v5, v13, v2

    .line 120
    .line 121
    add-int/lit8 v14, v14, -0x1

    .line 122
    .line 123
    goto :goto_68

    .line 124
    :cond_7b
    aget v5, v13, v2

    .line 125
    .line 126
    if-le v5, v9, :cond_80

    .line 127
    .line 128
    :goto_7f
    goto :goto_44

    .line 129
    :cond_80
    add-int/lit8 v5, p1, 0x1

    .line 130
    .line 131
    :goto_82
    if-ge v5, v11, :cond_92

    .line 132
    .line 133
    invoke-virtual {v10, v8, v5}, Lf6/b;->b(II)Z

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    if-eqz v14, :cond_92

    .line 138
    .line 139
    aget v14, v13, v17

    .line 140
    .line 141
    add-int/2addr v14, v4

    .line 142
    aput v14, v13, v17

    .line 143
    .line 144
    add-int/lit8 v5, v5, 0x1

    .line 145
    .line 146
    goto :goto_82

    .line 147
    :cond_92
    if-ne v5, v11, :cond_95

    .line 148
    .line 149
    goto :goto_7f

    .line 150
    :cond_95
    :goto_95
    if-ge v5, v11, :cond_a8

    .line 151
    .line 152
    invoke-virtual {v10, v8, v5}, Lf6/b;->b(II)Z

    .line 153
    .line 154
    .line 155
    move-result v14

    .line 156
    if-nez v14, :cond_a8

    .line 157
    .line 158
    aget v14, v13, v6

    .line 159
    .line 160
    if-ge v14, v9, :cond_a8

    .line 161
    .line 162
    add-int/lit8 v14, v14, 0x1

    .line 163
    .line 164
    aput v14, v13, v6

    .line 165
    .line 166
    add-int/lit8 v5, v5, 0x1

    .line 167
    .line 168
    goto :goto_95

    .line 169
    :cond_a8
    if-eq v5, v11, :cond_44

    .line 170
    .line 171
    aget v14, v13, v6

    .line 172
    .line 173
    if-lt v14, v9, :cond_af

    .line 174
    .line 175
    goto :goto_44

    .line 176
    :cond_af
    :goto_af
    if-ge v5, v11, :cond_c2

    .line 177
    .line 178
    invoke-virtual {v10, v8, v5}, Lf6/b;->b(II)Z

    .line 179
    .line 180
    .line 181
    move-result v14

    .line 182
    if-eqz v14, :cond_c2

    .line 183
    .line 184
    aget v14, v13, v7

    .line 185
    .line 186
    if-ge v14, v9, :cond_c2

    .line 187
    .line 188
    add-int/lit8 v14, v14, 0x1

    .line 189
    .line 190
    aput v14, v13, v7

    .line 191
    .line 192
    add-int/lit8 v5, v5, 0x1

    .line 193
    .line 194
    goto :goto_af

    .line 195
    :cond_c2
    aget v11, v13, v7

    .line 196
    .line 197
    if-lt v11, v9, :cond_c7

    .line 198
    .line 199
    goto :goto_7f

    .line 200
    :cond_c7
    aget v9, v13, v2

    .line 201
    .line 202
    aget v14, v13, v4

    .line 203
    .line 204
    add-int/2addr v9, v14

    .line 205
    aget v14, v13, v17

    .line 206
    .line 207
    add-int/2addr v9, v14

    .line 208
    aget v14, v13, v6

    .line 209
    .line 210
    add-int/2addr v9, v14

    .line 211
    add-int/2addr v9, v11

    .line 212
    sub-int/2addr v9, v3

    .line 213
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    mul-int/2addr v9, v15

    .line 218
    mul-int/lit8 v11, v3, 0x2

    .line 219
    .line 220
    if-lt v9, v11, :cond_de

    .line 221
    .line 222
    goto :goto_7f

    .line 223
    :cond_de
    invoke-static {v13}, Lx6/e;->b([I)Z

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    if-eqz v9, :cond_44

    .line 228
    .line 229
    invoke-static {v13, v5}, Lx6/e;->a([II)F

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    :goto_e8
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    if-nez v9, :cond_329

    .line 238
    .line 239
    float-to-int v9, v5

    .line 240
    aget v1, v1, v17

    .line 241
    .line 242
    invoke-static {v13, v2}, Ljava/util/Arrays;->fill([II)V

    .line 243
    .line 244
    .line 245
    move v11, v8

    .line 246
    :goto_f5
    if-ltz v11, :cond_105

    .line 247
    .line 248
    invoke-virtual {v10, v11, v9}, Lf6/b;->b(II)Z

    .line 249
    .line 250
    .line 251
    move-result v14

    .line 252
    if-eqz v14, :cond_105

    .line 253
    .line 254
    aget v14, v13, v17

    .line 255
    .line 256
    add-int/2addr v14, v4

    .line 257
    aput v14, v13, v17

    .line 258
    .line 259
    add-int/lit8 v11, v11, -0x1

    .line 260
    .line 261
    goto :goto_f5

    .line 262
    :cond_105
    if-gez v11, :cond_10b

    .line 263
    .line 264
    :cond_107
    :goto_107
    move/from16 v1, v16

    .line 265
    .line 266
    goto/16 :goto_1a5

    .line 267
    .line 268
    :cond_10b
    :goto_10b
    if-ltz v11, :cond_11e

    .line 269
    .line 270
    invoke-virtual {v10, v11, v9}, Lf6/b;->b(II)Z

    .line 271
    .line 272
    .line 273
    move-result v14

    .line 274
    if-nez v14, :cond_11e

    .line 275
    .line 276
    aget v14, v13, v4

    .line 277
    .line 278
    if-gt v14, v1, :cond_11e

    .line 279
    .line 280
    add-int/lit8 v14, v14, 0x1

    .line 281
    .line 282
    aput v14, v13, v4

    .line 283
    .line 284
    add-int/lit8 v11, v11, -0x1

    .line 285
    .line 286
    goto :goto_10b

    .line 287
    :cond_11e
    if-ltz v11, :cond_107

    .line 288
    .line 289
    aget v14, v13, v4

    .line 290
    .line 291
    if-le v14, v1, :cond_125

    .line 292
    .line 293
    goto :goto_107

    .line 294
    :cond_125
    :goto_125
    if-ltz v11, :cond_138

    .line 295
    .line 296
    invoke-virtual {v10, v11, v9}, Lf6/b;->b(II)Z

    .line 297
    .line 298
    .line 299
    move-result v14

    .line 300
    if-eqz v14, :cond_138

    .line 301
    .line 302
    aget v14, v13, v2

    .line 303
    .line 304
    if-gt v14, v1, :cond_138

    .line 305
    .line 306
    add-int/lit8 v14, v14, 0x1

    .line 307
    .line 308
    aput v14, v13, v2

    .line 309
    .line 310
    add-int/lit8 v11, v11, -0x1

    .line 311
    .line 312
    goto :goto_125

    .line 313
    :cond_138
    aget v11, v13, v2

    .line 314
    .line 315
    if-le v11, v1, :cond_13d

    .line 316
    .line 317
    goto :goto_107

    .line 318
    :cond_13d
    add-int/2addr v8, v4

    .line 319
    :goto_13e
    if-ge v8, v12, :cond_14e

    .line 320
    .line 321
    invoke-virtual {v10, v8, v9}, Lf6/b;->b(II)Z

    .line 322
    .line 323
    .line 324
    move-result v11

    .line 325
    if-eqz v11, :cond_14e

    .line 326
    .line 327
    aget v11, v13, v17

    .line 328
    .line 329
    add-int/2addr v11, v4

    .line 330
    aput v11, v13, v17

    .line 331
    .line 332
    add-int/lit8 v8, v8, 0x1

    .line 333
    .line 334
    goto :goto_13e

    .line 335
    :cond_14e
    if-ne v8, v12, :cond_151

    .line 336
    .line 337
    goto :goto_107

    .line 338
    :cond_151
    :goto_151
    if-ge v8, v12, :cond_164

    .line 339
    .line 340
    invoke-virtual {v10, v8, v9}, Lf6/b;->b(II)Z

    .line 341
    .line 342
    .line 343
    move-result v11

    .line 344
    if-nez v11, :cond_164

    .line 345
    .line 346
    aget v11, v13, v6

    .line 347
    .line 348
    if-ge v11, v1, :cond_164

    .line 349
    .line 350
    add-int/lit8 v11, v11, 0x1

    .line 351
    .line 352
    aput v11, v13, v6

    .line 353
    .line 354
    add-int/lit8 v8, v8, 0x1

    .line 355
    .line 356
    goto :goto_151

    .line 357
    :cond_164
    if-eq v8, v12, :cond_107

    .line 358
    .line 359
    aget v11, v13, v6

    .line 360
    .line 361
    if-lt v11, v1, :cond_16b

    .line 362
    .line 363
    goto :goto_107

    .line 364
    :cond_16b
    :goto_16b
    if-ge v8, v12, :cond_17e

    .line 365
    .line 366
    invoke-virtual {v10, v8, v9}, Lf6/b;->b(II)Z

    .line 367
    .line 368
    .line 369
    move-result v11

    .line 370
    if-eqz v11, :cond_17e

    .line 371
    .line 372
    aget v11, v13, v7

    .line 373
    .line 374
    if-ge v11, v1, :cond_17e

    .line 375
    .line 376
    add-int/lit8 v11, v11, 0x1

    .line 377
    .line 378
    aput v11, v13, v7

    .line 379
    .line 380
    add-int/lit8 v8, v8, 0x1

    .line 381
    .line 382
    goto :goto_16b

    .line 383
    :cond_17e
    aget v11, v13, v7

    .line 384
    .line 385
    if-lt v11, v1, :cond_183

    .line 386
    .line 387
    goto :goto_107

    .line 388
    :cond_183
    aget v1, v13, v2

    .line 389
    .line 390
    aget v14, v13, v4

    .line 391
    .line 392
    add-int/2addr v1, v14

    .line 393
    aget v14, v13, v17

    .line 394
    .line 395
    add-int/2addr v1, v14

    .line 396
    aget v14, v13, v6

    .line 397
    .line 398
    add-int/2addr v1, v14

    .line 399
    add-int/2addr v1, v11

    .line 400
    sub-int/2addr v1, v3

    .line 401
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    mul-int/2addr v1, v15

    .line 406
    if-lt v1, v3, :cond_199

    .line 407
    .line 408
    goto/16 :goto_107

    .line 409
    .line 410
    :cond_199
    invoke-static {v13}, Lx6/e;->b([I)Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-eqz v1, :cond_107

    .line 415
    .line 416
    invoke-static {v13, v8}, Lx6/e;->a([II)F

    .line 417
    .line 418
    .line 419
    move-result v16

    .line 420
    goto/16 :goto_107

    .line 421
    .line 422
    :goto_1a5
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 423
    .line 424
    .line 425
    move-result v8

    .line 426
    if-nez v8, :cond_329

    .line 427
    .line 428
    float-to-int v8, v1

    .line 429
    invoke-static {v13, v2}, Ljava/util/Arrays;->fill([II)V

    .line 430
    .line 431
    .line 432
    move v11, v2

    .line 433
    :goto_1b0
    if-lt v9, v11, :cond_1ca

    .line 434
    .line 435
    if-lt v8, v11, :cond_1ca

    .line 436
    .line 437
    sub-int v14, v8, v11

    .line 438
    .line 439
    move/from16 v16, v2

    .line 440
    .line 441
    sub-int v2, v9, v11

    .line 442
    .line 443
    invoke-virtual {v10, v14, v2}, Lf6/b;->b(II)Z

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    if-eqz v2, :cond_1cc

    .line 448
    .line 449
    aget v2, v13, v17

    .line 450
    .line 451
    add-int/2addr v2, v4

    .line 452
    aput v2, v13, v17

    .line 453
    .line 454
    add-int/lit8 v11, v11, 0x1

    .line 455
    .line 456
    move/from16 v2, v16

    .line 457
    .line 458
    goto :goto_1b0

    .line 459
    :cond_1ca
    move/from16 v16, v2

    .line 460
    .line 461
    :cond_1cc
    aget v2, v13, v17

    .line 462
    .line 463
    if-nez v2, :cond_1d2

    .line 464
    .line 465
    goto/16 :goto_32b

    .line 466
    .line 467
    :cond_1d2
    :goto_1d2
    if-lt v9, v11, :cond_1e8

    .line 468
    .line 469
    if-lt v8, v11, :cond_1e8

    .line 470
    .line 471
    sub-int v2, v8, v11

    .line 472
    .line 473
    sub-int v14, v9, v11

    .line 474
    .line 475
    invoke-virtual {v10, v2, v14}, Lf6/b;->b(II)Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-nez v2, :cond_1e8

    .line 480
    .line 481
    aget v2, v13, v4

    .line 482
    .line 483
    add-int/2addr v2, v4

    .line 484
    aput v2, v13, v4

    .line 485
    .line 486
    add-int/lit8 v11, v11, 0x1

    .line 487
    .line 488
    goto :goto_1d2

    .line 489
    :cond_1e8
    aget v2, v13, v4

    .line 490
    .line 491
    if-nez v2, :cond_1ee

    .line 492
    .line 493
    goto/16 :goto_32b

    .line 494
    .line 495
    :cond_1ee
    :goto_1ee
    if-lt v9, v11, :cond_204

    .line 496
    .line 497
    if-lt v8, v11, :cond_204

    .line 498
    .line 499
    sub-int v2, v8, v11

    .line 500
    .line 501
    sub-int v14, v9, v11

    .line 502
    .line 503
    invoke-virtual {v10, v2, v14}, Lf6/b;->b(II)Z

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    if-eqz v2, :cond_204

    .line 508
    .line 509
    aget v2, v13, v16

    .line 510
    .line 511
    add-int/2addr v2, v4

    .line 512
    aput v2, v13, v16

    .line 513
    .line 514
    add-int/lit8 v11, v11, 0x1

    .line 515
    .line 516
    goto :goto_1ee

    .line 517
    :cond_204
    aget v2, v13, v16

    .line 518
    .line 519
    if-nez v2, :cond_20a

    .line 520
    .line 521
    goto/16 :goto_32b

    .line 522
    .line 523
    :cond_20a
    iget v2, v10, Lf6/b;->c:I

    .line 524
    .line 525
    move v11, v4

    .line 526
    :goto_20d
    add-int v14, v9, v11

    .line 527
    .line 528
    move/from16 v18, v6

    .line 529
    .line 530
    if-ge v14, v2, :cond_227

    .line 531
    .line 532
    add-int v6, v8, v11

    .line 533
    .line 534
    if-ge v6, v12, :cond_227

    .line 535
    .line 536
    invoke-virtual {v10, v6, v14}, Lf6/b;->b(II)Z

    .line 537
    .line 538
    .line 539
    move-result v6

    .line 540
    if-eqz v6, :cond_227

    .line 541
    .line 542
    aget v6, v13, v17

    .line 543
    .line 544
    add-int/2addr v6, v4

    .line 545
    aput v6, v13, v17

    .line 546
    .line 547
    add-int/lit8 v11, v11, 0x1

    .line 548
    .line 549
    move/from16 v6, v18

    .line 550
    .line 551
    goto :goto_20d

    .line 552
    :cond_227
    :goto_227
    add-int v6, v9, v11

    .line 553
    .line 554
    if-ge v6, v2, :cond_23d

    .line 555
    .line 556
    add-int v14, v8, v11

    .line 557
    .line 558
    if-ge v14, v12, :cond_23d

    .line 559
    .line 560
    invoke-virtual {v10, v14, v6}, Lf6/b;->b(II)Z

    .line 561
    .line 562
    .line 563
    move-result v6

    .line 564
    if-nez v6, :cond_23d

    .line 565
    .line 566
    aget v6, v13, v18

    .line 567
    .line 568
    add-int/2addr v6, v4

    .line 569
    aput v6, v13, v18

    .line 570
    .line 571
    add-int/lit8 v11, v11, 0x1

    .line 572
    .line 573
    goto :goto_227

    .line 574
    :cond_23d
    aget v6, v13, v18

    .line 575
    .line 576
    if-nez v6, :cond_243

    .line 577
    .line 578
    goto/16 :goto_32b

    .line 579
    .line 580
    :cond_243
    :goto_243
    add-int v6, v9, v11

    .line 581
    .line 582
    if-ge v6, v2, :cond_259

    .line 583
    .line 584
    add-int v14, v8, v11

    .line 585
    .line 586
    if-ge v14, v12, :cond_259

    .line 587
    .line 588
    invoke-virtual {v10, v14, v6}, Lf6/b;->b(II)Z

    .line 589
    .line 590
    .line 591
    move-result v6

    .line 592
    if-eqz v6, :cond_259

    .line 593
    .line 594
    aget v6, v13, v7

    .line 595
    .line 596
    add-int/2addr v6, v4

    .line 597
    aput v6, v13, v7

    .line 598
    .line 599
    add-int/lit8 v11, v11, 0x1

    .line 600
    .line 601
    goto :goto_243

    .line 602
    :cond_259
    aget v2, v13, v7

    .line 603
    .line 604
    if-nez v2, :cond_25f

    .line 605
    .line 606
    goto/16 :goto_32b

    .line 607
    .line 608
    :cond_25f
    move/from16 v2, v16

    .line 609
    .line 610
    move v6, v2

    .line 611
    :goto_262
    if-ge v2, v15, :cond_26e

    .line 612
    .line 613
    aget v8, v13, v2

    .line 614
    .line 615
    if-nez v8, :cond_26a

    .line 616
    .line 617
    goto/16 :goto_32b

    .line 618
    .line 619
    :cond_26a
    add-int/2addr v6, v8

    .line 620
    add-int/lit8 v2, v2, 0x1

    .line 621
    .line 622
    goto :goto_262

    .line 623
    :cond_26e
    const/4 v2, 0x7

    .line 624
    if-ge v6, v2, :cond_273

    .line 625
    .line 626
    goto/16 :goto_32b

    .line 627
    .line 628
    :cond_273
    int-to-float v2, v6

    .line 629
    const/high16 v6, 0x40e00000    # 7.0f

    .line 630
    .line 631
    div-float/2addr v2, v6

    .line 632
    const v8, 0x3faa9fbe    # 1.333f

    .line 633
    .line 634
    .line 635
    div-float v8, v2, v8

    .line 636
    .line 637
    aget v9, v13, v16

    .line 638
    .line 639
    int-to-float v9, v9

    .line 640
    sub-float v9, v2, v9

    .line 641
    .line 642
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 643
    .line 644
    .line 645
    move-result v9

    .line 646
    cmpg-float v9, v9, v8

    .line 647
    .line 648
    if-gez v9, :cond_32b

    .line 649
    .line 650
    aget v9, v13, v4

    .line 651
    .line 652
    int-to-float v9, v9

    .line 653
    sub-float v9, v2, v9

    .line 654
    .line 655
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 656
    .line 657
    .line 658
    move-result v9

    .line 659
    cmpg-float v9, v9, v8

    .line 660
    .line 661
    if-gez v9, :cond_32b

    .line 662
    .line 663
    const/high16 v9, 0x40400000    # 3.0f

    .line 664
    .line 665
    mul-float v10, v2, v9

    .line 666
    .line 667
    aget v11, v13, v17

    .line 668
    .line 669
    int-to-float v11, v11

    .line 670
    sub-float/2addr v10, v11

    .line 671
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 672
    .line 673
    .line 674
    move-result v10

    .line 675
    mul-float/2addr v9, v8

    .line 676
    cmpg-float v9, v10, v9

    .line 677
    .line 678
    if-gez v9, :cond_32b

    .line 679
    .line 680
    aget v9, v13, v18

    .line 681
    .line 682
    int-to-float v9, v9

    .line 683
    sub-float v9, v2, v9

    .line 684
    .line 685
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 686
    .line 687
    .line 688
    move-result v9

    .line 689
    cmpg-float v9, v9, v8

    .line 690
    .line 691
    if-gez v9, :cond_32b

    .line 692
    .line 693
    aget v7, v13, v7

    .line 694
    .line 695
    int-to-float v7, v7

    .line 696
    sub-float/2addr v2, v7

    .line 697
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 698
    .line 699
    .line 700
    move-result v2

    .line 701
    cmpg-float v2, v2, v8

    .line 702
    .line 703
    if-gez v2, :cond_32b

    .line 704
    .line 705
    int-to-float v2, v3

    .line 706
    div-float/2addr v2, v6

    .line 707
    move/from16 v3, v16

    .line 708
    .line 709
    :goto_2c4
    iget-object v6, v0, Lx6/e;->b:Ljava/util/ArrayList;

    .line 710
    .line 711
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 712
    .line 713
    .line 714
    move-result v7

    .line 715
    if-ge v3, v7, :cond_319

    .line 716
    .line 717
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v7

    .line 721
    check-cast v7, Lx6/c;

    .line 722
    .line 723
    iget v8, v7, Lx6/c;->c:F

    .line 724
    .line 725
    iget v9, v7, Lz5/o;->a:F

    .line 726
    .line 727
    iget v10, v7, Lz5/o;->b:F

    .line 728
    .line 729
    sub-float v11, v5, v10

    .line 730
    .line 731
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 732
    .line 733
    .line 734
    move-result v11

    .line 735
    cmpg-float v11, v11, v2

    .line 736
    .line 737
    if-gtz v11, :cond_316

    .line 738
    .line 739
    sub-float v11, v1, v9

    .line 740
    .line 741
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 742
    .line 743
    .line 744
    move-result v11

    .line 745
    cmpg-float v11, v11, v2

    .line 746
    .line 747
    if-gtz v11, :cond_316

    .line 748
    .line 749
    sub-float v11, v2, v8

    .line 750
    .line 751
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 752
    .line 753
    .line 754
    move-result v11

    .line 755
    const/high16 v12, 0x3f800000    # 1.0f

    .line 756
    .line 757
    cmpg-float v12, v11, v12

    .line 758
    .line 759
    if-lez v12, :cond_2fc

    .line 760
    .line 761
    cmpg-float v8, v11, v8

    .line 762
    .line 763
    if-gtz v8, :cond_316

    .line 764
    .line 765
    :cond_2fc
    iget v8, v7, Lx6/c;->d:I

    .line 766
    .line 767
    add-int/lit8 v11, v8, 0x1

    .line 768
    .line 769
    int-to-float v8, v8

    .line 770
    mul-float/2addr v9, v8

    .line 771
    add-float/2addr v9, v1

    .line 772
    int-to-float v1, v11

    .line 773
    div-float/2addr v9, v1

    .line 774
    mul-float/2addr v10, v8

    .line 775
    add-float/2addr v10, v5

    .line 776
    div-float/2addr v10, v1

    .line 777
    iget v5, v7, Lx6/c;->c:F

    .line 778
    .line 779
    mul-float/2addr v8, v5

    .line 780
    add-float/2addr v8, v2

    .line 781
    div-float/2addr v8, v1

    .line 782
    new-instance v1, Lx6/c;

    .line 783
    .line 784
    invoke-direct {v1, v9, v10, v8, v11}, Lx6/c;-><init>(FFFI)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v6, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    return v4

    .line 791
    :cond_316
    add-int/lit8 v3, v3, 0x1

    .line 792
    .line 793
    goto :goto_2c4

    .line 794
    :cond_319
    new-instance v3, Lx6/c;

    .line 795
    .line 796
    invoke-direct {v3, v1, v5, v2, v4}, Lx6/c;-><init>(FFFI)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    iget-object v1, v0, Lx6/e;->e:Lz5/p;

    .line 803
    .line 804
    if-eqz v1, :cond_328

    .line 805
    .line 806
    invoke-interface {v1, v3}, Lz5/p;->a(Lz5/o;)V

    .line 807
    .line 808
    .line 809
    :cond_328
    return v4

    .line 810
    :cond_329
    move/from16 v16, v2

    .line 811
    .line 812
    :cond_32b
    :goto_32b
    return v16
.end method

.method public final d()Z
    .registers 12

    .line 1
    iget-object v0, p0, Lx6/e;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    move v5, v3

    .line 14
    move v7, v5

    .line 15
    move v6, v4

    .line 16
    :cond_f
    :goto_f
    if-ge v7, v2, :cond_24

    .line 17
    .line 18
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    add-int/lit8 v7, v7, 0x1

    .line 23
    .line 24
    check-cast v8, Lx6/c;

    .line 25
    .line 26
    iget v9, v8, Lx6/c;->d:I

    .line 27
    .line 28
    const/4 v10, 0x2

    .line 29
    if-lt v9, v10, :cond_f

    .line 30
    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    iget v8, v8, Lx6/c;->c:F

    .line 34
    .line 35
    add-float/2addr v6, v8

    .line 36
    goto :goto_f

    .line 37
    :cond_24
    const/4 v2, 0x3

    .line 38
    if-ge v5, v2, :cond_28

    .line 39
    .line 40
    goto :goto_4d

    .line 41
    :cond_28
    int-to-float v1, v1

    .line 42
    div-float v1, v6, v1

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    move v5, v3

    .line 49
    :goto_30
    if-ge v5, v2, :cond_43

    .line 50
    .line 51
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    add-int/lit8 v5, v5, 0x1

    .line 56
    .line 57
    check-cast v7, Lx6/c;

    .line 58
    .line 59
    iget v7, v7, Lx6/c;->c:F

    .line 60
    .line 61
    sub-float/2addr v7, v1

    .line 62
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    add-float/2addr v4, v7

    .line 67
    goto :goto_30

    .line 68
    :cond_43
    const v0, 0x3d4ccccd    # 0.05f

    .line 69
    .line 70
    .line 71
    mul-float/2addr v6, v0

    .line 72
    cmpg-float v0, v4, v6

    .line 73
    .line 74
    if-gtz v0, :cond_4d

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    return v0

    .line 78
    :cond_4d
    :goto_4d
    return v3
.end method
