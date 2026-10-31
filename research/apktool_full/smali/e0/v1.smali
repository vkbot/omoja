.class public final synthetic Le0/v1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Le0/x1;


# direct methods
.method public synthetic constructor <init>(Le0/x1;I)V
    .locals 0

    .line 1
    iput p2, p0, Le0/v1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/v1;->c:Le0/x1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Le0/v1;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const/16 v5, 0x8

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Le0/v1;->c:Le0/x1;

    .line 13
    .line 14
    iget-boolean v2, v0, Le0/x1;->o:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iput-boolean v4, v0, Le0/x1;->o:Z

    .line 19
    .line 20
    invoke-virtual {v0}, Le0/x1;->a()Landroid/media/session/MediaController;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Le0/x1;->e(Landroid/media/session/MediaController;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {v1}, Le0/x1;->d(Landroid/media/session/MediaController;)V

    .line 30
    .line 31
    .line 32
    iput-boolean v3, v0, Le0/x1;->o:Z

    .line 33
    .line 34
    :cond_1
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Le0/v1;->c:Le0/x1;

    .line 36
    .line 37
    iget-boolean v6, v0, Le0/x1;->o:Z

    .line 38
    .line 39
    if-eqz v6, :cond_e

    .line 40
    .line 41
    :try_start_0
    iget-object v6, v0, Le0/x1;->i:Landroid/media/session/MediaSessionManager;

    .line 42
    .line 43
    iget-object v7, v0, Le0/x1;->j:Landroid/content/ComponentName;

    .line 44
    .line 45
    invoke-virtual {v6, v7}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-object v6, v1

    .line 51
    :goto_0
    invoke-virtual {v0}, Le0/x1;->a()Landroid/media/session/MediaController;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    if-eqz v6, :cond_d

    .line 56
    .line 57
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-nez v8, :cond_d

    .line 62
    .line 63
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_4

    .line 72
    .line 73
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    check-cast v9, Landroid/media/session/MediaController;

    .line 78
    .line 79
    if-nez v9, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {v9}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    if-eqz v10, :cond_2

    .line 87
    .line 88
    invoke-virtual {v10}, Landroid/media/session/PlaybackState;->getState()I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    if-ne v10, v2, :cond_2

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    move-object v9, v1

    .line 96
    :goto_2
    if-eqz v9, :cond_5

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_5
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lh0/b;->n()Lcom/example/navistart/cores/ProLanProxy;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-eqz v2, :cond_9

    .line 110
    .line 111
    invoke-interface {v2}, Lcom/example/navistart/cores/ProLanProxy;->getMO()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_9

    .line 116
    .line 117
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_8

    .line 126
    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    check-cast v8, Landroid/media/session/MediaController;

    .line 132
    .line 133
    if-nez v8, :cond_7

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    invoke-virtual {v8}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    if-eqz v9, :cond_6

    .line 141
    .line 142
    invoke-virtual {v9}, Landroid/media/session/PlaybackState;->getState()I

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    if-eqz v9, :cond_6

    .line 147
    .line 148
    move-object v1, v8

    .line 149
    :cond_8
    if-eqz v1, :cond_9

    .line 150
    .line 151
    move-object v9, v1

    .line 152
    goto :goto_4

    .line 153
    :cond_9
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    move-object v9, v1

    .line 158
    check-cast v9, Landroid/media/session/MediaController;

    .line 159
    .line 160
    :goto_4
    invoke-virtual {v9}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const/16 v2, 0xc

    .line 165
    .line 166
    new-array v2, v2, [B

    .line 167
    .line 168
    fill-array-data v2, :array_0

    .line 169
    .line 170
    .line 171
    new-array v4, v5, [B

    .line 172
    .line 173
    fill-array-data v4, :array_1

    .line 174
    .line 175
    .line 176
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-nez v2, :cond_e

    .line 185
    .line 186
    const/16 v2, 0xb

    .line 187
    .line 188
    new-array v2, v2, [B

    .line 189
    .line 190
    fill-array-data v2, :array_2

    .line 191
    .line 192
    .line 193
    new-array v4, v5, [B

    .line 194
    .line 195
    fill-array-data v4, :array_3

    .line 196
    .line 197
    .line 198
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_a

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_a
    if-eqz v7, :cond_b

    .line 210
    .line 211
    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-nez v1, :cond_b

    .line 216
    .line 217
    invoke-virtual {v0, v7}, Le0/x1;->e(Landroid/media/session/MediaController;)V

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_b
    if-eqz v7, :cond_c

    .line 222
    .line 223
    invoke-virtual {v7}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v9}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_e

    .line 236
    .line 237
    :cond_c
    iget-object v1, v0, Le0/x1;->n:Landroid/os/Handler;

    .line 238
    .line 239
    new-instance v2, Lb1/n;

    .line 240
    .line 241
    invoke-direct {v2, v0, v7, v9, v3}, Lb1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_d
    if-eqz v7, :cond_e

    .line 249
    .line 250
    invoke-virtual {v0, v7}, Le0/x1;->e(Landroid/media/session/MediaController;)V

    .line 251
    .line 252
    .line 253
    :cond_e
    :goto_5
    return-void

    .line 254
    :pswitch_1
    iget-object v0, p0, Le0/v1;->c:Le0/x1;

    .line 255
    .line 256
    invoke-virtual {v0}, Le0/x1;->a()Landroid/media/session/MediaController;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    if-nez v0, :cond_f

    .line 261
    .line 262
    const/16 v0, 0x16

    .line 263
    .line 264
    new-array v0, v0, [B

    .line 265
    .line 266
    fill-array-data v0, :array_4

    .line 267
    .line 268
    .line 269
    new-array v1, v5, [B

    .line 270
    .line 271
    fill-array-data v1, :array_5

    .line 272
    .line 273
    .line 274
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    sget-object v1, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 279
    .line 280
    invoke-static {v0, v1}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_8

    .line 284
    .line 285
    :cond_f
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    if-eqz v1, :cond_10

    .line 290
    .line 291
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-ne v1, v2, :cond_10

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_10
    move v3, v4

    .line 299
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const/16 v4, 0x12

    .line 305
    .line 306
    new-array v4, v4, [B

    .line 307
    .line 308
    fill-array-data v4, :array_6

    .line 309
    .line 310
    .line 311
    new-array v6, v5, [B

    .line 312
    .line 313
    fill-array-data v6, :array_7

    .line 314
    .line 315
    .line 316
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    new-array v2, v2, [B

    .line 331
    .line 332
    fill-array-data v2, :array_8

    .line 333
    .line 334
    .line 335
    new-array v4, v5, [B

    .line 336
    .line 337
    fill-array-data v4, :array_9

    .line 338
    .line 339
    .line 340
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    if-eqz v3, :cond_11

    .line 348
    .line 349
    const/4 v2, 0x5

    .line 350
    new-array v2, v2, [B

    .line 351
    .line 352
    fill-array-data v2, :array_a

    .line 353
    .line 354
    .line 355
    new-array v4, v5, [B

    .line 356
    .line 357
    fill-array-data v4, :array_b

    .line 358
    .line 359
    .line 360
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    goto :goto_7

    .line 365
    :cond_11
    const/4 v2, 0x4

    .line 366
    new-array v2, v2, [B

    .line 367
    .line 368
    fill-array-data v2, :array_c

    .line 369
    .line 370
    .line 371
    new-array v4, v5, [B

    .line 372
    .line 373
    fill-array-data v4, :array_d

    .line 374
    .line 375
    .line 376
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    sget-object v2, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 388
    .line 389
    invoke-static {v1, v2}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 390
    .line 391
    .line 392
    if-eqz v3, :cond_12

    .line 393
    .line 394
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 399
    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_12
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 407
    .line 408
    .line 409
    :goto_8
    return-void

    .line 410
    nop

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :array_0
    .array-data 1
        -0x53t
        0x54t
        -0x62t
        0x58t
        -0x7ct
        -0x74t
        0x50t
        -0x17t
        -0x5ft
        0x52t
        -0x69t
        0x58t
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    :array_1
    .array-data 1
        -0x32t
        0x3bt
        -0xdt
        0x76t
        -0x1bt
        -0x1et
        0x34t
        -0x65t
    .end array-data

    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_2
    .array-data 1
        -0x3et
        -0x73t
        0x7at
        -0x28t
        -0x68t
        -0x44t
        0x15t
        -0x7bt
        -0x28t
        -0x6ft
        0x61t
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_3
    .array-data 1
        -0x5ft
        -0x1et
        0x17t
        -0xat
        -0x4t
        -0x27t
        0x66t
        -0x1ct
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :array_4
    .array-data 1
        -0xct
        -0x7t
        0x4dt
        0x63t
        0x64t
        0x2at
        -0x3t
        0x1bt
        -0x33t
        -0x12t
        0x46t
        0x66t
        0x69t
        0xct
        -0x20t
        0x55t
        -0x6ct
        -0x44t
        0x67t
        0x5ft
        0x49t
        0x25t
    .end array-data

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    nop

    .line 471
    :array_5
    .array-data 1
        -0x47t
        -0x64t
        0x29t
        0xat
        0x5t
        0x69t
        -0x6et
        0x75t
    .end array-data

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    :array_6
    .array-data 1
        0x6t
        0x77t
        0xft
        0x10t
        0x6ct
        0x6dt
        0x67t
        0x0t
        0x3ft
        0x60t
        0x4t
        0x15t
        0x61t
        0x4bt
        0x7at
        0x4et
        0x66t
        0x32t
    .end array-data

    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    nop

    .line 493
    :array_7
    .array-data 1
        0x4bt
        0x12t
        0x6bt
        0x79t
        0xdt
        0x2et
        0x8t
        0x6et
    .end array-data

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    :array_8
    .array-data 1
        -0x55t
        0x3bt
        0x51t
    .end array-data

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    :array_9
    .array-data 1
        -0x75t
        0x16t
        0x71t
        0x7bt
        0x5ct
        0x7ct
        -0xet
        0x1t
    .end array-data

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    :array_a
    .array-data 1
        0x4at
        -0x46t
        0x1at
        0x44t
        -0x40t
    .end array-data

    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    nop

    .line 523
    :array_b
    .array-data 1
        0x1at
        -0x5t
        0x4ft
        0x17t
        -0x7bt
        -0x3ft
        -0x4t
        -0x3ft
    .end array-data

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    :array_c
    .array-data 1
        0x3ft
        -0x32t
        -0x20t
        -0x5bt
    .end array-data

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    :array_d
    .array-data 1
        0x6ft
        -0x7et
        -0x5ft
        -0x4t
        0x39t
        0x4at
        -0xbt
        -0x6t
    .end array-data
.end method
