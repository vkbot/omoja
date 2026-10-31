.class public abstract Lw1/i;
.super Lw1/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public R:Ly1/b;

.field public final S:Landroid/graphics/PointF;

.field public T:Z

.field public U:I

.field public final V:Landroid/graphics/Paint;

.field public final W:Landroid/graphics/Paint;

.field public final a0:Landroid/graphics/Paint;

.field public final b0:Landroid/graphics/Path;

.field public c0:I

.field public d0:F

.field public e0:F

.field public f0:I

.field public g0:I

.field public h0:I

.field public i0:F

.field public final j0:Ljava/util/ArrayList;

.field public k0:Lw1/g;

.field public final l0:I

.field public m0:Ljava/util/List;

.field public n0:Z

.field public o0:F

.field public p0:F

.field public q0:Lkotlin/jvm/functions/Function2;

.field public r0:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 1
    invoke-direct {p0, p1, p2}, Lw1/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly1/e;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ly1/b;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lw1/i;->R:Ly1/b;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    .line 13
    const/high16 v1, 0x3f000000    # 0.5f

    .line 14
    .line 15
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lw1/i;->S:Landroid/graphics/PointF;

    .line 19
    .line 20
    const v0, -0x4400a8de

    .line 21
    .line 22
    .line 23
    iput v0, p0, Lw1/i;->U:I

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Paint;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lw1/i;->V:Landroid/graphics/Paint;

    .line 32
    .line 33
    new-instance v2, Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lw1/i;->W:Landroid/graphics/Paint;

    .line 39
    .line 40
    new-instance v3, Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Lw1/i;->a0:Landroid/graphics/Paint;

    .line 46
    .line 47
    new-instance v4, Landroid/graphics/Path;

    .line 48
    .line 49
    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v4, p0, Lw1/i;->b0:Landroid/graphics/Path;

    .line 53
    .line 54
    const/high16 v4, 0x41100000    # 9.0f

    .line 55
    .line 56
    invoke-virtual {p0, v4}, Lw1/e;->g(F)F

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iput v4, p0, Lw1/i;->e0:F

    .line 61
    .line 62
    const/4 v4, -0x1

    .line 63
    iput v4, p0, Lw1/i;->f0:I

    .line 64
    .line 65
    const/16 v5, 0x87

    .line 66
    .line 67
    iput v5, p0, Lw1/i;->g0:I

    .line 68
    .line 69
    const/16 v6, 0x195

    .line 70
    .line 71
    iput v6, p0, Lw1/i;->h0:I

    .line 72
    .line 73
    int-to-float v5, v5

    .line 74
    iput v5, p0, Lw1/i;->i0:F

    .line 75
    .line 76
    new-instance v5, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v5, p0, Lw1/i;->j0:Ljava/util/ArrayList;

    .line 82
    .line 83
    sget-object v5, Lw1/g;->g:Lw1/g;

    .line 84
    .line 85
    iput-object v5, p0, Lw1/i;->k0:Lw1/g;

    .line 86
    .line 87
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    iput-object v5, p0, Lw1/i;->m0:Ljava/util/List;

    .line 92
    .line 93
    iput-boolean v1, p0, Lw1/i;->n0:Z

    .line 94
    .line 95
    invoke-virtual {p0}, Lw1/i;->getSpeedometerWidth()F

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    const/high16 v6, 0x40400000    # 3.0f

    .line 100
    .line 101
    invoke-virtual {p0, v6}, Lw1/e;->g(F)F

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    add-float/2addr v7, v5

    .line 106
    iput v7, p0, Lw1/i;->p0:F

    .line 107
    .line 108
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 109
    .line 110
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v4}, Lw1/i;->setMarkColor(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v6}, Lw1/e;->g(F)F

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {p0, v2}, Lw1/i;->setMarkWidth(F)V

    .line 124
    .line 125
    .line 126
    sget-object v2, Lx1/c;->c:Lx1/c;

    .line 127
    .line 128
    invoke-virtual {p0, v2}, Lw1/i;->setMarkStyle(Lx1/c;)V

    .line 129
    .line 130
    .line 131
    move-object v2, p0

    .line 132
    check-cast v2, Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    invoke-virtual {v2, v3}, Lw1/i;->setBackgroundCircleColor(I)V

    .line 136
    .line 137
    .line 138
    if-nez p2, :cond_8d

    .line 139
    .line 140
    goto/16 :goto_1a6

    .line 141
    .line 142
    :cond_8d
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    sget-object v5, Lw1/f;->c:[I

    .line 147
    .line 148
    invoke-virtual {p1, p2, v5, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    const/16 p2, 0xd

    .line 156
    .line 157
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-eq p2, v4, :cond_ad

    .line 162
    .line 163
    if-eqz p2, :cond_ad

    .line 164
    .line 165
    invoke-static {}, Lw1/g;->values()[Lw1/g;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    aget-object p2, v5, p2

    .line 170
    .line 171
    invoke-virtual {p0, p2}, Lw1/i;->setSpeedometerMode(Lw1/g;)V

    .line 172
    .line 173
    .line 174
    :cond_ad
    const/4 p2, 0x3

    .line 175
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-eq p2, v4, :cond_bd

    .line 180
    .line 181
    invoke-static {}, Ly1/a;->values()[Ly1/a;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    aget-object p2, v5, p2

    .line 186
    .line 187
    invoke-virtual {p0, p2}, Lw1/i;->setIndicator(Ly1/a;)V

    .line 188
    .line 189
    .line 190
    :cond_bd
    const/16 p2, 0xb

    .line 191
    .line 192
    iget v5, p0, Lw1/i;->c0:I

    .line 193
    .line 194
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    invoke-virtual {p0, p2}, Lw1/i;->setMarksNumber(I)V

    .line 199
    .line 200
    .line 201
    const/16 p2, 0xc

    .line 202
    .line 203
    iget v5, p0, Lw1/i;->d0:F

    .line 204
    .line 205
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    invoke-virtual {p0, p2}, Lw1/i;->setMarksPadding(F)V

    .line 210
    .line 211
    .line 212
    const/16 p2, 0x8

    .line 213
    .line 214
    iget v5, p0, Lw1/i;->e0:F

    .line 215
    .line 216
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    invoke-virtual {p0, p2}, Lw1/i;->setMarkHeight(F)V

    .line 221
    .line 222
    .line 223
    const/16 p2, 0xa

    .line 224
    .line 225
    invoke-virtual {p0}, Lw1/i;->getMarkWidth()F

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    invoke-virtual {p0, p2}, Lw1/i;->setMarkWidth(F)V

    .line 234
    .line 235
    .line 236
    const/4 p2, 0x7

    .line 237
    invoke-virtual {p0}, Lw1/i;->getMarkColor()I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    invoke-virtual {p0, p2}, Lw1/i;->setMarkColor(I)V

    .line 246
    .line 247
    .line 248
    const/16 p2, 0x9

    .line 249
    .line 250
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    if-eq p2, v4, :cond_108

    .line 255
    .line 256
    invoke-static {}, Lx1/c;->values()[Lx1/c;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    aget-object p2, v5, p2

    .line 261
    .line 262
    invoke-virtual {p0, p2}, Lw1/i;->setMarkStyle(Lx1/c;)V

    .line 263
    .line 264
    .line 265
    :cond_108
    iget p2, p0, Lw1/i;->f0:I

    .line 266
    .line 267
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    invoke-virtual {p0, p2}, Lw1/i;->setBackgroundCircleColor(I)V

    .line 272
    .line 273
    .line 274
    const/16 p2, 0xe

    .line 275
    .line 276
    iget v3, p0, Lw1/i;->g0:I

    .line 277
    .line 278
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 279
    .line 280
    .line 281
    move-result p2

    .line 282
    iput p2, p0, Lw1/i;->g0:I

    .line 283
    .line 284
    const/4 p2, 0x2

    .line 285
    iget v3, p0, Lw1/i;->h0:I

    .line 286
    .line 287
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 288
    .line 289
    .line 290
    move-result p2

    .line 291
    iput p2, p0, Lw1/i;->h0:I

    .line 292
    .line 293
    iget-object p2, p0, Lw1/i;->R:Ly1/b;

    .line 294
    .line 295
    const/4 v3, 0x6

    .line 296
    iget v5, p2, Ly1/b;->d:F

    .line 297
    .line 298
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    invoke-virtual {p2, v3}, Ly1/b;->h(F)V

    .line 303
    .line 304
    .line 305
    iget p2, p0, Lw1/i;->l0:I

    .line 306
    .line 307
    int-to-float p2, p2

    .line 308
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 309
    .line 310
    .line 311
    move-result p2

    .line 312
    float-to-int p2, p2

    .line 313
    iput p2, p0, Lw1/i;->l0:I

    .line 314
    .line 315
    iget-object p2, p0, Lw1/i;->m0:Ljava/util/List;

    .line 316
    .line 317
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 318
    .line 319
    .line 320
    move-result p2

    .line 321
    const/16 v3, 0xf

    .line 322
    .line 323
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 324
    .line 325
    .line 326
    move-result p2

    .line 327
    invoke-virtual {p0, p2}, Lw1/i;->setTickNumber(I)V

    .line 328
    .line 329
    .line 330
    const/16 p2, 0x11

    .line 331
    .line 332
    iget-boolean v3, p0, Lw1/i;->n0:Z

    .line 333
    .line 334
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 335
    .line 336
    .line 337
    move-result p2

    .line 338
    iput-boolean p2, p0, Lw1/i;->n0:Z

    .line 339
    .line 340
    const/16 p2, 0x10

    .line 341
    .line 342
    iget v3, p0, Lw1/i;->p0:F

    .line 343
    .line 344
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 345
    .line 346
    .line 347
    move-result p2

    .line 348
    invoke-virtual {p0, p2}, Lw1/i;->setTickPadding(F)V

    .line 349
    .line 350
    .line 351
    iget-object p2, p0, Lw1/i;->R:Ly1/b;

    .line 352
    .line 353
    const/4 v3, 0x4

    .line 354
    iget v5, p2, Ly1/b;->e:I

    .line 355
    .line 356
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    invoke-virtual {p2, v3}, Ly1/b;->g(I)V

    .line 361
    .line 362
    .line 363
    const/16 p2, 0x13

    .line 364
    .line 365
    iget-boolean v3, p0, Lw1/i;->T:Z

    .line 366
    .line 367
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 368
    .line 369
    .line 370
    move-result p2

    .line 371
    iput-boolean p2, p0, Lw1/i;->T:Z

    .line 372
    .line 373
    const/4 p2, 0x5

    .line 374
    iget v3, p0, Lw1/i;->U:I

    .line 375
    .line 376
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 377
    .line 378
    .line 379
    move-result p2

    .line 380
    iput p2, p0, Lw1/i;->U:I

    .line 381
    .line 382
    const/16 p2, 0x12

    .line 383
    .line 384
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 385
    .line 386
    .line 387
    move-result p2

    .line 388
    if-eqz p2, :cond_192

    .line 389
    .line 390
    if-eq p2, v1, :cond_188

    .line 391
    .line 392
    goto :goto_19b

    .line 393
    :cond_188
    new-instance p2, Lw1/h;

    .line 394
    .line 395
    const/4 v1, 0x1

    .line 396
    invoke-direct {p2, v2, v1}, Lw1/h;-><init>(Lcom/github/anastr/speedviewlib/ImageSpeedometer;I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0, p2}, Lw1/i;->setOnPrintTickLabel(Lkotlin/jvm/functions/Function2;)V

    .line 400
    .line 401
    .line 402
    goto :goto_19b

    .line 403
    :cond_192
    new-instance p2, Lw1/h;

    .line 404
    .line 405
    const/4 v1, 0x0

    .line 406
    invoke-direct {p2, v2, v1}, Lw1/h;-><init>(Lcom/github/anastr/speedviewlib/ImageSpeedometer;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0, p2}, Lw1/i;->setOnPrintTickLabel(Lkotlin/jvm/functions/Function2;)V

    .line 410
    .line 411
    .line 412
    :goto_19b
    iget p2, p0, Lw1/i;->g0:I

    .line 413
    .line 414
    int-to-float p2, p2

    .line 415
    iput p2, p0, Lw1/i;->i0:F

    .line 416
    .line 417
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0}, Lw1/i;->o()V

    .line 421
    .line 422
    .line 423
    :goto_1a6
    iget p1, p0, Lw1/i;->f0:I

    .line 424
    .line 425
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    .line 427
    .line 428
    return-void
.end method


# virtual methods
.method public final getBackgroundCircleColor()I
    .registers 2

    .line 1
    iget v0, p0, Lw1/i;->f0:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDegree()F
    .registers 2

    .line 1
    iget v0, p0, Lw1/i;->i0:F

    .line 2
    .line 3
    return v0
.end method

.method public final getEndDegree()I
    .registers 2

    .line 1
    iget v0, p0, Lw1/i;->h0:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFulcrumX()F
    .registers 2

    .line 1
    iget-object v0, p0, Lw1/i;->S:Landroid/graphics/PointF;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 4
    .line 5
    return v0
.end method

.method public final getFulcrumY()F
    .registers 2

    .line 1
    iget-object v0, p0, Lw1/i;->S:Landroid/graphics/PointF;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 4
    .line 5
    return v0
.end method

.method public final getIndicator()Ly1/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly1/b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/i;->R:Ly1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIndicatorLightColor()I
    .registers 2

    .line 1
    iget v0, p0, Lw1/i;->U:I

    .line 2
    .line 3
    return v0
.end method

.method public final getInitTickPadding()F
    .registers 2

    .line 1
    iget v0, p0, Lw1/i;->o0:F

    .line 2
    .line 3
    return v0
.end method

.method public final getMarkColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lw1/i;->a0:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getMarkHeight()F
    .registers 2

    .line 1
    iget v0, p0, Lw1/i;->e0:F

    .line 2
    .line 3
    return v0
.end method

.method public final getMarkPaint()Landroid/graphics/Paint;
    .registers 2

    .line 1
    iget-object v0, p0, Lw1/i;->a0:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMarkStyle()Lx1/c;
    .registers 3

    .line 1
    iget-object v0, p0, Lw1/i;->a0:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 8
    .line 9
    if-ne v0, v1, :cond_d

    .line 10
    .line 11
    sget-object v0, Lx1/c;->b:Lx1/c;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_d
    sget-object v0, Lx1/c;->c:Lx1/c;

    .line 15
    .line 16
    return-object v0
.end method

.method public final getMarkWidth()F
    .registers 2

    .line 1
    iget-object v0, p0, Lw1/i;->a0:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getMarksNumber()I
    .registers 2

    .line 1
    iget v0, p0, Lw1/i;->c0:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMarksPadding()F
    .registers 2

    .line 1
    iget v0, p0, Lw1/i;->d0:F

    .line 2
    .line 3
    return v0
.end method

.method public final getOnPrintTickLabel()Lkotlin/jvm/functions/Function2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/i;->q0:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSize()I
    .registers 3

    .line 1
    iget-object v0, p0, Lw1/i;->k0:Lw1/g;

    .line 2
    .line 3
    sget-object v1, Lw1/g;->g:Lw1/g;

    .line 4
    .line 5
    if-ne v0, v1, :cond_b

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_b
    iget-boolean v0, v0, Lw1/g;->d:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1c

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0

    .line 29
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    mul-int/lit8 v0, v0, 0x2

    .line 42
    .line 43
    iget v1, p0, Lw1/i;->l0:I

    .line 44
    .line 45
    mul-int/lit8 v1, v1, 0x2

    .line 46
    .line 47
    sub-int/2addr v0, v1

    .line 48
    return v0
.end method

.method public final getSizePa()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lw1/e;->getPadding()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public final getSpeedometerMode()Lw1/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lw1/i;->k0:Lw1/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpeedometerWidth()F
    .registers 2

    .line 1
    invoke-super {p0}, Lw1/e;->getSpeedometerWidth()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getStartDegree()I
    .registers 2

    .line 1
    iget v0, p0, Lw1/i;->g0:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTickNumber()I
    .registers 2

    .line 1
    iget-object v0, p0, Lw1/i;->m0:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getTickPadding()F
    .registers 2

    .line 1
    iget v0, p0, Lw1/i;->p0:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTicks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/i;->m0:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewBottom()F
    .registers 4

    .line 1
    invoke-virtual {p0}, Lw1/i;->getViewCenterY()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    const/high16 v2, 0x3f000000    # 0.5f

    .line 11
    .line 12
    mul-float/2addr v1, v2

    .line 13
    add-float/2addr v1, v0

    .line 14
    return v1
.end method

.method public final getViewCenterX()F
    .registers 4

    .line 1
    iget-object v0, p0, Lw1/i;->k0:Lw1/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/high16 v2, 0x3f000000    # 0.5f

    .line 9
    .line 10
    if-eq v0, v1, :cond_30

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_22

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq v0, v1, :cond_30

    .line 17
    .line 18
    const/4 v1, 0x6

    .line 19
    if-eq v0, v1, :cond_22

    .line 20
    .line 21
    const/4 v1, 0x7

    .line 22
    if-eq v0, v1, :cond_22

    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    if-eq v0, v1, :cond_30

    .line 27
    .line 28
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    mul-float/2addr v0, v2

    .line 34
    return v0

    .line 35
    :cond_22
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    int-to-float v0, v0

    .line 40
    mul-float/2addr v0, v2

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    int-to-float v1, v1

    .line 46
    mul-float/2addr v1, v2

    .line 47
    add-float/2addr v1, v0

    .line 48
    return v1

    .line 49
    :cond_30
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    int-to-float v0, v0

    .line 54
    mul-float/2addr v0, v2

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    int-to-float v1, v1

    .line 60
    mul-float/2addr v1, v2

    .line 61
    sub-float/2addr v0, v1

    .line 62
    return v0
.end method

.method public final getViewCenterY()F
    .registers 4

    .line 1
    iget-object v0, p0, Lw1/i;->k0:Lw1/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x3f000000    # 0.5f

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_2e

    .line 10
    .line 11
    .line 12
    :pswitch_b
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    mul-float/2addr v0, v1

    .line 18
    return v0

    .line 19
    :pswitch_12
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-float v0, v0

    .line 24
    mul-float/2addr v0, v1

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    int-to-float v2, v2

    .line 30
    mul-float/2addr v2, v1

    .line 31
    add-float/2addr v2, v0

    .line 32
    return v2

    .line 33
    :pswitch_20
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-float v0, v0

    .line 38
    mul-float/2addr v0, v1

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    int-to-float v2, v2

    .line 44
    mul-float/2addr v2, v1

    .line 45
    sub-float/2addr v0, v2

    .line 46
    return v0

    .line 47
    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_20
        :pswitch_b
        :pswitch_12
        :pswitch_20
        :pswitch_20
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public final getViewLeft()F
    .registers 4

    .line 1
    invoke-virtual {p0}, Lw1/i;->getViewCenterX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    const/high16 v2, 0x3f000000    # 0.5f

    .line 11
    .line 12
    mul-float/2addr v1, v2

    .line 13
    sub-float/2addr v0, v1

    .line 14
    return v0
.end method

.method public final getViewRight()F
    .registers 4

    .line 1
    invoke-virtual {p0}, Lw1/i;->getViewCenterX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    const/high16 v2, 0x3f000000    # 0.5f

    .line 11
    .line 12
    mul-float/2addr v1, v2

    .line 13
    add-float/2addr v1, v0

    .line 14
    return v1
.end method

.method public final getViewTop()F
    .registers 4

    .line 1
    invoke-virtual {p0}, Lw1/i;->getViewCenterY()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    const/high16 v2, 0x3f000000    # 0.5f

    .line 11
    .line 12
    mul-float/2addr v1, v2

    .line 13
    sub-float/2addr v0, v1

    .line 14
    return v0
.end method

.method public final o()V
    .registers 7

    .line 1
    iget v0, p0, Lw1/i;->g0:I

    .line 2
    .line 3
    if-ltz v0, :cond_7f

    .line 4
    .line 5
    iget v1, p0, Lw1/i;->h0:I

    .line 6
    .line 7
    if-ltz v1, :cond_79

    .line 8
    .line 9
    if-ge v0, v1, :cond_73

    .line 10
    .line 11
    sub-int v2, v1, v0

    .line 12
    .line 13
    const/16 v3, 0x168

    .line 14
    .line 15
    if-gt v2, v3, :cond_6d

    .line 16
    .line 17
    iget-object v2, p0, Lw1/i;->k0:Lw1/g;

    .line 18
    .line 19
    iget v3, v2, Lw1/g;->b:I

    .line 20
    .line 21
    const-string v4, " Mode !"

    .line 22
    .line 23
    const-string v5, " in "

    .line 24
    .line 25
    if-lt v0, v3, :cond_46

    .line 26
    .line 27
    iget v0, v2, Lw1/g;->c:I

    .line 28
    .line 29
    if-gt v1, v0, :cond_1f

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    iget-object v0, p0, Lw1/i;->k0:Lw1/g;

    .line 33
    .line 34
    iget v0, v0, Lw1/g;->c:I

    .line 35
    .line 36
    iget-object v1, p0, Lw1/i;->k0:Lw1/g;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, "EndDegree must be smaller than "

    .line 41
    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v1

    .line 71
    :cond_46
    iget-object v0, p0, Lw1/i;->k0:Lw1/g;

    .line 72
    .line 73
    iget v0, v0, Lw1/g;->b:I

    .line 74
    .line 75
    iget-object v1, p0, Lw1/i;->k0:Lw1/g;

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v3, "StartDegree must be bigger than "

    .line 80
    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v1

    .line 110
    :cond_6d
    const-string v0, "(EndDegree - StartDegree) must be smaller than 360 !"

    .line 111
    .line 112
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_73
    const-string v0, "EndDegree must be bigger than StartDegree !"

    .line 117
    .line 118
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_79
    const-string v0, "EndDegree can\'t be Negative"

    .line 123
    .line 124
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_7f
    const-string v0, "StartDegree can\'t be Negative"

    .line 129
    .line 130
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lw1/e;->onDraw(Landroid/graphics/Canvas;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lw1/e;->getCurrentSpeed()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lw1/i;->p(F)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lw1/i;->i0:F

    .line 16
    .line 17
    return-void
.end method

.method public final onMeasure(II)V
    .registers 7

    .line 1
    const/high16 v0, 0x437a0000    # 250.0f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lw1/e;->g(F)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/high16 v3, 0x40000000    # 2.0f

    .line 25
    .line 26
    if-ne v1, v3, :cond_22

    .line 27
    .line 28
    if-ne v2, v3, :cond_22

    .line 29
    .line 30
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    goto :goto_47

    .line 35
    :cond_22
    if-ne v1, v3, :cond_25

    .line 36
    .line 37
    goto :goto_47

    .line 38
    :cond_25
    if-ne v2, v3, :cond_29

    .line 39
    .line 40
    move p1, p2

    .line 41
    goto :goto_47

    .line 42
    :cond_29
    if-nez v1, :cond_2d

    .line 43
    .line 44
    if-eqz v2, :cond_33

    .line 45
    .line 46
    :cond_2d
    const/high16 v3, -0x80000000

    .line 47
    .line 48
    if-ne v1, v3, :cond_3c

    .line 49
    .line 50
    if-ne v2, v3, :cond_3c

    .line 51
    .line 52
    :cond_33
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    goto :goto_47

    .line 61
    :cond_3c
    if-ne v1, v3, :cond_43

    .line 62
    .line 63
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    goto :goto_47

    .line 68
    :cond_43
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    :goto_47
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iget-object p2, p0, Lw1/i;->k0:Lw1/g;

    .line 89
    .line 90
    iget v0, p2, Lw1/g;->e:I

    .line 91
    .line 92
    div-int v1, p1, v0

    .line 93
    .line 94
    iget v2, p2, Lw1/g;->f:I

    .line 95
    .line 96
    div-int/2addr p1, v2

    .line 97
    iget-boolean p2, p2, Lw1/g;->d:Z

    .line 98
    .line 99
    if-eqz p2, :cond_6c

    .line 100
    .line 101
    const/4 p2, 0x2

    .line 102
    iget v2, p0, Lw1/i;->l0:I

    .line 103
    .line 104
    if-ne v0, p2, :cond_6b

    .line 105
    .line 106
    add-int/2addr v1, v2

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    add-int/2addr p1, v2

    .line 109
    :cond_6c
    :goto_6c
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lw1/e;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lw1/i;->R:Ly1/b;

    .line 5
    .line 6
    invoke-virtual {p1}, Ly1/b;->i()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lw1/i;->s()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final p(F)F
    .registers 4

    .line 1
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-float/2addr p1, v0

    .line 6
    iget v0, p0, Lw1/i;->h0:I

    .line 7
    .line 8
    iget v1, p0, Lw1/i;->g0:I

    .line 9
    .line 10
    sub-int/2addr v0, v1

    .line 11
    int-to-float v0, v0

    .line 12
    mul-float/2addr p1, v0

    .line 13
    invoke-virtual {p0}, Lw1/e;->getMaxSpeed()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-float/2addr v0, v1

    .line 22
    div-float/2addr p1, v0

    .line 23
    iget v0, p0, Lw1/i;->g0:I

    .line 24
    .line 25
    int-to-float v0, v0

    .line 26
    add-float/2addr p1, v0

    .line 27
    return p1
.end method

.method public final q(F)F
    .registers 4

    .line 1
    iget v0, p0, Lw1/i;->g0:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    sub-float/2addr p1, v0

    .line 5
    invoke-virtual {p0}, Lw1/e;->getMaxSpeed()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-float/2addr v0, v1

    .line 14
    mul-float/2addr v0, p1

    .line 15
    iget p1, p0, Lw1/i;->h0:I

    .line 16
    .line 17
    iget v1, p0, Lw1/i;->g0:I

    .line 18
    .line 19
    sub-int/2addr p1, v1

    .line 20
    int-to-float p1, p1

    .line 21
    div-float/2addr v0, p1

    .line 22
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-float/2addr p1, v0

    .line 27
    return p1
.end method

.method public final r(II)V
    .registers 3

    .line 1
    iput p1, p0, Lw1/i;->g0:I

    .line 2
    .line 3
    iput p2, p0, Lw1/i;->h0:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lw1/i;->o()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lw1/e;->c()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lw1/e;->getSpeed()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lw1/i;->p(F)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lw1/i;->i0:F

    .line 20
    .line 21
    iget-boolean p1, p0, Lw1/e;->E:Z

    .line 22
    .line 23
    if-eqz p1, :cond_1e

    .line 24
    .line 25
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lw1/e;->l()V

    .line 29
    .line 30
    .line 31
    :cond_1e
    return-void
.end method

.method public final s()V
    .registers 6

    .line 1
    iget-object v0, p0, Lw1/i;->k0:Lw1/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lw1/g;->h:Lw1/g;

    .line 7
    .line 8
    const/high16 v2, 0x3f000000    # 0.5f

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    sget-object v4, Lw1/g;->k:Lw1/g;

    .line 12
    .line 13
    if-eq v0, v1, :cond_17

    .line 14
    .line 15
    sget-object v1, Lw1/g;->j:Lw1/g;

    .line 16
    .line 17
    if-eq v0, v1, :cond_17

    .line 18
    .line 19
    if-ne v0, v4, :cond_15

    .line 20
    .line 21
    goto :goto_17

    .line 22
    :cond_15
    move v0, v3

    .line 23
    goto :goto_22

    .line 24
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    neg-int v0, v0

    .line 29
    int-to-float v0, v0

    .line 30
    mul-float/2addr v0, v2

    .line 31
    iget v1, p0, Lw1/i;->l0:I

    .line 32
    .line 33
    int-to-float v1, v1

    .line 34
    add-float/2addr v0, v1

    .line 35
    :goto_22
    invoke-virtual {p0, v0}, Lw1/e;->setTranslatedDx(F)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lw1/i;->k0:Lw1/g;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    sget-object v1, Lw1/g;->i:Lw1/g;

    .line 44
    .line 45
    if-eq v0, v1, :cond_34

    .line 46
    .line 47
    sget-object v1, Lw1/g;->l:Lw1/g;

    .line 48
    .line 49
    if-eq v0, v1, :cond_34

    .line 50
    .line 51
    if-ne v0, v4, :cond_40

    .line 52
    .line 53
    :cond_34
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    neg-int v0, v0

    .line 58
    int-to-float v0, v0

    .line 59
    mul-float/2addr v0, v2

    .line 60
    iget v1, p0, Lw1/i;->l0:I

    .line 61
    .line 62
    int-to-float v1, v1

    .line 63
    add-float v3, v0, v1

    .line 64
    .line 65
    :cond_40
    invoke-virtual {p0, v3}, Lw1/e;->setTranslatedDy(F)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final setBackgroundCircleColor(I)V
    .registers 3

    .line 1
    iput p1, p0, Lw1/i;->f0:I

    .line 2
    .line 3
    iget-object v0, p0, Lw1/i;->V:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setEndDegree(I)V
    .registers 3

    .line 1
    iget v0, p0, Lw1/i;->g0:I

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lw1/i;->r(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIndicator(Ly1/a;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Ly1/b;->f:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    packed-switch p1, :pswitch_data_7c

    .line 18
    .line 19
    .line 20
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 21
    .line 22
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :pswitch_19
    new-instance p1, Ly1/d;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ly1/d;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    goto :goto_6d

    .line 32
    :pswitch_1f
    new-instance p1, Ly1/c;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {p1, v0, v1}, Ly1/c;-><init>(Landroid/content/Context;I)V

    .line 36
    .line 37
    .line 38
    goto :goto_6d

    .line 39
    :pswitch_26
    new-instance p1, Ly1/c;

    .line 40
    .line 41
    const/high16 v1, 0x3e800000    # 0.25f

    .line 42
    .line 43
    invoke-direct {p1, v0, v1}, Ly1/c;-><init>(Landroid/content/Context;F)V

    .line 44
    .line 45
    .line 46
    goto :goto_6d

    .line 47
    :pswitch_2e
    new-instance p1, Ly1/c;

    .line 48
    .line 49
    const/high16 v1, 0x3f000000    # 0.5f

    .line 50
    .line 51
    invoke-direct {p1, v0, v1}, Ly1/c;-><init>(Landroid/content/Context;F)V

    .line 52
    .line 53
    .line 54
    goto :goto_6d

    .line 55
    :pswitch_36
    new-instance p1, Ly1/c;

    .line 56
    .line 57
    const/high16 v1, 0x3f800000    # 1.0f

    .line 58
    .line 59
    invoke-direct {p1, v0, v1}, Ly1/c;-><init>(Landroid/content/Context;F)V

    .line 60
    .line 61
    .line 62
    goto :goto_6d

    .line 63
    :pswitch_3e
    new-instance p1, Ly1/f;

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ly1/f;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    goto :goto_6d

    .line 69
    :pswitch_44
    new-instance p1, Ly1/c;

    .line 70
    .line 71
    const/4 v1, 0x4

    .line 72
    invoke-direct {p1, v0, v1}, Ly1/c;-><init>(Landroid/content/Context;I)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Landroid/graphics/Path;

    .line 76
    .line 77
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p1, Ly1/c;->i:Landroid/graphics/Path;

    .line 81
    .line 82
    const/high16 v0, 0x41c80000    # 25.0f

    .line 83
    .line 84
    iget v1, p1, Ly1/b;->b:F

    .line 85
    .line 86
    mul-float/2addr v0, v1

    .line 87
    invoke-virtual {p1, v0}, Ly1/b;->h(F)V

    .line 88
    .line 89
    .line 90
    goto :goto_6d

    .line 91
    :pswitch_5a
    new-instance p1, Ly1/c;

    .line 92
    .line 93
    const/4 v1, 0x3

    .line 94
    invoke-direct {p1, v0, v1}, Ly1/c;-><init>(Landroid/content/Context;I)V

    .line 95
    .line 96
    .line 97
    goto :goto_6d

    .line 98
    :pswitch_61
    new-instance p1, Ly1/c;

    .line 99
    .line 100
    const/4 v1, 0x2

    .line 101
    invoke-direct {p1, v0, v1}, Ly1/c;-><init>(Landroid/content/Context;I)V

    .line 102
    .line 103
    .line 104
    goto :goto_6d

    .line 105
    :pswitch_68
    new-instance p1, Ly1/e;

    .line 106
    .line 107
    invoke-direct {p1, v0}, Ly1/b;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    :goto_6d
    invoke-virtual {p1}, Ljava/util/Observable;->deleteObservers()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 114
    .line 115
    .line 116
    iput-object p0, p1, Ly1/b;->c:Lw1/i;

    .line 117
    .line 118
    invoke-virtual {p1}, Ly1/b;->i()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lw1/i;->setIndicator(Ly1/b;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_68
        :pswitch_61
        :pswitch_5a
        :pswitch_44
        :pswitch_3e
        :pswitch_36
        :pswitch_2e
        :pswitch_26
        :pswitch_1f
        :pswitch_19
    .end packed-switch
.end method

.method public final setIndicator(Ly1/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly1/b;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    iget-object v0, p0, Lw1/i;->R:Ly1/b;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    .line 126
    invoke-virtual {p1}, Ljava/util/Observable;->deleteObservers()V

    .line 127
    invoke-virtual {p1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 128
    iput-object p0, p1, Ly1/b;->c:Lw1/i;

    .line 129
    invoke-virtual {p1}, Ly1/b;->i()V

    .line 130
    iput-object p1, p0, Lw1/i;->R:Ly1/b;

    .line 131
    iget-boolean v0, p0, Lw1/e;->E:Z

    if-eqz v0, :cond_27

    .line 132
    invoke-virtual {p1}, Ljava/util/Observable;->deleteObservers()V

    .line 133
    invoke-virtual {p1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 134
    iput-object p0, p1, Ly1/b;->c:Lw1/i;

    .line 135
    invoke-virtual {p1}, Ly1/b;->i()V

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_27
    return-void
.end method

.method public final setIndicatorLightColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lw1/i;->U:I

    .line 2
    .line 3
    return-void
.end method

.method public final setInitTickPadding(F)V
    .registers 2

    .line 1
    iput p1, p0, Lw1/i;->o0:F

    .line 2
    .line 3
    return-void
.end method

.method public final setMarkColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lw1/i;->a0:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMarkHeight(F)V
    .registers 2

    .line 1
    iput p1, p0, Lw1/i;->e0:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMarkStyle(Lx1/c;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lx1/c;->b:Lx1/c;

    .line 5
    .line 6
    iget-object v1, p0, Lw1/i;->a0:Landroid/graphics/Paint;

    .line 7
    .line 8
    if-ne p1, v0, :cond_f

    .line 9
    .line 10
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 13
    .line 14
    .line 15
    goto :goto_14

    .line 16
    :cond_f
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 19
    .line 20
    .line 21
    :goto_14
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final setMarkWidth(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lw1/i;->a0:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setMarksNumber(I)V
    .registers 2

    .line 1
    iput p1, p0, Lw1/i;->c0:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMarksPadding(F)V
    .registers 2

    .line 1
    iput p1, p0, Lw1/i;->d0:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setOnPrintTickLabel(Lkotlin/jvm/functions/Function2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lw1/i;->q0:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setSpeedometerMode(Lw1/g;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw1/i;->k0:Lw1/g;

    .line 5
    .line 6
    sget-object v0, Lw1/g;->g:Lw1/g;

    .line 7
    .line 8
    if-eq p1, v0, :cond_11

    .line 9
    .line 10
    iget v0, p1, Lw1/g;->b:I

    .line 11
    .line 12
    iput v0, p0, Lw1/i;->g0:I

    .line 13
    .line 14
    iget p1, p1, Lw1/g;->c:I

    .line 15
    .line 16
    iput p1, p0, Lw1/i;->h0:I

    .line 17
    .line 18
    :cond_11
    invoke-virtual {p0}, Lw1/i;->s()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lw1/e;->c()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lw1/e;->getSpeed()F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0, p1}, Lw1/i;->p(F)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lw1/i;->i0:F

    .line 33
    .line 34
    iget-object p1, p0, Lw1/i;->R:Ly1/b;

    .line 35
    .line 36
    invoke-virtual {p1}, Ly1/b;->i()V

    .line 37
    .line 38
    .line 39
    iget-boolean p1, p0, Lw1/e;->E:Z

    .line 40
    .line 41
    if-eqz p1, :cond_33

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lw1/e;->l()V

    .line 50
    .line 51
    .line 52
    :cond_33
    return-void
.end method

.method public setSpeedometerWidth(F)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lw1/e;->setSpeedometerWidth(F)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lw1/e;->E:Z

    .line 5
    .line 6
    if-eqz p1, :cond_c

    .line 7
    .line 8
    iget-object p1, p0, Lw1/i;->R:Ly1/b;

    .line 9
    .line 10
    invoke-virtual {p1}, Ly1/b;->i()V

    .line 11
    .line 12
    .line 13
    :cond_c
    return-void
.end method

.method public final setStartDegree(I)V
    .registers 3

    .line 1
    iget v0, p0, Lw1/i;->h0:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lw1/i;->r(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTickNumber(I)V
    .registers 6

    .line 1
    if-ltz p1, :cond_26

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v1, :cond_c

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_13

    .line 13
    :cond_c
    add-int/lit8 v1, p1, -0x1

    .line 14
    .line 15
    int-to-float v1, v1

    .line 16
    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    .line 18
    div-float v1, v2, v1

    .line 19
    .line 20
    :goto_13
    const/4 v2, 0x0

    .line 21
    :goto_14
    if-ge v2, p1, :cond_22

    .line 22
    .line 23
    int-to-float v3, v2

    .line 24
    mul-float/2addr v3, v1

    .line 25
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_14

    .line 35
    :cond_22
    invoke-virtual {p0, v0}, Lw1/i;->setTicks(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_26
    const-string p1, "tickNumber mustn\'t be negative"

    .line 40
    .line 41
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setTickPadding(F)V
    .registers 2

    .line 1
    iput p1, p0, Lw1/i;->p0:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTickRotation(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lw1/i;->n0:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTicks(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw1/i;->m0:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2b

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Number;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    cmpg-float v1, v0, v1

    .line 28
    .line 29
    if-ltz v1, :cond_25

    .line 30
    .line 31
    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    .line 33
    cmpl-float v0, v0, v1

    .line 34
    .line 35
    if-gtz v0, :cond_25

    .line 36
    .line 37
    goto :goto_9

    .line 38
    :cond_25
    const-string p1, "ticks must be between [0f, 1f] !!"

    .line 39
    .line 40
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2b
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final setWithIndicatorLight(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lw1/i;->T:Z

    .line 2
    .line 3
    return-void
.end method
