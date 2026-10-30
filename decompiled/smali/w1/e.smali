.class public abstract Lw1/e;
.super Landroid/view/View;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field public final A:Ljava/util/ArrayList;

.field public B:Lx1/b;

.field public C:F

.field public D:Z

.field public E:Z

.field public F:F

.field public G:F

.field public H:Ljava/util/Locale;

.field public I:F

.field public J:F

.field public K:Lw1/b;

.field public L:F

.field public M:F

.field public N:Z

.field public O:Landroid/graphics/Bitmap;

.field public P:Landroid/graphics/Canvas;

.field public Q:Lkotlin/jvm/functions/Function1;

.field public final b:Landroid/graphics/Paint;

.field public c:Landroid/text/TextPaint;

.field public final d:Landroid/text/TextPaint;

.field public final e:Landroid/text/TextPaint;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:F

.field public m:Z

.field public n:F

.field public o:I

.field public p:Landroid/animation/ValueAnimator;

.field public q:Landroid/animation/ValueAnimator;

.field public r:Z

.field public s:Lkotlin/jvm/functions/Function3;

.field public t:Lkotlin/jvm/functions/Function2;

.field public final u:Le3/c;

.field public v:Landroid/graphics/Bitmap;

.field public final w:Landroid/graphics/Paint;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Landroid/graphics/Paint;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lw1/e;->b:Landroid/graphics/Paint;

    .line 12
    .line 13
    new-instance v1, Landroid/text/TextPaint;

    .line 14
    .line 15
    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lw1/e;->c:Landroid/text/TextPaint;

    .line 19
    .line 20
    new-instance v1, Landroid/text/TextPaint;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lw1/e;->d:Landroid/text/TextPaint;

    .line 26
    .line 27
    new-instance v3, Landroid/text/TextPaint;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Landroid/text/TextPaint;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v3, p0, Lw1/e;->e:Landroid/text/TextPaint;

    .line 33
    .line 34
    const-string v4, "Km/h"

    .line 35
    .line 36
    iput-object v4, p0, Lw1/e;->f:Ljava/lang/String;

    .line 37
    .line 38
    iput-boolean v2, p0, Lw1/e;->g:Z

    .line 39
    .line 40
    const/high16 v4, 0x42c80000    # 100.0f

    .line 41
    .line 42
    iput v4, p0, Lw1/e;->i:F

    .line 43
    .line 44
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iput v4, p0, Lw1/e;->j:F

    .line 49
    .line 50
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    iput v4, p0, Lw1/e;->l:F

    .line 55
    .line 56
    const/high16 v4, 0x40800000    # 4.0f

    .line 57
    .line 58
    iput v4, p0, Lw1/e;->n:F

    .line 59
    .line 60
    const/16 v4, 0x3e8

    .line 61
    .line 62
    iput v4, p0, Lw1/e;->o:I

    .line 63
    .line 64
    new-instance v4, Le3/c;

    .line 65
    .line 66
    move-object v5, p0

    .line 67
    check-cast v5, Lw1/i;

    .line 68
    .line 69
    const/4 v6, 0x6

    .line 70
    invoke-direct {v4, v6, v5}, Le3/c;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iput-object v4, p0, Lw1/e;->u:Le3/c;

    .line 74
    .line 75
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 76
    .line 77
    invoke-static {v2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iput-object v6, p0, Lw1/e;->v:Landroid/graphics/Bitmap;

    .line 85
    .line 86
    new-instance v6, Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-direct {v6, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 89
    .line 90
    .line 91
    iput-object v6, p0, Lw1/e;->w:Landroid/graphics/Paint;

    .line 92
    .line 93
    new-instance v6, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v6, p0, Lw1/e;->A:Ljava/util/ArrayList;

    .line 99
    .line 100
    const/high16 v7, 0x41f00000    # 30.0f

    .line 101
    .line 102
    invoke-virtual {p0, v7}, Lw1/e;->g(F)F

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    iput v7, p0, Lw1/e;->C:F

    .line 107
    .line 108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    iput-object v7, p0, Lw1/e;->H:Ljava/util/Locale;

    .line 116
    .line 117
    const v7, 0x3dcccccd    # 0.1f

    .line 118
    .line 119
    .line 120
    iput v7, p0, Lw1/e;->I:F

    .line 121
    .line 122
    iput v7, p0, Lw1/e;->J:F

    .line 123
    .line 124
    sget-object v7, Lw1/b;->h:Lw1/b;

    .line 125
    .line 126
    iput-object v7, p0, Lw1/e;->K:Lw1/b;

    .line 127
    .line 128
    const/high16 v7, 0x3f800000    # 1.0f

    .line 129
    .line 130
    invoke-virtual {p0, v7}, Lw1/e;->g(F)F

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    iput v8, p0, Lw1/e;->L:F

    .line 135
    .line 136
    const/high16 v8, 0x41a00000    # 20.0f

    .line 137
    .line 138
    invoke-virtual {p0, v8}, Lw1/e;->g(F)F

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    iput v8, p0, Lw1/e;->M:F

    .line 143
    .line 144
    invoke-static {v2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    iput-object v4, p0, Lw1/e;->O:Landroid/graphics/Bitmap;

    .line 152
    .line 153
    new-instance v4, Lw1/c;

    .line 154
    .line 155
    const/4 v8, 0x2

    .line 156
    invoke-direct {v4, v5, v8}, Lw1/c;-><init>(Lw1/i;I)V

    .line 157
    .line 158
    .line 159
    iput-object v4, p0, Lw1/e;->Q:Lkotlin/jvm/functions/Function1;

    .line 160
    .line 161
    iget-object v4, p0, Lw1/e;->c:Landroid/text/TextPaint;

    .line 162
    .line 163
    const/high16 v8, -0x1000000

    .line 164
    .line 165
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    .line 167
    .line 168
    iget-object v4, p0, Lw1/e;->c:Landroid/text/TextPaint;

    .line 169
    .line 170
    const/high16 v9, 0x41200000    # 10.0f

    .line 171
    .line 172
    invoke-virtual {p0, v9}, Lw1/e;->g(F)F

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 177
    .line 178
    .line 179
    iget-object v4, p0, Lw1/e;->c:Landroid/text/TextPaint;

    .line 180
    .line 181
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 182
    .line 183
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    .line 188
    .line 189
    const/high16 v4, 0x41900000    # 18.0f

    .line 190
    .line 191
    invoke-virtual {p0, v4}, Lw1/e;->g(F)F

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    .line 200
    .line 201
    const/high16 v4, 0x41700000    # 15.0f

    .line 202
    .line 203
    invoke-virtual {p0, v4}, Lw1/e;->g(F)F

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 208
    .line 209
    .line 210
    new-instance v4, Lx1/b;

    .line 211
    .line 212
    const v8, -0xff0100

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lw1/e;->getSpeedometerWidth()F

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    const/4 v10, 0x0

    .line 220
    const v11, 0x3f19999a    # 0.6f

    .line 221
    .line 222
    .line 223
    invoke-direct {v4, v10, v11, v9, v8}, Lx1/b;-><init>(FFFI)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, p0}, Lx1/b;->q(Lw1/e;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    new-instance v4, Lx1/b;

    .line 233
    .line 234
    const/16 v8, -0x100

    .line 235
    .line 236
    invoke-virtual {p0}, Lw1/e;->getSpeedometerWidth()F

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    const v12, 0x3f5eb852    # 0.87f

    .line 241
    .line 242
    .line 243
    invoke-direct {v4, v11, v12, v9, v8}, Lx1/b;-><init>(FFFI)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, p0}, Lx1/b;->q(Lw1/e;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    new-instance v4, Lx1/b;

    .line 253
    .line 254
    const/high16 v8, -0x10000

    .line 255
    .line 256
    invoke-virtual {p0}, Lw1/e;->getSpeedometerWidth()F

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    invoke-direct {v4, v12, v7, v9, v8}, Lx1/b;-><init>(FFFI)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4, p0}, Lx1/b;->q(Lw1/e;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    if-nez p2, :cond_0

    .line 270
    .line 271
    return-void

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    sget-object v8, Lw1/f;->a:[I

    .line 277
    .line 278
    invoke-virtual {v4, p2, v8, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    const/4 v4, 0x2

    .line 286
    invoke-virtual {p0}, Lw1/e;->getMaxSpeed()F

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    invoke-virtual {p2, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    const/4 v8, 0x3

    .line 295
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 296
    .line 297
    .line 298
    move-result v9

    .line 299
    invoke-virtual {p2, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 300
    .line 301
    .line 302
    move-result v8

    .line 303
    invoke-virtual {p0, v8, v4}, Lw1/e;->j(FF)V

    .line 304
    .line 305
    .line 306
    iput v8, p0, Lw1/e;->j:F

    .line 307
    .line 308
    invoke-direct {p0, v8}, Lw1/e;->setCurrentSpeed(F)V

    .line 309
    .line 310
    .line 311
    const/16 v4, 0xa

    .line 312
    .line 313
    invoke-virtual {p0}, Lw1/e;->getSpeedometerWidth()F

    .line 314
    .line 315
    .line 316
    move-result v8

    .line 317
    invoke-virtual {p2, v4, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    invoke-virtual {p0, v4}, Lw1/e;->setSpeedometerWidth(F)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    move v8, v0

    .line 329
    :cond_1
    :goto_0
    if-ge v8, v4, :cond_2

    .line 330
    .line 331
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v9

    .line 335
    add-int/lit8 v8, v8, 0x1

    .line 336
    .line 337
    check-cast v9, Lx1/b;

    .line 338
    .line 339
    invoke-virtual {p0}, Lw1/e;->getSpeedometerWidth()F

    .line 340
    .line 341
    .line 342
    move-result v11

    .line 343
    iput v11, v9, Lx1/b;->c:F

    .line 344
    .line 345
    iget-object v9, v9, Lx1/b;->b:Lw1/e;

    .line 346
    .line 347
    if-eqz v9, :cond_1

    .line 348
    .line 349
    invoke-virtual {v9}, Lw1/e;->i()V

    .line 350
    .line 351
    .line 352
    goto :goto_0

    .line 353
    :cond_2
    const/16 v4, 0x16

    .line 354
    .line 355
    iget-boolean v6, p0, Lw1/e;->g:Z

    .line 356
    .line 357
    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    invoke-virtual {p0, v4}, Lw1/e;->setWithTremble(Z)V

    .line 362
    .line 363
    .line 364
    iget-object v4, p0, Lw1/e;->c:Landroid/text/TextPaint;

    .line 365
    .line 366
    const/16 v6, 0xb

    .line 367
    .line 368
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    .line 369
    .line 370
    .line 371
    move-result v8

    .line 372
    invoke-virtual {p2, v6, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    .line 378
    .line 379
    iget-object v4, p0, Lw1/e;->c:Landroid/text/TextPaint;

    .line 380
    .line 381
    const/16 v6, 0xd

    .line 382
    .line 383
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    .line 384
    .line 385
    .line 386
    move-result v8

    .line 387
    invoke-virtual {p2, v6, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 392
    .line 393
    .line 394
    const/4 v4, 0x4

    .line 395
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    .line 405
    .line 406
    const/16 v4, 0x8

    .line 407
    .line 408
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 417
    .line 418
    .line 419
    const/16 v1, 0x13

    .line 420
    .line 421
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    .line 431
    .line 432
    const/16 v1, 0x14

    .line 433
    .line 434
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 443
    .line 444
    .line 445
    const/16 v1, 0x11

    .line 446
    .line 447
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    if-nez v1, :cond_3

    .line 452
    .line 453
    iget-object v1, p0, Lw1/e;->f:Ljava/lang/String;

    .line 454
    .line 455
    :cond_3
    invoke-virtual {p0, v1}, Lw1/e;->setUnit(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    const/16 v1, 0xf

    .line 459
    .line 460
    iget v3, p0, Lw1/e;->n:F

    .line 461
    .line 462
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    invoke-virtual {p0, v1}, Lw1/e;->setTrembleDegree(F)V

    .line 467
    .line 468
    .line 469
    const/16 v1, 0x10

    .line 470
    .line 471
    iget v3, p0, Lw1/e;->o:I

    .line 472
    .line 473
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    invoke-virtual {p0, v1}, Lw1/e;->setTrembleDuration(I)V

    .line 478
    .line 479
    .line 480
    const/16 v1, 0xc

    .line 481
    .line 482
    iget-boolean v3, p0, Lw1/e;->D:Z

    .line 483
    .line 484
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    invoke-virtual {p0, v1}, Lw1/e;->setSpeedometerTextRightToLeft(Z)V

    .line 489
    .line 490
    .line 491
    iget v1, p0, Lw1/e;->I:F

    .line 492
    .line 493
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    invoke-virtual {p0, v0}, Lw1/e;->setAccelerate(F)V

    .line 498
    .line 499
    .line 500
    iget v0, p0, Lw1/e;->J:F

    .line 501
    .line 502
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    invoke-virtual {p0, v0}, Lw1/e;->setDecelerate(F)V

    .line 507
    .line 508
    .line 509
    const/16 v0, 0x15

    .line 510
    .line 511
    iget-boolean v1, p0, Lw1/e;->N:Z

    .line 512
    .line 513
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    invoke-virtual {p0, v0}, Lw1/e;->setUnitUnderSpeedText(Z)V

    .line 518
    .line 519
    .line 520
    const/16 v0, 0x12

    .line 521
    .line 522
    iget v1, p0, Lw1/e;->L:F

    .line 523
    .line 524
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    invoke-direct {p0, v0}, Lw1/e;->setUnitSpeedInterval(F)V

    .line 529
    .line 530
    .line 531
    const/4 v0, 0x6

    .line 532
    iget v1, p0, Lw1/e;->M:F

    .line 533
    .line 534
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    invoke-direct {p0, v0}, Lw1/e;->setSpeedTextPadding(F)V

    .line 539
    .line 540
    .line 541
    const/16 v0, 0x9

    .line 542
    .line 543
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    if-eqz v0, :cond_4

    .line 548
    .line 549
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    if-nez v1, :cond_4

    .line 554
    .line 555
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {p0, v0}, Lw1/e;->setSpeedTextTypeface(Landroid/graphics/Typeface;)V

    .line 564
    .line 565
    .line 566
    :cond_4
    const/16 v0, 0xe

    .line 567
    .line 568
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    if-eqz v0, :cond_5

    .line 573
    .line 574
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    if-nez v1, :cond_5

    .line 579
    .line 580
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    invoke-virtual {p0, p1}, Lw1/e;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 589
    .line 590
    .line 591
    :cond_5
    const/4 p1, 0x7

    .line 592
    const/4 v0, -0x1

    .line 593
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 594
    .line 595
    .line 596
    move-result p1

    .line 597
    if-eq p1, v0, :cond_6

    .line 598
    .line 599
    invoke-static {}, Lw1/b;->values()[Lw1/b;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    aget-object p1, v1, p1

    .line 604
    .line 605
    invoke-virtual {p0, p1}, Lw1/e;->setSpeedTextPosition(Lw1/b;)V

    .line 606
    .line 607
    .line 608
    :cond_6
    const/4 p1, 0x5

    .line 609
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 610
    .line 611
    .line 612
    move-result p1

    .line 613
    if-eqz p1, :cond_8

    .line 614
    .line 615
    if-eq p1, v2, :cond_7

    .line 616
    .line 617
    goto :goto_1

    .line 618
    :cond_7
    new-instance p1, Lw1/c;

    .line 619
    .line 620
    const/4 v0, 0x1

    .line 621
    invoke-direct {p1, v5, v0}, Lw1/c;-><init>(Lw1/i;I)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {p0, p1}, Lw1/e;->setSpeedTextListener(Lkotlin/jvm/functions/Function1;)V

    .line 625
    .line 626
    .line 627
    goto :goto_1

    .line 628
    :cond_8
    new-instance p1, Lw1/c;

    .line 629
    .line 630
    const/4 v0, 0x0

    .line 631
    invoke-direct {p1, v5, v0}, Lw1/c;-><init>(Lw1/i;I)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {p0, p1}, Lw1/e;->setSpeedTextListener(Lkotlin/jvm/functions/Function1;)V

    .line 635
    .line 636
    .line 637
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 638
    .line 639
    .line 640
    iget p1, p0, Lw1/e;->I:F

    .line 641
    .line 642
    cmpl-float p2, p1, v7

    .line 643
    .line 644
    if-gtz p2, :cond_a

    .line 645
    .line 646
    cmpg-float p1, p1, v10

    .line 647
    .line 648
    if-lez p1, :cond_a

    .line 649
    .line 650
    iget p1, p0, Lw1/e;->J:F

    .line 651
    .line 652
    cmpl-float p2, p1, v7

    .line 653
    .line 654
    if-gtz p2, :cond_9

    .line 655
    .line 656
    cmpg-float p1, p1, v10

    .line 657
    .line 658
    if-lez p1, :cond_9

    .line 659
    .line 660
    invoke-virtual {p0}, Lw1/e;->f()V

    .line 661
    .line 662
    .line 663
    return-void

    .line 664
    :cond_9
    const-string p1, "decelerate must be between (0, 1]"

    .line 665
    .line 666
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    const/4 p1, 0x0

    .line 670
    throw p1

    .line 671
    :cond_a
    const-string p1, "accelerate must be between (0, 1]"

    .line 672
    .line 673
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    const/4 p1, 0x0

    .line 677
    throw p1
.end method

.method public static a(Lw1/e;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast v0, Ljava/lang/Float;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Lw1/e;->l:F

    .line 15
    .line 16
    cmpl-float v0, v0, v1

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    iput-boolean v0, p0, Lw1/e;->m:Z

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    check-cast p1, Ljava/lang/Float;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-direct {p0, p1}, Lw1/e;->setCurrentSpeed(F)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static b(Lw1/e;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/lang/Float;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-direct {p0, p1}, Lw1/e;->setCurrentSpeed(F)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final getSpeedUnitTextHeight()F
    .locals 3

    .line 1
    iget-boolean v0, p0, Lw1/e;->N:Z

    .line 2
    .line 3
    iget-object v1, p0, Lw1/e;->e:Landroid/text/TextPaint;

    .line 4
    .line 5
    iget-object v2, p0, Lw1/e;->d:Landroid/text/TextPaint;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-float/2addr v1, v0

    .line 18
    iget v0, p0, Lw1/e;->L:F

    .line 19
    .line 20
    add-float/2addr v1, v0

    .line 21
    return v1

    .line 22
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method private final getSpeedUnitTextWidth()F
    .locals 3

    .line 1
    iget-boolean v0, p0, Lw1/e;->N:Z

    .line 2
    .line 3
    iget-object v1, p0, Lw1/e;->e:Landroid/text/TextPaint;

    .line 4
    .line 5
    iget-object v2, p0, Lw1/e;->d:Landroid/text/TextPaint;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lw1/e;->getSpeedText()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v2, p0, Lw1/e;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lw1/e;->getSpeedText()Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v2, p0, Lw1/e;->f:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-float/2addr v1, v0

    .line 51
    iget v0, p0, Lw1/e;->L:F

    .line 52
    .line 53
    add-float/2addr v1, v0

    .line 54
    return v1
.end method

.method private final setCurrentSpeed(F)V
    .locals 6

    .line 1
    iput p1, p0, Lw1/e;->l:F

    .line 2
    .line 3
    float-to-int p1, p1

    .line 4
    iget v0, p0, Lw1/e;->k:I

    .line 5
    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lw1/e;->s:Lkotlin/jvm/functions/Function3;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Lw1/e;->q:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    move v0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    iget v3, p0, Lw1/e;->k:I

    .line 28
    .line 29
    if-le p1, v3, :cond_1

    .line 30
    .line 31
    move v1, v2

    .line 32
    :cond_1
    if-eqz v1, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v2, -0x1

    .line 36
    :goto_1
    iget v3, p0, Lw1/e;->k:I

    .line 37
    .line 38
    if-eq v3, p1, :cond_3

    .line 39
    .line 40
    add-int/2addr v3, v2

    .line 41
    iput v3, p0, Lw1/e;->k:I

    .line 42
    .line 43
    iget-object v3, p0, Lw1/e;->s:Lkotlin/jvm/functions/Function3;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-interface {v3, p0, v4, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iput p1, p0, Lw1/e;->k:I

    .line 61
    .line 62
    invoke-virtual {p0}, Lw1/e;->e()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private final setSpeedTextPadding(F)V
    .locals 0

    .line 1
    iput p1, p0, Lw1/e;->M:F

    .line 2
    .line 3
    iget-boolean p1, p0, Lw1/e;->E:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final setUnitSpeedInterval(F)V
    .locals 0

    .line 1
    iput p1, p0, Lw1/e;->L:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lw1/e;->r:Z

    .line 3
    .line 4
    iget-object v0, p0, Lw1/e;->p:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lw1/e;->r:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lw1/e;->d()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lw1/e;->r:Z

    .line 3
    .line 4
    iget-object v0, p0, Lw1/e;->q:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lw1/e;->r:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lw1/e;->q:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lw1/e;->A:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Lx1/b;

    .line 17
    .line 18
    invoke-virtual {p0}, Lw1/e;->getMaxSpeed()F

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    sub-float/2addr v4, v5

    .line 27
    iget v5, v3, Lx1/b;->e:F

    .line 28
    .line 29
    mul-float/2addr v4, v5

    .line 30
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    add-float/2addr v5, v4

    .line 35
    iget v4, p0, Lw1/e;->l:F

    .line 36
    .line 37
    cmpg-float v4, v5, v4

    .line 38
    .line 39
    if-gtz v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lw1/e;->getMaxSpeed()F

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    sub-float/2addr v4, v5

    .line 50
    iget v5, v3, Lx1/b;->f:F

    .line 51
    .line 52
    mul-float/2addr v4, v5

    .line 53
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    add-float/2addr v5, v4

    .line 58
    iget v4, p0, Lw1/e;->l:F

    .line 59
    .line 60
    cmpl-float v4, v5, v4

    .line 61
    .line 62
    if-ltz v4, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 v3, 0x0

    .line 66
    :goto_0
    iget-object v0, p0, Lw1/e;->B:Lx1/b;

    .line 67
    .line 68
    if-eq v0, v3, :cond_3

    .line 69
    .line 70
    iget-object v1, p0, Lw1/e;->t:Lkotlin/jvm/functions/Function2;

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-interface {v1, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_2
    iput-object v3, p0, Lw1/e;->B:Lx1/b;

    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget v0, p0, Lw1/e;->n:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-ltz v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lw1/e;->o:I

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "trembleDuration  can\'t be Negative"

    .line 14
    .line 15
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const-string v0, "trembleDegree  can\'t be Negative"

    .line 20
    .line 21
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final g(F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14
    .line 15
    mul-float/2addr p1, v0

    .line 16
    return p1
.end method

.method public final getAccelerate()F
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->I:F

    .line 2
    .line 3
    return v0
.end method

.method public final getBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->v:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentIntSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCurrentSection()Lx1/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->B:Lx1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->l:F

    .line 2
    .line 3
    return v0
.end method

.method public final getDecelerate()F
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->J:F

    .line 2
    .line 3
    return v0
.end method

.method public final getHeightPa()I
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->H:Ljava/util/Locale;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public final getMinSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public final getOffsetSpeed()F
    .locals 3

    .line 1
    iget v0, p0, Lw1/e;->l:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-float/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lw1/e;->getMaxSpeed()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sub-float/2addr v1, v2

    .line 17
    div-float/2addr v0, v1

    .line 18
    return v0
.end method

.method public final getOnSectionChangeListener()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lx1/b;",
            "Lx1/b;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/e;->t:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnSpeedChangeListener()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Lw1/e;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/e;->s:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPercentSpeed()F
    .locals 3

    .line 1
    iget v0, p0, Lw1/e;->l:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-float/2addr v0, v1

    .line 8
    const/high16 v1, 0x42c80000    # 100.0f

    .line 9
    .line 10
    mul-float/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Lw1/e;->getMaxSpeed()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sub-float/2addr v1, v2

    .line 20
    div-float/2addr v0, v1

    .line 21
    return v0
.end method

.method public final getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx1/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/e;->A:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->j:F

    .line 2
    .line 3
    return v0
.end method

.method public final getSpeedText()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lw1/e;->Q:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget v1, p0, Lw1/e;->l:F

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/CharSequence;

    .line 14
    .line 15
    return-object v0
.end method

.method public final getSpeedTextColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->d:Landroid/text/TextPaint;

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

.method public final getSpeedTextListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/e;->Q:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSpeedTextPosition()Lw1/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->K:Lw1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSpeedTextSize()F
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->d:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getSpeedTextTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->d:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getSpeedUnitTextBounds()Landroid/graphics/RectF;
    .locals 5

    .line 1
    iget v0, p0, Lw1/e;->y:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget-object v1, p0, Lw1/e;->K:Lw1/b;

    .line 5
    .line 6
    iget v1, v1, Lw1/b;->b:F

    .line 7
    .line 8
    mul-float/2addr v0, v1

    .line 9
    iget v1, p0, Lw1/e;->F:F

    .line 10
    .line 11
    sub-float/2addr v0, v1

    .line 12
    iget v1, p0, Lw1/e;->x:I

    .line 13
    .line 14
    int-to-float v1, v1

    .line 15
    add-float/2addr v0, v1

    .line 16
    invoke-direct {p0}, Lw1/e;->getSpeedUnitTextWidth()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lw1/e;->K:Lw1/b;

    .line 21
    .line 22
    iget v3, v2, Lw1/b;->d:F

    .line 23
    .line 24
    mul-float/2addr v1, v3

    .line 25
    sub-float/2addr v0, v1

    .line 26
    iget v1, p0, Lw1/e;->M:F

    .line 27
    .line 28
    iget v3, v2, Lw1/b;->f:I

    .line 29
    .line 30
    int-to-float v3, v3

    .line 31
    mul-float/2addr v1, v3

    .line 32
    add-float/2addr v1, v0

    .line 33
    iget v0, p0, Lw1/e;->z:I

    .line 34
    .line 35
    int-to-float v0, v0

    .line 36
    iget v2, v2, Lw1/b;->c:F

    .line 37
    .line 38
    mul-float/2addr v0, v2

    .line 39
    iget v2, p0, Lw1/e;->G:F

    .line 40
    .line 41
    sub-float/2addr v0, v2

    .line 42
    iget v2, p0, Lw1/e;->x:I

    .line 43
    .line 44
    int-to-float v2, v2

    .line 45
    add-float/2addr v0, v2

    .line 46
    invoke-direct {p0}, Lw1/e;->getSpeedUnitTextHeight()F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget-object v3, p0, Lw1/e;->K:Lw1/b;

    .line 51
    .line 52
    iget v4, v3, Lw1/b;->e:F

    .line 53
    .line 54
    mul-float/2addr v2, v4

    .line 55
    sub-float/2addr v0, v2

    .line 56
    iget v2, p0, Lw1/e;->M:F

    .line 57
    .line 58
    iget v3, v3, Lw1/b;->g:I

    .line 59
    .line 60
    int-to-float v3, v3

    .line 61
    mul-float/2addr v2, v3

    .line 62
    add-float/2addr v2, v0

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    .line 64
    .line 65
    invoke-direct {p0}, Lw1/e;->getSpeedUnitTextWidth()F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-float/2addr v3, v1

    .line 70
    invoke-direct {p0}, Lw1/e;->getSpeedUnitTextHeight()F

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    add-float/2addr v4, v2

    .line 75
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    .line 77
    .line 78
    return-object v0
.end method

.method public final getSpeedometerTextRightToLeft()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw1/e;->D:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSpeedometerWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->C:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTextColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->c:Landroid/text/TextPaint;

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

.method public final getTextPaint()Landroid/text/TextPaint;
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->c:Landroid/text/TextPaint;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTextSize()F
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->c:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getTextTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->c:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getTranslatedDx()F
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->F:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTranslatedDy()F
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->G:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTrembleDegree()F
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->n:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTrembleDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUnit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUnitTextColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->e:Landroid/text/TextPaint;

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

.method public final getUnitTextSize()F
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->e:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getUnitUnderSpeedText()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw1/e;->N:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getViewSize()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

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
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final getViewSizePa()I
    .locals 2

    .line 1
    iget v0, p0, Lw1/e;->y:I

    .line 2
    .line 3
    iget v1, p0, Lw1/e;->z:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final getWidthPa()I
    .locals 1

    .line 1
    iget v0, p0, Lw1/e;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public final getWithTremble()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw1/e;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final h(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lw1/e;->getSpeedUnitTextBounds()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lw1/e;->getSpeedText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lw1/e;->O:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 17
    .line 18
    .line 19
    iget-boolean v2, p0, Lw1/e;->N:Z

    .line 20
    .line 21
    iget-object v3, p0, Lw1/e;->d:Landroid/text/TextPaint;

    .line 22
    .line 23
    iget-object v4, p0, Lw1/e;->e:Landroid/text/TextPaint;

    .line 24
    .line 25
    const/high16 v5, 0x3f000000    # 0.5f

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lw1/e;->P:Landroid/graphics/Canvas;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v6, p0, Lw1/e;->O:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    int-to-float v6, v6

    .line 40
    mul-float/2addr v6, v5

    .line 41
    iget-object v7, p0, Lw1/e;->O:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    int-to-float v7, v7

    .line 48
    mul-float/2addr v7, v5

    .line 49
    iget v8, p0, Lw1/e;->L:F

    .line 50
    .line 51
    mul-float/2addr v8, v5

    .line 52
    sub-float/2addr v7, v8

    .line 53
    invoke-virtual {v2, v1, v6, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v1, p0, Lw1/e;->P:Landroid/graphics/Canvas;

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    iget-object v2, p0, Lw1/e;->f:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v3, p0, Lw1/e;->O:Landroid/graphics/Bitmap;

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    int-to-float v3, v3

    .line 69
    mul-float/2addr v3, v5

    .line 70
    iget-object v6, p0, Lw1/e;->O:Landroid/graphics/Bitmap;

    .line 71
    .line 72
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    int-to-float v6, v6

    .line 77
    mul-float/2addr v6, v5

    .line 78
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    add-float/2addr v7, v6

    .line 83
    iget v6, p0, Lw1/e;->L:F

    .line 84
    .line 85
    mul-float/2addr v6, v5

    .line 86
    add-float/2addr v6, v7

    .line 87
    invoke-virtual {v1, v2, v3, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    iget-boolean v2, p0, Lw1/e;->D:Z

    .line 92
    .line 93
    iget-object v6, p0, Lw1/e;->O:Landroid/graphics/Bitmap;

    .line 94
    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    int-to-float v2, v2

    .line 102
    mul-float/2addr v2, v5

    .line 103
    invoke-direct {p0}, Lw1/e;->getSpeedUnitTextWidth()F

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    mul-float/2addr v6, v5

    .line 108
    sub-float/2addr v2, v6

    .line 109
    iget-object v6, p0, Lw1/e;->f:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    add-float/2addr v6, v2

    .line 116
    iget v7, p0, Lw1/e;->L:F

    .line 117
    .line 118
    add-float/2addr v6, v7

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    int-to-float v2, v2

    .line 125
    mul-float/2addr v2, v5

    .line 126
    invoke-direct {p0}, Lw1/e;->getSpeedUnitTextWidth()F

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    mul-float/2addr v6, v5

    .line 131
    sub-float v6, v2, v6

    .line 132
    .line 133
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    add-float/2addr v2, v6

    .line 138
    iget v7, p0, Lw1/e;->L:F

    .line 139
    .line 140
    add-float/2addr v2, v7

    .line 141
    :goto_0
    iget-object v7, p0, Lw1/e;->O:Landroid/graphics/Bitmap;

    .line 142
    .line 143
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    int-to-float v7, v7

    .line 148
    mul-float/2addr v7, v5

    .line 149
    invoke-direct {p0}, Lw1/e;->getSpeedUnitTextHeight()F

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    mul-float/2addr v8, v5

    .line 154
    add-float/2addr v8, v7

    .line 155
    iget-object v7, p0, Lw1/e;->P:Landroid/graphics/Canvas;

    .line 156
    .line 157
    if-eqz v7, :cond_3

    .line 158
    .line 159
    invoke-virtual {v7, v1, v6, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    iget-object v1, p0, Lw1/e;->P:Landroid/graphics/Canvas;

    .line 163
    .line 164
    if-eqz v1, :cond_4

    .line 165
    .line 166
    iget-object v3, p0, Lw1/e;->f:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v1, v3, v2, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 169
    .line 170
    .line 171
    :cond_4
    :goto_1
    iget-object v1, p0, Lw1/e;->O:Landroid/graphics/Bitmap;

    .line 172
    .line 173
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 174
    .line 175
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    int-to-float v3, v3

    .line 180
    mul-float/2addr v3, v5

    .line 181
    sub-float/2addr v2, v3

    .line 182
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    mul-float/2addr v3, v5

    .line 187
    add-float/2addr v3, v2

    .line 188
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 189
    .line 190
    iget-object v4, p0, Lw1/e;->O:Landroid/graphics/Bitmap;

    .line 191
    .line 192
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    int-to-float v4, v4

    .line 197
    mul-float/2addr v4, v5

    .line 198
    sub-float/2addr v2, v4

    .line 199
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    mul-float/2addr v0, v5

    .line 204
    add-float/2addr v0, v2

    .line 205
    iget-object v2, p0, Lw1/e;->b:Landroid/graphics/Paint;

    .line 206
    .line 207
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 208
    .line 209
    .line 210
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw1/e;->E:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lw1/e;->m()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final isAttachedToWindow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw1/e;->E:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j(FF)V
    .locals 1

    .line 1
    cmpg-float v0, p1, p2

    .line 2
    .line 3
    if-gez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lw1/e;->c()V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lw1/e;->h:F

    .line 9
    .line 10
    iput p2, p0, Lw1/e;->i:F

    .line 11
    .line 12
    invoke-virtual {p0}, Lw1/e;->e()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 16
    .line 17
    .line 18
    iget-boolean p1, p0, Lw1/e;->E:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget p1, p0, Lw1/e;->j:F

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lw1/e;->setSpeedAt(F)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    const-string p1, "minSpeed must be smaller than maxSpeed !!"

    .line 29
    .line 30
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw1/e;->q:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lw1/e;->d()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final k(F)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lw1/e;->getMaxSpeed()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    cmpl-float v0, p1, v0

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lw1/e;->getMaxSpeed()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    cmpg-float v0, p1, v0

    .line 19
    .line 20
    if-gez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    :cond_1
    :goto_0
    iget v0, p0, Lw1/e;->j:F

    .line 27
    .line 28
    cmpg-float v0, p1, v0

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    iput p1, p0, Lw1/e;->j:F

    .line 34
    .line 35
    iget v0, p0, Lw1/e;->l:F

    .line 36
    .line 37
    cmpl-float v0, p1, v0

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v2, 0x1

    .line 41
    if-lez v0, :cond_3

    .line 42
    .line 43
    move v0, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    move v0, v1

    .line 46
    :goto_1
    iput-boolean v0, p0, Lw1/e;->m:Z

    .line 47
    .line 48
    invoke-virtual {p0}, Lw1/e;->c()V

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lw1/e;->l:F

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    new-array v3, v3, [F

    .line 55
    .line 56
    aput v0, v3, v1

    .line 57
    .line 58
    aput p1, v3, v2

    .line 59
    .line 60
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 65
    .line 66
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    .line 71
    .line 72
    const-wide/16 v0, 0x3e8

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    .line 77
    new-instance v0, Lw1/a;

    .line 78
    .line 79
    move-object v1, p0

    .line 80
    check-cast v1, Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 81
    .line 82
    invoke-direct {v0, v1, v2}, Lw1/a;-><init>(Lw1/e;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lw1/e;->u:Le3/c;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lw1/e;->p:Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final l()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lw1/e;->d()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lw1/e;->g:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/util/Random;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lw1/e;->n:F

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    mul-float/2addr v2, v1

    .line 21
    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v0, -0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v1

    .line 31
    :goto_0
    int-to-float v0, v0

    .line 32
    mul-float/2addr v2, v0

    .line 33
    iget v0, p0, Lw1/e;->j:F

    .line 34
    .line 35
    add-float/2addr v0, v2

    .line 36
    invoke-virtual {p0}, Lw1/e;->getMaxSpeed()F

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    cmpl-float v0, v0, v3

    .line 41
    .line 42
    if-lez v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Lw1/e;->getMaxSpeed()F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget v2, p0, Lw1/e;->j:F

    .line 49
    .line 50
    :goto_1
    sub-float v2, v0, v2

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    iget v0, p0, Lw1/e;->j:F

    .line 54
    .line 55
    add-float/2addr v0, v2

    .line 56
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    cmpg-float v0, v0, v3

    .line 61
    .line 62
    if-gez v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget v2, p0, Lw1/e;->j:F

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_2
    iget v0, p0, Lw1/e;->l:F

    .line 72
    .line 73
    iget v3, p0, Lw1/e;->j:F

    .line 74
    .line 75
    add-float/2addr v3, v2

    .line 76
    const/4 v2, 0x2

    .line 77
    new-array v2, v2, [F

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    aput v0, v2, v4

    .line 81
    .line 82
    aput v3, v2, v1

    .line 83
    .line 84
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 89
    .line 90
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 94
    .line 95
    .line 96
    iget v1, p0, Lw1/e;->o:I

    .line 97
    .line 98
    int-to-long v1, v1

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    .line 101
    .line 102
    new-instance v1, Lw1/a;

    .line 103
    .line 104
    invoke-direct {v1, p0, v4}, Lw1/a;-><init>(Lw1/e;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lw1/e;->u:Le3/c;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lw1/e;->q:Landroid/animation/ValueAnimator;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public abstract m()V
.end method

.method public final n(IIII)V
    .locals 0

    .line 1
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lw1/e;->x:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget p2, p0, Lw1/e;->x:I

    .line 20
    .line 21
    mul-int/lit8 p2, p2, 0x2

    .line 22
    .line 23
    sub-int/2addr p1, p2

    .line 24
    iput p1, p0, Lw1/e;->y:I

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget p2, p0, Lw1/e;->x:I

    .line 31
    .line 32
    mul-int/lit8 p2, p2, 0x2

    .line 33
    .line 34
    sub-int/2addr p1, p2

    .line 35
    iput p1, p0, Lw1/e;->z:I

    .line 36
    .line 37
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lw1/e;->E:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lw1/e;->m()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lw1/e;->c()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lw1/e;->E:Z

    .line 9
    .line 10
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lw1/e;->F:F

    .line 5
    .line 6
    iget v1, p0, Lw1/e;->G:F

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lw1/e;->v:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iget-object v2, p0, Lw1/e;->w:Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    invoke-virtual {p0, p1, p2, p3, p4}, Lw1/e;->setPadding(IIII)V

    .line 21
    .line 22
    .line 23
    iget p1, p0, Lw1/e;->y:I

    .line 24
    .line 25
    if-lez p1, :cond_0

    .line 26
    .line 27
    iget p2, p0, Lw1/e;->z:I

    .line 28
    .line 29
    if-lez p2, :cond_0

    .line 30
    .line 31
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 32
    .line 33
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lw1/e;->O:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    :cond_0
    new-instance p1, Landroid/graphics/Canvas;

    .line 43
    .line 44
    iget-object p2, p0, Lw1/e;->O:Landroid/graphics/Bitmap;

    .line 45
    .line 46
    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lw1/e;->P:Landroid/graphics/Canvas;

    .line 50
    .line 51
    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lw1/e;->p:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final setAccelerate(F)V
    .locals 1

    .line 1
    iput p1, p0, Lw1/e;->I:F

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpl-float v0, p1, v0

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    cmpg-float p1, p1, v0

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p1, "accelerate must be between (0, 1]"

    .line 16
    .line 17
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw1/e;->v:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    return-void
.end method

.method public final setDecelerate(F)V
    .locals 1

    .line 1
    iput p1, p0, Lw1/e;->J:F

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpl-float v0, p1, v0

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    cmpg-float p1, p1, v0

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p1, "decelerate must be between (0, 1]"

    .line 16
    .line 17
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw1/e;->H:Ljava/util/Locale;

    .line 5
    .line 6
    iget-boolean p1, p0, Lw1/e;->E:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setMaxSpeed(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lw1/e;->j(FF)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setMinSpeed(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw1/e;->getMaxSpeed()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lw1/e;->j(FF)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setOnSectionChangeListener(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lx1/b;",
            "-",
            "Lx1/b;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lw1/e;->t:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnSpeedChangeListener(Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lw1/e;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lw1/e;->s:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lw1/e;->n(IIII)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lw1/e;->x:I

    .line 5
    .line 6
    invoke-super {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setPaddingRelative(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lw1/e;->n(IIII)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lw1/e;->x:I

    .line 5
    .line 6
    invoke-super {p0, p1, p1, p1, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setSpeedAt(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw1/e;->getMaxSpeed()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    cmpl-float v0, p1, v0

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lw1/e;->getMaxSpeed()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    cmpg-float v0, p1, v0

    .line 19
    .line 20
    if-gez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lw1/e;->getMinSpeed()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    :cond_1
    :goto_0
    iget v0, p0, Lw1/e;->l:F

    .line 27
    .line 28
    cmpl-float v0, p1, v0

    .line 29
    .line 30
    if-lez v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_1
    iput-boolean v0, p0, Lw1/e;->m:Z

    .line 36
    .line 37
    iput p1, p0, Lw1/e;->j:F

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lw1/e;->setCurrentSpeed(F)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lw1/e;->c()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lw1/e;->l()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final setSpeedTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->d:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lw1/e;->E:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setSpeedTextListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw1/e;->Q:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setSpeedTextPosition(Lw1/b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw1/e;->K:Lw1/b;

    .line 5
    .line 6
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setSpeedTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->d:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lw1/e;->E:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setSpeedTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->d:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw1/e;->e:Landroid/text/TextPaint;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setSpeedometerTextRightToLeft(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lw1/e;->D:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSpeedometerWidth(F)V
    .locals 9

    .line 1
    iput p1, p0, Lw1/e;->C:F

    .line 2
    .line 3
    new-instance v0, Lw1/d;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lw1/d;-><init>(F)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Lw1/e;->getSections()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lw1/e;->A:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_0
    if-ge v4, v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    check-cast v5, Lx1/b;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    iput-object v6, v5, Lx1/b;->b:Lw1/e;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    move v4, v3

    .line 50
    :goto_1
    if-ge v4, v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    check-cast v5, Lx1/b;

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v5}, Lw1/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    :cond_2
    :goto_2
    if-ge v3, v0, :cond_7

    .line 72
    .line 73
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    check-cast v2, Lx1/b;

    .line 80
    .line 81
    invoke-virtual {v2, p0}, Lx1/b;->q(Lw1/e;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    iget v5, v2, Lx1/b;->e:F

    .line 92
    .line 93
    iget v2, v2, Lx1/b;->f:F

    .line 94
    .line 95
    cmpg-float v6, v5, v2

    .line 96
    .line 97
    if-gez v6, :cond_6

    .line 98
    .line 99
    add-int/lit8 v6, v4, -0x1

    .line 100
    .line 101
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Lx1/b;

    .line 106
    .line 107
    const-string v7, "Section at index ("

    .line 108
    .line 109
    if-eqz v6, :cond_4

    .line 110
    .line 111
    iget v6, v6, Lx1/b;->f:F

    .line 112
    .line 113
    cmpg-float v8, v6, v5

    .line 114
    .line 115
    if-gtz v8, :cond_3

    .line 116
    .line 117
    cmpg-float v6, v6, v2

    .line 118
    .line 119
    if-gez v6, :cond_3

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_3
    const-string p1, ") is conflicted with previous section"

    .line 123
    .line 124
    invoke-static {v4, v7, p1}, Lai/onnxruntime/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Ll9/i;->d(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_4
    :goto_3
    add-int/lit8 v6, v4, 0x1

    .line 133
    .line 134
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Lx1/b;

    .line 139
    .line 140
    if-eqz v6, :cond_2

    .line 141
    .line 142
    iget v6, v6, Lx1/b;->e:F

    .line 143
    .line 144
    cmpl-float v2, v6, v2

    .line 145
    .line 146
    if-ltz v2, :cond_5

    .line 147
    .line 148
    cmpl-float v2, v6, v5

    .line 149
    .line 150
    if-lez v2, :cond_5

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    const-string p1, ") is conflicted with next section"

    .line 154
    .line 155
    invoke-static {v4, v7, p1}, Lai/onnxruntime/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1}, Ll9/i;->d(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_6
    const-string p1, "endOffset must be bigger than startOffset"

    .line 164
    .line 165
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_7
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 170
    .line 171
    .line 172
    iget-boolean p1, p0, Lw1/e;->E:Z

    .line 173
    .line 174
    if-eqz p1, :cond_8

    .line 175
    .line 176
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 177
    .line 178
    .line 179
    :cond_8
    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->c:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setTextPaint(Landroid/text/TextPaint;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw1/e;->c:Landroid/text/TextPaint;

    .line 5
    .line 6
    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->c:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lw1/e;->E:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->c:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setTranslatedDx(F)V
    .locals 0

    .line 1
    iput p1, p0, Lw1/e;->F:F

    .line 2
    .line 3
    return-void
.end method

.method public final setTranslatedDy(F)V
    .locals 0

    .line 1
    iput p1, p0, Lw1/e;->G:F

    .line 2
    .line 3
    return-void
.end method

.method public final setTrembleDegree(F)V
    .locals 0

    .line 1
    iput p1, p0, Lw1/e;->n:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lw1/e;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTrembleDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lw1/e;->o:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lw1/e;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setUnit(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw1/e;->f:Ljava/lang/String;

    .line 5
    .line 6
    iget-boolean p1, p0, Lw1/e;->E:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setUnitTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->e:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lw1/e;->E:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setUnitTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/e;->e:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setUnitUnderSpeedText(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lw1/e;->N:Z

    .line 2
    .line 3
    iget-object v0, p0, Lw1/e;->e:Landroid/text/TextPaint;

    .line 4
    .line 5
    iget-object v1, p0, Lw1/e;->d:Landroid/text/TextPaint;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final setWithTremble(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lw1/e;->g:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lw1/e;->l()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw1/e;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
