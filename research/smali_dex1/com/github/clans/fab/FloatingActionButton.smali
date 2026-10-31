.class public Lcom/github/clans/fab/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final W:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field public A:F

.field public B:Z

.field public C:Landroid/graphics/RectF;

.field public final D:Landroid/graphics/Paint;

.field public final E:Landroid/graphics/Paint;

.field public F:Z

.field public G:J

.field public H:F

.field public I:J

.field public J:D

.field public K:Z

.field public final L:I

.field public M:F

.field public N:F

.field public O:F

.field public P:I

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:I

.field public U:Z

.field public final V:Landroid/view/GestureDetector;

.field public b:I

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroid/graphics/drawable/Drawable;

.field public final m:I

.field public n:Landroid/view/animation/Animation;

.field public o:Landroid/view/animation/Animation;

.field public p:Ljava/lang/String;

.field public q:Landroid/view/View$OnClickListener;

.field public r:Landroid/graphics/drawable/RippleDrawable;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:Z

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 2
    .line 3
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/github/clans/fab/FloatingActionButton;->W:Landroid/graphics/PorterDuffXfermode;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/high16 v2, 0x40800000    # 4.0f

    .line 10
    .line 11
    invoke-static {v1, v2}, Le3/d;->e(Landroid/content/Context;F)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/high16 v2, 0x3f800000    # 1.0f

    .line 22
    .line 23
    invoke-static {v1, v2}, Le3/d;->e(Landroid/content/Context;F)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/high16 v2, 0x40400000    # 3.0f

    .line 34
    .line 35
    invoke-static {v1, v2}, Le3/d;->e(Landroid/content/Context;F)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/high16 v2, 0x41c00000    # 24.0f

    .line 46
    .line 47
    invoke-static {v1, v2}, Le3/d;->e(Landroid/content/Context;F)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->m:I

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/high16 v2, 0x40c00000    # 6.0f

    .line 58
    .line 59
    invoke-static {v1, v2}, Le3/d;->e(Landroid/content/Context;F)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 64
    .line 65
    const/high16 v1, -0x40800000    # -1.0f

    .line 66
    .line 67
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->z:F

    .line 68
    .line 69
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->A:F

    .line 70
    .line 71
    new-instance v1, Landroid/graphics/RectF;

    .line 72
    .line 73
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->C:Landroid/graphics/RectF;

    .line 77
    .line 78
    new-instance v1, Landroid/graphics/Paint;

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/Paint;

    .line 85
    .line 86
    new-instance v1, Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Landroid/graphics/Paint;

    .line 92
    .line 93
    const/high16 v1, 0x43430000    # 195.0f

    .line 94
    .line 95
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->H:F

    .line 96
    .line 97
    const-wide/16 v3, 0x0

    .line 98
    .line 99
    iput-wide v3, p0, Lcom/github/clans/fab/FloatingActionButton;->I:J

    .line 100
    .line 101
    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->K:Z

    .line 102
    .line 103
    const/16 v1, 0x10

    .line 104
    .line 105
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->L:I

    .line 106
    .line 107
    const/16 v3, 0x64

    .line 108
    .line 109
    iput v3, p0, Lcom/github/clans/fab/FloatingActionButton;->T:I

    .line 110
    .line 111
    new-instance v3, Landroid/view/GestureDetector;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    new-instance v5, Lz1/b;

    .line 118
    .line 119
    const/4 v6, 0x0

    .line 120
    invoke-direct {v5, v6, p0}, Lz1/b;-><init>(ILandroid/view/View;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 124
    .line 125
    .line 126
    iput-object v3, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Landroid/view/GestureDetector;

    .line 127
    .line 128
    sget-object v3, Lz1/l;->a:[I

    .line 129
    .line 130
    invoke-virtual {p1, p2, v3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const/16 p2, 0x9

    .line 135
    .line 136
    const v3, -0x25bcca

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    .line 144
    .line 145
    const/16 p2, 0xa

    .line 146
    .line 147
    const v3, -0x18afbd

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 155
    .line 156
    const/16 p2, 0x8

    .line 157
    .line 158
    const v3, -0x555556

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    .line 166
    .line 167
    const/16 p2, 0xb

    .line 168
    .line 169
    const v3, -0x66000001

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    .line 177
    .line 178
    const/16 p2, 0x1a

    .line 179
    .line 180
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionButton;->c:Z

    .line 185
    .line 186
    const/16 p2, 0x15

    .line 187
    .line 188
    const/high16 v3, 0x66000000

    .line 189
    .line 190
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 195
    .line 196
    const/16 p2, 0x16

    .line 197
    .line 198
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 199
    .line 200
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 205
    .line 206
    const/16 p2, 0x17

    .line 207
    .line 208
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 209
    .line 210
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 215
    .line 216
    const/16 p2, 0x18

    .line 217
    .line 218
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 219
    .line 220
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 225
    .line 226
    const/16 p2, 0x1b

    .line 227
    .line 228
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->b:I

    .line 233
    .line 234
    const/16 p2, 0xe

    .line 235
    .line 236
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionButton;->p:Ljava/lang/String;

    .line 241
    .line 242
    const/16 p2, 0x12

    .line 243
    .line 244
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    .line 249
    .line 250
    const/16 p2, 0x11

    .line 251
    .line 252
    const v3, -0xff6978

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 256
    .line 257
    .line 258
    move-result p2

    .line 259
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    .line 260
    .line 261
    const/high16 p2, 0x4d000000    # 1.34217728E8f

    .line 262
    .line 263
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->x:I

    .line 268
    .line 269
    const/16 p2, 0x13

    .line 270
    .line 271
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->T:I

    .line 272
    .line 273
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->T:I

    .line 278
    .line 279
    const/16 p2, 0x14

    .line 280
    .line 281
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    .line 286
    .line 287
    const/16 p2, 0xf

    .line 288
    .line 289
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_12e

    .line 294
    .line 295
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 296
    .line 297
    .line 298
    move-result p2

    .line 299
    iput p2, p0, Lcom/github/clans/fab/FloatingActionButton;->P:I

    .line 300
    .line 301
    iput-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    .line 302
    .line 303
    :cond_12e
    const/16 p2, 0xc

    .line 304
    .line 305
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_148

    .line 310
    .line 311
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 312
    .line 313
    .line 314
    move-result p2

    .line 315
    int-to-float p2, p2

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_145

    .line 321
    .line 322
    invoke-virtual {p0, p2}, Lcom/github/clans/fab/FloatingActionButton;->setElevation(F)V

    .line 323
    .line 324
    .line 325
    goto :goto_148

    .line 326
    :cond_145
    invoke-virtual {p0, p2}, Lcom/github/clans/fab/FloatingActionButton;->setElevationCompat(F)V

    .line 327
    .line 328
    .line 329
    :cond_148
    :goto_148
    const/16 p2, 0x19

    .line 330
    .line 331
    const v1, 0x7f01001d

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 335
    .line 336
    .line 337
    move-result p2

    .line 338
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-static {v1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 343
    .line 344
    .line 345
    move-result-object p2

    .line 346
    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionButton;->n:Landroid/view/animation/Animation;

    .line 347
    .line 348
    const/16 p2, 0xd

    .line 349
    .line 350
    const v1, 0x7f01001c

    .line 351
    .line 352
    .line 353
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 354
    .line 355
    .line 356
    move-result p2

    .line 357
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-static {v1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/view/animation/Animation;

    .line 366
    .line 367
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    if-eqz p1, :cond_18b

    .line 375
    .line 376
    iget-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    .line 377
    .line 378
    if-eqz p1, :cond_17f

    .line 379
    .line 380
    invoke-virtual {p0, v2}, Lcom/github/clans/fab/FloatingActionButton;->setIndeterminate(Z)V

    .line 381
    .line 382
    .line 383
    goto :goto_18b

    .line 384
    :cond_17f
    iget-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    .line 385
    .line 386
    if-eqz p1, :cond_18b

    .line 387
    .line 388
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->j()V

    .line 389
    .line 390
    .line 391
    iget p1, p0, Lcom/github/clans/fab/FloatingActionButton;->P:I

    .line 392
    .line 393
    invoke-virtual {p0, p1, v0}, Lcom/github/clans/fab/FloatingActionButton;->k(IZ)V

    .line 394
    .line 395
    .line 396
    :cond_18b
    :goto_18b
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 397
    .line 398
    .line 399
    return-void
.end method

.method public static synthetic a(Lcom/github/clans/fab/FloatingActionButton;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private getCircleSize()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->b:I

    .line 6
    .line 7
    if-nez v1, :cond_c

    .line 8
    .line 9
    const v1, 0x7f060095

    .line 10
    .line 11
    .line 12
    goto :goto_f

    .line 13
    :cond_c
    const v1, 0x7f060094

    .line 14
    .line 15
    .line 16
    :goto_f
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method private getShadowX()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 2
    .line 3
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    return v1
.end method

.method private getShadowY()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 2
    .line 3
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    return v1
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b()I
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_11

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    mul-int/lit8 v1, v1, 0x2

    .line 16
    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    :goto_12
    add-int/2addr v0, v1

    .line 20
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1d

    .line 23
    .line 24
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 25
    .line 26
    mul-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    add-int/2addr v1, v0

    .line 29
    return v1

    .line 30
    :cond_1d
    return v0
.end method

.method public final c()I
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_11

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    mul-int/lit8 v1, v1, 0x2

    .line 16
    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    :goto_12
    add-int/2addr v0, v1

    .line 20
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1d

    .line 23
    .line 24
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 25
    .line 26
    mul-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    add-int/2addr v1, v0

    .line 29
    return v1

    .line 30
    :cond_1d
    return v0
.end method

.method public final d(I)Lz1/c;
    .registers 4

    .line 1
    new-instance v0, Lz1/c;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lz1/c;-><init>(Lcom/github/clans/fab/FloatingActionButton;Landroid/graphics/drawable/shapes/OvalShape;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final e()Landroid/graphics/drawable/RippleDrawable;
    .registers 6

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, -0x101009e

    .line 7
    .line 8
    .line 9
    filled-new-array {v1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/github/clans/fab/FloatingActionButton;->d(I)Lz1/c;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    const v1, 0x10100a7

    .line 23
    .line 24
    .line 25
    filled-new-array {v1}, [I

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lcom/github/clans/fab/FloatingActionButton;->d(I)Lz1/c;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    new-array v2, v1, [I

    .line 40
    .line 41
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Lcom/github/clans/fab/FloatingActionButton;->d(I)Lz1/c;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    .line 51
    .line 52
    new-instance v3, Landroid/content/res/ColorStateList;

    .line 53
    .line 54
    new-array v1, v1, [I

    .line 55
    .line 56
    filled-new-array {v1}, [[I

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    .line 61
    .line 62
    filled-new-array {v4}, [I

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-direct {v3, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {v2, v3, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lz1/a;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-direct {v0, v1}, Lz1/a;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 84
    .line 85
    .line 86
    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->r:Landroid/graphics/drawable/RippleDrawable;

    .line 87
    .line 88
    return-object v2
.end method

.method public final f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Z

    .line 2
    .line 3
    if-nez v0, :cond_a

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final g(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_8

    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    if-eqz p1, :cond_14

    .line 10
    .line 11
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->n:Landroid/view/animation/Animation;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/view/animation/Animation;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    .line 20
    .line 21
    :cond_14
    invoke-super {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public getButtonSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getColorDisabled()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getColorNormal()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getColorPressed()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getColorRipple()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getHideAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->l:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getLabelText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLabelView()Lz1/k;
    .registers 2

    .line 1
    const v0, 0x7f0901fa

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lz1/k;

    .line 9
    .line 10
    return-object v0
.end method

.method public getLabelVisibility()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lz1/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_b
    const/4 v0, -0x1

    .line 13
    return v0
.end method

.method public declared-synchronized getMax()I
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->T:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    .line 8
    throw v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->q:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Z

    .line 3
    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 9
    .line 10
    :goto_9
    monitor-exit p0

    .line 11
    return v0

    .line 12
    :catchall_b
    move-exception v0

    .line 13
    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    .line 14
    throw v0
.end method

.method public getShadowColor()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getShadowRadius()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getShadowXOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getShadowYOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->n:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->r:Landroid/graphics/drawable/RippleDrawable;

    .line 2
    .line 3
    const v1, 0x10100a7

    .line 4
    .line 5
    .line 6
    const v2, 0x101009e

    .line 7
    .line 8
    .line 9
    filled-new-array {v2, v1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    div-int/lit8 v1, v1, 0x2

    .line 21
    .line 22
    int-to-float v1, v1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    div-int/lit8 v2, v2, 0x2

    .line 28
    .line 29
    int-to-float v2, v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final i()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->r:Landroid/graphics/drawable/RippleDrawable;

    .line 2
    .line 3
    const v1, 0x101009e

    .line 4
    .line 5
    .line 6
    filled-new-array {v1}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    div-int/lit8 v1, v1, 0x2

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    div-int/lit8 v2, v2, 0x2

    .line 25
    .line 26
    int-to-float v2, v2

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final j()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    .line 2
    .line 3
    if-nez v0, :cond_21

    .line 4
    .line 5
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->z:F

    .line 6
    .line 7
    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    .line 9
    cmpl-float v0, v0, v1

    .line 10
    .line 11
    if-nez v0, :cond_12

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->z:F

    .line 18
    .line 19
    :cond_12
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->A:F

    .line 20
    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-nez v0, :cond_1e

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->A:F

    .line 30
    .line 31
    :cond_1e
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    .line 33
    .line 34
    :cond_21
    return-void
.end method

.method public final declared-synchronized k(IZ)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    .line 3
    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->P:I

    .line 9
    .line 10
    iput-boolean p2, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:Z

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->B:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez v0, :cond_16

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_14

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    goto :goto_53

    .line 23
    :cond_16
    :try_start_16
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->y:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->l()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->j()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 34
    .line 35
    .line 36
    if-gez p1, :cond_27

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    goto :goto_2c

    .line 40
    :cond_27
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->T:I

    .line 41
    .line 42
    if-le p1, v0, :cond_2c

    .line 43
    .line 44
    move p1, v0

    .line 45
    :cond_2c
    :goto_2c
    int-to-float p1, p1

    .line 46
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_14

    .line 47
    .line 48
    cmpl-float v0, p1, v0

    .line 49
    .line 50
    if-nez v0, :cond_35

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :cond_35
    :try_start_35
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->T:I

    .line 55
    .line 56
    if-lez v0, :cond_3f

    .line 57
    .line 58
    int-to-float v0, v0

    .line 59
    div-float/2addr p1, v0

    .line 60
    const/high16 v0, 0x43b40000    # 360.0f

    .line 61
    .line 62
    mul-float/2addr p1, v0

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    const/4 p1, 0x0

    .line 65
    :goto_40
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:J

    .line 72
    .line 73
    if-nez p2, :cond_4e

    .line 74
    .line 75
    iget p1, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    .line 76
    .line 77
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 78
    .line 79
    :cond_4e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_51
    .catchall {:try_start_35 .. :try_end_51} :catchall_14

    .line 80
    .line 81
    .line 82
    monitor-exit p0

    .line 83
    return-void

    .line 84
    :goto_53
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_14

    .line 85
    throw p1
.end method

.method public final l()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_c

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, v1

    .line 14
    :goto_d
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->f()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_17

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    :cond_17
    new-instance v2, Landroid/graphics/RectF;

    .line 25
    .line 26
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 27
    .line 28
    div-int/lit8 v4, v3, 0x2

    .line 29
    .line 30
    add-int/2addr v4, v0

    .line 31
    int-to-float v4, v4

    .line 32
    div-int/lit8 v3, v3, 0x2

    .line 33
    .line 34
    add-int/2addr v3, v1

    .line 35
    int-to-float v3, v3

    .line 36
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    sub-int/2addr v5, v0

    .line 41
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 42
    .line 43
    div-int/lit8 v0, v0, 0x2

    .line 44
    .line 45
    sub-int/2addr v5, v0

    .line 46
    int-to-float v0, v5

    .line 47
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->b()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    sub-int/2addr v5, v1

    .line 52
    iget v1, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 53
    .line 54
    div-int/lit8 v1, v1, 0x2

    .line 55
    .line 56
    sub-int/2addr v5, v1

    .line 57
    int-to-float v1, v5

    .line 58
    invoke-direct {v2, v4, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->C:Landroid/graphics/RectF;

    .line 62
    .line 63
    return-void
.end method

.method public final m(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_17

    .line 7
    .line 8
    if-eqz p1, :cond_13

    .line 9
    .line 10
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/view/animation/Animation;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->n:Landroid/view/animation/Animation;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 18
    .line 19
    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_17
    return-void
.end method

.method public final n()V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x2

    .line 8
    if-eqz v0, :cond_26

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 11
    .line 12
    new-instance v4, Lz1/e;

    .line 13
    .line 14
    invoke-direct {v4, p0}, Lz1/e;-><init>(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->e()Landroid/graphics/drawable/RippleDrawable;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const/4 v7, 0x3

    .line 26
    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    aput-object v4, v7, v2

    .line 29
    .line 30
    aput-object v5, v7, v1

    .line 31
    .line 32
    aput-object v6, v7, v3

    .line 33
    .line 34
    invoke-direct {v0, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    :goto_24
    move-object v7, v0

    .line 38
    goto :goto_3a

    .line 39
    :cond_26
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->e()Landroid/graphics/drawable/RippleDrawable;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    new-array v6, v3, [Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    aput-object v4, v6, v2

    .line 52
    .line 53
    aput-object v5, v6, v1

    .line 54
    .line 55
    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    goto :goto_24

    .line 59
    :goto_3a
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_55

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    const/4 v0, -0x1

    .line 87
    :goto_56
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getCircleSize()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-lez v0, :cond_5d

    .line 92
    .line 93
    goto :goto_5f

    .line 94
    :cond_5d
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->m:I

    .line 95
    .line 96
    :goto_5f
    sub-int/2addr v4, v0

    .line 97
    div-int/2addr v4, v3

    .line 98
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->f()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_71

    .line 103
    .line 104
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 105
    .line 106
    iget v5, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 107
    .line 108
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    add-int/2addr v5, v0

    .line 113
    goto :goto_72

    .line 114
    :cond_71
    move v5, v2

    .line 115
    :goto_72
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->f()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_81

    .line 120
    .line 121
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 122
    .line 123
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 124
    .line 125
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    add-int/2addr v2, v0

    .line 130
    :cond_81
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Z

    .line 131
    .line 132
    if-eqz v0, :cond_89

    .line 133
    .line 134
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 135
    .line 136
    add-int/2addr v5, v0

    .line 137
    add-int/2addr v2, v0

    .line 138
    :cond_89
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->f()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_91

    .line 143
    .line 144
    move v8, v3

    .line 145
    goto :goto_92

    .line 146
    :cond_91
    move v8, v1

    .line 147
    :goto_92
    add-int v9, v5, v4

    .line 148
    .line 149
    add-int v10, v2, v4

    .line 150
    .line 151
    move v11, v9

    .line 152
    move v12, v10

    .line 153
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, v7}, Lcom/github/clans/fab/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Z

    .line 5
    .line 6
    if-eqz v0, :cond_fa

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1a

    .line 11
    .line 12
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionButton;->C:Landroid/graphics/RectF;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/Paint;

    .line 16
    .line 17
    const/high16 v3, 0x43b40000    # 360.0f

    .line 18
    .line 19
    const/high16 v4, 0x43b40000    # 360.0f

    .line 20
    .line 21
    move-object v1, p1

    .line 22
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    move-object v7, v1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move-object v7, p1

    .line 28
    :goto_1b
    iget-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Z

    .line 29
    .line 30
    iget-object v12, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Landroid/graphics/Paint;

    .line 31
    .line 32
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    if-eqz p1, :cond_b8

    .line 36
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    iget-wide v4, p0, Lcom/github/clans/fab/FloatingActionButton;->G:J

    .line 42
    .line 43
    sub-long/2addr v2, v4

    .line 44
    long-to-float p1, v2

    .line 45
    iget v4, p0, Lcom/github/clans/fab/FloatingActionButton;->H:F

    .line 46
    .line 47
    mul-float/2addr p1, v4

    .line 48
    div-float/2addr p1, v0

    .line 49
    iget-wide v4, p0, Lcom/github/clans/fab/FloatingActionButton;->I:J

    .line 50
    .line 51
    const-wide/16 v8, 0xc8

    .line 52
    .line 53
    cmp-long v0, v4, v8

    .line 54
    .line 55
    iget v6, p0, Lcom/github/clans/fab/FloatingActionButton;->L:I

    .line 56
    .line 57
    if-ltz v0, :cond_86

    .line 58
    .line 59
    iget-wide v4, p0, Lcom/github/clans/fab/FloatingActionButton;->J:D

    .line 60
    .line 61
    long-to-double v2, v2

    .line 62
    add-double/2addr v4, v2

    .line 63
    iput-wide v4, p0, Lcom/github/clans/fab/FloatingActionButton;->J:D

    .line 64
    .line 65
    const-wide v2, 0x407f400000000000L    # 500.0

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    cmpl-double v0, v4, v2

    .line 71
    .line 72
    if-lez v0, :cond_55

    .line 73
    .line 74
    sub-double/2addr v4, v2

    .line 75
    iput-wide v4, p0, Lcom/github/clans/fab/FloatingActionButton;->J:D

    .line 76
    .line 77
    const-wide/16 v4, 0x0

    .line 78
    .line 79
    iput-wide v4, p0, Lcom/github/clans/fab/FloatingActionButton;->I:J

    .line 80
    .line 81
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:Z

    .line 82
    .line 83
    xor-int/2addr v0, v1

    .line 84
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->K:Z

    .line 85
    .line 86
    :cond_55
    iget-wide v4, p0, Lcom/github/clans/fab/FloatingActionButton;->J:D

    .line 87
    .line 88
    div-double/2addr v4, v2

    .line 89
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 90
    .line 91
    add-double/2addr v4, v2

    .line 92
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    mul-double/2addr v4, v2

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    double-to-float v0, v2

    .line 103
    const/high16 v2, 0x40000000    # 2.0f

    .line 104
    .line 105
    div-float/2addr v0, v2

    .line 106
    const/high16 v2, 0x3f000000    # 0.5f

    .line 107
    .line 108
    add-float/2addr v0, v2

    .line 109
    rsub-int v2, v6, 0x10e

    .line 110
    .line 111
    int-to-float v2, v2

    .line 112
    iget-boolean v3, p0, Lcom/github/clans/fab/FloatingActionButton;->K:Z

    .line 113
    .line 114
    if-eqz v3, :cond_77

    .line 115
    .line 116
    mul-float/2addr v0, v2

    .line 117
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    .line 118
    .line 119
    goto :goto_89

    .line 120
    :cond_77
    const/high16 v3, 0x3f800000    # 1.0f

    .line 121
    .line 122
    sub-float/2addr v3, v0

    .line 123
    mul-float/2addr v3, v2

    .line 124
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 125
    .line 126
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    .line 127
    .line 128
    sub-float/2addr v2, v3

    .line 129
    add-float/2addr v2, v0

    .line 130
    iput v2, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 131
    .line 132
    iput v3, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    .line 133
    .line 134
    goto :goto_89

    .line 135
    :cond_86
    add-long/2addr v4, v2

    .line 136
    iput-wide v4, p0, Lcom/github/clans/fab/FloatingActionButton;->I:J

    .line 137
    .line 138
    :goto_89
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 139
    .line 140
    add-float/2addr v0, p1

    .line 141
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 142
    .line 143
    const/high16 p1, 0x43b40000    # 360.0f

    .line 144
    .line 145
    cmpl-float v2, v0, p1

    .line 146
    .line 147
    if-lez v2, :cond_97

    .line 148
    .line 149
    sub-float/2addr v0, p1

    .line 150
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 151
    .line 152
    :cond_97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 153
    .line 154
    .line 155
    move-result-wide v2

    .line 156
    iput-wide v2, p0, Lcom/github/clans/fab/FloatingActionButton;->G:J

    .line 157
    .line 158
    iget p1, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 159
    .line 160
    const/high16 v0, 0x42b40000    # 90.0f

    .line 161
    .line 162
    sub-float/2addr p1, v0

    .line 163
    int-to-float v0, v6

    .line 164
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->M:F

    .line 165
    .line 166
    add-float/2addr v0, v2

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_af

    .line 172
    .line 173
    const/4 p1, 0x0

    .line 174
    const/high16 v0, 0x43070000    # 135.0f

    .line 175
    .line 176
    :cond_af
    move v9, p1

    .line 177
    move v10, v0

    .line 178
    iget-object v8, p0, Lcom/github/clans/fab/FloatingActionButton;->C:Landroid/graphics/RectF;

    .line 179
    .line 180
    const/4 v11, 0x0

    .line 181
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 182
    .line 183
    .line 184
    goto :goto_f5

    .line 185
    :cond_b8
    iget p1, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 186
    .line 187
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    .line 188
    .line 189
    cmpl-float p1, p1, v2

    .line 190
    .line 191
    if-eqz p1, :cond_ea

    .line 192
    .line 193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 194
    .line 195
    .line 196
    move-result-wide v2

    .line 197
    iget-wide v4, p0, Lcom/github/clans/fab/FloatingActionButton;->G:J

    .line 198
    .line 199
    sub-long/2addr v2, v4

    .line 200
    long-to-float p1, v2

    .line 201
    div-float/2addr p1, v0

    .line 202
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->H:F

    .line 203
    .line 204
    mul-float/2addr p1, v0

    .line 205
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 206
    .line 207
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    .line 208
    .line 209
    cmpl-float v3, v0, v2

    .line 210
    .line 211
    if-lez v3, :cond_dc

    .line 212
    .line 213
    sub-float/2addr v0, p1

    .line 214
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 219
    .line 220
    goto :goto_e3

    .line 221
    :cond_dc
    add-float/2addr v0, p1

    .line 222
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 227
    .line 228
    :goto_e3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 229
    .line 230
    .line 231
    move-result-wide v2

    .line 232
    iput-wide v2, p0, Lcom/github/clans/fab/FloatingActionButton;->G:J

    .line 233
    .line 234
    goto :goto_eb

    .line 235
    :cond_ea
    const/4 v1, 0x0

    .line 236
    :goto_eb
    iget-object v8, p0, Lcom/github/clans/fab/FloatingActionButton;->C:Landroid/graphics/RectF;

    .line 237
    .line 238
    iget v10, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 239
    .line 240
    const/4 v11, 0x0

    .line 241
    const/high16 v9, -0x3d4c0000    # -90.0f

    .line 242
    .line 243
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 244
    .line 245
    .line 246
    :goto_f5
    if-eqz v1, :cond_fa

    .line 247
    .line 248
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 249
    .line 250
    .line 251
    :cond_fa
    return-void
.end method

.method public final onMeasure(II)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->c()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->b()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lz1/d;

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Lz1/d;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget v0, p1, Lz1/d;->b:F

    .line 19
    .line 20
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 21
    .line 22
    iget v0, p1, Lz1/d;->c:F

    .line 23
    .line 24
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    .line 25
    .line 26
    iget v0, p1, Lz1/d;->d:F

    .line 27
    .line 28
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->H:F

    .line 29
    .line 30
    iget v0, p1, Lz1/d;->f:I

    .line 31
    .line 32
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 33
    .line 34
    iget v0, p1, Lz1/d;->g:I

    .line 35
    .line 36
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    .line 37
    .line 38
    iget v0, p1, Lz1/d;->h:I

    .line 39
    .line 40
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->x:I

    .line 41
    .line 42
    iget-boolean v0, p1, Lz1/d;->l:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    .line 45
    .line 46
    iget-boolean v0, p1, Lz1/d;->m:Z

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    .line 49
    .line 50
    iget v0, p1, Lz1/d;->e:I

    .line 51
    .line 52
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:I

    .line 53
    .line 54
    iget-boolean v0, p1, Lz1/d;->n:Z

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:Z

    .line 57
    .line 58
    iget-boolean p1, p1, Lz1/d;->o:Z

    .line 59
    .line 60
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    .line 61
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:J

    .line 67
    .line 68
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lz1/d;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 11
    .line 12
    iput v0, v1, Lz1/d;->b:F

    .line 13
    .line 14
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->O:F

    .line 15
    .line 16
    iput v0, v1, Lz1/d;->c:F

    .line 17
    .line 18
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->H:F

    .line 19
    .line 20
    iput v0, v1, Lz1/d;->d:F

    .line 21
    .line 22
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 23
    .line 24
    iput v0, v1, Lz1/d;->f:I

    .line 25
    .line 26
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    .line 27
    .line 28
    iput v0, v1, Lz1/d;->g:I

    .line 29
    .line 30
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->x:I

    .line 31
    .line 32
    iput v0, v1, Lz1/d;->h:I

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Z

    .line 35
    .line 36
    iput-boolean v0, v1, Lz1/d;->l:Z

    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Z

    .line 39
    .line 40
    if-eqz v2, :cond_31

    .line 41
    .line 42
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->P:I

    .line 43
    .line 44
    if-lez v2, :cond_31

    .line 45
    .line 46
    if-nez v0, :cond_31

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    const/4 v0, 0x0

    .line 51
    :goto_32
    iput-boolean v0, v1, Lz1/d;->m:Z

    .line 52
    .line 53
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:I

    .line 54
    .line 55
    iput v0, v1, Lz1/d;->e:I

    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:Z

    .line 58
    .line 59
    iput-boolean v0, v1, Lz1/d;->n:Z

    .line 60
    .line 61
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    .line 62
    .line 63
    iput-boolean v0, v1, Lz1/d;->o:Z

    .line 64
    .line 65
    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->j()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionButton;->setIndeterminate(Z)V

    .line 11
    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->R:Z

    .line 14
    .line 15
    goto :goto_68

    .line 16
    :cond_f
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1d

    .line 19
    .line 20
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->P:I

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionButton;->Q:Z

    .line 23
    .line 24
    invoke-virtual {p0, v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->k(IZ)V

    .line 25
    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->S:Z

    .line 28
    .line 29
    goto :goto_68

    .line 30
    :cond_1d
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->y:Z

    .line 31
    .line 32
    if-eqz v0, :cond_68

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Z

    .line 35
    .line 36
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->z:F

    .line 37
    .line 38
    if-eqz v0, :cond_5e

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    cmpl-float v0, v2, v0

    .line 45
    .line 46
    if-lez v0, :cond_39

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 53
    .line 54
    int-to-float v2, v2

    .line 55
    add-float/2addr v0, v2

    .line 56
    :goto_37
    move v2, v0

    .line 57
    goto :goto_42

    .line 58
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 63
    .line 64
    int-to-float v2, v2

    .line 65
    sub-float/2addr v0, v2

    .line 66
    goto :goto_37

    .line 67
    :goto_42
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->A:F

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    cmpl-float v0, v0, v3

    .line 74
    .line 75
    if-lez v0, :cond_55

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 82
    .line 83
    int-to-float v3, v3

    .line 84
    add-float/2addr v0, v3

    .line 85
    goto :goto_60

    .line 86
    :cond_55
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget v3, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 91
    .line 92
    int-to-float v3, v3

    .line 93
    sub-float/2addr v0, v3

    .line 94
    goto :goto_60

    .line 95
    :cond_5e
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->A:F

    .line 96
    .line 97
    :goto_60
    invoke-virtual {p0, v2}, Landroid/view/View;->setX(F)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    .line 101
    .line 102
    .line 103
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->y:Z

    .line 104
    .line 105
    :cond_68
    :goto_68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->l()V

    .line 109
    .line 110
    .line 111
    iget p1, p0, Lcom/github/clans/fab/FloatingActionButton;->x:I

    .line 112
    .line 113
    iget-object p2, p0, Lcom/github/clans/fab/FloatingActionButton;->D:Landroid/graphics/Paint;

    .line 114
    .line 115
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    .line 117
    .line 118
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 119
    .line 120
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    .line 122
    .line 123
    iget p3, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 124
    .line 125
    int-to-float p3, p3

    .line 126
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    .line 128
    .line 129
    iget p2, p0, Lcom/github/clans/fab/FloatingActionButton;->w:I

    .line 130
    .line 131
    iget-object p3, p0, Lcom/github/clans/fab/FloatingActionButton;->E:Landroid/graphics/Paint;

    .line 132
    .line 133
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    .line 138
    .line 139
    iget p1, p0, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 140
    .line 141
    int-to-float p1, p1

    .line 142
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->q:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    if-eqz v0, :cond_37

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_37

    .line 10
    .line 11
    const v0, 0x7f0901fa

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lz1/k;

    .line 19
    .line 20
    if-nez v0, :cond_1a

    .line 21
    .line 22
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    if-eq v1, v2, :cond_2c

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    if-eq v1, v2, :cond_25

    .line 36
    .line 37
    goto :goto_32

    .line 38
    :cond_25
    invoke-virtual {v0}, Lz1/k;->d()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->i()V

    .line 42
    .line 43
    .line 44
    goto :goto_32

    .line 45
    :cond_2c
    invoke-virtual {v0}, Lz1/k;->d()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->i()V

    .line 49
    .line 50
    .line 51
    :goto_32
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->V:Landroid/view/GestureDetector;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 54
    .line 55
    .line 56
    :cond_37
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1
.end method

.method public setButtonSize(I)V
    .registers 3

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_6

    .line 5
    .line 6
    goto :goto_c

    .line 7
    :cond_6
    const-string p1, "Use @FabSize constants only!"

    .line 8
    .line 9
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    :goto_c
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->b:I

    .line 14
    .line 15
    if-eq v0, p1, :cond_15

    .line 16
    .line 17
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->b:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 20
    .line 21
    .line 22
    :cond_15
    return-void
.end method

.method public setColorDisabled(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_9

    .line 4
    .line 5
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->j:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setColorDisabledResId(I)V
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
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorDisabled(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setColorNormal(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_9

    .line 4
    .line 5
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setColorNormalResId(I)V
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
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormal(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setColorPressed(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_9

    .line 4
    .line 5
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->i:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setColorPressedResId(I)V
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
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressed(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setColorRipple(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_9

    .line 4
    .line 5
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->k:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setColorRippleResId(I)V
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
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRipple(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setElevation(F)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_17

    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_14

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->s:Z

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->c:Z

    .line 20
    .line 21
    :cond_14
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 22
    .line 23
    .line 24
    :cond_17
    return-void
.end method

.method public setElevationCompat(F)V
    .registers 5

    .line 1
    const/high16 v0, 0x26000000

    .line 2
    .line 3
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 4
    .line 5
    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float v0, p1, v0

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 17
    .line 18
    iget v2, p0, Lcom/github/clans/fab/FloatingActionButton;->b:I

    .line 19
    .line 20
    if-nez v2, :cond_16

    .line 21
    .line 22
    move v0, p1

    .line 23
    :cond_16
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 28
    .line 29
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Z

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton;->c:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_30

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    :cond_30
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0901fa

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lz1/k;

    .line 12
    .line 13
    if-eqz v0, :cond_11

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->o:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->l:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_9

    .line 4
    .line 5
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->l:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton;->l:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eq v0, p1, :cond_11

    .line 12
    .line 13
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->l:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_9

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_4
    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton;->N:F

    .line 6
    .line 7
    goto :goto_9

    .line 8
    :catchall_7
    move-exception p1

    .line 9
    goto :goto_1e

    .line 10
    :cond_9
    :goto_9
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->u:Z

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->y:Z

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->F:Z

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lcom/github/clans/fab/FloatingActionButton;->G:J

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->l()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_7

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_7

    .line 32
    throw p1
.end method

.method public setLabelText(Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->p:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lz1/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_b

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method public setLabelTextColor(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lz1/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLabelTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 9
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lz1/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibility(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lz1/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_11

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_d

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    :goto_e
    invoke-virtual {v0, p1}, Lz1/k;->setHandleVisibilityChanges(Z)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    if-eqz v0, :cond_2f

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->t:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2f

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    .line 12
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v1, v2

    .line 19
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 20
    .line 21
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int/2addr v1, v2

    .line 28
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 29
    .line 30
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowX()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/2addr v1, v2

    .line 37
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 38
    .line 39
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionButton;->getShadowY()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    add-int/2addr v1, v2

    .line 46
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 47
    .line 48
    :cond_2f
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->T:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_5
    move-exception p1

    .line 7
    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    .line 8
    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->q:Landroid/view/View$OnClickListener;

    .line 5
    .line 6
    const p1, 0x7f0901fa

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/View;

    .line 14
    .line 15
    if-eqz p1, :cond_19

    .line 16
    .line 17
    new-instance v0, Lcom/google/android/material/datepicker/m;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/datepicker/m;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    :cond_19
    return-void
.end method

.method public setShadowColor(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_9

    .line 4
    .line 5
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setShadowColorResource(I)V
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
    move-result p1

    .line 9
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 10
    .line 11
    if-eq v0, p1, :cond_11

    .line 12
    .line 13
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method

.method public setShadowRadius(F)V
    .registers 3

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le3/d;->e(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 24
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    return-void
.end method

.method public setShadowRadius(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 10
    .line 11
    if-eq v0, p1, :cond_14

    .line 12
    .line 13
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 19
    .line 20
    .line 21
    :cond_14
    return-void
.end method

.method public setShadowXOffset(F)V
    .registers 3

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le3/d;->e(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 24
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    return-void
.end method

.method public setShadowXOffset(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 10
    .line 11
    if-eq v0, p1, :cond_14

    .line 12
    .line 13
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 19
    .line 20
    .line 21
    :cond_14
    return-void
.end method

.method public setShadowYOffset(F)V
    .registers 3

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le3/d;->e(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 24
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    return-void
.end method

.method public setShadowYOffset(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 10
    .line 11
    if-eq v0, p1, :cond_14

    .line 12
    .line 13
    iput p1, p0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 19
    .line 20
    .line 21
    :cond_14
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton;->n:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized setShowProgressBackground(Z)V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->U:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_5
    move-exception p1

    .line 7
    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    .line 8
    throw p1
.end method

.method public setShowShadow(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton;->c:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_9

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionButton;->c:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionButton;->n()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0901fa

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lz1/k;

    .line 12
    .line 13
    if-eqz v0, :cond_11

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method
