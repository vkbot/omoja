.class public Landroidx/core/content/res/CamColor;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHROMA_SEARCH_ENDPOINT:F = 0.4f

.field private static final DE_MAX:F = 1.0f

.field private static final DL_MAX:F = 0.2f

.field private static final LIGHTNESS_SEARCH_ENDPOINT:F = 0.01f


# instance fields
.field private final mAstar:F

.field private final mBstar:F

.field private final mChroma:F

.field private final mHue:F

.field private final mJ:F

.field private final mJstar:F

.field private final mM:F

.field private final mQ:F

.field private final mS:F


# direct methods
.method public constructor <init>(FFFFFFFFF)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/core/content/res/CamColor;->mHue:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 7
    .line 8
    iput p3, p0, Landroidx/core/content/res/CamColor;->mJ:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/core/content/res/CamColor;->mQ:F

    .line 11
    .line 12
    iput p5, p0, Landroidx/core/content/res/CamColor;->mM:F

    .line 13
    .line 14
    iput p6, p0, Landroidx/core/content/res/CamColor;->mS:F

    .line 15
    .line 16
    iput p7, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 17
    .line 18
    iput p8, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 19
    .line 20
    iput p9, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    .line 21
    .line 22
    return-void
.end method

.method private static findCamByJ(FFF)Landroidx/core/content/res/CamColor;
    .registers 15
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 360.0
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = Infinity
            toInclusive = false
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x42c80000    # 100.0f

    .line 3
    .line 4
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    move v5, v0

    .line 8
    move-object v4, v3

    .line 9
    move v3, v2

    .line 10
    :goto_9
    sub-float v6, v5, v1

    .line 11
    .line 12
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    const v7, 0x3c23d70a    # 0.01f

    .line 17
    .line 18
    .line 19
    cmpl-float v6, v6, v7

    .line 20
    .line 21
    if-lez v6, :cond_63

    .line 22
    .line 23
    sub-float v6, v1, v5

    .line 24
    .line 25
    const/high16 v7, 0x40000000    # 2.0f

    .line 26
    .line 27
    div-float/2addr v6, v7

    .line 28
    add-float/2addr v6, v5

    .line 29
    invoke-static {v6, p1, p0}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->viewedInSrgb()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-static {v7}, Landroidx/core/content/res/CamUtils;->lStarFromInt(I)F

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    sub-float v9, p2, v8

    .line 42
    .line 43
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    const v10, 0x3e4ccccd    # 0.2f

    .line 48
    .line 49
    .line 50
    cmpg-float v10, v9, v10

    .line 51
    .line 52
    if-gez v10, :cond_52

    .line 53
    .line 54
    invoke-static {v7}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->getJ()F

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->getChroma()F

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    invoke-static {v10, v11, p0}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-virtual {v7, v10}, Landroidx/core/content/res/CamColor;->distance(Landroidx/core/content/res/CamColor;)F

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const/high16 v11, 0x3f800000    # 1.0f

    .line 75
    .line 76
    cmpg-float v11, v10, v11

    .line 77
    .line 78
    if-gtz v11, :cond_52

    .line 79
    .line 80
    move-object v4, v7

    .line 81
    move v2, v9

    .line 82
    move v3, v10

    .line 83
    :cond_52
    cmpl-float v7, v2, v0

    .line 84
    .line 85
    if-nez v7, :cond_5b

    .line 86
    .line 87
    cmpl-float v7, v3, v0

    .line 88
    .line 89
    if-nez v7, :cond_5b

    .line 90
    .line 91
    return-object v4

    .line 92
    :cond_5b
    cmpg-float v7, v8, p2

    .line 93
    .line 94
    if-gez v7, :cond_61

    .line 95
    .line 96
    move v5, v6

    .line 97
    goto :goto_9

    .line 98
    :cond_61
    move v1, v6

    .line 99
    goto :goto_9

    .line 100
    :cond_63
    return-object v4
.end method

