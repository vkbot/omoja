.class final Landroidx/core/content/res/ViewingConditions;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field static final DEFAULT:Landroidx/core/content/res/ViewingConditions;


# instance fields
.field private final mAw:F

.field private final mC:F

.field private final mFl:F

.field private final mFlRoot:F

.field private final mN:F

.field private final mNbb:F

.field private final mNc:F

.field private final mNcb:F

.field private final mRgbD:[F

.field private final mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    .line 2
    .line 3
    const/high16 v1, 0x42480000    # 50.0f

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->yFromLStar(F)F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    float-to-double v2, v2

    .line 10
    const-wide v4, 0x404fd4bbab8b494cL    # 63.66197723675813

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    mul-double/2addr v2, v4

    .line 16
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 17
    .line 18
    div-double/2addr v2, v4

    .line 19
    double-to-float v2, v2

    .line 20
    const/high16 v3, 0x40000000    # 2.0f

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v0, v2, v1, v3, v4}, Landroidx/core/content/res/ViewingConditions;->make([FFFFZ)Landroidx/core/content/res/ViewingConditions;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 28
    .line 29
    return-void
.end method

.method private constructor <init>(FFFFFF[FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 7
    .line 8
    iput p3, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    .line 11
    .line 12
    iput p5, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 13
    .line 14
    iput p6, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    .line 17
    .line 18
    iput p8, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    .line 19
    .line 20
    iput p9, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    .line 21
    .line 22
    iput p10, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    .line 23
    .line 24
    return-void
.end method

.method public static make([FFFFZ)Landroidx/core/content/res/ViewingConditions;
    .locals 21
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    sget-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v3, p0, v2

    .line 7
    .line 8
    aget-object v4, v1, v2

    .line 9
    .line 10
    aget v5, v4, v2

    .line 11
    .line 12
    mul-float/2addr v5, v3

    .line 13
    const/4 v6, 0x1

    .line 14
    aget v7, p0, v6

    .line 15
    .line 16
    aget v8, v4, v6

    .line 17
    .line 18
    mul-float/2addr v8, v7

    .line 19
    add-float/2addr v8, v5

    .line 20
    const/4 v5, 0x2

    .line 21
    aget v9, p0, v5

    .line 22
    .line 23
    aget v4, v4, v5

    .line 24
    .line 25
    mul-float/2addr v4, v9

    .line 26
    add-float/2addr v4, v8

    .line 27
    aget-object v8, v1, v6

    .line 28
    .line 29
    aget v10, v8, v2

    .line 30
    .line 31
    mul-float/2addr v10, v3

    .line 32
    aget v11, v8, v6

    .line 33
    .line 34
    mul-float/2addr v11, v7

    .line 35
    add-float/2addr v11, v10

    .line 36
    aget v8, v8, v5

    .line 37
    .line 38
    mul-float/2addr v8, v9

    .line 39
    add-float/2addr v8, v11

    .line 40
    aget-object v1, v1, v5

    .line 41
    .line 42
    aget v10, v1, v2

    .line 43
    .line 44
    mul-float/2addr v3, v10

    .line 45
    aget v10, v1, v6

    .line 46
    .line 47
    mul-float/2addr v7, v10

    .line 48
    add-float/2addr v7, v3

    .line 49
    aget v1, v1, v5

    .line 50
    .line 51
    mul-float/2addr v9, v1

    .line 52
    add-float/2addr v9, v7

    .line 53
    const/high16 v1, 0x41200000    # 10.0f

    .line 54
    .line 55
    div-float v3, p3, v1

    .line 56
    .line 57
    const v7, 0x3f4ccccd    # 0.8f

    .line 58
    .line 59
    .line 60
    add-float/2addr v3, v7

    .line 61
    float-to-double v10, v3

    .line 62
    const-wide v12, 0x3feccccccccccccdL    # 0.9

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    cmpl-double v10, v10, v12

    .line 68
    .line 69
    const v11, 0x3f170a3d    # 0.59f

    .line 70
    .line 71
    .line 72
    if-ltz v10, :cond_0

    .line 73
    .line 74
    const v7, 0x3f666666    # 0.9f

    .line 75
    .line 76
    .line 77
    sub-float v7, v3, v7

    .line 78
    .line 79
    mul-float/2addr v7, v1

    .line 80
    const v1, 0x3f30a3d7    # 0.69f

    .line 81
    .line 82
    .line 83
    invoke-static {v11, v1, v7}, Landroidx/core/content/res/CamUtils;->lerp(FFF)F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    :goto_0
    move v15, v1

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    sub-float v7, v3, v7

    .line 90
    .line 91
    mul-float/2addr v7, v1

    .line 92
    const v1, 0x3f066666    # 0.525f

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v11, v7}, Landroidx/core/content/res/CamUtils;->lerp(FFF)F

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    goto :goto_0

    .line 100
    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 101
    .line 102
    if-eqz p4, :cond_1

    .line 103
    .line 104
    move v7, v1

    .line 105
    goto :goto_2

    .line 106
    :cond_1
    neg-float v7, v0

    .line 107
    const/high16 v10, 0x42280000    # 42.0f

    .line 108
    .line 109
    sub-float/2addr v7, v10

    .line 110
    const/high16 v10, 0x42b80000    # 92.0f

    .line 111
    .line 112
    div-float/2addr v7, v10

    .line 113
    float-to-double v10, v7

    .line 114
    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    .line 115
    .line 116
    .line 117
    move-result-wide v10

    .line 118
    double-to-float v7, v10

    .line 119
    const v10, 0x3e8e38e4

    .line 120
    .line 121
    .line 122
    mul-float/2addr v7, v10

    .line 123
    sub-float v7, v1, v7

    .line 124
    .line 125
    mul-float/2addr v7, v3

    .line 126
    :goto_2
    float-to-double v10, v7

    .line 127
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 128
    .line 129
    cmpl-double v12, v10, v12

    .line 130
    .line 131
    if-lez v12, :cond_2

    .line 132
    .line 133
    move v7, v1

    .line 134
    goto :goto_3

    .line 135
    :cond_2
    const-wide/16 v12, 0x0

    .line 136
    .line 137
    cmpg-double v10, v10, v12

    .line 138
    .line 139
    if-gez v10, :cond_3

    .line 140
    .line 141
    const/4 v7, 0x0

    .line 142
    :cond_3
    :goto_3
    const/high16 v10, 0x42c80000    # 100.0f

    .line 143
    .line 144
    div-float v11, v10, v4

    .line 145
    .line 146
    mul-float/2addr v11, v7

    .line 147
    add-float/2addr v11, v1

    .line 148
    sub-float/2addr v11, v7

    .line 149
    div-float v12, v10, v8

    .line 150
    .line 151
    mul-float/2addr v12, v7

    .line 152
    add-float/2addr v12, v1

    .line 153
    sub-float/2addr v12, v7

    .line 154
    div-float/2addr v10, v9

    .line 155
    mul-float/2addr v10, v7

    .line 156
    add-float/2addr v10, v1

    .line 157
    sub-float/2addr v10, v7

    .line 158
    const/4 v7, 0x3

    .line 159
    new-array v13, v7, [F

    .line 160
    .line 161
    aput v11, v13, v2

    .line 162
    .line 163
    aput v12, v13, v6

    .line 164
    .line 165
    aput v10, v13, v5

    .line 166
    .line 167
    const/high16 v10, 0x40a00000    # 5.0f

    .line 168
    .line 169
    mul-float/2addr v10, v0

    .line 170
    add-float/2addr v10, v1

    .line 171
    div-float v10, v1, v10

    .line 172
    .line 173
    mul-float v11, v10, v10

    .line 174
    .line 175
    mul-float/2addr v11, v10

    .line 176
    mul-float/2addr v11, v10

    .line 177
    sub-float/2addr v1, v11

    .line 178
    mul-float/2addr v11, v0

    .line 179
    const v10, 0x3dcccccd    # 0.1f

    .line 180
    .line 181
    .line 182
    mul-float/2addr v10, v1

    .line 183
    mul-float/2addr v10, v1

    .line 184
    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    .line 185
    .line 186
    float-to-double v0, v0

    .line 187
    mul-double v0, v0, v16

    .line 188
    .line 189
    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    .line 190
    .line 191
    .line 192
    move-result-wide v0

    .line 193
    double-to-float v0, v0

    .line 194
    mul-float/2addr v10, v0

    .line 195
    add-float/2addr v10, v11

    .line 196
    invoke-static/range {p2 .. p2}, Landroidx/core/content/res/CamUtils;->yFromLStar(F)F

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    aget v1, p0, v6

    .line 201
    .line 202
    div-float v11, v0, v1

    .line 203
    .line 204
    float-to-double v0, v11

    .line 205
    move v12, v2

    .line 206
    move/from16 v16, v3

    .line 207
    .line 208
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 209
    .line 210
    .line 211
    move-result-wide v2

    .line 212
    double-to-float v2, v2

    .line 213
    const v3, 0x3fbd70a4    # 1.48f

    .line 214
    .line 215
    .line 216
    add-float v20, v2, v3

    .line 217
    .line 218
    const-wide v2, 0x3fc999999999999aL    # 0.2

    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 224
    .line 225
    .line 226
    move-result-wide v0

    .line 227
    double-to-float v0, v0

    .line 228
    const v1, 0x3f39999a    # 0.725f

    .line 229
    .line 230
    .line 231
    div-float/2addr v1, v0

    .line 232
    aget v0, v13, v12

    .line 233
    .line 234
    mul-float/2addr v0, v10

    .line 235
    mul-float/2addr v0, v4

    .line 236
    float-to-double v2, v0

    .line 237
    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    .line 238
    .line 239
    div-double v2, v2, v17

    .line 240
    .line 241
    move v4, v5

    .line 242
    move v0, v6

    .line 243
    const-wide v5, 0x3fdae147ae147ae1L    # 0.42

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 249
    .line 250
    .line 251
    move-result-wide v2

    .line 252
    double-to-float v2, v2

    .line 253
    aget v3, v13, v0

    .line 254
    .line 255
    mul-float/2addr v3, v10

    .line 256
    mul-float/2addr v3, v8

    .line 257
    move/from16 p1, v0

    .line 258
    .line 259
    move/from16 p0, v1

    .line 260
    .line 261
    float-to-double v0, v3

    .line 262
    div-double v0, v0, v17

    .line 263
    .line 264
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 265
    .line 266
    .line 267
    move-result-wide v0

    .line 268
    double-to-float v0, v0

    .line 269
    aget v1, v13, v4

    .line 270
    .line 271
    mul-float/2addr v1, v10

    .line 272
    mul-float/2addr v1, v9

    .line 273
    float-to-double v8, v1

    .line 274
    div-double v8, v8, v17

    .line 275
    .line 276
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 277
    .line 278
    .line 279
    move-result-wide v5

    .line 280
    double-to-float v1, v5

    .line 281
    new-array v3, v7, [F

    .line 282
    .line 283
    aput v2, v3, v12

    .line 284
    .line 285
    aput v0, v3, p1

    .line 286
    .line 287
    aput v1, v3, v4

    .line 288
    .line 289
    aget v0, v3, v12

    .line 290
    .line 291
    const/high16 v1, 0x43c80000    # 400.0f

    .line 292
    .line 293
    mul-float v2, v0, v1

    .line 294
    .line 295
    const v5, 0x41d90a3d    # 27.13f

    .line 296
    .line 297
    .line 298
    add-float/2addr v0, v5

    .line 299
    div-float/2addr v2, v0

    .line 300
    aget v0, v3, p1

    .line 301
    .line 302
    mul-float v6, v0, v1

    .line 303
    .line 304
    add-float/2addr v0, v5

    .line 305
    div-float/2addr v6, v0

    .line 306
    aget v0, v3, v4

    .line 307
    .line 308
    mul-float/2addr v1, v0

    .line 309
    add-float/2addr v0, v5

    .line 310
    div-float/2addr v1, v0

    .line 311
    new-array v0, v7, [F

    .line 312
    .line 313
    aput v2, v0, v12

    .line 314
    .line 315
    aput v6, v0, p1

    .line 316
    .line 317
    aput v1, v0, v4

    .line 318
    .line 319
    const/high16 v1, 0x40000000    # 2.0f

    .line 320
    .line 321
    aget v2, v0, v12

    .line 322
    .line 323
    mul-float/2addr v2, v1

    .line 324
    aget v1, v0, p1

    .line 325
    .line 326
    add-float/2addr v2, v1

    .line 327
    const v1, 0x3d4ccccd    # 0.05f

    .line 328
    .line 329
    .line 330
    aget v0, v0, v4

    .line 331
    .line 332
    mul-float/2addr v0, v1

    .line 333
    add-float/2addr v0, v2

    .line 334
    mul-float v12, v0, p0

    .line 335
    .line 336
    new-instance v0, Landroidx/core/content/res/ViewingConditions;

    .line 337
    .line 338
    float-to-double v1, v10

    .line 339
    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    .line 340
    .line 341
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 342
    .line 343
    .line 344
    move-result-wide v1

    .line 345
    double-to-float v1, v1

    .line 346
    move/from16 v14, p0

    .line 347
    .line 348
    move/from16 v19, v1

    .line 349
    .line 350
    move/from16 v18, v10

    .line 351
    .line 352
    move-object/from16 v17, v13

    .line 353
    .line 354
    move/from16 v13, p0

    .line 355
    .line 356
    move-object v10, v0

    .line 357
    invoke-direct/range {v10 .. v20}, Landroidx/core/content/res/ViewingConditions;-><init>(FFFFFF[FFFF)V

    .line 358
    .line 359
    .line 360
    return-object v10
.end method


# virtual methods
.method public getAw()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 2
    .line 3
    return v0
.end method

.method public getC()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 2
    .line 3
    return v0
.end method

.method public getFl()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    .line 2
    .line 3
    return v0
.end method

.method public getFlRoot()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    .line 2
    .line 3
    return v0
.end method

.method public getN()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    .line 2
    .line 3
    return v0
.end method

.method public getNbb()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    .line 2
    .line 3
    return v0
.end method

.method public getNc()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    .line 2
    .line 3
    return v0
.end method

.method public getNcb()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    .line 2
    .line 3
    return v0
.end method

.method public getRgbD()[F
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public getZ()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    .line 2
    .line 3
    return v0
.end method
