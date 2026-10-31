.class public Lcom/example/navistart/AnalogClockView;
.super Landroid/view/View;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:I

.field public c:D

.field public d:I

.field public e:I

.field public f:Z

.field public g:Landroid/graphics/Paint;

.field public h:Landroid/graphics/Rect;

.field public i:I

.field public j:I

.field public final k:Landroid/content/res/TypedArray;

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Le0/l2;->a:[I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/example/navistart/AnalogClockView;->k:Landroid/content/res/TypedArray;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(ILandroid/graphics/Paint$Style;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 17
    .line 18
    int-to-float p2, p3

    .line 19
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 27

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
    iget-boolean v2, v0, Lcom/example/navistart/AnalogClockView;->f:Z

    .line 9
    .line 10
    const/16 v7, 0xc

    .line 11
    .line 12
    const/4 v8, 0x1

    .line 13
    const/4 v9, 0x0

    .line 14
    const/16 v3, 0xb

    .line 15
    .line 16
    const/4 v10, 0x2

    .line 17
    if-nez v2, :cond_b0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    div-int/lit8 v5, v4, 0x2

    .line 28
    .line 29
    iput v5, v0, Lcom/example/navistart/AnalogClockView;->d:I

    .line 30
    .line 31
    div-int/lit8 v5, v2, 0x2

    .line 32
    .line 33
    iput v5, v0, Lcom/example/navistart/AnalogClockView;->e:I

    .line 34
    .line 35
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    div-int/lit8 v4, v2, 0x2

    .line 40
    .line 41
    add-int/lit8 v4, v4, -0x32

    .line 42
    .line 43
    iput v4, v0, Lcom/example/navistart/AnalogClockView;->b:I

    .line 44
    .line 45
    const-wide v4, -0x40088af340000000L    # -1.4660766124725342

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    iput-wide v4, v0, Lcom/example/navistart/AnalogClockView;->c:D

    .line 51
    .line 52
    new-instance v4, Landroid/graphics/Paint;

    .line 53
    .line 54
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v4, v0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 58
    .line 59
    new-instance v4, Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v4, v0, Lcom/example/navistart/AnalogClockView;->h:Landroid/graphics/Rect;

    .line 65
    .line 66
    iget v4, v0, Lcom/example/navistart/AnalogClockView;->b:I

    .line 67
    .line 68
    div-int/lit8 v5, v4, 0x2

    .line 69
    .line 70
    sub-int v5, v4, v5

    .line 71
    .line 72
    iput v5, v0, Lcom/example/navistart/AnalogClockView;->i:I

    .line 73
    .line 74
    div-int/lit8 v5, v4, 0x4

    .line 75
    .line 76
    sub-int/2addr v4, v5

    .line 77
    iput v4, v0, Lcom/example/navistart/AnalogClockView;->j:I

    .line 78
    .line 79
    iget-object v4, v0, Lcom/example/navistart/AnalogClockView;->k:Landroid/content/res/TypedArray;

    .line 80
    .line 81
    invoke-virtual {v4, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    iput-boolean v5, v0, Lcom/example/navistart/AnalogClockView;->l:Z

    .line 86
    .line 87
    const/16 v5, 0xa

    .line 88
    .line 89
    invoke-virtual {v4, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    iput-boolean v5, v0, Lcom/example/navistart/AnalogClockView;->m:Z

    .line 94
    .line 95
    const/4 v5, 0x7

    .line 96
    const/high16 v6, -0x1000000

    .line 97
    .line 98
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    iput v11, v0, Lcom/example/navistart/AnalogClockView;->n:I

    .line 103
    .line 104
    const/high16 v11, -0x10000

    .line 105
    .line 106
    const/16 v12, 0x8

    .line 107
    .line 108
    invoke-virtual {v4, v12, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    iput v11, v0, Lcom/example/navistart/AnalogClockView;->o:I

    .line 113
    .line 114
    const/4 v11, 0x5

    .line 115
    invoke-virtual {v4, v11, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    iput v11, v0, Lcom/example/navistart/AnalogClockView;->p:I

    .line 120
    .line 121
    const/4 v11, 0x3

    .line 122
    invoke-virtual {v4, v11, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    iput v11, v0, Lcom/example/navistart/AnalogClockView;->q:I

    .line 127
    .line 128
    invoke-virtual {v4, v9, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    iput v6, v0, Lcom/example/navistart/AnalogClockView;->r:I

    .line 133
    .line 134
    const/4 v6, -0x1

    .line 135
    invoke-virtual {v4, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    iput v6, v0, Lcom/example/navistart/AnalogClockView;->s:I

    .line 140
    .line 141
    invoke-virtual {v4, v8, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    iput v6, v0, Lcom/example/navistart/AnalogClockView;->t:I

    .line 146
    .line 147
    const/16 v6, 0x9

    .line 148
    .line 149
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    iput v5, v0, Lcom/example/navistart/AnalogClockView;->u:I

    .line 154
    .line 155
    const/4 v5, 0x6

    .line 156
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    iput v5, v0, Lcom/example/navistart/AnalogClockView;->v:I

    .line 161
    .line 162
    const/4 v5, 0x4

    .line 163
    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    iput v5, v0, Lcom/example/navistart/AnalogClockView;->w:I

    .line 168
    .line 169
    div-int/2addr v2, v7

    .line 170
    iput v2, v0, Lcom/example/navistart/AnalogClockView;->x:I

    .line 171
    .line 172
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    .line 174
    .line 175
    iput-boolean v8, v0, Lcom/example/navistart/AnalogClockView;->f:Z

    .line 176
    .line 177
    :cond_b0
    iget v2, v0, Lcom/example/navistart/AnalogClockView;->s:I

    .line 178
    .line 179
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 180
    .line 181
    iget v5, v0, Lcom/example/navistart/AnalogClockView;->t:I

    .line 182
    .line 183
    invoke-virtual {v0, v2, v4, v5}, Lcom/example/navistart/AnalogClockView;->a(ILandroid/graphics/Paint$Style;I)V

    .line 184
    .line 185
    .line 186
    iget v2, v0, Lcom/example/navistart/AnalogClockView;->d:I

    .line 187
    .line 188
    int-to-float v2, v2

    .line 189
    iget v4, v0, Lcom/example/navistart/AnalogClockView;->e:I

    .line 190
    .line 191
    int-to-float v4, v4

    .line 192
    iget v5, v0, Lcom/example/navistart/AnalogClockView;->b:I

    .line 193
    .line 194
    int-to-float v5, v5

    .line 195
    iget-object v6, v0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 196
    .line 197
    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 198
    .line 199
    .line 200
    iget v2, v0, Lcom/example/navistart/AnalogClockView;->r:I

    .line 201
    .line 202
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 203
    .line 204
    iget v4, v0, Lcom/example/navistart/AnalogClockView;->t:I

    .line 205
    .line 206
    invoke-virtual {v0, v2, v11, v4}, Lcom/example/navistart/AnalogClockView;->a(ILandroid/graphics/Paint$Style;I)V

    .line 207
    .line 208
    .line 209
    iget v2, v0, Lcom/example/navistart/AnalogClockView;->d:I

    .line 210
    .line 211
    int-to-float v2, v2

    .line 212
    iget v4, v0, Lcom/example/navistart/AnalogClockView;->e:I

    .line 213
    .line 214
    int-to-float v4, v4

    .line 215
    iget v5, v0, Lcom/example/navistart/AnalogClockView;->b:I

    .line 216
    .line 217
    int-to-float v5, v5

    .line 218
    iget-object v6, v0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 219
    .line 220
    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 221
    .line 222
    .line 223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    int-to-float v3, v3

    .line 232
    const/high16 v4, 0x41400000    # 12.0f

    .line 233
    .line 234
    cmpl-float v5, v3, v4

    .line 235
    .line 236
    if-lez v5, :cond_ee

    .line 237
    .line 238
    sub-float/2addr v3, v4

    .line 239
    :cond_ee
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    int-to-float v4, v4

    .line 244
    const/16 v5, 0xd

    .line 245
    .line 246
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    int-to-float v12, v2

    .line 251
    float-to-double v2, v3

    .line 252
    float-to-double v13, v4

    .line 253
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    .line 254
    .line 255
    div-double v4, v13, v4

    .line 256
    .line 257
    add-double/2addr v4, v2

    .line 258
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    .line 259
    .line 260
    mul-double/2addr v4, v2

    .line 261
    iget v2, v0, Lcom/example/navistart/AnalogClockView;->q:I

    .line 262
    .line 263
    iget v3, v0, Lcom/example/navistart/AnalogClockView;->w:I

    .line 264
    .line 265
    invoke-virtual {v0, v2, v11, v3}, Lcom/example/navistart/AnalogClockView;->a(ILandroid/graphics/Paint$Style;I)V

    .line 266
    .line 267
    .line 268
    const-wide v15, 0x400921fb54442d18L    # Math.PI

    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    mul-double/2addr v4, v15

    .line 274
    const-wide/high16 v17, 0x403e000000000000L    # 30.0

    .line 275
    .line 276
    div-double v4, v4, v17

    .line 277
    .line 278
    const-wide v19, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    sub-double v4, v4, v19

    .line 284
    .line 285
    iput-wide v4, v0, Lcom/example/navistart/AnalogClockView;->c:D

    .line 286
    .line 287
    iget v2, v0, Lcom/example/navistart/AnalogClockView;->d:I

    .line 288
    .line 289
    int-to-float v3, v2

    .line 290
    iget v6, v0, Lcom/example/navistart/AnalogClockView;->e:I

    .line 291
    .line 292
    int-to-float v6, v6

    .line 293
    int-to-double v8, v2

    .line 294
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 295
    .line 296
    .line 297
    move-result-wide v4

    .line 298
    iget v2, v0, Lcom/example/navistart/AnalogClockView;->i:I

    .line 299
    .line 300
    move-wide/from16 v21, v8

    .line 301
    .line 302
    int-to-double v7, v2

    .line 303
    mul-double/2addr v4, v7

    .line 304
    add-double v4, v4, v21

    .line 305
    .line 306
    double-to-float v4, v4

    .line 307
    iget v2, v0, Lcom/example/navistart/AnalogClockView;->e:I

    .line 308
    .line 309
    int-to-double v7, v2

    .line 310
    move v9, v10

    .line 311
    move-object/from16 v21, v11

    .line 312
    .line 313
    iget-wide v10, v0, Lcom/example/navistart/AnalogClockView;->c:D

    .line 314
    .line 315
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 316
    .line 317
    .line 318
    move-result-wide v10

    .line 319
    iget v2, v0, Lcom/example/navistart/AnalogClockView;->i:I

    .line 320
    .line 321
    move/from16 v22, v9

    .line 322
    .line 323
    move-wide/from16 v23, v10

    .line 324
    .line 325
    int-to-double v9, v2

    .line 326
    mul-double v10, v23, v9

    .line 327
    .line 328
    add-double/2addr v10, v7

    .line 329
    double-to-float v5, v10

    .line 330
    move v2, v3

    .line 331
    move v3, v6

    .line 332
    iget-object v6, v0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 333
    .line 334
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 335
    .line 336
    .line 337
    iget v1, v0, Lcom/example/navistart/AnalogClockView;->p:I

    .line 338
    .line 339
    iget v2, v0, Lcom/example/navistart/AnalogClockView;->v:I

    .line 340
    .line 341
    move-object/from16 v7, v21

    .line 342
    .line 343
    invoke-virtual {v0, v1, v7, v2}, Lcom/example/navistart/AnalogClockView;->a(ILandroid/graphics/Paint$Style;I)V

    .line 344
    .line 345
    .line 346
    mul-double/2addr v13, v15

    .line 347
    div-double v13, v13, v17

    .line 348
    .line 349
    sub-double v13, v13, v19

    .line 350
    .line 351
    iput-wide v13, v0, Lcom/example/navistart/AnalogClockView;->c:D

    .line 352
    .line 353
    iget v1, v0, Lcom/example/navistart/AnalogClockView;->d:I

    .line 354
    .line 355
    int-to-float v2, v1

    .line 356
    iget v3, v0, Lcom/example/navistart/AnalogClockView;->e:I

    .line 357
    .line 358
    int-to-float v3, v3

    .line 359
    int-to-double v4, v1

    .line 360
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 361
    .line 362
    .line 363
    move-result-wide v8

    .line 364
    iget v1, v0, Lcom/example/navistart/AnalogClockView;->j:I

    .line 365
    .line 366
    int-to-double v10, v1

    .line 367
    mul-double/2addr v8, v10

    .line 368
    add-double/2addr v8, v4

    .line 369
    double-to-float v4, v8

    .line 370
    iget v1, v0, Lcom/example/navistart/AnalogClockView;->e:I

    .line 371
    .line 372
    int-to-double v5, v1

    .line 373
    iget-wide v8, v0, Lcom/example/navistart/AnalogClockView;->c:D

    .line 374
    .line 375
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 376
    .line 377
    .line 378
    move-result-wide v8

    .line 379
    iget v1, v0, Lcom/example/navistart/AnalogClockView;->i:I

    .line 380
    .line 381
    int-to-double v10, v1

    .line 382
    mul-double/2addr v8, v10

    .line 383
    add-double/2addr v8, v5

    .line 384
    double-to-float v5, v8

    .line 385
    iget-object v6, v0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 386
    .line 387
    move-object/from16 v1, p1

    .line 388
    .line 389
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 390
    .line 391
    .line 392
    iget-boolean v1, v0, Lcom/example/navistart/AnalogClockView;->l:Z

    .line 393
    .line 394
    if-eqz v1, :cond_1c9

    .line 395
    .line 396
    iget-object v1, v0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 397
    .line 398
    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 399
    .line 400
    .line 401
    iget v1, v0, Lcom/example/navistart/AnalogClockView;->o:I

    .line 402
    .line 403
    iget v2, v0, Lcom/example/navistart/AnalogClockView;->u:I

    .line 404
    .line 405
    invoke-virtual {v0, v1, v7, v2}, Lcom/example/navistart/AnalogClockView;->a(ILandroid/graphics/Paint$Style;I)V

    .line 406
    .line 407
    .line 408
    float-to-double v1, v12

    .line 409
    mul-double/2addr v1, v15

    .line 410
    div-double v1, v1, v17

    .line 411
    .line 412
    sub-double v1, v1, v19

    .line 413
    .line 414
    iput-wide v1, v0, Lcom/example/navistart/AnalogClockView;->c:D

    .line 415
    .line 416
    iget v3, v0, Lcom/example/navistart/AnalogClockView;->d:I

    .line 417
    .line 418
    move-wide v4, v1

    .line 419
    int-to-float v2, v3

    .line 420
    iget v1, v0, Lcom/example/navistart/AnalogClockView;->e:I

    .line 421
    .line 422
    int-to-float v1, v1

    .line 423
    int-to-double v6, v3

    .line 424
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 425
    .line 426
    .line 427
    move-result-wide v3

    .line 428
    iget v5, v0, Lcom/example/navistart/AnalogClockView;->j:I

    .line 429
    .line 430
    int-to-double v8, v5

    .line 431
    mul-double/2addr v3, v8

    .line 432
    add-double/2addr v3, v6

    .line 433
    double-to-float v4, v3

    .line 434
    iget v3, v0, Lcom/example/navistart/AnalogClockView;->e:I

    .line 435
    .line 436
    int-to-double v5, v3

    .line 437
    iget-wide v7, v0, Lcom/example/navistart/AnalogClockView;->c:D

    .line 438
    .line 439
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 440
    .line 441
    .line 442
    move-result-wide v7

    .line 443
    iget v3, v0, Lcom/example/navistart/AnalogClockView;->i:I

    .line 444
    .line 445
    int-to-double v9, v3

    .line 446
    mul-double/2addr v7, v9

    .line 447
    add-double/2addr v7, v5

    .line 448
    double-to-float v5, v7

    .line 449
    iget-object v6, v0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 450
    .line 451
    move v3, v1

    .line 452
    move-object/from16 v1, p1

    .line 453
    .line 454
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 455
    .line 456
    .line 457
    goto :goto_1cb

    .line 458
    :cond_1c9
    move-object/from16 v1, p1

    .line 459
    .line 460
    :goto_1cb
    iget-boolean v2, v0, Lcom/example/navistart/AnalogClockView;->m:Z

    .line 461
    .line 462
    if-eqz v2, :cond_240

    .line 463
    .line 464
    iget-object v2, v0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 465
    .line 466
    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 467
    .line 468
    .line 469
    iget-object v2, v0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 470
    .line 471
    iget v3, v0, Lcom/example/navistart/AnalogClockView;->n:I

    .line 472
    .line 473
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 474
    .line 475
    .line 476
    iget-object v2, v0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 477
    .line 478
    iget v3, v0, Lcom/example/navistart/AnalogClockView;->x:I

    .line 479
    .line 480
    int-to-float v3, v3

    .line 481
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 482
    .line 483
    .line 484
    const/16 v2, 0xc

    .line 485
    .line 486
    const/4 v8, 0x1

    .line 487
    :goto_1e6
    if-gt v8, v2, :cond_240

    .line 488
    .line 489
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    iget-object v4, v0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 494
    .line 495
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    iget-object v6, v0, Lcom/example/navistart/AnalogClockView;->h:Landroid/graphics/Rect;

    .line 500
    .line 501
    const/4 v7, 0x0

    .line 502
    invoke-virtual {v4, v3, v7, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 503
    .line 504
    .line 505
    add-int/lit8 v4, v8, -0x3

    .line 506
    .line 507
    int-to-double v4, v4

    .line 508
    const-wide v9, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    mul-double/2addr v4, v9

    .line 514
    iget v6, v0, Lcom/example/navistart/AnalogClockView;->d:I

    .line 515
    .line 516
    int-to-double v9, v6

    .line 517
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 518
    .line 519
    .line 520
    move-result-wide v11

    .line 521
    iget v6, v0, Lcom/example/navistart/AnalogClockView;->b:I

    .line 522
    .line 523
    int-to-double v13, v6

    .line 524
    mul-double/2addr v11, v13

    .line 525
    const-wide v13, 0x3ff3333333333333L    # 1.2

    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    div-double/2addr v11, v13

    .line 531
    add-double/2addr v11, v9

    .line 532
    iget-object v6, v0, Lcom/example/navistart/AnalogClockView;->h:Landroid/graphics/Rect;

    .line 533
    .line 534
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 535
    .line 536
    .line 537
    move-result v6

    .line 538
    div-int/lit8 v6, v6, 0x2

    .line 539
    .line 540
    int-to-double v9, v6

    .line 541
    sub-double/2addr v11, v9

    .line 542
    double-to-int v6, v11

    .line 543
    iget v9, v0, Lcom/example/navistart/AnalogClockView;->e:I

    .line 544
    .line 545
    int-to-double v9, v9

    .line 546
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 547
    .line 548
    .line 549
    move-result-wide v4

    .line 550
    iget v11, v0, Lcom/example/navistart/AnalogClockView;->b:I

    .line 551
    .line 552
    int-to-double v11, v11

    .line 553
    mul-double/2addr v4, v11

    .line 554
    div-double/2addr v4, v13

    .line 555
    add-double/2addr v4, v9

    .line 556
    iget-object v9, v0, Lcom/example/navistart/AnalogClockView;->h:Landroid/graphics/Rect;

    .line 557
    .line 558
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 559
    .line 560
    .line 561
    move-result v9

    .line 562
    div-int/lit8 v9, v9, 0x2

    .line 563
    .line 564
    int-to-double v9, v9

    .line 565
    add-double/2addr v4, v9

    .line 566
    double-to-int v4, v4

    .line 567
    int-to-float v5, v6

    .line 568
    int-to-float v4, v4

    .line 569
    iget-object v6, v0, Lcom/example/navistart/AnalogClockView;->g:Landroid/graphics/Paint;

    .line 570
    .line 571
    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 572
    .line 573
    .line 574
    add-int/lit8 v8, v8, 0x1

    .line 575
    .line 576
    goto :goto_1e6

    .line 577
    :cond_240
    iget-boolean v1, v0, Lcom/example/navistart/AnalogClockView;->l:Z

    .line 578
    .line 579
    if-eqz v1, :cond_24a

    .line 580
    .line 581
    const-wide/16 v1, 0x1f4

    .line 582
    .line 583
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 584
    .line 585
    .line 586
    return-void

    .line 587
    :cond_24a
    const-wide/16 v1, 0x1388

    .line 588
    .line 589
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 590
    .line 591
    .line 592
    return-void
.end method
