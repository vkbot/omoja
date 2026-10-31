.class public Lcom/github/anastr/speedviewlib/ImageSpeedometer;
.super Lw1/i;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u0015\u0010\u0008\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/github/anastr/speedviewlib/ImageSpeedometer;",
        "Lw1/i;",
        "Landroid/graphics/drawable/Drawable;",
        "getImageSpeedometer",
        "()Landroid/graphics/drawable/Drawable;",
        "",
        "imageResource",
        "",
        "setImageSpeedometer",
        "(I)V",
        "imageSpeedometer",
        "(Landroid/graphics/drawable/Drawable;)V",
        "Landroid/graphics/Bitmap;",
        "bitmapImage",
        "(Landroid/graphics/Bitmap;)V",
        "speedviewlib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public s0:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lw1/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    if-nez p2, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lw1/f;->b:[I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/github/anastr/speedviewlib/ImageSpeedometer;->s0:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final getImageSpeedometer()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/anastr/speedviewlib/ImageSpeedometer;->s0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()V
    .registers 15

    .line 1
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/high16 v2, 0x3f000000    # 0.5f

    .line 7
    .line 8
    if-nez v0, :cond_f

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/Canvas;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 13
    .line 14
    .line 15
    goto :goto_54

    .line 16
    :cond_f
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 25
    .line 26
    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lw1/e;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Landroid/graphics/Canvas;

    .line 37
    .line 38
    invoke-virtual {p0}, Lw1/e;->getBackgroundBitmap()Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    int-to-float v3, v3

    .line 50
    mul-float/2addr v3, v2

    .line 51
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    int-to-float v4, v4

    .line 56
    mul-float/2addr v4, v2

    .line 57
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    int-to-float v5, v5

    .line 62
    mul-float/2addr v5, v2

    .line 63
    invoke-virtual {p0}, Lw1/e;->getPadding()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    int-to-float v6, v6

    .line 68
    sub-float/2addr v5, v6

    .line 69
    iget-object v6, p0, Lw1/i;->V:Landroid/graphics/Paint;

    .line 70
    .line 71
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 83
    .line 84
    .line 85
    :goto_54
    iget-object v3, p0, Lcom/github/anastr/speedviewlib/ImageSpeedometer;->s0:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    if-eqz v3, :cond_8e

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lw1/i;->getViewLeft()F

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    float-to-int v4, v4

    .line 97
    invoke-virtual {p0}, Lw1/e;->getPadding()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    add-int/2addr v5, v4

    .line 102
    invoke-virtual {p0}, Lw1/i;->getViewTop()F

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    float-to-int v4, v4

    .line 107
    invoke-virtual {p0}, Lw1/e;->getPadding()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    add-int/2addr v6, v4

    .line 112
    invoke-virtual {p0}, Lw1/i;->getViewRight()F

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    float-to-int v4, v4

    .line 117
    invoke-virtual {p0}, Lw1/e;->getPadding()I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    sub-int/2addr v4, v7

    .line 122
    invoke-virtual {p0}, Lw1/i;->getViewBottom()F

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    float-to-int v7, v7

    .line 127
    invoke-virtual {p0}, Lw1/e;->getPadding()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    sub-int/2addr v7, v8

    .line 132
    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    .line 134
    .line 135
    iget-object v3, p0, Lcom/github/anastr/speedviewlib/ImageSpeedometer;->s0:Landroid/graphics/drawable/Drawable;

    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    .line 142
    .line 143
    :cond_8e
    iget-object v3, p0, Lw1/i;->b0:Landroid/graphics/Path;

    .line 144
    .line 145
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    int-to-float v4, v4

    .line 153
    mul-float/2addr v4, v2

    .line 154
    iget v5, p0, Lw1/i;->d0:F

    .line 155
    .line 156
    invoke-virtual {p0}, Lw1/e;->getPadding()I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    int-to-float v6, v6

    .line 161
    add-float/2addr v5, v6

    .line 162
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    int-to-float v4, v4

    .line 170
    mul-float/2addr v4, v2

    .line 171
    iget v5, p0, Lw1/i;->d0:F

    .line 172
    .line 173
    iget v6, p0, Lw1/i;->e0:F

    .line 174
    .line 175
    add-float/2addr v5, v6

    .line 176
    invoke-virtual {p0}, Lw1/e;->getPadding()I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    int-to-float v6, v6

    .line 181
    add-float/2addr v5, v6

    .line 182
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lw1/i;->getStartDegree()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    int-to-float v4, v4

    .line 193
    const/high16 v5, 0x42b40000    # 90.0f

    .line 194
    .line 195
    add-float/2addr v4, v5

    .line 196
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    int-to-float v6, v6

    .line 201
    mul-float/2addr v6, v2

    .line 202
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    int-to-float v7, v7

    .line 207
    mul-float/2addr v7, v2

    .line 208
    invoke-virtual {v0, v4, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lw1/i;->getEndDegree()I

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    invoke-virtual {p0}, Lw1/i;->getStartDegree()I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    sub-int/2addr v4, v6

    .line 220
    int-to-float v4, v4

    .line 221
    iget v6, p0, Lw1/i;->c0:I

    .line 222
    .line 223
    int-to-float v7, v6

    .line 224
    const/high16 v8, 0x3f800000    # 1.0f

    .line 225
    .line 226
    add-float/2addr v7, v8

    .line 227
    div-float/2addr v4, v7

    .line 228
    const/4 v7, 0x1

    .line 229
    if-gt v7, v6, :cond_100

    .line 230
    .line 231
    move v8, v7

    .line 232
    :goto_e7
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    int-to-float v9, v9

    .line 237
    mul-float/2addr v9, v2

    .line 238
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    int-to-float v10, v10

    .line 243
    mul-float/2addr v10, v2

    .line 244
    invoke-virtual {v0, v4, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 245
    .line 246
    .line 247
    iget-object v9, p0, Lw1/i;->a0:Landroid/graphics/Paint;

    .line 248
    .line 249
    invoke-virtual {v0, v3, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 250
    .line 251
    .line 252
    if-eq v8, v6, :cond_100

    .line 253
    .line 254
    add-int/lit8 v8, v8, 0x1

    .line 255
    .line 256
    goto :goto_e7

    .line 257
    :cond_100
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 258
    .line 259
    .line 260
    iget-object v3, p0, Lw1/i;->m0:Ljava/util/List;

    .line 261
    .line 262
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-eqz v3, :cond_10d

    .line 267
    .line 268
    goto/16 :goto_1db

    .line 269
    .line 270
    :cond_10d
    invoke-virtual {p0}, Lw1/e;->getTextPaint()Landroid/text/TextPaint;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 275
    .line 276
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 277
    .line 278
    .line 279
    iget v3, p0, Lw1/i;->h0:I

    .line 280
    .line 281
    iget v4, p0, Lw1/i;->g0:I

    .line 282
    .line 283
    sub-int/2addr v3, v4

    .line 284
    iget-object v4, p0, Lw1/i;->m0:Ljava/util/List;

    .line 285
    .line 286
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    move v6, v1

    .line 291
    :goto_122
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    if-eqz v8, :cond_1db

    .line 296
    .line 297
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    add-int/lit8 v9, v6, 0x1

    .line 302
    .line 303
    if-gez v6, :cond_133

    .line 304
    .line 305
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 306
    .line 307
    .line 308
    :cond_133
    check-cast v8, Ljava/lang/Number;

    .line 309
    .line 310
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    iget v10, p0, Lw1/i;->g0:I

    .line 315
    .line 316
    int-to-float v10, v10

    .line 317
    int-to-float v11, v3

    .line 318
    mul-float/2addr v11, v8

    .line 319
    add-float/2addr v11, v10

    .line 320
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 321
    .line 322
    .line 323
    add-float v8, v11, v5

    .line 324
    .line 325
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    int-to-float v10, v10

    .line 330
    mul-float/2addr v10, v2

    .line 331
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 332
    .line 333
    .line 334
    move-result v12

    .line 335
    int-to-float v12, v12

    .line 336
    mul-float/2addr v12, v2

    .line 337
    invoke-virtual {v0, v8, v10, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 338
    .line 339
    .line 340
    iget-boolean v10, p0, Lw1/i;->n0:Z

    .line 341
    .line 342
    if-nez v10, :cond_175

    .line 343
    .line 344
    neg-float v8, v8

    .line 345
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 346
    .line 347
    .line 348
    move-result v10

    .line 349
    int-to-float v10, v10

    .line 350
    mul-float/2addr v10, v2

    .line 351
    iget v12, p0, Lw1/i;->o0:F

    .line 352
    .line 353
    invoke-virtual {p0}, Lw1/e;->getTextPaint()Landroid/text/TextPaint;

    .line 354
    .line 355
    .line 356
    move-result-object v13

    .line 357
    invoke-virtual {v13}, Landroid/graphics/Paint;->getTextSize()F

    .line 358
    .line 359
    .line 360
    move-result v13

    .line 361
    add-float/2addr v13, v12

    .line 362
    invoke-virtual {p0}, Lw1/e;->getPadding()I

    .line 363
    .line 364
    .line 365
    move-result v12

    .line 366
    int-to-float v12, v12

    .line 367
    add-float/2addr v13, v12

    .line 368
    iget v12, p0, Lw1/i;->p0:F

    .line 369
    .line 370
    add-float/2addr v13, v12

    .line 371
    invoke-virtual {v0, v8, v10, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 372
    .line 373
    .line 374
    :cond_175
    iget-object v8, p0, Lw1/i;->q0:Lkotlin/jvm/functions/Function2;

    .line 375
    .line 376
    if-eqz v8, :cond_18c

    .line 377
    .line 378
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    invoke-virtual {p0, v11}, Lw1/i;->q(F)F

    .line 383
    .line 384
    .line 385
    move-result v10

    .line 386
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 387
    .line 388
    .line 389
    move-result-object v10

    .line 390
    invoke-interface {v8, v6, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    check-cast v6, Ljava/lang/CharSequence;

    .line 395
    .line 396
    goto :goto_18d

    .line 397
    :cond_18c
    const/4 v6, 0x0

    .line 398
    :goto_18d
    if-nez v6, :cond_1a9

    .line 399
    .line 400
    invoke-virtual {p0}, Lw1/e;->getLocale()Ljava/util/Locale;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    invoke-virtual {p0, v11}, Lw1/i;->q(F)F

    .line 405
    .line 406
    .line 407
    move-result v8

    .line 408
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v8

    .line 416
    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v8

    .line 420
    const-string v10, "%.0f"

    .line 421
    .line 422
    invoke-static {v6, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    :cond_1a9
    iget v8, p0, Lw1/i;->o0:F

    .line 427
    .line 428
    invoke-virtual {p0}, Lw1/e;->getPadding()I

    .line 429
    .line 430
    .line 431
    move-result v10

    .line 432
    int-to-float v10, v10

    .line 433
    add-float/2addr v8, v10

    .line 434
    iget v10, p0, Lw1/i;->p0:F

    .line 435
    .line 436
    add-float/2addr v8, v10

    .line 437
    const/4 v10, 0x0

    .line 438
    invoke-virtual {v0, v10, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 439
    .line 440
    .line 441
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 442
    .line 443
    .line 444
    move-result v8

    .line 445
    invoke-virtual {p0}, Lw1/e;->getTextPaint()Landroid/text/TextPaint;

    .line 446
    .line 447
    .line 448
    move-result-object v10

    .line 449
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 450
    .line 451
    .line 452
    move-result v11

    .line 453
    invoke-static {v6, v1, v8, v10, v11}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 454
    .line 455
    .line 456
    move-result-object v6

    .line 457
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 458
    .line 459
    invoke-virtual {v6, v8}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 460
    .line 461
    .line 462
    move-result-object v6

    .line 463
    invoke-virtual {v6}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    invoke-virtual {v6, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 471
    .line 472
    .line 473
    move v6, v9

    .line 474
    goto/16 :goto_122

    .line 475
    .line 476
    :cond_1db
    :goto_1db
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lw1/i;->onDraw(Landroid/graphics/Canvas;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lw1/e;->h(Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p0}, Lw1/i;->getFulcrumX()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/high16 v2, 0x3f000000    # 0.5f

    .line 23
    .line 24
    sub-float/2addr v1, v2

    .line 25
    mul-float/2addr v1, v0

    .line 26
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    invoke-virtual {p0}, Lw1/i;->getFulcrumY()F

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    sub-float/2addr v3, v2

    .line 36
    mul-float/2addr v3, v0

    .line 37
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    .line 39
    .line 40
    const/high16 v0, 0x42b40000    # 90.0f

    .line 41
    .line 42
    iget v1, p0, Lw1/i;->i0:F

    .line 43
    .line 44
    add-float/2addr v1, v0

    .line 45
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    int-to-float v0, v0

    .line 50
    mul-float/2addr v0, v2

    .line 51
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    int-to-float v3, v3

    .line 56
    mul-float/2addr v3, v2

    .line 57
    invoke-virtual {p1, v1, v0, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 58
    .line 59
    .line 60
    iget-boolean v0, p0, Lw1/i;->T:Z

    .line 61
    .line 62
    if-eqz v0, :cond_fa

    .line 63
    .line 64
    invoke-virtual {p0}, Lw1/e;->getPercentSpeed()F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget v1, p0, Lw1/i;->r0:F

    .line 69
    .line 70
    sub-float/2addr v0, v1

    .line 71
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/high16 v1, 0x41f00000    # 30.0f

    .line 76
    .line 77
    mul-float/2addr v0, v1

    .line 78
    invoke-virtual {p0}, Lw1/e;->getPercentSpeed()F

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    iput v3, p0, Lw1/i;->r0:F

    .line 83
    .line 84
    cmpl-float v3, v0, v1

    .line 85
    .line 86
    if-lez v3, :cond_59

    .line 87
    .line 88
    move v7, v1

    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    move v7, v0

    .line 91
    :goto_5a
    iget v0, p0, Lw1/i;->U:I

    .line 92
    .line 93
    const v1, 0xffffff

    .line 94
    .line 95
    .line 96
    filled-new-array {v0, v1}, [I

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Landroid/graphics/SweepGradient;

    .line 101
    .line 102
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    int-to-float v3, v3

    .line 107
    mul-float/2addr v3, v2

    .line 108
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    int-to-float v4, v4

    .line 113
    mul-float/2addr v4, v2

    .line 114
    const/high16 v5, 0x43b40000    # 360.0f

    .line 115
    .line 116
    div-float v5, v7, v5

    .line 117
    .line 118
    const/4 v6, 0x2

    .line 119
    new-array v6, v6, [F

    .line 120
    .line 121
    const/4 v8, 0x0

    .line 122
    const/4 v9, 0x0

    .line 123
    aput v8, v6, v9

    .line 124
    .line 125
    const/4 v8, 0x1

    .line 126
    aput v5, v6, v8

    .line 127
    .line 128
    invoke-direct {v1, v3, v4, v0, v6}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 129
    .line 130
    .line 131
    iget-object v9, p0, Lw1/i;->W:Landroid/graphics/Paint;

    .line 132
    .line 133
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lw1/i;->R:Ly1/b;

    .line 137
    .line 138
    invoke-virtual {v0}, Ly1/b;->d()F

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {v0}, Ly1/b;->b()F

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    cmpl-float v1, v1, v3

    .line 147
    .line 148
    if-lez v1, :cond_9a

    .line 149
    .line 150
    invoke-virtual {v0}, Ly1/b;->b()F

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    goto :goto_9e

    .line 155
    :cond_9a
    invoke-virtual {v0}, Ly1/b;->d()F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    :goto_9e
    iget-object v1, p0, Lw1/i;->R:Ly1/b;

    .line 160
    .line 161
    invoke-virtual {v1}, Ly1/b;->e()F

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    sub-float/2addr v0, v1

    .line 166
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lw1/i;->R:Ly1/b;

    .line 170
    .line 171
    invoke-virtual {v0}, Ly1/b;->e()F

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    mul-float/2addr v1, v2

    .line 180
    add-float/2addr v1, v0

    .line 181
    new-instance v5, Landroid/graphics/RectF;

    .line 182
    .line 183
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    int-to-float v0, v0

    .line 188
    sub-float/2addr v0, v1

    .line 189
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    int-to-float v3, v3

    .line 194
    sub-float/2addr v3, v1

    .line 195
    invoke-direct {v5, v1, v1, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    int-to-float v0, v0

    .line 206
    mul-float/2addr v0, v2

    .line 207
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    int-to-float v1, v1

    .line 212
    mul-float/2addr v1, v2

    .line 213
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 214
    .line 215
    invoke-virtual {p1, v3, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 216
    .line 217
    .line 218
    iget-boolean v0, p0, Lw1/e;->m:Z

    .line 219
    .line 220
    if-eqz v0, :cond_f0

    .line 221
    .line 222
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    int-to-float v0, v0

    .line 227
    mul-float/2addr v0, v2

    .line 228
    invoke-virtual {p0}, Lw1/i;->getSize()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    int-to-float v1, v1

    .line 233
    mul-float/2addr v1, v2

    .line 234
    const/high16 v2, 0x3f800000    # 1.0f

    .line 235
    .line 236
    const/high16 v3, -0x40800000    # -1.0f

    .line 237
    .line 238
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 239
    .line 240
    .line 241
    :cond_f0
    const/4 v6, 0x0

    .line 242
    const/4 v8, 0x0

    .line 243
    move-object v4, p1

    .line 244
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 248
    .line 249
    .line 250
    goto :goto_fb

    .line 251
    :cond_fa
    move-object v4, p1

    .line 252
    :goto_fb
    iget-object p1, p0, Lw1/i;->R:Ly1/b;

    .line 253
    .line 254
    invoke-virtual {p1, v4}, Ly1/b;->a(Landroid/graphics/Canvas;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lw1/i;->j0:Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-nez v0, :cond_110

    .line 271
    .line 272
    return-void

    .line 273
    :cond_110
    invoke-static {p1}, Lcom/bumptech/glide/g;->b(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    throw p1
.end method

.method public final onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lw1/i;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/github/anastr/speedviewlib/ImageSpeedometer;->m()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setImageSpeedometer(I)V
    .registers 3

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/anastr/speedviewlib/ImageSpeedometer;->setImageSpeedometer(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setImageSpeedometer(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/github/anastr/speedviewlib/ImageSpeedometer;->setImageSpeedometer(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setImageSpeedometer(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/github/anastr/speedviewlib/ImageSpeedometer;->s0:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {p0}, Lcom/github/anastr/speedviewlib/ImageSpeedometer;->m()V

    return-void
.end method
