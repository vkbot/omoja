.class public Lcom/github/clans/fab/FloatingActionMenu;
.super Landroid/view/ViewGroup;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final A:Z

.field public final B:I

.field public final C:F

.field public final D:F

.field public final E:F

.field public F:I

.field public G:I

.field public H:I

.field public final I:Landroid/graphics/drawable/Drawable;

.field public J:I

.field public final K:Landroid/view/animation/OvershootInterpolator;

.field public final L:Landroid/view/animation/AnticipateInterpolator;

.field public M:Z

.field public final N:Z

.field public final O:I

.field public final P:I

.field public final Q:I

.field public final R:I

.field public final S:Landroid/graphics/Typeface;

.field public T:Z

.field public final U:Landroid/widget/ImageView;

.field public V:Landroid/view/animation/Animation;

.field public W:Landroid/view/animation/Animation;

.field public final a0:Landroid/view/animation/Animation;

.field public final b:Landroid/animation/AnimatorSet;

.field public final b0:Landroid/view/animation/Animation;

.field public final c:Landroid/animation/AnimatorSet;

.field public c0:Z

.field public d:Landroid/animation/AnimatorSet;

.field public final d0:I

.field public final e:I

.field public final e0:Landroid/animation/ValueAnimator;

.field public final f:Lcom/github/clans/fab/FloatingActionButton;

.field public final f0:Landroid/animation/ValueAnimator;

.field public g:I

.field public final g0:I

.field public final h:I

.field public final h0:I

.field public final i:I

.field public final i0:Landroid/view/ContextThemeWrapper;

.field public j:I

.field public final j0:Ljava/lang/String;

.field public k:Z

.field public final k0:Z

.field public l:Z

.field public final m:Landroid/os/Handler;

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:Landroid/content/res/ColorStateList;

.field public final u:F

.field public final v:I

