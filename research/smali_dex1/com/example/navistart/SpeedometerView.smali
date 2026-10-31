.class public Lcom/example/navistart/SpeedometerView;
.super Landroid/view/View;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:D

.field public c:D

.field public d:I

.field public e:D

.field public f:I

.field public final g:Ljava/util/ArrayList;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Paint;

.field public final j:Landroid/graphics/Paint;

.field public final k:Landroid/graphics/Paint;

.field public final l:Landroid/graphics/Paint;

.field public final m:Landroid/graphics/Paint;

.field public final n:Landroid/graphics/Paint;

.field public o:I

.field public final p:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/example/navistart/SpeedometerView;->b:D

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/example/navistart/SpeedometerView;->c:D

    .line 11
    .line 12
    const/16 v0, 0xb4

    .line 13
    .line 14
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/example/navistart/SpeedometerView;->d:I

    .line 19
    .line 20
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/example/navistart/SpeedometerView;->e:D

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/example/navistart/SpeedometerView;->f:I

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/example/navistart/SpeedometerView;->g:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object v2, Le0/l2;->f:[I

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/high16 p2, 0x42c80000    # 100.0f

    .line 56
    .line 57
    :try_start_38
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    float-to-double v4, p2

    .line 62
    invoke-virtual {p0, v4, v5}, Lcom/example/navistart/SpeedometerView;->setMaxSpeed(D)V

    .line 63
    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    const/4 v2, 0x2

    .line 67
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    float-to-double v4, p2

    .line 72
    invoke-virtual {p0, v4, v5}, Lcom/example/navistart/SpeedometerView;->setSpeed(D)V

    .line 73
    .line 74
    .line 75
    const/high16 p2, 0x41400000    # 12.0f

    .line 76
    .line 77
    mul-float/2addr v1, p2

    .line 78
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-virtual {p0, p2}, Lcom/example/navistart/SpeedometerView;->setLabelTextSize(I)V
    :try_end_58
    .catchall {:try_start_38 .. :try_end_58} :catchall_122

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_65

    .line 97
    .line 98
    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, v2, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 100
    .line 101
    .line 102
    :cond_65
    new-instance p1, Landroid/graphics/Paint;

    .line 103
    .line 104
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lcom/example/navistart/SpeedometerView;->h:Landroid/graphics/Paint;

    .line 108
    .line 109
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/example/navistart/SpeedometerView;->h:Landroid/graphics/Paint;

    .line 115
    .line 116
    const/16 v1, 0x7f

    .line 117
    .line 118
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    .line 124
    .line 125
    new-instance p1, Landroid/graphics/Paint;

    .line 126
    .line 127
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 128
    .line 129
    .line 130
    iput-object p1, p0, Lcom/example/navistart/SpeedometerView;->i:Landroid/graphics/Paint;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/example/navistart/SpeedometerView;->i:Landroid/graphics/Paint;

    .line 136
    .line 137
    const/16 p2, 0x96

    .line 138
    .line 139
    invoke-static {p2, p2, p2}, Landroid/graphics/Color;->rgb(III)I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Landroid/graphics/Paint;

    .line 147
    .line 148
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 149
    .line 150
    .line 151
    iput-object p1, p0, Lcom/example/navistart/SpeedometerView;->m:Landroid/graphics/Paint;

    .line 152
    .line 153
    const/4 p2, -0x1

    .line 154
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/example/navistart/SpeedometerView;->m:Landroid/graphics/Paint;

    .line 158
    .line 159
    iget p2, p0, Lcom/example/navistart/SpeedometerView;->o:I

    .line 160
    .line 161
    int-to-float p2, p2

    .line 162
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/example/navistart/SpeedometerView;->m:Landroid/graphics/Paint;

    .line 166
    .line 167
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    const p2, 0x7f070232

    .line 177
    .line 178
    .line 179
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iput-object p1, p0, Lcom/example/navistart/SpeedometerView;->p:Landroid/graphics/Bitmap;

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    iget-object v1, p0, Lcom/example/navistart/SpeedometerView;->p:Landroid/graphics/Bitmap;

    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    div-int/2addr v1, v2

    .line 196
    invoke-static {p1, v3, v3, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iput-object p1, p0, Lcom/example/navistart/SpeedometerView;->p:Landroid/graphics/Bitmap;

    .line 201
    .line 202
    new-instance p1, Landroid/graphics/Paint;

    .line 203
    .line 204
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 205
    .line 206
    .line 207
    iput-object p1, p0, Lcom/example/navistart/SpeedometerView;->j:Landroid/graphics/Paint;

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 210
    .line 211
    .line 212
    new-instance p1, Landroid/graphics/Paint;

    .line 213
    .line 214
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 215
    .line 216
    .line 217
    iput-object p1, p0, Lcom/example/navistart/SpeedometerView;->l:Landroid/graphics/Paint;

    .line 218
    .line 219
    const/high16 p2, 0x40400000    # 3.0f

    .line 220
    .line 221
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/example/navistart/SpeedometerView;->l:Landroid/graphics/Paint;

    .line 225
    .line 226
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 227
    .line 228
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lcom/example/navistart/SpeedometerView;->l:Landroid/graphics/Paint;

    .line 232
    .line 233
    iget v1, p0, Lcom/example/navistart/SpeedometerView;->d:I

    .line 234
    .line 235
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    .line 237
    .line 238
    new-instance p1, Landroid/graphics/Paint;

    .line 239
    .line 240
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 241
    .line 242
    .line 243
    iput-object p1, p0, Lcom/example/navistart/SpeedometerView;->n:Landroid/graphics/Paint;

    .line 244
    .line 245
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/example/navistart/SpeedometerView;->n:Landroid/graphics/Paint;

    .line 249
    .line 250
    const/high16 v1, 0x40a00000    # 5.0f

    .line 251
    .line 252
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lcom/example/navistart/SpeedometerView;->n:Landroid/graphics/Paint;

    .line 256
    .line 257
    iget v2, p0, Lcom/example/navistart/SpeedometerView;->d:I

    .line 258
    .line 259
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    .line 261
    .line 262
    new-instance p1, Landroid/graphics/Paint;

    .line 263
    .line 264
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 265
    .line 266
    .line 267
    iput-object p1, p0, Lcom/example/navistart/SpeedometerView;->k:Landroid/graphics/Paint;

    .line 268
    .line 269
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 270
    .line 271
    .line 272
    iget-object p1, p0, Lcom/example/navistart/SpeedometerView;->k:Landroid/graphics/Paint;

    .line 273
    .line 274
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lcom/example/navistart/SpeedometerView;->k:Landroid/graphics/Paint;

    .line 278
    .line 279
    const/16 p2, 0xc8

    .line 280
    .line 281
    const/16 v0, 0xff

    .line 282
    .line 283
    invoke-static {p2, v0, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 284
    .line 285
    .line 286
    move-result p2

    .line 287
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :catchall_122
    move-exception p2

    .line 292
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 293
    .line 294
    .line 295
    throw p2
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;F)Landroid/graphics/RectF;
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sub-int/2addr p1, v1

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-int/2addr p1, v1

    .line 29
    mul-int/lit8 p1, p1, 0x2

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-lt p1, v0, :cond_29

    .line 33
    .line 34
    new-instance v2, Landroid/graphics/RectF;

    .line 35
    .line 36
    int-to-float v3, v0

    .line 37
    mul-float/2addr v3, p2

    .line 38
    invoke-direct {v2, v1, v1, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 39
    .line 40
    .line 41
    goto :goto_30

    .line 42
    :cond_29
    new-instance v2, Landroid/graphics/RectF;

    .line 43
    .line 44
    int-to-float v3, p1

    .line 45
    mul-float/2addr v3, p2

    .line 46
    invoke-direct {v2, v1, v1, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 47
    .line 48
    .line 49
    :goto_30
    int-to-float p2, v0

    .line 50
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    sub-float/2addr p2, v0

    .line 55
    const/high16 v0, 0x40000000    # 2.0f

    .line 56
    .line 57
    div-float/2addr p2, v0

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    int-to-float v1, v1

    .line 63
    add-float/2addr p2, v1

    .line 64
    int-to-float p1, p1

    .line 65
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    sub-float/2addr p1, v1

    .line 70
    div-float/2addr p1, v0

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    int-to-float v0, v0

    .line 76
    add-float/2addr p1, v0

    .line 77
    invoke-virtual {v2, p2, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 78
    .line 79
    .line 80
    return-object v2
.end method

.method public getDefaultColor()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/example/navistart/SpeedometerView;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getLabelConverter()Le0/t2;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getLabelTextSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/example/navistart/SpeedometerView;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public getMajorTickStep()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/example/navistart/SpeedometerView;->e:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxSpeed()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/example/navistart/SpeedometerView;->b:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMinorTicks()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/example/navistart/SpeedometerView;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getSpeed()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/example/navistart/SpeedometerView;->c:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 10
    .line 11
    .line 12
    const/high16 v7, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-virtual {v0, v1, v7}, Lcom/example/navistart/SpeedometerView;->a(Landroid/graphics/Canvas;F)Landroid/graphics/RectF;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v5, 0x1

    .line 19
    iget-object v6, v0, Lcom/example/navistart/SpeedometerView;->h:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/high16 v3, 0x43340000    # 180.0f

    .line 22
    .line 23
    const/high16 v4, 0x43340000    # 180.0f

    .line 24
    .line 25
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 26
    .line 27
    .line 28
    move-object v8, v2

    .line 29
    const v2, 0x3f666666    # 0.9f

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/example/navistart/SpeedometerView;->a(Landroid/graphics/Canvas;F)Landroid/graphics/RectF;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v6, v0, Lcom/example/navistart/SpeedometerView;->i:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    float-to-double v2, v2

    .line 46
    const-wide v4, 0x3ff199999999999aL    # 1.1

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    mul-double/2addr v2, v4

    .line 52
    double-to-int v2, v2

    .line 53
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    float-to-double v9, v3

    .line 58
    mul-double/2addr v9, v4

    .line 59
    double-to-int v3, v9

    .line 60
    div-int/lit8 v3, v3, 0x2

    .line 61
    .line 62
    iget-object v4, v0, Lcom/example/navistart/SpeedometerView;->p:Landroid/graphics/Bitmap;

    .line 63
    .line 64
    const/4 v9, 0x1

    .line 65
    invoke-static {v4, v2, v3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    const v5, 0x3f8ccccd    # 1.1f

    .line 78
    .line 79
    .line 80
    mul-float/2addr v4, v5

    .line 81
    const/high16 v10, 0x40000000    # 2.0f

    .line 82
    .line 83
    div-float/2addr v4, v10

    .line 84
    sub-float/2addr v3, v4

    .line 85
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    mul-float/2addr v6, v5

    .line 94
    div-float/2addr v6, v10

    .line 95
    sub-float/2addr v4, v6

    .line 96
    iget-object v5, v0, Lcom/example/navistart/SpeedometerView;->j:Landroid/graphics/Paint;

    .line 97
    .line 98
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    iget-wide v2, v0, Lcom/example/navistart/SpeedometerView;->e:D

    .line 102
    .line 103
    iget-wide v4, v0, Lcom/example/navistart/SpeedometerView;->b:D

    .line 104
    .line 105
    div-double/2addr v2, v4

    .line 106
    const/high16 v4, 0x43200000    # 160.0f

    .line 107
    .line 108
    float-to-double v4, v4

    .line 109
    mul-double/2addr v2, v4

    .line 110
    double-to-float v8, v2

    .line 111
    iget v2, v0, Lcom/example/navistart/SpeedometerView;->f:I

    .line 112
    .line 113
    add-int/2addr v2, v9

    .line 114
    int-to-float v2, v2

    .line 115
    div-float v11, v8, v2

    .line 116
    .line 117
    invoke-virtual {v0, v1, v7}, Lcom/example/navistart/SpeedometerView;->a(Landroid/graphics/Canvas;F)Landroid/graphics/RectF;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    const v13, 0x3eb33333    # 0.35f

    .line 126
    .line 127
    .line 128
    mul-float v14, v2, v13

    .line 129
    .line 130
    const/high16 v15, 0x41200000    # 10.0f

    .line 131
    .line 132
    move/from16 v16, v15

    .line 133
    .line 134
    :goto_85
    const/high16 v17, 0x432a0000    # 170.0f

    .line 135
    .line 136
    cmpg-float v2, v16, v17

    .line 137
    .line 138
    const-wide v18, 0x400921fb54442d18L    # Math.PI

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    const/high16 v20, 0x43340000    # 180.0f

    .line 144
    .line 145
    if-gtz v2, :cond_160

    .line 146
    .line 147
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    float-to-double v2, v2

    .line 152
    sub-float v4, v20, v16

    .line 153
    .line 154
    div-float v4, v4, v20

    .line 155
    .line 156
    float-to-double v4, v4

    .line 157
    mul-double v4, v4, v18

    .line 158
    .line 159
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 160
    .line 161
    .line 162
    move-result-wide v21

    .line 163
    const/high16 v23, 0x41700000    # 15.0f

    .line 164
    .line 165
    sub-float v6, v14, v23

    .line 166
    .line 167
    move/from16 v24, v10

    .line 168
    .line 169
    float-to-double v9, v6

    .line 170
    mul-double v21, v21, v9

    .line 171
    .line 172
    add-double v2, v21, v2

    .line 173
    .line 174
    double-to-float v2, v2

    .line 175
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    move/from16 v22, v8

    .line 180
    .line 181
    float-to-double v7, v3

    .line 182
    div-float v3, v16, v20

    .line 183
    .line 184
    move/from16 v25, v13

    .line 185
    .line 186
    move/from16 v26, v14

    .line 187
    .line 188
    float-to-double v13, v3

    .line 189
    mul-double v13, v13, v18

    .line 190
    .line 191
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 192
    .line 193
    .line 194
    move-result-wide v27

    .line 195
    mul-double v27, v27, v9

    .line 196
    .line 197
    sub-double v7, v7, v27

    .line 198
    .line 199
    double-to-float v3, v7

    .line 200
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    float-to-double v6, v6

    .line 205
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 206
    .line 207
    .line 208
    move-result-wide v4

    .line 209
    add-float v8, v26, v23

    .line 210
    .line 211
    float-to-double v8, v8

    .line 212
    mul-double/2addr v4, v8

    .line 213
    add-double/2addr v4, v6

    .line 214
    double-to-float v4, v4

    .line 215
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    float-to-double v5, v5

    .line 220
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 221
    .line 222
    .line 223
    move-result-wide v13

    .line 224
    mul-double/2addr v13, v8

    .line 225
    sub-double/2addr v5, v13

    .line 226
    double-to-float v5, v5

    .line 227
    iget-object v6, v0, Lcom/example/navistart/SpeedometerView;->l:Landroid/graphics/Paint;

    .line 228
    .line 229
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 230
    .line 231
    .line 232
    const/4 v7, 0x1

    .line 233
    :goto_e8
    iget v1, v0, Lcom/example/navistart/SpeedometerView;->f:I

    .line 234
    .line 235
    if-gt v7, v1, :cond_f8

    .line 236
    .line 237
    int-to-float v1, v7

    .line 238
    mul-float/2addr v1, v11

    .line 239
    add-float v1, v1, v16

    .line 240
    .line 241
    div-float v2, v11, v24

    .line 242
    .line 243
    add-float v2, v2, v17

    .line 244
    .line 245
    cmpl-float v2, v1, v2

    .line 246
    .line 247
    if-ltz v2, :cond_fd

    .line 248
    .line 249
    :cond_f8
    move-object/from16 v1, p1

    .line 250
    .line 251
    move/from16 v10, v26

    .line 252
    .line 253
    goto :goto_152

    .line 254
    :cond_fd
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    float-to-double v2, v2

    .line 259
    sub-float v4, v20, v1

    .line 260
    .line 261
    div-float v4, v4, v20

    .line 262
    .line 263
    float-to-double v4, v4

    .line 264
    mul-double v4, v4, v18

    .line 265
    .line 266
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 267
    .line 268
    .line 269
    move-result-wide v13

    .line 270
    move v6, v1

    .line 271
    move/from16 v10, v26

    .line 272
    .line 273
    move-wide/from16 v26, v2

    .line 274
    .line 275
    float-to-double v1, v10

    .line 276
    mul-double/2addr v13, v1

    .line 277
    add-double v13, v13, v26

    .line 278
    .line 279
    double-to-float v3, v13

    .line 280
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    .line 281
    .line 282
    .line 283
    move-result v13

    .line 284
    float-to-double v13, v13

    .line 285
    div-float v6, v6, v20

    .line 286
    .line 287
    move-wide/from16 v26, v1

    .line 288
    .line 289
    float-to-double v1, v6

    .line 290
    mul-double v1, v1, v18

    .line 291
    .line 292
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 293
    .line 294
    .line 295
    move-result-wide v28

    .line 296
    mul-double v28, v28, v26

    .line 297
    .line 298
    sub-double v13, v13, v28

    .line 299
    .line 300
    double-to-float v6, v13

    .line 301
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    .line 302
    .line 303
    .line 304
    move-result v13

    .line 305
    float-to-double v13, v13

    .line 306
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 307
    .line 308
    .line 309
    move-result-wide v4

    .line 310
    mul-double/2addr v4, v8

    .line 311
    add-double/2addr v4, v13

    .line 312
    double-to-float v4, v4

    .line 313
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    float-to-double v13, v5

    .line 318
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 319
    .line 320
    .line 321
    move-result-wide v1

    .line 322
    mul-double/2addr v1, v8

    .line 323
    sub-double/2addr v13, v1

    .line 324
    double-to-float v5, v13

    .line 325
    move v2, v3

    .line 326
    move v3, v6

    .line 327
    iget-object v6, v0, Lcom/example/navistart/SpeedometerView;->l:Landroid/graphics/Paint;

    .line 328
    .line 329
    move-object/from16 v1, p1

    .line 330
    .line 331
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 332
    .line 333
    .line 334
    add-int/lit8 v7, v7, 0x1

    .line 335
    .line 336
    move/from16 v26, v10

    .line 337
    .line 338
    goto :goto_e8

    .line 339
    :goto_152
    add-float v16, v16, v22

    .line 340
    .line 341
    move v14, v10

    .line 342
    move/from16 v8, v22

    .line 343
    .line 344
    move/from16 v10, v24

    .line 345
    .line 346
    move/from16 v13, v25

    .line 347
    .line 348
    const/high16 v7, 0x3f800000    # 1.0f

    .line 349
    .line 350
    const/4 v9, 0x1

    .line 351
    goto/16 :goto_85

    .line 352
    .line 353
    :cond_160
    move/from16 v25, v13

    .line 354
    .line 355
    const v2, 0x3f333333    # 0.7f

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v1, v2}, Lcom/example/navistart/SpeedometerView;->a(Landroid/graphics/Canvas;F)Landroid/graphics/RectF;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    iget-object v3, v0, Lcom/example/navistart/SpeedometerView;->n:Landroid/graphics/Paint;

    .line 363
    .line 364
    iget v4, v0, Lcom/example/navistart/SpeedometerView;->d:I

    .line 365
    .line 366
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    .line 368
    .line 369
    const/4 v5, 0x0

    .line 370
    iget-object v6, v0, Lcom/example/navistart/SpeedometerView;->n:Landroid/graphics/Paint;

    .line 371
    .line 372
    const/high16 v3, 0x43390000    # 185.0f

    .line 373
    .line 374
    const/high16 v4, 0x432a0000    # 170.0f

    .line 375
    .line 376
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 377
    .line 378
    .line 379
    iget-object v2, v0, Lcom/example/navistart/SpeedometerView;->g:Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-nez v3, :cond_215

    .line 390
    .line 391
    const/high16 v3, 0x3f800000    # 1.0f

    .line 392
    .line 393
    invoke-virtual {v0, v1, v3}, Lcom/example/navistart/SpeedometerView;->a(Landroid/graphics/Canvas;F)Landroid/graphics/RectF;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    mul-float v3, v3, v25

    .line 402
    .line 403
    add-float/2addr v3, v15

    .line 404
    const v4, 0x3e4ccccd    # 0.2f

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v1, v4}, Lcom/example/navistart/SpeedometerView;->a(Landroid/graphics/Canvas;F)Landroid/graphics/RectF;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    invoke-virtual {v0}, Lcom/example/navistart/SpeedometerView;->getSpeed()D

    .line 412
    .line 413
    .line 414
    move-result-wide v4

    .line 415
    invoke-virtual {v0}, Lcom/example/navistart/SpeedometerView;->getMaxSpeed()D

    .line 416
    .line 417
    .line 418
    move-result-wide v8

    .line 419
    div-double/2addr v4, v8

    .line 420
    const-wide/high16 v8, 0x4064000000000000L    # 160.0

    .line 421
    .line 422
    mul-double/2addr v4, v8

    .line 423
    double-to-float v4, v4

    .line 424
    add-float/2addr v4, v15

    .line 425
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    float-to-double v5, v5

    .line 430
    sub-float v8, v20, v4

    .line 431
    .line 432
    div-float v8, v8, v20

    .line 433
    .line 434
    float-to-double v8, v8

    .line 435
    mul-double v8, v8, v18

    .line 436
    .line 437
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 438
    .line 439
    .line 440
    move-result-wide v10

    .line 441
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 442
    .line 443
    .line 444
    move-result v12

    .line 445
    float-to-double v12, v12

    .line 446
    mul-double/2addr v10, v12

    .line 447
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 448
    .line 449
    mul-double/2addr v10, v12

    .line 450
    add-double/2addr v10, v5

    .line 451
    double-to-float v5, v10

    .line 452
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    float-to-double v10, v6

    .line 457
    div-float v4, v4, v20

    .line 458
    .line 459
    float-to-double v14, v4

    .line 460
    mul-double v14, v14, v18

    .line 461
    .line 462
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 463
    .line 464
    .line 465
    move-result-wide v16

    .line 466
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    move-wide/from16 v18, v12

    .line 471
    .line 472
    float-to-double v12, v4

    .line 473
    mul-double v16, v16, v12

    .line 474
    .line 475
    mul-double v16, v16, v18

    .line 476
    .line 477
    sub-double v10, v10, v16

    .line 478
    .line 479
    double-to-float v4, v10

    .line 480
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 481
    .line 482
    .line 483
    move-result v6

    .line 484
    float-to-double v10, v6

    .line 485
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 486
    .line 487
    .line 488
    move-result-wide v8

    .line 489
    float-to-double v12, v3

    .line 490
    mul-double/2addr v8, v12

    .line 491
    add-double/2addr v8, v10

    .line 492
    double-to-float v3, v8

    .line 493
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    float-to-double v8, v2

    .line 498
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 499
    .line 500
    .line 501
    move-result-wide v10

    .line 502
    mul-double/2addr v10, v12

    .line 503
    sub-double/2addr v8, v10

    .line 504
    double-to-float v2, v8

    .line 505
    iget-object v6, v0, Lcom/example/navistart/SpeedometerView;->k:Landroid/graphics/Paint;

    .line 506
    .line 507
    move/from16 v30, v5

    .line 508
    .line 509
    move v5, v2

    .line 510
    move/from16 v2, v30

    .line 511
    .line 512
    move/from16 v30, v4

    .line 513
    .line 514
    move v4, v3

    .line 515
    move/from16 v3, v30

    .line 516
    .line 517
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 518
    .line 519
    .line 520
    const/4 v5, 0x1

    .line 521
    iget-object v6, v0, Lcom/example/navistart/SpeedometerView;->h:Landroid/graphics/Paint;

    .line 522
    .line 523
    const/high16 v3, 0x43340000    # 180.0f

    .line 524
    .line 525
    const/high16 v4, 0x43340000    # 180.0f

    .line 526
    .line 527
    move-object/from16 v1, p1

    .line 528
    .line 529
    move-object v2, v7

    .line 530
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 531
    .line 532
    .line 533
    return-void

    .line 534
    :cond_215
    invoke-static {v2}, Lcom/bumptech/glide/g;->b(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    throw v1
.end method

.method public final onMeasure(II)V
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v2, -0x1

    .line 18
    const/high16 v3, -0x80000000

    .line 19
    .line 20
    const/high16 v4, 0x40000000    # 2.0f

    .line 21
    .line 22
    if-eq v0, v4, :cond_1b

    .line 23
    .line 24
    if-ne v0, v3, :cond_1a

    .line 25
    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move p1, v2

    .line 28
    :cond_1b
    :goto_1b
    if-eq v1, v4, :cond_21

    .line 29
    .line 30
    if-ne v1, v3, :cond_20

    .line 31
    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move p2, v2

    .line 34
    :cond_21
    :goto_21
    if-ltz p2, :cond_2c

    .line 35
    .line 36
    if-ltz p1, :cond_2c

    .line 37
    .line 38
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    div-int/lit8 p2, p1, 0x2

    .line 43
    .line 44
    goto :goto_38

    .line 45
    :cond_2c
    if-ltz p1, :cond_31

    .line 46
    .line 47
    div-int/lit8 p2, p1, 0x2

    .line 48
    .line 49
    goto :goto_38

    .line 50
    :cond_31
    if-ltz p2, :cond_36

    .line 51
    .line 52
    mul-int/lit8 p1, p2, 0x2

    .line 53
    .line 54
    goto :goto_38

    .line 55
    :cond_36
    const/4 p1, 0x0

    .line 56
    move p2, p1

    .line 57
    :goto_38
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public setDefaultColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/example/navistart/SpeedometerView;->d:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLabelConverter(Le0/t2;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setLabelTextSize(I)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/example/navistart/SpeedometerView;->o:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/example/navistart/SpeedometerView;->m:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    int-to-float p1, p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    :cond_d
    return-void
.end method

.method public setMajorTickStep(D)V
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_c

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/example/navistart/SpeedometerView;->e:D

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    const/16 p1, 0x32

    .line 14
    .line 15
    new-array p1, p1, [B

    .line 16
    .line 17
    fill-array-data p1, :array_22

    .line 18
    .line 19
    .line 20
    const/16 p2, 0x8

    .line 21
    .line 22
    new-array p2, p2, [B

    .line 23
    .line 24
    fill-array-data p2, :array_40

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :array_22
    .array-data 1
        -0x2bt
        0x7ft
        -0x5dt
        0xdt
        0x53t
        -0x19t
        -0x74t
        -0x77t
        -0x11t
        0x79t
        -0x45t
        0x45t
        0x3t
        -0x2t
        -0x62t
        -0x74t
        -0x12t
        0x75t
        -0x13t
        0x53t
        0x53t
        -0x13t
        -0x64t
        -0x77t
        -0x3t
        0x79t
        -0x58t
        0x44t
        0x3t
        -0x17t
        -0x74t
        -0x40t
        -0x6t
        0x30t
        -0x60t
        0x41t
        0x49t
        -0x19t
        -0x73t
        -0x40t
        -0x11t
        0x79t
        -0x52t
        0x4bt
        0x3t
        -0x5t
        -0x75t
        -0x7bt
        -0x15t
        0x3et
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    nop

    .line 65
    :array_40
    .array-data 1
        -0x65t
        0x10t
        -0x33t
        0x20t
        0x23t
        -0x78t
        -0x1t
        -0x20t
    .end array-data
.end method

.method public setMaxSpeed(D)V
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_c

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/example/navistart/SpeedometerView;->b:D

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    const/16 p1, 0x2a

    .line 14
    .line 15
    new-array p1, p1, [B

    .line 16
    .line 17
    fill-array-data p1, :array_22

    .line 18
    .line 19
    .line 20
    const/16 p2, 0x8

    .line 21
    .line 22
    new-array p2, p2, [B

    .line 23
    .line 24
    fill-array-data p2, :array_3c

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :array_22
    .array-data 1
        0x19t
        0x14t
        0x4et
        0x28t
        -0x56t
        0x47t
        0x14t
        0x64t
        0x23t
        0x12t
        0x56t
        0x60t
        -0x6t
        0x5et
        0x6t
        0x61t
        0x22t
        0x1et
        0x0t
        0x76t
        -0x56t
        0x4dt
        0x4t
        0x64t
        0x31t
        0x12t
        0x45t
        0x61t
        -0x6t
        0x49t
        0x14t
        0x2dt
        0x3at
        0x1at
        0x58t
        0x25t
        -0x57t
        0x58t
        0x2t
        0x68t
        0x33t
        0x55t
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    nop

    .line 61
    :array_3c
    .array-data 1
        0x57t
        0x7bt
        0x20t
        0x5t
        -0x26t
        0x28t
        0x67t
        0xdt
    .end array-data
.end method

.method public setMinorTicks(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/example/navistart/SpeedometerView;->f:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSpeed(D)V
    .registers 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_13

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/example/navistart/SpeedometerView;->b:D

    .line 8
    .line 9
    cmpl-double v2, p1, v0

    .line 10
    .line 11
    if-lez v2, :cond_d

    .line 12
    .line 13
    move-wide p1, v0

    .line 14
    :cond_d
    iput-wide p1, p0, Lcom/example/navistart/SpeedometerView;->c:D

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    const/16 p1, 0x28

    .line 21
    .line 22
    new-array p1, p1, [B

    .line 23
    .line 24
    fill-array-data p1, :array_2a

    .line 25
    .line 26
    .line 27
    const/16 p2, 0x8

    .line 28
    .line 29
    new-array p2, p2, [B

    .line 30
    .line 31
    fill-array-data p2, :array_42

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :array_2a
    .array-data 1
        -0x53t
        0x55t
        0x9t
        -0x4et
        -0x4et
        0x66t
        0x58t
        0x31t
        -0x69t
        0x53t
        0x11t
        -0x6t
        -0x1et
        0x7ft
        0x4at
        0x34t
        -0x6at
        0x5ft
        0x47t
        -0x14t
        -0x4et
        0x6ct
        0x48t
        0x31t
        -0x7bt
        0x53t
        0x2t
        -0x5t
        -0x1et
        0x68t
        0x58t
        0x78t
        -0x7et
        0x1at
        0x14t
        -0x11t
        -0x59t
        0x6ct
        0x4ft
        0x76t
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_42
    .array-data 1
        -0x1dt
        0x3at
        0x67t
        -0x61t
        -0x3et
        0x9t
        0x2bt
        0x58t
    .end array-data
.end method
