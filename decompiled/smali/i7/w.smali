.class public final Li7/w;
.super Landroid/view/View;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:F

.field public c:I

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:Z

.field public j:J


# direct methods
.method private setSignalStrength(F)V
    .locals 0

    .line 1
    iput p1, p0, Li7/w;->b:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x42c80000    # 100.0f

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-direct {p0, p1}, Li7/w;->setSignalStrength(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Li7/w;->c:I

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    const/high16 v3, 0x40000000    # 2.0f

    .line 14
    .line 15
    div-float/2addr v2, v3

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    int-to-float v4, v4

    .line 21
    div-float/2addr v4, v3

    .line 22
    iget v5, v0, Li7/w;->b:F

    .line 23
    .line 24
    iget v6, v0, Li7/w;->h:F

    .line 25
    .line 26
    cmpg-float v5, v5, v6

    .line 27
    .line 28
    const/high16 v6, -0x10000

    .line 29
    .line 30
    if-gez v5, :cond_2

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    iget-wide v9, v0, Li7/w;->j:J

    .line 37
    .line 38
    sub-long v9, v7, v9

    .line 39
    .line 40
    const-wide/16 v11, 0x1f4

    .line 41
    .line 42
    cmp-long v1, v9, v11

    .line 43
    .line 44
    if-ltz v1, :cond_0

    .line 45
    .line 46
    iget-boolean v1, v0, Li7/w;->i:Z

    .line 47
    .line 48
    xor-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    iput-boolean v1, v0, Li7/w;->i:Z

    .line 51
    .line 52
    iput-wide v7, v0, Li7/w;->j:J

    .line 53
    .line 54
    :cond_0
    iget-boolean v1, v0, Li7/w;->i:Z

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    new-instance v1, Landroid/graphics/Paint;

    .line 59
    .line 60
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    .line 65
    .line 66
    const/16 v3, 0xc8

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    int-to-float v3, v3

    .line 84
    const/high16 v5, 0x40c00000    # 6.0f

    .line 85
    .line 86
    div-float/2addr v3, v5

    .line 87
    move-object/from16 v13, p1

    .line 88
    .line 89
    invoke-virtual {v13, v2, v4, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-virtual {v0, v11, v12}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    move-object/from16 v13, p1

    .line 97
    .line 98
    new-instance v5, Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 101
    .line 102
    .line 103
    const/high16 v7, -0x1000000

    .line 104
    .line 105
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    .line 107
    .line 108
    const/16 v7, 0x96

    .line 109
    .line 110
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    int-to-float v8, v8

    .line 118
    const/high16 v9, 0x42c80000    # 100.0f

    .line 119
    .line 120
    sub-float/2addr v8, v9

    .line 121
    div-float/2addr v8, v3

    .line 122
    sub-float v14, v2, v8

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    int-to-float v8, v8

    .line 129
    sub-float/2addr v8, v9

    .line 130
    div-float/2addr v8, v3

    .line 131
    sub-float v15, v4, v8

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    int-to-float v8, v8

    .line 138
    sub-float/2addr v8, v9

    .line 139
    div-float/2addr v8, v3

    .line 140
    add-float v16, v8, v2

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    int-to-float v8, v8

    .line 147
    sub-float/2addr v8, v9

    .line 148
    div-float/2addr v8, v3

    .line 149
    add-float v17, v8, v4

    .line 150
    .line 151
    iget v8, v0, Li7/w;->g:F

    .line 152
    .line 153
    move/from16 v19, v8

    .line 154
    .line 155
    move-object/from16 v20, v5

    .line 156
    .line 157
    move/from16 v18, v8

    .line 158
    .line 159
    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    int-to-float v5, v5

    .line 167
    int-to-float v8, v1

    .line 168
    iget v10, v0, Li7/w;->d:F

    .line 169
    .line 170
    mul-float/2addr v10, v8

    .line 171
    div-float/2addr v5, v10

    .line 172
    div-float v18, v5, v3

    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    int-to-float v10, v10

    .line 179
    iget v11, v0, Li7/w;->e:F

    .line 180
    .line 181
    mul-float/2addr v10, v11

    .line 182
    add-float v11, v5, v18

    .line 183
    .line 184
    mul-float v12, v11, v8

    .line 185
    .line 186
    sub-float v12, v12, v18

    .line 187
    .line 188
    div-float/2addr v12, v3

    .line 189
    sub-float/2addr v2, v12

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    int-to-float v12, v12

    .line 195
    iget v13, v0, Li7/w;->f:F

    .line 196
    .line 197
    mul-float/2addr v12, v13

    .line 198
    div-float/2addr v12, v3

    .line 199
    add-float v17, v12, v4

    .line 200
    .line 201
    new-instance v19, Landroid/graphics/LinearGradient;

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    int-to-float v3, v3

    .line 208
    const v4, -0xff0100

    .line 209
    .line 210
    .line 211
    const/16 v12, -0x100

    .line 212
    .line 213
    filled-new-array {v4, v12, v6}, [I

    .line 214
    .line 215
    .line 216
    move-result-object v24

    .line 217
    const/4 v4, 0x3

    .line 218
    new-array v4, v4, [F

    .line 219
    .line 220
    fill-array-data v4, :array_0

    .line 221
    .line 222
    .line 223
    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 224
    .line 225
    const/16 v20, 0x0

    .line 226
    .line 227
    const/16 v21, 0x0

    .line 228
    .line 229
    const/16 v22, 0x0

    .line 230
    .line 231
    move/from16 v23, v3

    .line 232
    .line 233
    move-object/from16 v25, v4

    .line 234
    .line 235
    invoke-direct/range {v19 .. v26}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 236
    .line 237
    .line 238
    move-object/from16 v3, v19

    .line 239
    .line 240
    new-instance v4, Landroid/graphics/Paint;

    .line 241
    .line 242
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 246
    .line 247
    .line 248
    new-instance v3, Landroid/graphics/Paint;

    .line 249
    .line 250
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 251
    .line 252
    .line 253
    const v6, -0xbbbbbc

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    .line 258
    .line 259
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 260
    .line 261
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 265
    .line 266
    .line 267
    const/4 v6, 0x0

    .line 268
    :goto_0
    if-ge v6, v1, :cond_4

    .line 269
    .line 270
    iget v7, v0, Li7/w;->b:F

    .line 271
    .line 272
    div-float/2addr v7, v9

    .line 273
    const/high16 v12, 0x3f800000    # 1.0f

    .line 274
    .line 275
    invoke-static {v12, v7}, Ljava/lang/Math;->min(FF)F

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    mul-float/2addr v7, v10

    .line 280
    add-int/lit8 v12, v6, 0x1

    .line 281
    .line 282
    int-to-float v13, v12

    .line 283
    div-float/2addr v13, v8

    .line 284
    mul-float/2addr v13, v7

    .line 285
    int-to-float v6, v6

    .line 286
    mul-float v7, v6, v11

    .line 287
    .line 288
    add-float v14, v7, v2

    .line 289
    .line 290
    add-float v16, v14, v5

    .line 291
    .line 292
    sub-float v15, v17, v13

    .line 293
    .line 294
    iget v7, v0, Li7/w;->b:F

    .line 295
    .line 296
    div-float/2addr v7, v9

    .line 297
    div-float/2addr v6, v8

    .line 298
    cmpl-float v6, v7, v6

    .line 299
    .line 300
    if-lez v6, :cond_3

    .line 301
    .line 302
    move/from16 v19, v18

    .line 303
    .line 304
    move-object/from16 v13, p1

    .line 305
    .line 306
    move-object/from16 v20, v4

    .line 307
    .line 308
    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 309
    .line 310
    .line 311
    move-object/from16 v20, v3

    .line 312
    .line 313
    goto :goto_1

    .line 314
    :cond_3
    move/from16 v19, v18

    .line 315
    .line 316
    move-object/from16 v13, p1

    .line 317
    .line 318
    move-object/from16 v20, v3

    .line 319
    .line 320
    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 321
    .line 322
    .line 323
    :goto_1
    move v6, v12

    .line 324
    move-object/from16 v3, v20

    .line 325
    .line 326
    goto :goto_0

    .line 327
    :cond_4
    return-void

    .line 328
    nop

    .line 329
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