.field public final w:Z

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    invoke-direct {v1, v0, v2, v6}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    .line 10
    .line 11
    new-instance v7, Landroid/animation/AnimatorSet;

    .line 12
    .line 13
    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v7, v1, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    .line 17
    .line 18
    new-instance v8, Landroid/animation/AnimatorSet;

    .line 19
    .line 20
    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v8, v1, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v9, 0x0

    .line 30
    invoke-static {v3, v9}, Le3/d;->e(Landroid/content/Context;F)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iput v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3, v9}, Le3/d;->e(Landroid/content/Context;F)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iput v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3, v9}, Le3/d;->e(Landroid/content/Context;F)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iput v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->i:I

    .line 55
    .line 56
    new-instance v3, Landroid/os/Handler;

    .line 57
    .line 58
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->m:Landroid/os/Handler;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/high16 v4, 0x40800000    # 4.0f

    .line 68
    .line 69
    invoke-static {v3, v4}, Le3/d;->e(Landroid/content/Context;F)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    iput v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const/high16 v5, 0x41000000    # 8.0f

    .line 80
    .line 81
    invoke-static {v3, v5}, Le3/d;->e(Landroid/content/Context;F)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    iput v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v3, v4}, Le3/d;->e(Landroid/content/Context;F)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    iput v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v3, v5}, Le3/d;->e(Landroid/content/Context;F)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    iput v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const/high16 v5, 0x40400000    # 3.0f

    .line 112
    .line 113
    invoke-static {v3, v5}, Le3/d;->e(Landroid/content/Context;F)I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    iput v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->v:I

    .line 118
    .line 119
    iput v4, v1, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    .line 120
    .line 121
    const/high16 v3, 0x3f800000    # 1.0f

    .line 122
    .line 123
    iput v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    .line 124
    .line 125
    iput v5, v1, Lcom/github/clans/fab/FloatingActionMenu;->E:F

    .line 126
    .line 127
    const/4 v10, 0x1

    .line 128
    iput-boolean v10, v1, Lcom/github/clans/fab/FloatingActionMenu;->M:Z

    .line 129
    .line 130
    iput-boolean v10, v1, Lcom/github/clans/fab/FloatingActionMenu;->T:Z

    .line 131
    .line 132
    sget-object v3, Lz1/l;->b:[I

    .line 133
    .line 134
    invoke-virtual {v0, v2, v3, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    iget v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    .line 139
    .line 140
    const/4 v12, 0x2

    .line 141
    invoke-virtual {v11, v12, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    .line 146
    .line 147
    const/16 v0, 0x13

    .line 148
    .line 149
    iget v2, v1, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    .line 150
    .line 151
    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    .line 156
    .line 157
    const/16 v0, 0x1a

    .line 158
    .line 159
    invoke-virtual {v11, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->h0:I

    .line 164
    .line 165
    if-nez v0, :cond_aa

    .line 166
    .line 167
    const v0, 0x7f01001f

    .line 168
    .line 169
    .line 170
    goto :goto_ad

    .line 171
    :cond_aa
    const v0, 0x7f01001e

    .line 172
    .line 173
    .line 174
    :goto_ad
    const/16 v2, 0x1b

    .line 175
    .line 176
    invoke-virtual {v11, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->n:I

    .line 181
    .line 182
    iget v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->h0:I

    .line 183
    .line 184
    if-nez v0, :cond_bd

    .line 185
    .line 186
    const v0, 0x7f010021

    .line 187
    .line 188
    .line 189
    goto :goto_c0

    .line 190
    :cond_bd
    const v0, 0x7f010020

    .line 191
    .line 192
    .line 193
    :goto_c0
    const/16 v2, 0x12

    .line 194
    .line 195
    invoke-virtual {v11, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->o:I

    .line 200
    .line 201
    const/16 v0, 0x19

    .line 202
    .line 203
    iget v2, v1, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    .line 204
    .line 205
    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    .line 210
    .line 211
    const/16 v0, 0x18

    .line 212
    .line 213
    iget v2, v1, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    .line 214
    .line 215
    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    .line 220
    .line 221
    const/16 v0, 0x16

    .line 222
    .line 223
    iget v2, v1, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    .line 224
    .line 225
    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    .line 230
    .line 231
    const/16 v0, 0x17

    .line 232
    .line 233
    iget v2, v1, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    .line 234
    .line 235
    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    .line 240
    .line 241
    const/16 v0, 0x1f

    .line 242
    .line 243
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->t:Landroid/content/res/ColorStateList;

    .line 248
    .line 249
    const/4 v2, -0x1

    .line 250
    if-nez v0, :cond_101

    .line 251
    .line 252
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->t:Landroid/content/res/ColorStateList;

    .line 257
    .line 258
    :cond_101
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    const v3, 0x7f0600a3

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    const/16 v3, 0x20

    .line 270
    .line 271
    invoke-virtual {v11, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->u:F

    .line 276
    .line 277
    const/16 v0, 0xf

    .line 278
    .line 279
    iget v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->v:I

    .line 280
    .line 281
    invoke-virtual {v11, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->v:I

    .line 286
    .line 287
    const/16 v0, 0x1c

    .line 288
    .line 289
    invoke-virtual {v11, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->w:Z

    .line 294
    .line 295
    const/16 v0, 0xc

    .line 296
    .line 297
    const v3, -0xcccccd

    .line 298
    .line 299
    .line 300
    invoke-virtual {v11, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->x:I

    .line 305
    .line 306
    const/16 v0, 0xd

    .line 307
    .line 308
    const v3, -0xbbbbbc

    .line 309
    .line 310
    .line 311
    invoke-virtual {v11, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->y:I

    .line 316
    .line 317
    const/16 v0, 0xe

    .line 318
    .line 319
    const v3, 0x66ffffff

    .line 320
    .line 321
    .line 322
    invoke-virtual {v11, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->z:I

    .line 327
    .line 328
    const/16 v0, 0x26

    .line 329
    .line 330
    invoke-virtual {v11, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->A:Z

    .line 335
    .line 336
    const/16 v0, 0x22

    .line 337
    .line 338
    const/high16 v3, 0x66000000

    .line 339
    .line 340
    invoke-virtual {v11, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->B:I

    .line 345
    .line 346
    const/16 v0, 0x23

    .line 347
    .line 348
    iget v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    .line 349
    .line 350
    invoke-virtual {v11, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    .line 355
    .line 356
    const/16 v0, 0x24

    .line 357
    .line 358
    iget v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    .line 359
    .line 360
    invoke-virtual {v11, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    .line 365
    .line 366
    const/16 v0, 0x25

    .line 367
    .line 368
    iget v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->E:F

    .line 369
    .line 370
    invoke-virtual {v11, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->E:F

    .line 375
    .line 376
    const/4 v0, 0x4

    .line 377
    const v3, -0x25bcca

    .line 378
    .line 379
    .line 380
    invoke-virtual {v11, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    .line 385
    .line 386
    const/4 v0, 0x5

    .line 387
    const v3, -0x18afbd

    .line 388
    .line 389
    .line 390
    invoke-virtual {v11, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    .line 395
    .line 396
    const/4 v0, 0x6

    .line 397
    const v3, -0x66000001

    .line 398
    .line 399
    .line 400
    invoke-virtual {v11, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    .line 405
    .line 406
    const/16 v0, 0x32

    .line 407
    .line 408
    invoke-virtual {v11, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    .line 413
    .line 414
    const/16 v0, 0xb

    .line 415
    .line 416
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->I:Landroid/graphics/drawable/Drawable;

    .line 421
    .line 422
    if-nez v0, :cond_1b4

    .line 423
    .line 424
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    const v3, 0x7f0700ea

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->I:Landroid/graphics/drawable/Drawable;

    .line 436
    .line 437
    :cond_1b4
    const/16 v0, 0x1d

    .line 438
    .line 439
    invoke-virtual {v11, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    iput-boolean v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->N:Z

    .line 444
    .line 445
    const/16 v0, 0x11

    .line 446
    .line 447
    invoke-virtual {v11, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->O:I

    .line 452
    .line 453
    const/16 v0, 0x14

    .line 454
    .line 455
    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->P:I

    .line 460
    .line 461
    const/16 v0, 0xa

    .line 462
    .line 463
    invoke-virtual {v11, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->Q:I

    .line 468
    .line 469
    const/16 v0, 0x1e

    .line 470
    .line 471
    invoke-virtual {v11, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    .line 476
    .line 477
    const/16 v0, 0x10

    .line 478
    .line 479
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    :try_start_1e2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-nez v0, :cond_1fa

    .line 488
    .line 489
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->S:Landroid/graphics/Typeface;
    :try_end_1f6
    .catch Ljava/lang/RuntimeException; {:try_start_1e2 .. :try_end_1f6} :catch_1f7

    .line 502
    .line 503
    goto :goto_1fa

    .line 504
    :catch_1f7
    move-exception v0

    .line 505
    goto/16 :goto_399

    .line 506
    .line 507
    :cond_1fa
    :goto_1fa
    const/16 v0, 0x21

    .line 508
    .line 509
    invoke-virtual {v11, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    .line 514
    .line 515
    invoke-virtual {v11, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->g0:I

    .line 520
    .line 521
    const/16 v0, 0x8

    .line 522
    .line 523
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    if-eqz v2, :cond_218

    .line 528
    .line 529
    iput-boolean v10, v1, Lcom/github/clans/fab/FloatingActionMenu;->k0:Z

    .line 530
    .line 531
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->j0:Ljava/lang/String;

    .line 536
    .line 537
    :cond_218
    const/16 v0, 0x15

    .line 538
    .line 539
    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    if-eqz v2, :cond_22c

    .line 544
    .line 545
    invoke-virtual {v11, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    .line 550
    .line 551
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->q:I

    .line 552
    .line 553
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->r:I

    .line 554
    .line 555
    iput v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    .line 556
    .line 557
    :cond_22c
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    .line 558
    .line 559
    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 560
    .line 561
    .line 562
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->K:Landroid/view/animation/OvershootInterpolator;

    .line 563
    .line 564
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    .line 565
    .line 566
    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    .line 567
    .line 568
    .line 569
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->L:Landroid/view/animation/AnticipateInterpolator;

    .line 570
    .line 571
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 572
    .line 573
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    iget v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    .line 578
    .line 579
    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 580
    .line 581
    .line 582
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->i0:Landroid/view/ContextThemeWrapper;

    .line 583
    .line 584
    iget v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->g0:I

    .line 585
    .line 586
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 587
    .line 588
    .line 589
    move-result v13

    .line 590
    iget v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->g0:I

    .line 591
    .line 592
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    iget v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->g0:I

    .line 597
    .line 598
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    iget v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->g0:I

    .line 603
    .line 604
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    filled-new-array {v6, v13}, [I

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->e0:Landroid/animation/ValueAnimator;

    .line 617
    .line 618
    const-wide/16 v14, 0x12c

    .line 619
    .line 620
    invoke-virtual {v0, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 621
    .line 622
    .line 623
    iget-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->e0:Landroid/animation/ValueAnimator;

    .line 624
    .line 625
    move-object v5, v0

    .line 626
    new-instance v0, Lz1/f;

    .line 627
    .line 628
    move-object/from16 v16, v5

    .line 629
    .line 630
    const/4 v5, 0x0

    .line 631
    move/from16 v17, v9

    .line 632
    .line 633
    move-object/from16 v9, v16

    .line 634
    .line 635
    invoke-direct/range {v0 .. v5}, Lz1/f;-><init>(Lcom/github/clans/fab/FloatingActionMenu;IIII)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 639
    .line 640
    .line 641
    filled-new-array {v13, v6}, [I

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->f0:Landroid/animation/ValueAnimator;

    .line 650
    .line 651
    invoke-virtual {v0, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 652
    .line 653
    .line 654
    iget-object v9, v1, Lcom/github/clans/fab/FloatingActionMenu;->f0:Landroid/animation/ValueAnimator;

    .line 655
    .line 656
    new-instance v0, Lz1/f;

    .line 657
    .line 658
    const/4 v5, 0x1

    .line 659
    invoke-direct/range {v0 .. v5}, Lz1/f;-><init>(Lcom/github/clans/fab/FloatingActionMenu;IIII)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 663
    .line 664
    .line 665
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton;

    .line 666
    .line 667
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    const/4 v3, 0x0

    .line 672
    invoke-direct {v0, v2, v3}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 673
    .line 674
    .line 675
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 676
    .line 677
    iget-boolean v2, v1, Lcom/github/clans/fab/FloatingActionMenu;->A:Z

    .line 678
    .line 679
    iput-boolean v2, v0, Lcom/github/clans/fab/FloatingActionButton;->c:Z

    .line 680
    .line 681
    if-eqz v2, :cond_2d2

    .line 682
    .line 683
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    iget v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->C:F

    .line 688
    .line 689
    invoke-static {v2, v3}, Le3/d;->e(Landroid/content/Context;F)I

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    iput v2, v0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 694
    .line 695
    iget-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 696
    .line 697
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    iget v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->D:F

    .line 702
    .line 703
    invoke-static {v2, v3}, Le3/d;->e(Landroid/content/Context;F)I

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    iput v2, v0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 708
    .line 709
    iget-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 710
    .line 711
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    iget v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->E:F

    .line 716
    .line 717
    invoke-static {v2, v3}, Le3/d;->e(Landroid/content/Context;F)I

    .line 718
    .line 719
    .line 720
    move-result v2

    .line 721
    iput v2, v0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 722
    .line 723
    :cond_2d2
    iget-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 724
    .line 725
    iget v2, v1, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    .line 726
    .line 727
    iget v3, v1, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    .line 728
    .line 729
    iget v4, v1, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    .line 730
    .line 731
    iput v2, v0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    .line 732
    .line 733
    iput v3, v0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 734
    .line 735
    iput v4, v0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    .line 736
    .line 737
    iget v2, v1, Lcom/github/clans/fab/FloatingActionMenu;->B:I

    .line 738
    .line 739
    iput v2, v0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 740
    .line 741
    iget v2, v1, Lcom/github/clans/fab/FloatingActionMenu;->Q:I

    .line 742
    .line 743
    iput v2, v0, Lcom/github/clans/fab/FloatingActionButton;->b:I

    .line 744
    .line 745
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 746
    .line 747
    .line 748
    iget-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 749
    .line 750
    iget-object v2, v1, Lcom/github/clans/fab/FloatingActionMenu;->j0:Ljava/lang/String;

    .line 751
    .line 752
    invoke-virtual {v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->setLabelText(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    new-instance v0, Landroid/widget/ImageView;

    .line 756
    .line 757
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 762
    .line 763
    .line 764
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 765
    .line 766
    iget-object v2, v1, Lcom/github/clans/fab/FloatingActionMenu;->I:Landroid/graphics/drawable/Drawable;

    .line 767
    .line 768
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 769
    .line 770
    .line 771
    iget-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 772
    .line 773
    invoke-super {v1}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 774
    .line 775
    .line 776
    move-result-object v2

    .line 777
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    .line 779
    .line 780
    iget-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 781
    .line 782
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 783
    .line 784
    .line 785
    iget v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    .line 786
    .line 787
    iget v2, v1, Lcom/github/clans/fab/FloatingActionMenu;->h0:I

    .line 788
    .line 789
    const/high16 v3, 0x43070000    # 135.0f

    .line 790
    .line 791
    const/high16 v4, -0x3cf90000    # -135.0f

    .line 792
    .line 793
    if-nez v0, :cond_323

    .line 794
    .line 795
    if-nez v2, :cond_31e

    .line 796
    .line 797
    move v0, v4

    .line 798
    goto :goto_31f

    .line 799
    :cond_31e
    move v0, v3

    .line 800
    :goto_31f
    if-nez v2, :cond_32a

    .line 801
    .line 802
    :cond_321
    move v3, v4

    .line 803
    goto :goto_32a

    .line 804
    :cond_323
    if-nez v2, :cond_327

    .line 805
    .line 806
    move v0, v3

    .line 807
    goto :goto_328

    .line 808
    :cond_327
    move v0, v4

    .line 809
    :goto_328
    if-nez v2, :cond_321

    .line 810
    .line 811
    :cond_32a
    :goto_32a
    iget-object v2, v1, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 812
    .line 813
    new-array v4, v12, [F

    .line 814
    .line 815
    aput v0, v4, v6

    .line 816
    .line 817
    aput v17, v4, v10

    .line 818
    .line 819
    const-string v0, "rotation"

    .line 820
    .line 821
    invoke-static {v2, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 822
    .line 823
    .line 824
    move-result-object v2

    .line 825
    iget-object v4, v1, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 826
    .line 827
    new-array v5, v12, [F

    .line 828
    .line 829
    aput v17, v5, v6

    .line 830
    .line 831
    aput v3, v5, v10

    .line 832
    .line 833
    invoke-static {v4, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 841
    .line 842
    .line 843
    iget-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->K:Landroid/view/animation/OvershootInterpolator;

    .line 844
    .line 845
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 846
    .line 847
    .line 848
    iget-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->L:Landroid/view/animation/AnticipateInterpolator;

    .line 849
    .line 850
    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v7, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v8, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 857
    .line 858
    .line 859
    const/16 v0, 0x9

    .line 860
    .line 861
    const v2, 0x7f01001d

    .line 862
    .line 863
    .line 864
    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 865
    .line 866
    .line 867
    move-result v0

    .line 868
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 873
    .line 874
    .line 875
    move-result-object v2

    .line 876
    invoke-virtual {v1, v2}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 880
    .line 881
    .line 882
    move-result-object v2

    .line 883
    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->a0:Landroid/view/animation/Animation;

    .line 888
    .line 889
    const/4 v0, 0x7

    .line 890
    const v2, 0x7f01001c

    .line 891
    .line 892
    .line 893
    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 898
    .line 899
    .line 900
    move-result-object v2

    .line 901
    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    invoke-virtual {v1, v2}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    iput-object v0, v1, Lcom/github/clans/fab/FloatingActionMenu;->b0:Landroid/view/animation/Animation;

    .line 917
    .line 918
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 919
    .line 920
    .line 921
    return-void

    .line 922
    :goto_399
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 923
    .line 924
    const-string v4, "Unable to load specified custom font: "

    .line 925
    .line 926
    invoke-static {v4, v2}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v2

    .line 930
    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 931
    .line 932
    .line 933
    throw v3
.end method

.method private setLabelEllipsize(Lz1/k;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->O:I

    .line 3
    .line 4
    if-eq v1, v0, :cond_21

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq v1, v0, :cond_1b

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq v1, v0, :cond_15

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq v1, v0, :cond_f

    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_63

    .line 4
    .line 5
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->g0:I

    .line 6
    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f0:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 12
    .line 13
    .line 14
    :cond_d
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Z

    .line 15
    .line 16
    if-eqz v0, :cond_23

    .line 17
    .line 18
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:Landroid/animation/AnimatorSet;

    .line 19
    .line 20
    if-eqz v0, :cond_19

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 23
    .line 24
    .line 25
    goto :goto_23

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 34
    .line 35
    .line 36
    :cond_23
    :goto_23
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->l:Z

    .line 38
    .line 39
    move v1, v0

    .line 40
    move v2, v1

    .line 41
    :goto_28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->m:Landroid/os/Handler;

    .line 46
    .line 47
    if-ge v0, v3, :cond_54

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    instance-of v5, v3, Lcom/github/clans/fab/FloatingActionButton;

    .line 54
    .line 55
    if-eqz v5, :cond_51

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const/16 v6, 0x8

    .line 62
    .line 63
    if-eq v5, v6, :cond_51

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    check-cast v3, Lcom/github/clans/fab/FloatingActionButton;

    .line 68
    .line 69
    new-instance v5, Lz1/g;

    .line 70
    .line 71
    const/4 v6, 0x1

    .line 72
    invoke-direct {v5, p0, v3, p1, v6}, Lz1/g;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;ZI)V

    .line 73
    .line 74
    .line 75
    int-to-long v6, v2

    .line 76
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    .line 78
    .line 79
    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    .line 80
    .line 81
    add-int/2addr v2, v3

    .line 82
    :cond_51
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    goto :goto_28

    .line 85
    :cond_54
    new-instance p1, Lz1/h;

    .line 86
    .line 87
    const/4 v0, 0x1

    .line 88
    invoke-direct {p1, p0, v0}, Lz1/h;-><init>(Lcom/github/clans/fab/FloatingActionMenu;I)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    .line 94
    .line 95
    mul-int/2addr v1, v0

    .line 96
    int-to-long v0, v1

    .line 97
    invoke-virtual {v4, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    .line 99
    .line 100
    :cond_63
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    return p1
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 11
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAnimationDelayPerItem()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    .line 2
    .line 3
    return v0
.end method

.method public getIconToggleAnimatorSet()Landroid/animation/AnimatorSet;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMenuButtonColorNormal()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    .line 2
    .line 3
    return v0
.end method

.method public getMenuButtonColorPressed()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    .line 2
    .line 3
    return v0
.end method

.method public getMenuButtonColorRipple()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    .line 2
    .line 3
    return v0
.end method

.method public getMenuButtonLabelText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->j0:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMenuIconView()Landroid/widget/ImageView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onFinishInflate()V
    .registers 12

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    move v1, v0

    .line 22
    :goto_15
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    .line 23
    .line 24
    if-ge v1, v2, :cond_120

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 31
    .line 32
    if-ne v2, v3, :cond_23

    .line 33
    .line 34
    goto/16 :goto_11c

    .line 35
    .line 36
    :cond_23
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/github/clans/fab/FloatingActionButton;

    .line 41
    .line 42
    const v3, 0x7f0901fa

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_34

    .line 50
    .line 51
    goto/16 :goto_11c

    .line 52
    .line 53
    :cond_34
    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getLabelText()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_40

    .line 62
    .line 63
    goto/16 :goto_10f

    .line 64
    .line 65
    :cond_40
    new-instance v5, Lz1/k;

    .line 66
    .line 67
    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->i0:Landroid/view/ContextThemeWrapper;

    .line 68
    .line 69
    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    const/4 v6, 0x1

    .line 73
    iput-boolean v6, v5, Lz1/k;->g:Z

    .line 74
    .line 75
    iput-boolean v6, v5, Lz1/k;->r:Z

    .line 76
    .line 77
    new-instance v7, Landroid/view/GestureDetector;

    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    new-instance v9, Lz1/b;

    .line 84
    .line 85
    const/4 v10, 0x1

    .line 86
    invoke-direct {v9, v10, v5}, Lz1/b;-><init>(ILandroid/view/View;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v7, v8, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 90
    .line 91
    .line 92
    iput-object v7, v5, Lz1/k;->s:Landroid/view/GestureDetector;

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v2}, Lz1/k;->setFab(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    iget v8, p0, Lcom/github/clans/fab/FloatingActionMenu;->n:I

    .line 105
    .line 106
    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v5, v7}, Lz1/k;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    iget v8, p0, Lcom/github/clans/fab/FloatingActionMenu;->o:I

    .line 118
    .line 119
    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v5, v7}, Lz1/k;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 124
    .line 125
    .line 126
    iget v7, p0, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    .line 127
    .line 128
    if-lez v7, :cond_91

    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    iget v8, p0, Lcom/github/clans/fab/FloatingActionMenu;->R:I

    .line 135
    .line 136
    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v0}, Lz1/k;->setShowShadow(Z)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v6}, Lz1/k;->setUsingStyle(Z)V

    .line 143
    .line 144
    .line 145
    goto :goto_f8

    .line 146
    :cond_91
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->x:I

    .line 147
    .line 148
    iput v6, v5, Lz1/k;->j:I

    .line 149
    .line 150
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->y:I

    .line 151
    .line 152
    iput v6, v5, Lz1/k;->k:I

    .line 153
    .line 154
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->z:I

    .line 155
    .line 156
    iput v6, v5, Lz1/k;->l:I

    .line 157
    .line 158
    iget-boolean v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->w:Z

    .line 159
    .line 160
    invoke-virtual {v5, v6}, Lz1/k;->setShowShadow(Z)V

    .line 161
    .line 162
    .line 163
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->v:I

    .line 164
    .line 165
    invoke-virtual {v5, v6}, Lz1/k;->setCornerRadius(I)V

    .line 166
    .line 167
    .line 168
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->O:I

    .line 169
    .line 170
    if-lez v6, :cond_ae

    .line 171
    .line 172
    invoke-direct {p0, v5}, Lcom/github/clans/fab/FloatingActionMenu;->setLabelEllipsize(Lz1/k;)V

    .line 173
    .line 174
    .line 175
    :cond_ae
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->P:I

    .line 176
    .line 177
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Lz1/k;->e()V

    .line 181
    .line 182
    .line 183
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->u:F

    .line 184
    .line 185
    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 186
    .line 187
    .line 188
    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->t:Landroid/content/res/ColorStateList;

    .line 189
    .line 190
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 191
    .line 192
    .line 193
    iget-boolean v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->w:Z

    .line 194
    .line 195
    iget v7, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    .line 196
    .line 197
    iget v8, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    .line 198
    .line 199
    if-eqz v6, :cond_e4

    .line 200
    .line 201
    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getShadowXOffset()I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    add-int/2addr v9, v6

    .line 214
    add-int/2addr v7, v9

    .line 215
    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getShadowYOffset()I

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    add-int/2addr v9, v6

    .line 228
    add-int/2addr v8, v9

    .line 229
    :cond_e4
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->s:I

    .line 230
    .line 231
    iget v9, p0, Lcom/github/clans/fab/FloatingActionMenu;->p:I

    .line 232
    .line 233
    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 234
    .line 235
    .line 236
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->P:I

    .line 237
    .line 238
    if-ltz v6, :cond_f3

    .line 239
    .line 240
    iget-boolean v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->N:Z

    .line 241
    .line 242
    if-eqz v6, :cond_f8

    .line 243
    .line 244
    :cond_f3
    iget-boolean v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->N:Z

    .line 245
    .line 246
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 247
    .line 248
    .line 249
    :cond_f8
    :goto_f8
    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->S:Landroid/graphics/Typeface;

    .line 250
    .line 251
    if-eqz v6, :cond_ff

    .line 252
    .line 253
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 254
    .line 255
    .line 256
    :cond_ff
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :goto_10f
    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 273
    .line 274
    if-ne v2, v3, :cond_11c

    .line 275
    .line 276
    new-instance v2, Lcom/google/android/material/datepicker/m;

    .line 277
    .line 278
    const/4 v4, 0x3

    .line 279
    invoke-direct {v2, v4, p0}, Lcom/google/android/material/datepicker/m;-><init>(ILjava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3, v2}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    .line 284
    .line 285
    :cond_11c
    :goto_11c
    add-int/lit8 v1, v1, 0x1

    .line 286
    .line 287
    goto/16 :goto_15

    .line 288
    .line 289
    :cond_120
    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 13

    .line 1
    iget p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    .line 2
    .line 3
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->h0:I

    .line 4
    .line 5
    if-nez v0, :cond_10

    .line 6
    .line 7
    sub-int/2addr p4, p2

    .line 8
    div-int/lit8 p1, p1, 0x2

    .line 9
    .line 10
    sub-int/2addr p4, p1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sub-int/2addr p4, p1

    .line 16
    goto :goto_18

    .line 17
    :cond_10
    div-int/lit8 p1, p1, 0x2

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    add-int p4, p2, p1

    .line 24
    .line 25
    :goto_18
    iget p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->d0:I

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    const/4 v0, 0x1

    .line 29
    if-nez p1, :cond_20

    .line 30
    .line 31
    move p1, v0

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move p1, p2

    .line 34
    :goto_21
    if-eqz p1, :cond_31

    .line 35
    .line 36
    sub-int/2addr p5, p3

    .line 37
    iget-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 38
    .line 39
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    sub-int/2addr p5, p3

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    sub-int/2addr p5, p3

    .line 49
    goto :goto_35

    .line 50
    :cond_31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 51
    .line 52
    .line 53
    move-result p5

    .line 54
    :goto_35
    iget-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    div-int/lit8 p3, p3, 0x2

    .line 61
    .line 62
    sub-int p3, p4, p3

    .line 63
    .line 64
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    add-int/2addr v2, p3

    .line 71
    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    add-int/2addr v3, p5

    .line 78
    invoke-virtual {v1, p3, p5, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 79
    .line 80
    .line 81
    iget-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 82
    .line 83
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    div-int/lit8 p3, p3, 0x2

    .line 88
    .line 89
    sub-int p3, p4, p3

    .line 90
    .line 91
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    div-int/lit8 v1, v1, 0x2

    .line 98
    .line 99
    add-int/2addr v1, p5

    .line 100
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    div-int/lit8 v2, v2, 0x2

    .line 107
    .line 108
    sub-int/2addr v1, v2

    .line 109
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 110
    .line 111
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    add-int/2addr v3, p3

    .line 116
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 117
    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    add-int/2addr v4, v1

    .line 123
    invoke-virtual {v2, p3, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 124
    .line 125
    .line 126
    if-eqz p1, :cond_89

    .line 127
    .line 128
    iget-object p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 129
    .line 130
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    add-int/2addr p3, p5

    .line 135
    iget p5, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    .line 136
    .line 137
    add-int/2addr p5, p3

    .line 138
    :cond_89
    iget p3, p0, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    .line 139
    .line 140
    sub-int/2addr p3, v0

    .line 141
    :goto_8c
    if-ltz p3, :cond_13e

    .line 142
    .line 143
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 148
    .line 149
    if-ne v0, v1, :cond_98

    .line 150
    .line 151
    goto/16 :goto_13a

    .line 152
    .line 153
    :cond_98
    move-object v1, v0

    .line 154
    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    .line 155
    .line 156
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    const/16 v3, 0x8

    .line 161
    .line 162
    if-ne v2, v3, :cond_a5

    .line 163
    .line 164
    goto/16 :goto_13a

    .line 165
    .line 166
    :cond_a5
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    div-int/lit8 v2, v2, 0x2

    .line 171
    .line 172
    sub-int v2, p4, v2

    .line 173
    .line 174
    if-eqz p1, :cond_b7

    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    sub-int/2addr p5, v3

    .line 181
    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    .line 182
    .line 183
    sub-int/2addr p5, v3

    .line 184
    :cond_b7
    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 185
    .line 186
    if-eq v1, v3, :cond_cf

    .line 187
    .line 188
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    add-int/2addr v3, v2

    .line 193
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    add-int/2addr v4, p5

    .line 198
    invoke-virtual {v1, v2, p5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 199
    .line 200
    .line 201
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->l:Z

    .line 202
    .line 203
    if-nez v2, :cond_cf

    .line 204
    .line 205
    invoke-virtual {v1, p2}, Lcom/github/clans/fab/FloatingActionButton;->g(Z)V

    .line 206
    .line 207
    .line 208
    :cond_cf
    const v2, 0x7f0901fa

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Landroid/view/View;

    .line 216
    .line 217
    if-eqz v2, :cond_12c

    .line 218
    .line 219
    iget-boolean v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->k0:Z

    .line 220
    .line 221
    if-eqz v3, :cond_e3

    .line 222
    .line 223
    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    .line 224
    .line 225
    :goto_e0
    div-int/lit8 v3, v3, 0x2

    .line 226
    .line 227
    goto :goto_e8

    .line 228
    :cond_e3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    goto :goto_e0

    .line 233
    :goto_e8
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    .line 234
    .line 235
    add-int/2addr v3, v4

    .line 236
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->h0:I

    .line 237
    .line 238
    if-nez v4, :cond_f2

    .line 239
    .line 240
    sub-int v3, p4, v3

    .line 241
    .line 242
    goto :goto_f3

    .line 243
    :cond_f2
    add-int/2addr v3, p4

    .line 244
    :goto_f3
    if-nez v4, :cond_fc

    .line 245
    .line 246
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    sub-int v4, v3, v4

    .line 251
    .line 252
    goto :goto_101

    .line 253
    :cond_fc
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    add-int/2addr v4, v3

    .line 258
    :goto_101
    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->h0:I

    .line 259
    .line 260
    if-nez v5, :cond_107

    .line 261
    .line 262
    move v6, v4

    .line 263
    goto :goto_108

    .line 264
    :cond_107
    move v6, v3

    .line 265
    :goto_108
    if-nez v5, :cond_10b

    .line 266
    .line 267
    goto :goto_10c

    .line 268
    :cond_10b
    move v3, v4

    .line 269
    :goto_10c
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->i:I

    .line 270
    .line 271
    sub-int v4, p5, v4

    .line 272
    .line 273
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    sub-int/2addr v1, v5

    .line 282
    div-int/lit8 v1, v1, 0x2

    .line 283
    .line 284
    add-int/2addr v1, v4

    .line 285
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    add-int/2addr v4, v1

    .line 290
    invoke-virtual {v2, v6, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 291
    .line 292
    .line 293
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->l:Z

    .line 294
    .line 295
    if-nez v1, :cond_12c

    .line 296
    .line 297
    const/4 v1, 0x4

    .line 298
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    :cond_12c
    if-eqz p1, :cond_132

    .line 302
    .line 303
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    .line 304
    .line 305
    sub-int/2addr p5, v0

    .line 306
    goto :goto_13a

    .line 307
    :cond_132
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    add-int/2addr v0, p5

    .line 312
    iget p5, p0, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    .line 313
    .line 314
    add-int/2addr p5, v0

    .line 315
    :goto_13a
    add-int/lit8 p3, p3, -0x1

    .line 316
    .line 317
    goto/16 :goto_8c

    .line 318
    .line 319
    :cond_13e
    return-void
.end method

.method public final onMeasure(II)V
    .registers 16

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    .line 3
    .line 4
    const/4 v4, 0x0

    .line 5
    const/4 v6, 0x0

    .line 6
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move v3, p1

    .line 10
    move v5, p2

    .line 11
    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 12
    .line 13
    .line 14
    move-object v7, v1

    .line 15
    move v9, v3

    .line 16
    move v11, v5

    .line 17
    move p1, v0

    .line 18
    :goto_11
    iget p2, v7, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    if-ge p1, p2, :cond_3a

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eq p2, v1, :cond_37

    .line 33
    .line 34
    iget-object p2, v7, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 35
    .line 36
    if-ne v8, p2, :cond_26

    .line 37
    .line 38
    goto :goto_37

    .line 39
    :cond_26
    const/4 v10, 0x0

    .line 40
    const/4 v12, 0x0

    .line 41
    invoke-virtual/range {v7 .. v12}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 42
    .line 43
    .line 44
    iget p2, v7, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    .line 45
    .line 46
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    iput p2, v7, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    .line 55
    .line 56
    :cond_37
    :goto_37
    add-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    goto :goto_11

    .line 59
    :cond_3a
    move p1, v0

    .line 60
    move p2, p1

    .line 61
    move v2, p2

    .line 62
    :goto_3d
    iget v3, v7, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    if-ge p1, v3, :cond_9d

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eq v5, v1, :cond_9a

    .line 76
    .line 77
    iget-object v5, v7, Lcom/github/clans/fab/FloatingActionMenu;->U:Landroid/widget/ImageView;

    .line 78
    .line 79
    if-ne v3, v5, :cond_51

    .line 80
    .line 81
    goto :goto_9a

    .line 82
    :cond_51
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    add-int/2addr v2, v6

    .line 91
    const v6, 0x7f0901fa

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    move-object v8, v6

    .line 99
    check-cast v8, Lz1/k;

    .line 100
    .line 101
    if-eqz v8, :cond_9a

    .line 102
    .line 103
    iget v6, v7, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    .line 104
    .line 105
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    sub-int/2addr v6, v10

    .line 110
    iget-boolean v10, v7, Lcom/github/clans/fab/FloatingActionMenu;->k0:Z

    .line 111
    .line 112
    if-eqz v10, :cond_72

    .line 113
    .line 114
    goto :goto_73

    .line 115
    :cond_72
    const/4 v4, 0x2

    .line 116
    :goto_73
    div-int/2addr v6, v4

    .line 117
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    iget-boolean v4, v8, Lz1/k;->g:Z

    .line 122
    .line 123
    if-eqz v4, :cond_86

    .line 124
    .line 125
    iget v4, v8, Lz1/k;->b:I

    .line 126
    .line 127
    iget v10, v8, Lz1/k;->c:I

    .line 128
    .line 129
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    add-int/2addr v10, v4

    .line 134
    goto :goto_87

    .line 135
    :cond_86
    move v10, v0

    .line 136
    :goto_87
    add-int/2addr v10, v3

    .line 137
    iget v3, v7, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    .line 138
    .line 139
    add-int/2addr v10, v3

    .line 140
    add-int/2addr v10, v6

    .line 141
    const/4 v12, 0x0

    .line 142
    invoke-virtual/range {v7 .. v12}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    add-int/2addr v3, v5

    .line 150
    add-int/2addr v3, v6

    .line 151
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    :cond_9a
    :goto_9a
    add-int/lit8 p1, p1, 0x1

    .line 156
    .line 157
    goto :goto_3d

    .line 158
    :cond_9d
    iget p1, v7, Lcom/github/clans/fab/FloatingActionMenu;->g:I

    .line 159
    .line 160
    iget v0, v7, Lcom/github/clans/fab/FloatingActionMenu;->h:I

    .line 161
    .line 162
    add-int/2addr p2, v0

    .line 163
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    add-int/2addr p2, p1

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    add-int/2addr p1, p2

    .line 177
    iget p2, v7, Lcom/github/clans/fab/FloatingActionMenu;->j:I

    .line 178
    .line 179
    sub-int/2addr p2, v4

    .line 180
    iget v0, v7, Lcom/github/clans/fab/FloatingActionMenu;->e:I

    .line 181
    .line 182
    mul-int/2addr p2, v0

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    add-int/2addr v0, p2

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    add-int/2addr p2, v0

    .line 193
    add-int/2addr p2, v2

    .line 194
    int-to-double v0, p2

    .line 195
    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    mul-double/2addr v2, v0

    .line 201
    add-double/2addr v2, v0

    .line 202
    double-to-int p2, v2

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 208
    .line 209
    const/4 v1, -0x1

    .line 210
    if-ne v0, v1, :cond_db

    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    invoke-static {p1, v9}, Landroid/view/View;->getDefaultSize(II)I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    :cond_db
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 225
    .line 226
    if-ne v0, v1, :cond_eb

    .line 227
    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    invoke-static {p2, v11}, Landroid/view/View;->getDefaultSize(II)I

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    :cond_eb
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_18

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_15

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p1, v0, :cond_f

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_f
    iget-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->M:Z

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->a(Z)V

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :cond_15
    iget-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    .line 23
    .line 24
    return p1

    .line 25
    :cond_18
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public setAnimated(Z)V
    .registers 9

    .line 1
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->M:Z

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    const-wide/16 v2, 0x12c

    .line 6
    .line 7
    if-eqz p1, :cond_a

    .line 8
    .line 9
    move-wide v4, v2

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move-wide v4, v0

    .line 12
    :goto_b
    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    invoke-virtual {v6, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_13

    .line 18
    .line 19
    move-wide v0, v2

    .line 20
    :cond_13
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setAnimationDelayPerItem(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->J:I

    .line 2
    .line 3
    return-void
.end method

.method public setClosedOnTouchOutside(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->c0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIconAnimated(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->T:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIconAnimationCloseInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIconAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setIconAnimationOpenInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIconToggleAnimatorSet(Landroid/animation/AnimatorSet;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->d:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    return-void
.end method

.method public setMenuButtonColorNormal(I)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormal(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setMenuButtonColorNormalResId(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->F:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormalResId(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setMenuButtonColorPressed(I)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressed(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setMenuButtonColorPressedResId(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->G:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressedResId(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setMenuButtonColorRipple(I)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRipple(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setMenuButtonColorRippleResId(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->H:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRippleResId(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->W:Landroid/view/animation/Animation;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setMenuButtonLabelText(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setLabelText(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->V:Landroid/view/animation/Animation;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setOnMenuButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnMenuButtonLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->f:Lcom/github/clans/fab/FloatingActionButton;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnMenuToggleListener(Lz1/i;)V
    .registers 2

    .line 1
    return-void
.end method
