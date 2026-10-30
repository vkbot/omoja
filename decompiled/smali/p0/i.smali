.class public final Lp0/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public b:F

.field public c:F

.field public d:I

.field public e:I

.field public f:Z

.field public final synthetic g:Lp0/j;


# direct methods
.method public constructor <init>(Lp0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp0/i;->g:Lp0/j;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lp0/i;->g:Lp0/j;

    .line 2
    .line 3
    iget-object v1, v0, Lp0/j;->b:Lp0/e;

    .line 4
    .line 5
    iget-boolean v2, v0, Lp0/j;->k:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v2, v0, Lp0/j;->g:Landroid/view/WindowManager;

    .line 13
    .line 14
    iget-object v4, v0, Lp0/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v2, :cond_b

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_a

    .line 28
    .line 29
    const/4 v7, 0x4

    .line 30
    if-eq v6, v3, :cond_5

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    if-eq v6, v1, :cond_2

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_2
    iget v1, p0, Lp0/i;->d:I

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    iget v8, p0, Lp0/i;->b:F

    .line 44
    .line 45
    sub-float/2addr v6, v8

    .line 46
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    add-int/2addr v6, v1

    .line 51
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 56
    .line 57
    iget v1, p0, Lp0/i;->e:I

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    iget v8, p0, Lp0/i;->c:F

    .line 64
    .line 65
    sub-float/2addr v6, v8

    .line 66
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    add-int/2addr v6, v1

    .line 71
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 76
    .line 77
    invoke-interface {v2, p1, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    iget-boolean p1, p0, Lp0/i;->f:Z

    .line 81
    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iget v1, p0, Lp0/i;->b:F

    .line 89
    .line 90
    sub-float/2addr p1, v1

    .line 91
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-virtual {v0, v7}, Lp0/j;->c(I)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    int-to-float v1, v1

    .line 100
    cmpl-float p1, p1, v1

    .line 101
    .line 102
    if-gtz p1, :cond_3

    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iget p2, p0, Lp0/i;->c:F

    .line 109
    .line 110
    sub-float/2addr p1, p2

    .line 111
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-virtual {v0, v7}, Lp0/j;->c(I)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    int-to-float p2, p2

    .line 120
    cmpl-float p1, p1, p2

    .line 121
    .line 122
    if-lez p1, :cond_4

    .line 123
    .line 124
    :cond_3
    move v5, v3

    .line 125
    :cond_4
    iput-boolean v5, p0, Lp0/i;->f:Z

    .line 126
    .line 127
    return v3

    .line 128
    :cond_5
    iget p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 129
    .line 130
    iget p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    sget-object v4, Lp0/e;->f:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-virtual {v2, v4, p1}, Lu0/a;->saveInt(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    sget-object v2, Lp0/e;->g:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    invoke-virtual {p1, v2, p2}, Lu0/a;->saveInt(Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    iget-boolean p1, p0, Lp0/i;->f:Z

    .line 162
    .line 163
    if-nez p1, :cond_9

    .line 164
    .line 165
    iget-object p1, v0, Lp0/j;->d:Landroid/os/Handler;

    .line 166
    .line 167
    iget-object p2, v0, Lp0/j;->f:Lp0/g;

    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    .line 171
    .line 172
    iget v2, v0, Lp0/j;->j:I

    .line 173
    .line 174
    add-int/2addr v2, v3

    .line 175
    iput v2, v0, Lp0/j;->j:I

    .line 176
    .line 177
    sget-object v2, Lp0/j;->l:Ljava/lang/String;

    .line 178
    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const/16 v6, 0x11

    .line 185
    .line 186
    new-array v6, v6, [B

    .line 187
    .line 188
    fill-array-data v6, :array_0

    .line 189
    .line 190
    .line 191
    const/16 v8, 0x8

    .line 192
    .line 193
    new-array v9, v8, [B

    .line 194
    .line 195
    fill-array-data v9, :array_1

    .line 196
    .line 197
    .line 198
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget v6, v0, Lp0/j;->j:I

    .line 206
    .line 207
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    iget-object v2, v0, Lp0/j;->i:Landroid/widget/TextView;

    .line 218
    .line 219
    if-eqz v2, :cond_6

    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lp0/e;->e()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_6

    .line 229
    .line 230
    iget v2, v0, Lp0/j;->j:I

    .line 231
    .line 232
    if-lt v2, v7, :cond_6

    .line 233
    .line 234
    iget-object v2, v0, Lp0/j;->i:Landroid/widget/TextView;

    .line 235
    .line 236
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 241
    .line 242
    .line 243
    iget-object v2, v0, Lp0/j;->i:Landroid/widget/TextView;

    .line 244
    .line 245
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    const/16 v4, 0xa

    .line 250
    .line 251
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    iget v6, v0, Lp0/j;->j:I

    .line 256
    .line 257
    sub-int/2addr v6, v7

    .line 258
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    int-to-float v6, v6

    .line 263
    int-to-float v4, v4

    .line 264
    div-float/2addr v6, v4

    .line 265
    const/high16 v4, 0x3f800000    # 1.0f

    .line 266
    .line 267
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    const v6, 0x3f0f5c2a    # 0.56000006f

    .line 272
    .line 273
    .line 274
    mul-float/2addr v4, v6

    .line 275
    const v6, 0x3e23d70a    # 0.16f

    .line 276
    .line 277
    .line 278
    add-float/2addr v4, v6

    .line 279
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    const-wide/16 v6, 0xa0

    .line 284
    .line 285
    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 290
    .line 291
    .line 292
    const/16 v2, 0x9

    .line 293
    .line 294
    new-array v2, v2, [B

    .line 295
    .line 296
    fill-array-data v2, :array_2

    .line 297
    .line 298
    .line 299
    new-array v4, v8, [B

    .line 300
    .line 301
    fill-array-data v4, :array_3

    .line 302
    .line 303
    .line 304
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v0, v2}, Lp0/j;->g(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    :cond_6
    iget v2, v0, Lp0/j;->j:I

    .line 312
    .line 313
    const/16 v4, 0xe

    .line 314
    .line 315
    if-lt v2, v4, :cond_8

    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    invoke-static {}, Lp0/e;->e()Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-eqz v1, :cond_8

    .line 325
    .line 326
    iget-boolean v1, v0, Lp0/j;->k:Z

    .line 327
    .line 328
    if-eqz v1, :cond_7

    .line 329
    .line 330
    goto :goto_0

    .line 331
    :cond_7
    iput-boolean v3, v0, Lp0/j;->k:Z

    .line 332
    .line 333
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v5, v3}, Lp0/j;->i(II)V

    .line 337
    .line 338
    .line 339
    iget-object p1, v0, Lp0/j;->e:Ljava/util/concurrent/ExecutorService;

    .line 340
    .line 341
    new-instance p2, Lp0/g;

    .line 342
    .line 343
    invoke-direct {p2, v0, v3}, Lp0/g;-><init>(Lp0/j;I)V

    .line 344
    .line 345
    .line 346
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 347
    .line 348
    .line 349
    return v3

    .line 350
    :cond_8
    const-wide/16 v0, 0x514

    .line 351
    .line 352
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    .line 354
    .line 355
    :cond_9
    :goto_0
    return v3

    .line 356
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    iput p1, p0, Lp0/i;->b:F

    .line 361
    .line 362
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    iput p1, p0, Lp0/i;->c:F

    .line 367
    .line 368
    iget p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 369
    .line 370
    iput p1, p0, Lp0/i;->d:I

    .line 371
    .line 372
    iget p1, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 373
    .line 374
    iput p1, p0, Lp0/i;->e:I

    .line 375
    .line 376
    iput-boolean v5, p0, Lp0/i;->f:Z

    .line 377
    .line 378
    return v3

    .line 379
    :cond_b
    :goto_1
    return v5

    .line 380
    nop

    .line 381
    :array_0
    .array-data 1
        -0x64t
        0x50t
        -0x7ct
        0x69t
        -0x6dt
        0x40t
        -0x32t
        -0x5et
        -0x7bt
        0x54t
        -0x36t
        0x6ft
        -0x24t
        0x56t
        -0x34t
        -0x41t
        -0x25t
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    nop

    .line 395
    :array_1
    .array-data 1
        -0x1at
        0x3ft
        -0x16t
        0xct
        -0x4dt
        0x23t
        -0x5et
        -0x35t
    .end array-data

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    :array_2
    .array-data 1
        -0x17t
        0x53t
        -0x76t
        -0x27t
        0x6at
        0x5at
        -0x5dt
        -0x8t
        -0x5t
    .end array-data

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    nop

    .line 413
    :array_3
    .array-data 1
        -0x36t
        0x12t
        -0x35t
        -0x18t
        0x5bt
        0x6bt
        -0x6et
        -0x37t
    .end array-data
.end method