.method public static fromColor(I)Landroidx/core/content/res/CamColor;
    .registers 15
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    new-array v2, v1, [F

    .line 6
    .line 7
    sget-object v3, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 8
    .line 9
    invoke-static {p0, v3, v0, v2}, Landroidx/core/content/res/CamColor;->fromColorInViewingConditions(ILandroidx/core/content/res/ViewingConditions;[F[F)V

    .line 10
    .line 11
    .line 12
    new-instance v4, Landroidx/core/content/res/CamColor;

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    aget v5, v2, p0

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    aget v6, v2, v3

    .line 19
    .line 20
    aget v7, v0, p0

    .line 21
    .line 22
    aget v8, v0, v3

    .line 23
    .line 24
    const/4 p0, 0x2

    .line 25
    aget v9, v0, p0

    .line 26
    .line 27
    aget v10, v0, v1

    .line 28
    .line 29
    const/4 p0, 0x4

    .line 30
    aget v11, v0, p0

    .line 31
    .line 32
    const/4 p0, 0x5

    .line 33
    aget v12, v0, p0

    .line 34
    .line 35
    const/4 p0, 0x6

    .line 36
    aget v13, v0, p0

    .line 37
    .line 38
    invoke-direct/range {v4 .. v13}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    .line 39
    .line 40
    .line 41
    return-object v4
.end method

.method public static fromColorInViewingConditions(ILandroidx/core/content/res/ViewingConditions;[F[F)V
    .registers 25
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # Landroidx/core/content/res/ViewingConditions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            value = 0x7L
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            value = 0x3L
        .end annotation
    .end param

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/core/content/res/CamUtils;->xyzFromInt(I[F)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aget v3, v1, v2

    .line 12
    .line 13
    aget-object v4, v0, v2

    .line 14
    .line 15
    aget v5, v4, v2

    .line 16
    .line 17
    mul-float/2addr v5, v3

    .line 18
    const/4 v6, 0x1

    .line 19
    aget v7, v1, v6

    .line 20
    .line 21
    aget v8, v4, v6

    .line 22
    .line 23
    mul-float/2addr v8, v7

    .line 24
    add-float/2addr v8, v5

    .line 25
    const/4 v5, 0x2

    .line 26
    aget v9, v1, v5

    .line 27
    .line 28
    aget v4, v4, v5

    .line 29
    .line 30
    mul-float/2addr v4, v9

    .line 31
    add-float/2addr v4, v8

    .line 32
    aget-object v8, v0, v6

    .line 33
    .line 34
    aget v10, v8, v2

    .line 35
    .line 36
    mul-float/2addr v10, v3

    .line 37
    aget v11, v8, v6

    .line 38
    .line 39
    mul-float/2addr v11, v7

    .line 40
    add-float/2addr v11, v10

    .line 41
    aget v8, v8, v5

    .line 42
    .line 43
    mul-float/2addr v8, v9

    .line 44
    add-float/2addr v8, v11

    .line 45
    aget-object v0, v0, v5

    .line 46
    .line 47
    aget v10, v0, v2

    .line 48
    .line 49
    mul-float/2addr v3, v10

    .line 50
    aget v10, v0, v6

    .line 51
    .line 52
    mul-float/2addr v7, v10

    .line 53
    add-float/2addr v7, v3

    .line 54
    aget v0, v0, v5

    .line 55
    .line 56
    mul-float/2addr v9, v0

    .line 57
    add-float/2addr v9, v7

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    aget v0, v0, v2

    .line 63
    .line 64
    mul-float/2addr v0, v4

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    aget v3, v3, v6

    .line 70
    .line 71
    mul-float/2addr v3, v8

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    aget v4, v4, v5

    .line 77
    .line 78
    mul-float/2addr v4, v9

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    mul-float/2addr v8, v7

    .line 88
    float-to-double v7, v8

    .line 89
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 90
    .line 91
    div-double/2addr v7, v9

    .line 92
    const-wide v11, 0x3fdae147ae147ae1L    # 0.42

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 98
    .line 99
    .line 100
    move-result-wide v7

    .line 101
    double-to-float v7, v7

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 107
    .line 108
    .line 109
    move-result v13

    .line 110
    mul-float/2addr v13, v8

    .line 111
    float-to-double v13, v13

    .line 112
    div-double/2addr v13, v9

    .line 113
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 114
    .line 115
    .line 116
    move-result-wide v13

    .line 117
    double-to-float v8, v13

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    mul-float/2addr v14, v13

    .line 127
    float-to-double v13, v14

    .line 128
    div-double/2addr v13, v9

    .line 129
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 130
    .line 131
    .line 132
    move-result-wide v11

    .line 133
    double-to-float v11, v11

    .line 134
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    const/high16 v12, 0x43c80000    # 400.0f

    .line 139
    .line 140
    mul-float/2addr v0, v12

    .line 141
    mul-float/2addr v0, v7

    .line 142
    const v13, 0x41d90a3d    # 27.13f

    .line 143
    .line 144
    .line 145
    add-float/2addr v7, v13

    .line 146
    div-float/2addr v0, v7

    .line 147
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    mul-float/2addr v3, v12

    .line 152
    mul-float/2addr v3, v8

    .line 153
    add-float/2addr v8, v13

    .line 154
    div-float/2addr v3, v8

    .line 155
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    mul-float/2addr v4, v12

    .line 160
    mul-float/2addr v4, v11

    .line 161
    add-float/2addr v11, v13

    .line 162
    div-float/2addr v4, v11

    .line 163
    const-wide/high16 v7, 0x4026000000000000L    # 11.0

    .line 164
    .line 165
    float-to-double v11, v0

    .line 166
    mul-double/2addr v11, v7

    .line 167
    const-wide/high16 v7, -0x3fd8000000000000L    # -12.0

    .line 168
    .line 169
    float-to-double v13, v3

    .line 170
    mul-double/2addr v13, v7

    .line 171
    add-double/2addr v13, v11

    .line 172
    float-to-double v7, v4

    .line 173
    add-double/2addr v13, v7

    .line 174
    double-to-float v11, v13

    .line 175
    const/high16 v12, 0x41300000    # 11.0f

    .line 176
    .line 177
    div-float/2addr v11, v12

    .line 178
    add-float v12, v0, v3

    .line 179
    .line 180
    float-to-double v12, v12

    .line 181
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 182
    .line 183
    mul-double/2addr v7, v14

    .line 184
    sub-double/2addr v12, v7

    .line 185
    double-to-float v7, v12

    .line 186
    const/high16 v8, 0x41100000    # 9.0f

    .line 187
    .line 188
    div-float/2addr v7, v8

    .line 189
    const/high16 v8, 0x41a00000    # 20.0f

    .line 190
    .line 191
    mul-float v12, v0, v8

    .line 192
    .line 193
    mul-float/2addr v3, v8

    .line 194
    add-float/2addr v12, v3

    .line 195
    const/high16 v13, 0x41a80000    # 21.0f

    .line 196
    .line 197
    mul-float/2addr v13, v4

    .line 198
    add-float/2addr v13, v12

    .line 199
    div-float/2addr v13, v8

    .line 200
    const/high16 v12, 0x42200000    # 40.0f

    .line 201
    .line 202
    mul-float/2addr v0, v12

    .line 203
    add-float/2addr v0, v3

    .line 204
    add-float/2addr v0, v4

    .line 205
    div-float/2addr v0, v8

    .line 206
    float-to-double v3, v7

    .line 207
    move v8, v5

    .line 208
    move/from16 p0, v6

    .line 209
    .line 210
    float-to-double v5, v11

    .line 211
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 212
    .line 213
    .line 214
    move-result-wide v3

    .line 215
    double-to-float v3, v3

    .line 216
    const/high16 v4, 0x43340000    # 180.0f

    .line 217
    .line 218
    mul-float/2addr v3, v4

    .line 219
    const v5, 0x40490fdb    # (float)Math.PI

    .line 220
    .line 221
    .line 222
    div-float/2addr v3, v5

    .line 223
    const/4 v6, 0x0

    .line 224
    cmpg-float v6, v3, v6

    .line 225
    .line 226
    const/high16 v12, 0x43b40000    # 360.0f

    .line 227
    .line 228
    if-gez v6, :cond_e7

    .line 229
    .line 230
    add-float/2addr v3, v12

    .line 231
    goto :goto_ec

    .line 232
    :cond_e7
    cmpl-float v6, v3, v12

    .line 233
    .line 234
    if-ltz v6, :cond_ec

    .line 235
    .line 236
    sub-float/2addr v3, v12

    .line 237
    :cond_ec
    :goto_ec
    mul-float/2addr v5, v3

    .line 238
    div-float/2addr v5, v4

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNbb()F

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    mul-float/2addr v0, v4

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    div-float/2addr v0, v4

    .line 249
    move v4, v8

    .line 250
    move-wide/from16 v16, v9

    .line 251
    .line 252
    float-to-double v8, v0

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getZ()F

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    mul-float/2addr v0, v6

    .line 262
    move v10, v12

    .line 263
    move v6, v13

    .line 264
    float-to-double v12, v0

    .line 265
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 266
    .line 267
    .line 268
    move-result-wide v8

    .line 269
    double-to-float v0, v8

    .line 270
    const/high16 v8, 0x42c80000    # 100.0f

    .line 271
    .line 272
    mul-float/2addr v0, v8

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    .line 274
    .line 275
    .line 276
    move-result v9

    .line 277
    const/high16 v12, 0x40800000    # 4.0f

    .line 278
    .line 279
    div-float v9, v12, v9

    .line 280
    .line 281
    div-float v8, v0, v8

    .line 282
    .line 283
    move/from16 v18, v10

    .line 284
    .line 285
    move v13, v11

    .line 286
    float-to-double v10, v8

    .line 287
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 288
    .line 289
    .line 290
    move-result-wide v10

    .line 291
    double-to-float v8, v10

    .line 292
    mul-float/2addr v9, v8

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    add-float/2addr v8, v12

    .line 298
    mul-float/2addr v8, v9

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    .line 300
    .line 301
    .line 302
    move-result v9

    .line 303
    mul-float/2addr v8, v9

    .line 304
    float-to-double v9, v3

    .line 305
    const-wide v19, 0x403423d70a3d70a4L    # 20.14

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    cmpg-double v9, v9, v19

    .line 311
    .line 312
    if-gez v9, :cond_13c

    .line 313
    .line 314
    add-float v9, v3, v18

    .line 315
    .line 316
    goto :goto_13d

    .line 317
    :cond_13c
    move v9, v3

    .line 318
    :goto_13d
    float-to-double v9, v9

    .line 319
    const-wide v18, 0x400921fb54442d18L    # Math.PI

    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    mul-double v9, v9, v18

    .line 325
    .line 326
    const-wide v18, 0x4066800000000000L    # 180.0

    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    div-double v9, v9, v18

    .line 332
    .line 333
    add-double/2addr v9, v14

    .line 334
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 335
    .line 336
    .line 337
    move-result-wide v9

    .line 338
    const-wide v14, 0x400e666666666666L    # 3.8

    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    add-double/2addr v9, v14

    .line 344
    double-to-float v9, v9

    .line 345
    const/high16 v10, 0x3e800000    # 0.25f

    .line 346
    .line 347
    mul-float/2addr v9, v10

    .line 348
    const v10, 0x45706276

    .line 349
    .line 350
    .line 351
    mul-float/2addr v9, v10

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNc()F

    .line 353
    .line 354
    .line 355
    move-result v10

    .line 356
    mul-float/2addr v9, v10

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNcb()F

    .line 358
    .line 359
    .line 360
    move-result v10

    .line 361
    mul-float/2addr v9, v10

    .line 362
    mul-float v11, v13, v13

    .line 363
    .line 364
    mul-float/2addr v7, v7

    .line 365
    add-float/2addr v7, v11

    .line 366
    float-to-double v10, v7

    .line 367
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 368
    .line 369
    .line 370
    move-result-wide v10

    .line 371
    double-to-float v7, v10

    .line 372
    mul-float/2addr v9, v7

    .line 373
    const v7, 0x3e9c28f6    # 0.305f

    .line 374
    .line 375
    .line 376
    add-float v13, v6, v7

    .line 377
    .line 378
    div-float/2addr v9, v13

    .line 379
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getN()F

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    float-to-double v6, v6

    .line 384
    const-wide v10, 0x3fd28f5c28f5c28fL    # 0.29

    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 390
    .line 391
    .line 392
    move-result-wide v6

    .line 393
    const-wide v10, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    sub-double/2addr v10, v6

    .line 399
    const-wide v6, 0x3fe75c28f5c28f5cL    # 0.73

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 405
    .line 406
    .line 407
    move-result-wide v6

    .line 408
    double-to-float v6, v6

    .line 409
    float-to-double v9, v9

    .line 410
    const-wide v13, 0x3feccccccccccccdL    # 0.9

    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 416
    .line 417
    .line 418
    move-result-wide v9

    .line 419
    double-to-float v7, v9

    .line 420
    mul-float/2addr v6, v7

    .line 421
    float-to-double v9, v0

    .line 422
    div-double v9, v9, v16

    .line 423
    .line 424
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 425
    .line 426
    .line 427
    move-result-wide v9

    .line 428
    double-to-float v7, v9

    .line 429
    mul-float/2addr v7, v6

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    .line 431
    .line 432
    .line 433
    move-result v9

    .line 434
    mul-float/2addr v9, v7

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    .line 436
    .line 437
    .line 438
    move-result v10

    .line 439
    mul-float/2addr v6, v10

    .line 440
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    .line 441
    .line 442
    .line 443
    move-result v10

    .line 444
    add-float/2addr v10, v12

    .line 445
    div-float/2addr v6, v10

    .line 446
    float-to-double v10, v6

    .line 447
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 448
    .line 449
    .line 450
    move-result-wide v10

    .line 451
    double-to-float v6, v10

    .line 452
    const/high16 v10, 0x42480000    # 50.0f

    .line 453
    .line 454
    mul-float/2addr v6, v10

    .line 455
    const v10, 0x3fd9999a    # 1.7f

    .line 456
    .line 457
    .line 458
    mul-float/2addr v10, v0

    .line 459
    const v11, 0x3be56042    # 0.007f

    .line 460
    .line 461
    .line 462
    mul-float/2addr v11, v0

    .line 463
    const/high16 v12, 0x3f800000    # 1.0f

    .line 464
    .line 465
    add-float/2addr v11, v12

    .line 466
    div-float/2addr v10, v11

    .line 467
    const v11, 0x3cbac711    # 0.0228f

    .line 468
    .line 469
    .line 470
    mul-float/2addr v11, v9

    .line 471
    add-float/2addr v11, v12

    .line 472
    float-to-double v11, v11

    .line 473
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    .line 474
    .line 475
    .line 476
    move-result-wide v11

    .line 477
    double-to-float v11, v11

    .line 478
    const v12, 0x422f7048

    .line 479
    .line 480
    .line 481
    mul-float/2addr v11, v12

    .line 482
    float-to-double v12, v5

    .line 483
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 484
    .line 485
    .line 486
    move-result-wide v14

    .line 487
    double-to-float v5, v14

    .line 488
    mul-float/2addr v5, v11

    .line 489
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 490
    .line 491
    .line 492
    move-result-wide v12

    .line 493
    double-to-float v12, v12

    .line 494
    mul-float/2addr v11, v12

    .line 495
    aput v3, v1, v2

    .line 496
    .line 497
    aput v7, v1, p0

    .line 498
    .line 499
    if-eqz p2, :cond_206

    .line 500
    .line 501
    aput v0, p2, v2

    .line 502
    .line 503
    aput v8, p2, p0

    .line 504
    .line 505
    aput v9, p2, v4

    .line 506
    .line 507
    const/4 v0, 0x3

    .line 508
    aput v6, p2, v0

    .line 509
    .line 510
    const/4 v0, 0x4

    .line 511
    aput v10, p2, v0

    .line 512
    .line 513
    const/4 v0, 0x5

    .line 514
    aput v5, p2, v0

    .line 515
    .line 516
    const/4 v0, 0x6

    .line 517
    aput v11, p2, v0

    .line 518
    .line 519
    :cond_206
    return-void
.end method

.method private static fromJch(FFF)Landroidx/core/content/res/CamColor;
    .registers 4
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = Infinity
            toInclusive = false
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 360.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/CamColor;->fromJchInFrame(FFFLandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static fromJchInFrame(FFFLandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;
    .registers 16
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = Infinity
            toInclusive = false
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 360.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroidx/core/content/res/ViewingConditions;->getC()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40800000    # 4.0f

    .line 6
    .line 7
    div-float v0, v1, v0

    .line 8
    .line 9
    float-to-double v4, p0

    .line 10
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 11
    .line 12
    div-double/2addr v4, v6

    .line 13
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    double-to-float v2, v6

    .line 18
    mul-float/2addr v0, v2

    .line 19
    invoke-virtual {p3}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-float/2addr v2, v1

    .line 24
    mul-float/2addr v2, v0

    .line 25
    invoke-virtual {p3}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    mul-float/2addr v2, v0

    .line 30
    invoke-virtual {p3}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    mul-float/2addr v0, p1

    .line 35
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    double-to-float v4, v4

    .line 40
    div-float v4, p1, v4

    .line 41
    .line 42
    invoke-virtual {p3}, Landroidx/core/content/res/ViewingConditions;->getC()F

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    mul-float/2addr v4, v5

    .line 47
    invoke-virtual {p3}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    add-float/2addr v5, v1

    .line 52
    div-float/2addr v4, v5

    .line 53
    float-to-double v4, v4

    .line 54
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    double-to-float v1, v4

    .line 59
    const/high16 v4, 0x42480000    # 50.0f

    .line 60
    .line 61
    mul-float v6, v1, v4

    .line 62
    .line 63
    const v1, 0x40490fdb    # (float)Math.PI

    .line 64
    .line 65
    .line 66
    mul-float/2addr v1, p2

    .line 67
    const/high16 v4, 0x43340000    # 180.0f

    .line 68
    .line 69
    div-float/2addr v1, v4

    .line 70
    const v4, 0x3fd9999a    # 1.7f

    .line 71
    .line 72
    .line 73
    mul-float/2addr v4, p0

    .line 74
    const v5, 0x3be56042    # 0.007f

    .line 75
    .line 76
    .line 77
    mul-float/2addr v5, p0

    .line 78
    const/high16 v7, 0x3f800000    # 1.0f

    .line 79
    .line 80
    add-float/2addr v5, v7

    .line 81
    div-float v7, v4, v5

    .line 82
    .line 83
    const-wide v4, 0x3f9758e219652bd4L    # 0.0228

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    float-to-double v8, v0

    .line 89
    mul-double/2addr v8, v4

    .line 90
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 91
    .line 92
    add-double/2addr v8, v4

    .line 93
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    double-to-float v4, v4

    .line 98
    const v5, 0x422f7048

    .line 99
    .line 100
    .line 101
    mul-float/2addr v4, v5

    .line 102
    float-to-double v8, v1

    .line 103
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    double-to-float v1, v10

    .line 108
    mul-float/2addr v1, v4

    .line 109
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 110
    .line 111
    .line 112
    move-result-wide v8

    .line 113
    double-to-float v5, v8

    .line 114
    mul-float v9, v4, v5

    .line 115
    .line 116
    move v5, v0

    .line 117
    new-instance v0, Landroidx/core/content/res/CamColor;

    .line 118
    .line 119
    move v3, p0

    .line 120
    move v8, v1

    .line 121
    move v4, v2

    .line 122
    move v2, p1

    .line 123
    move v1, p2

    .line 124
    invoke-direct/range {v0 .. v9}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    .line 125
    .line 126
    .line 127
    return-object v0
.end method

.method public static getM3HCTfromColor(I[F)V
    .registers 4
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            value = 0x3L
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1, p1}, Landroidx/core/content/res/CamColor;->fromColorInViewingConditions(ILandroidx/core/content/res/ViewingConditions;[F[F)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-static {p0}, Landroidx/core/content/res/CamUtils;->lStarFromInt(I)F

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    aput p0, p1, v0

    .line 13
    .line 14
    return-void
.end method

.method public static toColor(FFF)I
    .registers 4
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 360.0
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = Infinity
            toInclusive = false
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param

    .line 112
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/CamColor;->toColor(FFFLandroidx/core/content/res/ViewingConditions;)I

    move-result p0

    return p0
.end method

.method public static toColor(FFFLandroidx/core/content/res/ViewingConditions;)I
    .registers 10
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 360.0
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = Infinity
            toInclusive = false
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p3    # Landroidx/core/content/res/ViewingConditions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    float-to-double v0, p1

    .line 2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 3
    .line 4
    cmpg-double v0, v0, v2

    .line 5
    .line 6
    if-ltz v0, :cond_6a

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-double v0, v0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmpg-double v0, v0, v2

    .line 16
    .line 17
    if-lez v0, :cond_6a

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-double v0, v0

    .line 24
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 25
    .line 26
    cmpl-double v0, v0, v2

    .line 27
    .line 28
    if-ltz v0, :cond_1e

    .line 29
    .line 30
    goto :goto_6a

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    cmpg-float v1, p0, v0

    .line 33
    .line 34
    if-gez v1, :cond_25

    .line 35
    .line 36
    move p0, v0

    .line 37
    goto :goto_2b

    .line 38
    :cond_25
    const/high16 v1, 0x43b40000    # 360.0f

    .line 39
    .line 40
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    :goto_2b
    const/4 v1, 0x1

    .line 45
    const/4 v2, 0x0

    .line 46
    move-object v3, v2

    .line 47
    move v2, v1

    .line 48
    move v1, v0

    .line 49
    move v0, p1

    .line 50
    :goto_31
    sub-float v4, v1, p1

    .line 51
    .line 52
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const v5, 0x3ecccccd    # 0.4f

    .line 57
    .line 58
    .line 59
    cmpl-float v4, v4, v5

    .line 60
    .line 61
    if-ltz v4, :cond_5e

    .line 62
    .line 63
    invoke-static {p0, v0, p2}, Landroidx/core/content/res/CamColor;->findCamByJ(FFF)Landroidx/core/content/res/CamColor;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const/high16 v5, 0x40000000    # 2.0f

    .line 68
    .line 69
    if-eqz v2, :cond_53

    .line 70
    .line 71
    if-eqz v4, :cond_4d

    .line 72
    .line 73
    invoke-virtual {v4, p3}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    return p0

    .line 78
    :cond_4d
    sub-float v0, p1, v1

    .line 79
    .line 80
    div-float/2addr v0, v5

    .line 81
    add-float/2addr v0, v1

    .line 82
    const/4 v2, 0x0

    .line 83
    goto :goto_31

    .line 84
    :cond_53
    if-nez v4, :cond_57

    .line 85
    .line 86
    move p1, v0

    .line 87
    goto :goto_59

    .line 88
    :cond_57
    move v1, v0

    .line 89
    move-object v3, v4

    .line 90
    :goto_59
    sub-float v0, p1, v1

    .line 91
    .line 92
    div-float/2addr v0, v5

    .line 93
    add-float/2addr v0, v1

    .line 94
    goto :goto_31

    .line 95
    :cond_5e
    if-nez v3, :cond_65

    .line 96
    .line 97
    invoke-static {p2}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    return p0

    .line 102
    :cond_65
    invoke-virtual {v3, p3}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    return p0

    .line 107
    :cond_6a
    :goto_6a
    invoke-static {p2}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    return p0
.end method


# virtual methods
.method public distance(Landroidx/core/content/res/CamColor;)F
    .registers 6
    .param p1    # Landroidx/core/content/res/CamColor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJStar()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getJStar()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-float/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getAStar()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getAStar()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-float/2addr v1, v2

    .line 19
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getBStar()F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getBStar()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sub-float/2addr v2, p1

    .line 28
    mul-float/2addr v0, v0

    .line 29
    mul-float/2addr v1, v1

    .line 30
    add-float/2addr v1, v0

    .line 31
    mul-float/2addr v2, v2

    .line 32
    add-float/2addr v2, v1

    .line 33
    float-to-double v0, v2

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    const-wide v2, 0x3fe428f5c28f5c29L    # 0.63

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    const-wide v2, 0x3ff68f5c28f5c28fL    # 1.41

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    mul-double/2addr v0, v2

    .line 53
    double-to-float p1, v0

    .line 54
    return p1
.end method

.method public getAStar()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = -Infinity
        fromInclusive = false
        to = Infinity
        toInclusive = false
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 2
    .line 3
    return v0
.end method

.method public getBStar()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = -Infinity
        fromInclusive = false
        to = Infinity
        toInclusive = false
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    .line 2
    .line 3
    return v0
.end method

.method public getChroma()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = Infinity
        toInclusive = false
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 2
    .line 3
    return v0
.end method

.method public getHue()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 360.0
        toInclusive = false
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mHue:F

    .line 2
    .line 3
    return v0
.end method

.method public getJ()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 100.0
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mJ:F

    .line 2
    .line 3
    return v0
.end method

.method public getJStar()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 100.0
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 2
    .line 3
    return v0
.end method

.method public getM()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = Infinity
        toInclusive = false
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mM:F

    .line 2
    .line 3
    return v0
.end method

.method public getQ()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = Infinity
        toInclusive = false
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mQ:F

    .line 2
    .line 3
    return v0
.end method

.method public getS()F
    .registers 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = Infinity
        toInclusive = false
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mS:F

    .line 2
    .line 3
    return v0
.end method

.method public viewed(Landroidx/core/content/res/ViewingConditions;)I
    .registers 18
    .param p1    # Landroidx/core/content/res/ViewingConditions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/core/content/res/CamColor;->getChroma()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmpl-double v0, v0, v2

    .line 9
    .line 10
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 11
    .line 12
    if-eqz v0, :cond_28

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/core/content/res/CamColor;->getJ()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    float-to-double v0, v0

    .line 19
    cmpl-double v0, v0, v2

    .line 20
    .line 21
    if-nez v0, :cond_17

    .line 22
    .line 23
    goto :goto_28

    .line 24
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroidx/core/content/res/CamColor;->getChroma()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/core/content/res/CamColor;->getJ()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    float-to-double v6, v1

    .line 33
    div-double/2addr v6, v4

    .line 34
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    double-to-float v1, v6

    .line 39
    div-float/2addr v0, v1

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    :goto_28
    const/4 v0, 0x0

    .line 42
    :goto_29
    float-to-double v0, v0

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getN()F

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    float-to-double v6, v6

    .line 48
    const-wide v8, 0x3fd28f5c28f5c28fL    # 0.29

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    const-wide v8, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    sub-double/2addr v8, v6

    .line 63
    const-wide v6, 0x3fe75c28f5c28f5cL    # 0.73

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    div-double/2addr v0, v6

    .line 73
    const-wide v6, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    double-to-float v0, v0

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroidx/core/content/res/CamColor;->getHue()F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const v6, 0x40490fdb    # (float)Math.PI

    .line 88
    .line 89
    .line 90
    mul-float/2addr v1, v6

    .line 91
    const/high16 v6, 0x43340000    # 180.0f

    .line 92
    .line 93
    div-float/2addr v1, v6

    .line 94
    float-to-double v6, v1

    .line 95
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 96
    .line 97
    add-double/2addr v8, v6

    .line 98
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 99
    .line 100
    .line 101
    move-result-wide v8

    .line 102
    const-wide v10, 0x400e666666666666L    # 3.8

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    add-double/2addr v8, v10

    .line 108
    double-to-float v1, v8

    .line 109
    const/high16 v8, 0x3e800000    # 0.25f

    .line 110
    .line 111
    mul-float/2addr v1, v8

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroidx/core/content/res/CamColor;->getJ()F

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    float-to-double v9, v9

    .line 121
    div-double/2addr v9, v4

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    float-to-double v4, v4

    .line 127
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 128
    .line 129
    div-double/2addr v11, v4

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getZ()F

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    float-to-double v4, v4

    .line 135
    div-double/2addr v11, v4

    .line 136
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 137
    .line 138
    .line 139
    move-result-wide v4

    .line 140
    double-to-float v4, v4

    .line 141
    mul-float/2addr v8, v4

    .line 142
    const v4, 0x45706276

    .line 143
    .line 144
    .line 145
    mul-float/2addr v1, v4

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNc()F

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    mul-float/2addr v1, v4

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNcb()F

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    mul-float/2addr v1, v4

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNbb()F

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    div-float/2addr v8, v4

    .line 161
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 162
    .line 163
    .line 164
    move-result-wide v4

    .line 165
    double-to-float v4, v4

    .line 166
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 167
    .line 168
    .line 169
    move-result-wide v5

    .line 170
    double-to-float v5, v5

    .line 171
    const v6, 0x3e9c28f6    # 0.305f

    .line 172
    .line 173
    .line 174
    add-float/2addr v6, v8

    .line 175
    const/high16 v7, 0x41b80000    # 23.0f

    .line 176
    .line 177
    mul-float/2addr v6, v7

    .line 178
    mul-float/2addr v6, v0

    .line 179
    mul-float/2addr v1, v7

    .line 180
    const/high16 v7, 0x41300000    # 11.0f

    .line 181
    .line 182
    mul-float/2addr v7, v0

    .line 183
    mul-float/2addr v7, v5

    .line 184
    add-float/2addr v7, v1

    .line 185
    const/high16 v1, 0x42d80000    # 108.0f

    .line 186
    .line 187
    mul-float/2addr v0, v1

    .line 188
    mul-float/2addr v0, v4

    .line 189
    add-float/2addr v0, v7

    .line 190
    div-float/2addr v6, v0

    .line 191
    mul-float/2addr v5, v6

    .line 192
    mul-float/2addr v6, v4

    .line 193
    const/high16 v0, 0x43e60000    # 460.0f

    .line 194
    .line 195
    mul-float/2addr v8, v0

    .line 196
    const v0, 0x43e18000    # 451.0f

    .line 197
    .line 198
    .line 199
    mul-float/2addr v0, v5

    .line 200
    add-float/2addr v0, v8

    .line 201
    const/high16 v1, 0x43900000    # 288.0f

    .line 202
    .line 203
    mul-float/2addr v1, v6

    .line 204
    add-float/2addr v1, v0

    .line 205
    const v0, 0x44af6000    # 1403.0f

    .line 206
    .line 207
    .line 208
    div-float/2addr v1, v0

    .line 209
    const v4, 0x445ec000    # 891.0f

    .line 210
    .line 211
    .line 212
    mul-float/2addr v4, v5

    .line 213
    sub-float v4, v8, v4

    .line 214
    .line 215
    const v7, 0x43828000    # 261.0f

    .line 216
    .line 217
    .line 218
    mul-float/2addr v7, v6

    .line 219
    sub-float/2addr v4, v7

    .line 220
    div-float/2addr v4, v0

    .line 221
    const/high16 v7, 0x435c0000    # 220.0f

    .line 222
    .line 223
    mul-float/2addr v5, v7

    .line 224
    sub-float/2addr v8, v5

    .line 225
    const v5, 0x45c4e000    # 6300.0f

    .line 226
    .line 227
    .line 228
    mul-float/2addr v6, v5

    .line 229
    sub-float/2addr v8, v6

    .line 230
    div-float/2addr v8, v0

    .line 231
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    float-to-double v5, v0

    .line 236
    const-wide v9, 0x403b2147ae147ae1L    # 27.13

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    mul-double/2addr v5, v9

    .line 242
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    float-to-double v11, v0

    .line 247
    const-wide/high16 v13, 0x4079000000000000L    # 400.0

    .line 248
    .line 249
    sub-double v11, v13, v11

    .line 250
    .line 251
    div-double/2addr v5, v11

    .line 252
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 253
    .line 254
    .line 255
    move-result-wide v5

    .line 256
    double-to-float v0, v5

    .line 257
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    const/high16 v6, 0x42c80000    # 100.0f

    .line 266
    .line 267
    div-float v5, v6, v5

    .line 268
    .line 269
    mul-float/2addr v5, v1

    .line 270
    float-to-double v0, v0

    .line 271
    const-wide v11, 0x40030c30c30c30c3L    # 2.380952380952381

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 277
    .line 278
    .line 279
    move-result-wide v0

    .line 280
    double-to-float v0, v0

    .line 281
    mul-float/2addr v5, v0

    .line 282
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    float-to-double v0, v0

    .line 287
    mul-double/2addr v0, v9

    .line 288
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    move v15, v6

    .line 293
    float-to-double v6, v7

    .line 294
    sub-double v6, v13, v6

    .line 295
    .line 296
    div-double/2addr v0, v6

    .line 297
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    .line 298
    .line 299
    .line 300
    move-result-wide v0

    .line 301
    double-to-float v0, v0

    .line 302
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    div-float v6, v15, v4

    .line 311
    .line 312
    mul-float/2addr v6, v1

    .line 313
    float-to-double v0, v0

    .line 314
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 315
    .line 316
    .line 317
    move-result-wide v0

    .line 318
    double-to-float v0, v0

    .line 319
    mul-float/2addr v6, v0

    .line 320
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    float-to-double v0, v0

    .line 325
    mul-double/2addr v0, v9

    .line 326
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    float-to-double v9, v4

    .line 331
    sub-double/2addr v13, v9

    .line 332
    div-double/2addr v0, v13

    .line 333
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    .line 334
    .line 335
    .line 336
    move-result-wide v0

    .line 337
    double-to-float v0, v0

    .line 338
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    div-float v2, v15, v2

    .line 347
    .line 348
    mul-float/2addr v2, v1

    .line 349
    float-to-double v0, v0

    .line 350
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 351
    .line 352
    .line 353
    move-result-wide v0

    .line 354
    double-to-float v0, v0

    .line 355
    mul-float/2addr v2, v0

    .line 356
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    const/4 v1, 0x0

    .line 361
    aget v0, v0, v1

    .line 362
    .line 363
    div-float/2addr v5, v0

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    const/4 v3, 0x1

    .line 369
    aget v0, v0, v3

    .line 370
    .line 371
    div-float/2addr v6, v0

    .line 372
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    const/4 v4, 0x2

    .line 377
    aget v0, v0, v4

    .line 378
    .line 379
    div-float/2addr v2, v0

    .line 380
    sget-object v0, Landroidx/core/content/res/CamUtils;->CAM16RGB_TO_XYZ:[[F

    .line 381
    .line 382
    aget-object v7, v0, v1

    .line 383
    .line 384
    aget v8, v7, v1

    .line 385
    .line 386
    mul-float/2addr v8, v5

    .line 387
    aget v9, v7, v3

    .line 388
    .line 389
    mul-float/2addr v9, v6

    .line 390
    add-float/2addr v9, v8

    .line 391
    aget v7, v7, v4

    .line 392
    .line 393
    mul-float/2addr v7, v2

    .line 394
    add-float/2addr v7, v9

    .line 395
    aget-object v8, v0, v3

    .line 396
    .line 397
    aget v9, v8, v1

    .line 398
    .line 399
    mul-float/2addr v9, v5

    .line 400
    aget v10, v8, v3

    .line 401
    .line 402
    mul-float/2addr v10, v6

    .line 403
    add-float/2addr v10, v9

    .line 404
    aget v8, v8, v4

    .line 405
    .line 406
    mul-float/2addr v8, v2

    .line 407
    add-float/2addr v8, v10

    .line 408
    aget-object v0, v0, v4

    .line 409
    .line 410
    aget v1, v0, v1

    .line 411
    .line 412
    mul-float/2addr v5, v1

    .line 413
    aget v1, v0, v3

    .line 414
    .line 415
    mul-float/2addr v6, v1

    .line 416
    add-float/2addr v6, v5

    .line 417
    aget v0, v0, v4

    .line 418
    .line 419
    mul-float/2addr v2, v0

    .line 420
    add-float/2addr v2, v6

    .line 421
    float-to-double v9, v7

    .line 422
    float-to-double v11, v8

    .line 423
    float-to-double v13, v2

    .line 424
    invoke-static/range {v9 .. v14}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    return v0
.end method

.method public viewedInSrgb()I
    .registers 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
