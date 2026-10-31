.class public final Lb7/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/journeyapps/barcodescanner/BarcodeView;


# direct methods
.method public synthetic constructor <init>(Lcom/journeyapps/barcodescanner/BarcodeView;I)V
    .registers 3

    .line 1
    iput p2, p0, Lb7/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lb7/b;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Lb7/b;->a:I

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    packed-switch v2, :pswitch_data_1e8

    .line 11
    .line 12
    .line 13
    iget-object v2, v1, Lb7/b;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 14
    .line 15
    iget-object v7, v2, Lb7/f;->z:Lb7/e;

    .line 16
    .line 17
    iget v8, v0, Landroid/os/Message;->what:I

    .line 18
    .line 19
    const v9, 0x7f090604

    .line 20
    .line 21
    .line 22
    if-ne v8, v9, :cond_127

    .line 23
    .line 24
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lb7/u;

    .line 27
    .line 28
    iput-object v0, v2, Lb7/f;->o:Lb7/u;

    .line 29
    .line 30
    iget-object v8, v2, Lb7/f;->n:Lb7/u;

    .line 31
    .line 32
    if-eqz v8, :cond_125

    .line 33
    .line 34
    if-eqz v0, :cond_118

    .line 35
    .line 36
    iget-object v9, v2, Lb7/f;->l:Lc7/l;

    .line 37
    .line 38
    if-eqz v9, :cond_118

    .line 39
    .line 40
    iget v10, v0, Lb7/u;->b:I

    .line 41
    .line 42
    iget v11, v0, Lb7/u;->c:I

    .line 43
    .line 44
    iget v12, v8, Lb7/u;->b:I

    .line 45
    .line 46
    iget v8, v8, Lb7/u;->c:I

    .line 47
    .line 48
    iget-object v13, v9, Lc7/l;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v13, Lc7/n;

    .line 51
    .line 52
    iget-object v9, v9, Lc7/l;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v9, Lb7/u;

    .line 55
    .line 56
    invoke-virtual {v13, v0, v9}, Lc7/n;->b(Lb7/u;Lb7/u;)Landroid/graphics/Rect;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-lez v9, :cond_111

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-gtz v9, :cond_49

    .line 71
    .line 72
    goto/16 :goto_111

    .line 73
    .line 74
    :cond_49
    iput-object v0, v2, Lb7/f;->p:Landroid/graphics/Rect;

    .line 75
    .line 76
    new-instance v0, Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-direct {v0, v6, v6, v12, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    .line 80
    .line 81
    iget-object v8, v2, Lb7/f;->p:Landroid/graphics/Rect;

    .line 82
    .line 83
    new-instance v9, Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 89
    .line 90
    .line 91
    iget-object v0, v2, Lb7/f;->t:Lb7/u;

    .line 92
    .line 93
    if-eqz v0, :cond_7e

    .line 94
    .line 95
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iget-object v8, v2, Lb7/f;->t:Lb7/u;

    .line 100
    .line 101
    iget v8, v8, Lb7/u;->b:I

    .line 102
    .line 103
    sub-int/2addr v0, v8

    .line 104
    div-int/2addr v0, v4

    .line 105
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    iget-object v12, v2, Lb7/f;->t:Lb7/u;

    .line 114
    .line 115
    iget v12, v12, Lb7/u;->c:I

    .line 116
    .line 117
    sub-int/2addr v8, v12

    .line 118
    div-int/2addr v8, v4

    .line 119
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    invoke-virtual {v9, v0, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 124
    .line 125
    .line 126
    goto :goto_b0

    .line 127
    :cond_7e
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    int-to-double v12, v0

    .line 132
    iget-wide v14, v2, Lb7/f;->u:D

    .line 133
    .line 134
    mul-double/2addr v12, v14

    .line 135
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    int-to-double v14, v0

    .line 140
    move/from16 v16, v4

    .line 141
    .line 142
    iget-wide v3, v2, Lb7/f;->u:D

    .line 143
    .line 144
    mul-double/2addr v14, v3

    .line 145
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    .line 146
    .line 147
    .line 148
    move-result-wide v3

    .line 149
    double-to-int v0, v3

    .line 150
    invoke-virtual {v9, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-le v0, v3, :cond_b0

    .line 162
    .line 163
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    sub-int/2addr v0, v3

    .line 172
    div-int/lit8 v0, v0, 0x2

    .line 173
    .line 174
    invoke-virtual {v9, v6, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 175
    .line 176
    .line 177
    :cond_b0
    :goto_b0
    iput-object v9, v2, Lb7/f;->r:Landroid/graphics/Rect;

    .line 178
    .line 179
    new-instance v0, Landroid/graphics/Rect;

    .line 180
    .line 181
    iget-object v3, v2, Lb7/f;->r:Landroid/graphics/Rect;

    .line 182
    .line 183
    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 184
    .line 185
    .line 186
    iget-object v3, v2, Lb7/f;->p:Landroid/graphics/Rect;

    .line 187
    .line 188
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 189
    .line 190
    neg-int v4, v4

    .line 191
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 192
    .line 193
    neg-int v3, v3

    .line 194
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 195
    .line 196
    .line 197
    new-instance v3, Landroid/graphics/Rect;

    .line 198
    .line 199
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 200
    .line 201
    mul-int/2addr v4, v10

    .line 202
    iget-object v6, v2, Lb7/f;->p:Landroid/graphics/Rect;

    .line 203
    .line 204
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    div-int/2addr v4, v6

    .line 209
    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 210
    .line 211
    mul-int/2addr v6, v11

    .line 212
    iget-object v8, v2, Lb7/f;->p:Landroid/graphics/Rect;

    .line 213
    .line 214
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    div-int/2addr v6, v8

    .line 219
    iget v8, v0, Landroid/graphics/Rect;->right:I

    .line 220
    .line 221
    mul-int/2addr v8, v10

    .line 222
    iget-object v9, v2, Lb7/f;->p:Landroid/graphics/Rect;

    .line 223
    .line 224
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    div-int/2addr v8, v9

    .line 229
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 230
    .line 231
    mul-int/2addr v0, v11

    .line 232
    iget-object v9, v2, Lb7/f;->p:Landroid/graphics/Rect;

    .line 233
    .line 234
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    div-int/2addr v0, v9

    .line 239
    invoke-direct {v3, v4, v6, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 240
    .line 241
    .line 242
    iput-object v3, v2, Lb7/f;->s:Landroid/graphics/Rect;

    .line 243
    .line 244
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-lez v0, :cond_106

    .line 249
    .line 250
    iget-object v0, v2, Lb7/f;->s:Landroid/graphics/Rect;

    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-gtz v0, :cond_102

    .line 257
    .line 258
    goto :goto_106

    .line 259
    :cond_102
    invoke-virtual {v7}, Lb7/e;->e()V

    .line 260
    .line 261
    .line 262
    goto :goto_111

    .line 263
    :cond_106
    :goto_106
    iput-object v5, v2, Lb7/f;->s:Landroid/graphics/Rect;

    .line 264
    .line 265
    iput-object v5, v2, Lb7/f;->r:Landroid/graphics/Rect;

    .line 266
    .line 267
    const-string v0, "f"

    .line 268
    .line 269
    const-string v3, "Preview frame is too small"

    .line 270
    .line 271
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    :cond_111
    :goto_111
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Lb7/f;->e()V

    .line 278
    .line 279
    .line 280
    goto :goto_125

    .line 281
    :cond_118
    iput-object v5, v2, Lb7/f;->s:Landroid/graphics/Rect;

    .line 282
    .line 283
    iput-object v5, v2, Lb7/f;->r:Landroid/graphics/Rect;

    .line 284
    .line 285
    iput-object v5, v2, Lb7/f;->p:Landroid/graphics/Rect;

    .line 286
    .line 287
    const-string v0, "containerSize or previewSize is not set yet"

    .line 288
    .line 289
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_123
    :goto_123
    move v3, v6

    .line 293
    goto :goto_144

    .line 294
    :cond_125
    :goto_125
    const/4 v3, 0x1

    .line 295
    goto :goto_144

    .line 296
    :cond_127
    const v3, 0x7f0905fe

    .line 297
    .line 298
    .line 299
    if-ne v8, v3, :cond_13b

    .line 300
    .line 301
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v0, Ljava/lang/Exception;

    .line 304
    .line 305
    iget-object v3, v2, Lb7/f;->b:Lc7/g;

    .line 306
    .line 307
    if-eqz v3, :cond_123

    .line 308
    .line 309
    invoke-virtual {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->g()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7, v0}, Lb7/e;->c(Ljava/lang/Exception;)V

    .line 313
    .line 314
    .line 315
    goto :goto_123

    .line 316
    :cond_13b
    const v0, 0x7f0905fd

    .line 317
    .line 318
    .line 319
    if-ne v8, v0, :cond_123

    .line 320
    .line 321
    invoke-virtual {v7}, Lb7/e;->a()V

    .line 322
    .line 323
    .line 324
    goto :goto_123

    .line 325
    :goto_144
    return v3

    .line 326
    :pswitch_145
    move/from16 v16, v4

    .line 327
    .line 328
    iget-object v2, v1, Lb7/b;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 329
    .line 330
    iget v3, v0, Landroid/os/Message;->what:I

    .line 331
    .line 332
    const v4, 0x7f090601

    .line 333
    .line 334
    .line 335
    if-ne v3, v4, :cond_1a4

    .line 336
    .line 337
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast v0, Lb7/a;

    .line 340
    .line 341
    if-eqz v0, :cond_1a0

    .line 342
    .line 343
    iget-object v3, v2, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Landroid/support/v4/media/h;

    .line 344
    .line 345
    if-eqz v3, :cond_1a0

    .line 346
    .line 347
    iget v4, v2, Lcom/journeyapps/barcodescanner/BarcodeView;->B:I

    .line 348
    .line 349
    const/4 v6, 0x1

    .line 350
    if-eq v4, v6, :cond_1e5

    .line 351
    .line 352
    iget-object v3, v3, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v3, Lr5/c;

    .line 355
    .line 356
    iget-object v4, v3, Lr5/c;->c:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v4, Lb7/j;

    .line 359
    .line 360
    iget-object v4, v4, Lb7/j;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 361
    .line 362
    iget-object v4, v4, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->b:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 363
    .line 364
    invoke-virtual {v4}, Lcom/journeyapps/barcodescanner/BarcodeView;->g()V

    .line 365
    .line 366
    .line 367
    iget-object v4, v3, Lr5/c;->c:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v4, Lb7/j;

    .line 370
    .line 371
    iget-object v4, v4, Lb7/j;->i:Ld6/d;

    .line 372
    .line 373
    monitor-enter v4

    .line 374
    :try_start_175
    iget-boolean v6, v4, Ld6/d;->a:Z

    .line 375
    .line 376
    if-eqz v6, :cond_17f

    .line 377
    .line 378
    invoke-virtual {v4}, Ld6/d;->a()V
    :try_end_17c
    .catchall {:try_start_175 .. :try_end_17c} :catchall_17d

    .line 379
    .line 380
    .line 381
    goto :goto_17f

    .line 382
    :catchall_17d
    move-exception v0

    .line 383
    goto :goto_1a2

    .line 384
    :cond_17f
    :goto_17f
    monitor-exit v4

    .line 385
    iget-object v4, v3, Lr5/c;->c:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v4, Lb7/j;

    .line 388
    .line 389
    iget-object v4, v4, Lb7/j;->j:Landroid/os/Handler;

    .line 390
    .line 391
    new-instance v6, La1/a;

    .line 392
    .line 393
    const/16 v7, 0xa

    .line 394
    .line 395
    invoke-direct {v6, v7, v3, v0}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    .line 400
    .line 401
    iget v0, v2, Lcom/journeyapps/barcodescanner/BarcodeView;->B:I

    .line 402
    .line 403
    move/from16 v3, v16

    .line 404
    .line 405
    if-ne v0, v3, :cond_1a0

    .line 406
    .line 407
    const/4 v6, 0x1

    .line 408
    iput v6, v2, Lcom/journeyapps/barcodescanner/BarcodeView;->B:I

    .line 409
    .line 410
    iput-object v5, v2, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Landroid/support/v4/media/h;

    .line 411
    .line 412
    invoke-virtual {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->i()V

    .line 413
    .line 414
    .line 415
    const/4 v3, 0x1

    .line 416
    goto :goto_1e6

    .line 417
    :cond_1a0
    :goto_1a0
    const/4 v6, 0x1

    .line 418
    goto :goto_1e5

    .line 419
    :goto_1a2
    :try_start_1a2
    monitor-exit v4
    :try_end_1a3
    .catchall {:try_start_1a2 .. :try_end_1a3} :catchall_17d

    .line 420
    throw v0

    .line 421
    :cond_1a4
    const v4, 0x7f090600

    .line 422
    .line 423
    .line 424
    if-ne v3, v4, :cond_1aa

    .line 425
    .line 426
    goto :goto_1a0

    .line 427
    :cond_1aa
    const v4, 0x7f090602

    .line 428
    .line 429
    .line 430
    if-ne v3, v4, :cond_1e5

    .line 431
    .line 432
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v0, Ljava/util/List;

    .line 435
    .line 436
    iget-object v3, v2, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Landroid/support/v4/media/h;

    .line 437
    .line 438
    if-eqz v3, :cond_1a0

    .line 439
    .line 440
    iget v2, v2, Lcom/journeyapps/barcodescanner/BarcodeView;->B:I

    .line 441
    .line 442
    const/4 v6, 0x1

    .line 443
    if-eq v2, v6, :cond_1e5

    .line 444
    .line 445
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    :cond_1c3
    :goto_1c3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-eqz v2, :cond_1e5

    .line 457
    .line 458
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    check-cast v2, Lz5/o;

    .line 463
    .line 464
    iget-object v4, v3, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v4, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 467
    .line 468
    iget-object v4, v4, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->c:Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 469
    .line 470
    iget-object v5, v4, Lcom/journeyapps/barcodescanner/ViewfinderView;->h:Ljava/util/ArrayList;

    .line 471
    .line 472
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 473
    .line 474
    .line 475
    move-result v5

    .line 476
    const/16 v7, 0x14

    .line 477
    .line 478
    if-ge v5, v7, :cond_1c3

    .line 479
    .line 480
    iget-object v4, v4, Lcom/journeyapps/barcodescanner/ViewfinderView;->h:Ljava/util/ArrayList;

    .line 481
    .line 482
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    goto :goto_1c3

    .line 486
    :cond_1e5
    :goto_1e5
    move v3, v6

    .line 487
    :goto_1e6
    return v3

    .line 488
    nop

    .line 489
    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_145
    .end packed-switch
.end method
