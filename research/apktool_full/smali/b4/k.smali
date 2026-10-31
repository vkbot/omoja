.class public final Lb4/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb4/k;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lb4/k;->b:Ljava/lang/Object;

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
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Lb4/k;->a:I

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v2, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v2, v1, Lb4/k;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lu/f;

    .line 14
    .line 15
    iget v3, v0, Landroid/os/Message;->what:I

    .line 16
    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lu/d;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lu/f;->b(Lu/d;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v4, 0x2

    .line 28
    if-ne v3, v4, :cond_1

    .line 29
    .line 30
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lu/d;

    .line 33
    .line 34
    iget-object v2, v2, Lu/f;->d:Lcom/bumptech/glide/p;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/p;->k(Lz/d;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 v4, 0x0

    .line 40
    :goto_0
    return v4

    .line 41
    :pswitch_0
    iget v0, v0, Landroid/os/Message;->what:I

    .line 42
    .line 43
    iget-object v2, v1, Lb4/k;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Lc7/b;

    .line 46
    .line 47
    if-ne v0, v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Lc7/b;->b()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v4, 0x0

    .line 54
    :goto_1
    return v4

    .line 55
    :pswitch_1
    iget-object v2, v1, Lb4/k;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Lb7/n;

    .line 58
    .line 59
    iget-object v6, v2, Lb7/n;->j:Lr5/c;

    .line 60
    .line 61
    iget-object v7, v2, Lb7/n;->a:Lc7/g;

    .line 62
    .line 63
    iget v8, v0, Landroid/os/Message;->what:I

    .line 64
    .line 65
    const v9, 0x7f0905ff

    .line 66
    .line 67
    .line 68
    if-ne v8, v9, :cond_16

    .line 69
    .line 70
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lb7/v;

    .line 73
    .line 74
    iget-object v8, v2, Lb7/n;->e:Landroid/os/Handler;

    .line 75
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v9

    .line 80
    iget-object v11, v2, Lb7/n;->f:Landroid/graphics/Rect;

    .line 81
    .line 82
    iput-object v11, v0, Lb7/v;->d:Landroid/graphics/Rect;

    .line 83
    .line 84
    iget-object v12, v0, Lb7/v;->a:Lb7/s;

    .line 85
    .line 86
    iget v13, v12, Lb7/s;->a:I

    .line 87
    .line 88
    if-nez v11, :cond_3

    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    goto/16 :goto_9

    .line 92
    .line 93
    :cond_3
    iget v11, v0, Lb7/v;->c:I

    .line 94
    .line 95
    iget-object v14, v12, Lb7/s;->c:[B

    .line 96
    .line 97
    iget v15, v12, Lb7/s;->b:I

    .line 98
    .line 99
    const/16 v5, 0x5a

    .line 100
    .line 101
    if-eq v11, v5, :cond_9

    .line 102
    .line 103
    const/16 v5, 0xb4

    .line 104
    .line 105
    if-eq v11, v5, :cond_7

    .line 106
    .line 107
    const/16 v5, 0x10e

    .line 108
    .line 109
    if-eq v11, v5, :cond_4

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_4
    new-instance v12, Lb7/s;

    .line 113
    .line 114
    mul-int v5, v13, v15

    .line 115
    .line 116
    new-array v11, v5, [B

    .line 117
    .line 118
    sub-int/2addr v5, v4

    .line 119
    const/4 v4, 0x0

    .line 120
    :goto_2
    if-ge v4, v13, :cond_6

    .line 121
    .line 122
    add-int/lit8 v17, v15, -0x1

    .line 123
    .line 124
    :goto_3
    if-ltz v17, :cond_5

    .line 125
    .line 126
    mul-int v18, v17, v13

    .line 127
    .line 128
    add-int v18, v18, v4

    .line 129
    .line 130
    aget-byte v18, v14, v18

    .line 131
    .line 132
    aput-byte v18, v11, v5

    .line 133
    .line 134
    add-int/lit8 v5, v5, -0x1

    .line 135
    .line 136
    add-int/lit8 v17, v17, -0x1

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_6
    invoke-direct {v12, v11, v15, v13}, Lb7/s;-><init>([BII)V

    .line 143
    .line 144
    .line 145
    goto :goto_7

    .line 146
    :cond_7
    new-instance v12, Lb7/s;

    .line 147
    .line 148
    mul-int v4, v13, v15

    .line 149
    .line 150
    new-array v5, v4, [B

    .line 151
    .line 152
    add-int/lit8 v11, v4, -0x1

    .line 153
    .line 154
    const/4 v3, 0x0

    .line 155
    :goto_4
    if-ge v3, v4, :cond_8

    .line 156
    .line 157
    aget-byte v18, v14, v3

    .line 158
    .line 159
    aput-byte v18, v5, v11

    .line 160
    .line 161
    add-int/lit8 v11, v11, -0x1

    .line 162
    .line 163
    add-int/lit8 v3, v3, 0x1

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_8
    invoke-direct {v12, v5, v13, v15}, Lb7/s;-><init>([BII)V

    .line 167
    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_9
    new-instance v12, Lb7/s;

    .line 171
    .line 172
    mul-int v3, v13, v15

    .line 173
    .line 174
    new-array v3, v3, [B

    .line 175
    .line 176
    const/4 v4, 0x0

    .line 177
    const/4 v5, 0x0

    .line 178
    :goto_5
    if-ge v4, v13, :cond_b

    .line 179
    .line 180
    add-int/lit8 v11, v15, -0x1

    .line 181
    .line 182
    :goto_6
    if-ltz v11, :cond_a

    .line 183
    .line 184
    mul-int v18, v11, v13

    .line 185
    .line 186
    add-int v18, v18, v4

    .line 187
    .line 188
    aget-byte v18, v14, v18

    .line 189
    .line 190
    aput-byte v18, v3, v5

    .line 191
    .line 192
    add-int/lit8 v5, v5, 0x1

    .line 193
    .line 194
    add-int/lit8 v11, v11, -0x1

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_b
    invoke-direct {v12, v3, v15, v13}, Lb7/s;-><init>([BII)V

    .line 201
    .line 202
    .line 203
    :goto_7
    iget-object v3, v0, Lb7/v;->d:Landroid/graphics/Rect;

    .line 204
    .line 205
    iget-object v4, v12, Lb7/s;->c:[B

    .line 206
    .line 207
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    iget v14, v3, Landroid/graphics/Rect;->top:I

    .line 216
    .line 217
    mul-int v15, v5, v11

    .line 218
    .line 219
    new-array v15, v15, [B

    .line 220
    .line 221
    iget v12, v12, Lb7/s;->a:I

    .line 222
    .line 223
    mul-int/2addr v14, v12

    .line 224
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 225
    .line 226
    add-int/2addr v14, v3

    .line 227
    const/4 v3, 0x0

    .line 228
    :goto_8
    if-ge v3, v11, :cond_c

    .line 229
    .line 230
    move/from16 v18, v3

    .line 231
    .line 232
    mul-int v3, v18, v5

    .line 233
    .line 234
    invoke-static {v4, v14, v15, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    .line 236
    .line 237
    add-int/2addr v14, v12

    .line 238
    add-int/lit8 v3, v18, 0x1

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_c
    new-instance v18, Lz5/j;

    .line 242
    .line 243
    move/from16 v21, v5

    .line 244
    .line 245
    move/from16 v22, v11

    .line 246
    .line 247
    move/from16 v19, v5

    .line 248
    .line 249
    move/from16 v20, v11

    .line 250
    .line 251
    move-object/from16 v23, v15

    .line 252
    .line 253
    invoke-direct/range {v18 .. v23}, Lz5/j;-><init>(IIII[B)V

    .line 254
    .line 255
    .line 256
    move-object/from16 v3, v18

    .line 257
    .line 258
    :goto_9
    if-eqz v3, :cond_f

    .line 259
    .line 260
    iget-object v4, v2, Lb7/n;->d:Lb7/k;

    .line 261
    .line 262
    invoke-virtual {v4, v3}, Lb7/k;->b(Lz5/j;)Lz5/b;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    iget-object v5, v4, Lb7/k;->a:Lz5/h;

    .line 267
    .line 268
    iget-object v4, v4, Lb7/k;->b:Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 271
    .line 272
    .line 273
    if-eqz v5, :cond_e

    .line 274
    .line 275
    :try_start_0
    iget-object v4, v5, Lz5/h;->b:[Lz5/k;

    .line 276
    .line 277
    if-nez v4, :cond_d

    .line 278
    .line 279
    const/4 v4, 0x0

    .line 280
    invoke-virtual {v5, v4}, Lz5/h;->c(Ljava/util/Map;)V

    .line 281
    .line 282
    .line 283
    goto :goto_a

    .line 284
    :catchall_0
    move-exception v0

    .line 285
    goto :goto_c

    .line 286
    :cond_d
    :goto_a
    invoke-virtual {v5, v3}, Lz5/h;->b(Lz5/b;)Lz5/m;

    .line 287
    .line 288
    .line 289
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :goto_b
    invoke-virtual {v5}, Lz5/h;->reset()V

    .line 291
    .line 292
    .line 293
    goto :goto_d

    .line 294
    :cond_e
    const/4 v4, 0x0

    .line 295
    :try_start_1
    invoke-virtual {v5, v4}, Lz5/h;->c(Ljava/util/Map;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5, v3}, Lz5/h;->b(Lz5/b;)Lz5/m;

    .line 299
    .line 300
    .line 301
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    goto :goto_b

    .line 303
    :goto_c
    invoke-virtual {v5}, Lz5/h;->reset()V

    .line 304
    .line 305
    .line 306
    throw v0

    .line 307
    :catch_0
    invoke-virtual {v5}, Lz5/h;->reset()V

    .line 308
    .line 309
    .line 310
    :cond_f
    const/4 v3, 0x0

    .line 311
    :goto_d
    if-eqz v3, :cond_10

    .line 312
    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 314
    .line 315
    .line 316
    move-result-wide v4

    .line 317
    const-string v11, "n"

    .line 318
    .line 319
    new-instance v12, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    const-string v14, "Found barcode in "

    .line 322
    .line 323
    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    sub-long/2addr v4, v9

    .line 327
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v4, " ms"

    .line 331
    .line 332
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    if-eqz v8, :cond_11

    .line 343
    .line 344
    new-instance v4, Lb7/a;

    .line 345
    .line 346
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 347
    .line 348
    .line 349
    iput-object v3, v4, Lb7/a;->a:Lz5/m;

    .line 350
    .line 351
    iput-object v0, v4, Lb7/a;->b:Lb7/v;

    .line 352
    .line 353
    const v3, 0x7f090601

    .line 354
    .line 355
    .line 356
    invoke-static {v8, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    new-instance v4, Landroid/os/Bundle;

    .line 361
    .line 362
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 369
    .line 370
    .line 371
    goto :goto_e

    .line 372
    :cond_10
    if-eqz v8, :cond_11

    .line 373
    .line 374
    const v3, 0x7f090600

    .line 375
    .line 376
    .line 377
    invoke-static {v8, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 382
    .line 383
    .line 384
    :cond_11
    :goto_e
    if-eqz v8, :cond_14

    .line 385
    .line 386
    iget-object v2, v2, Lb7/n;->d:Lb7/k;

    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    new-instance v3, Ljava/util/ArrayList;

    .line 392
    .line 393
    iget-object v2, v2, Lb7/k;->b:Ljava/util/ArrayList;

    .line 394
    .line 395
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 396
    .line 397
    .line 398
    new-instance v2, Ljava/util/ArrayList;

    .line 399
    .line 400
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 408
    .line 409
    .line 410
    move-result v4

    .line 411
    const/4 v5, 0x0

    .line 412
    :goto_f
    if-ge v5, v4, :cond_13

    .line 413
    .line 414
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v9

    .line 418
    add-int/lit8 v5, v5, 0x1

    .line 419
    .line 420
    check-cast v9, Lz5/o;

    .line 421
    .line 422
    iget v10, v9, Lz5/o;->a:F

    .line 423
    .line 424
    const/4 v11, 0x1

    .line 425
    int-to-float v12, v11

    .line 426
    mul-float/2addr v10, v12

    .line 427
    iget-object v11, v0, Lb7/v;->d:Landroid/graphics/Rect;

    .line 428
    .line 429
    iget v14, v11, Landroid/graphics/Rect;->left:I

    .line 430
    .line 431
    int-to-float v14, v14

    .line 432
    add-float/2addr v10, v14

    .line 433
    iget v9, v9, Lz5/o;->b:F

    .line 434
    .line 435
    mul-float/2addr v9, v12

    .line 436
    iget v11, v11, Landroid/graphics/Rect;->top:I

    .line 437
    .line 438
    int-to-float v11, v11

    .line 439
    add-float/2addr v9, v11

    .line 440
    iget-boolean v11, v0, Lb7/v;->e:Z

    .line 441
    .line 442
    if-eqz v11, :cond_12

    .line 443
    .line 444
    int-to-float v11, v13

    .line 445
    sub-float v10, v11, v10

    .line 446
    .line 447
    :cond_12
    new-instance v11, Lz5/o;

    .line 448
    .line 449
    invoke-direct {v11, v10, v9}, Lz5/o;-><init>(FF)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    goto :goto_f

    .line 456
    :cond_13
    const v0, 0x7f090602

    .line 457
    .line 458
    .line 459
    invoke-static {v8, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 464
    .line 465
    .line 466
    :cond_14
    iget-object v0, v7, Lc7/g;->h:Landroid/os/Handler;

    .line 467
    .line 468
    new-instance v2, Lc7/d;

    .line 469
    .line 470
    const/4 v3, 0x0

    .line 471
    invoke-direct {v2, v7, v6, v3}, Lc7/d;-><init>(Lc7/g;Lr5/c;I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 475
    .line 476
    .line 477
    :cond_15
    :goto_10
    const/16 v16, 0x1

    .line 478
    .line 479
    goto :goto_11

    .line 480
    :cond_16
    const/4 v3, 0x0

    .line 481
    const v0, 0x7f090603

    .line 482
    .line 483
    .line 484
    if-ne v8, v0, :cond_15

    .line 485
    .line 486
    iget-object v0, v7, Lc7/g;->h:Landroid/os/Handler;

    .line 487
    .line 488
    new-instance v2, Lc7/d;

    .line 489
    .line 490
    invoke-direct {v2, v7, v6, v3}, Lc7/d;-><init>(Lc7/g;Lr5/c;I)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    .line 495
    .line 496
    goto :goto_10

    .line 497
    :goto_11
    return v16

    .line 498
    :pswitch_2
    const/4 v3, 0x0

    .line 499
    iget v2, v0, Landroid/os/Message;->what:I

    .line 500
    .line 501
    if-eqz v2, :cond_17

    .line 502
    .line 503
    return v3

    .line 504
    :cond_17
    iget-object v2, v1, Lb4/k;->b:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v2, Landroid/support/v4/media/h;

    .line 507
    .line 508
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast v0, Lb4/l;

    .line 511
    .line 512
    iget-object v3, v2, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 513
    .line 514
    monitor-enter v3

    .line 515
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    const/16 v17, 0x0

    .line 522
    .line 523
    throw v17

    .line 524
    :goto_12
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 525
    throw v0

    .line 526
    :catchall_1
    move-exception v0

    .line 527
    goto :goto_12

    .line 528
    nop

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
