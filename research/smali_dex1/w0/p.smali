.class public final synthetic Lw0/p;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lw0/x;


# direct methods
.method public synthetic constructor <init>(Lw0/x;I)V
    .registers 3

    .line 1
    iput p2, p0, Lw0/p;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/p;->c:Lw0/x;

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
    .registers 12

    .line 1
    iget v0, p0, Lw0/p;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_166

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lw0/p;->c:Lw0/x;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :try_start_d
    iget-object v3, v0, Lw0/x;->u:Lai/onnxruntime/OrtSession;

    .line 15
    .line 16
    if-eqz v3, :cond_2b

    .line 17
    .line 18
    invoke-virtual {v3}, Lai/onnxruntime/OrtSession;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_15

    .line 19
    .line 20
    .line 21
    goto :goto_2b

    .line 22
    :catch_15
    move-exception v3

    .line 23
    iget-object v4, v0, Lw0/x;->a:Ljava/lang/String;

    .line 24
    .line 25
    const/16 v5, 0x20

    .line 26
    .line 27
    new-array v5, v5, [B

    .line 28
    .line 29
    fill-array-data v5, :array_16c

    .line 30
    .line 31
    .line 32
    new-array v2, v2, [B

    .line 33
    .line 34
    fill-array-data v2, :array_180

    .line 35
    .line 36
    .line 37
    invoke-static {v5, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :cond_2b
    :goto_2b
    iput-object v1, v0, Lw0/x;->u:Lai/onnxruntime/OrtSession;

    .line 45
    .line 46
    iput-object v1, v0, Lw0/x;->s:Lw0/m;

    .line 47
    .line 48
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 49
    .line 50
    iput-object v2, v0, Lw0/x;->p:Ljava/util/List;

    .line 51
    .line 52
    iput-object v1, v0, Lw0/x;->A:Lw0/v;

    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_36
    iget-object v0, p0, Lw0/p;->c:Lw0/x;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    :try_start_39
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lh0/b;->q()Lw0/y;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-eq v4, v0, :cond_5c

    .line 66
    .line 67
    monitor-enter v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_43} :catch_59
    .catchall {:try_start_39 .. :try_end_43} :catchall_56

    .line 68
    :try_start_43
    iget-object v4, v0, Lw0/x;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 69
    .line 70
    if-eqz v4, :cond_4d

    .line 71
    .line 72
    invoke-interface {v4, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 73
    .line 74
    .line 75
    goto :goto_4d

    .line 76
    :catchall_4b
    move-exception v1

    .line 77
    goto :goto_54

    .line 78
    :cond_4d
    :goto_4d
    iput-object v1, v0, Lw0/x;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 79
    .line 80
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_4b

    .line 81
    :cond_50
    :goto_50
    iput-boolean v3, v0, Lw0/x;->i0:Z

    .line 82
    .line 83
    goto/16 :goto_161

    .line 84
    .line 85
    :goto_54
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_4b

    .line 86
    :try_start_55
    throw v1

    .line 87
    :catchall_56
    move-exception v1

    .line 88
    goto/16 :goto_162

    .line 89
    .line 90
    :catch_59
    move-exception v1

    .line 91
    goto/16 :goto_14a

    .line 92
    .line 93
    :cond_5c
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/16 v4, 0x12

    .line 98
    .line 99
    new-array v4, v4, [B

    .line 100
    .line 101
    fill-array-data v4, :array_188

    .line 102
    .line 103
    .line 104
    new-array v5, v2, [B

    .line 105
    .line 106
    fill-array-data v5, :array_196

    .line 107
    .line 108
    .line 109
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v1, v4, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_77

    .line 118
    .line 119
    goto :goto_50

    .line 120
    :cond_77
    iget-object v1, v0, Lw0/x;->l:Lorg/vosk/Model;

    .line 121
    .line 122
    if-eqz v1, :cond_50

    .line 123
    .line 124
    invoke-virtual {v0}, Lw0/x;->n()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_82

    .line 129
    .line 130
    goto :goto_50

    .line 131
    :cond_82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v4

    .line 135
    iget-wide v6, v0, Lw0/x;->h0:J

    .line 136
    .line 137
    sub-long/2addr v4, v6

    .line 138
    const-wide/16 v6, 0x1388

    .line 139
    .line 140
    cmp-long v1, v4, v6

    .line 141
    .line 142
    if-gez v1, :cond_90

    .line 143
    .line 144
    goto :goto_50

    .line 145
    :cond_90
    iget-object v1, v0, Lw0/x;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 146
    .line 147
    const/4 v4, 0x1

    .line 148
    if-eqz v1, :cond_a5

    .line 149
    .line 150
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_a5

    .line 155
    .line 156
    iget-object v1, v0, Lw0/x;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 157
    .line 158
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_a5

    .line 163
    .line 164
    move v1, v4

    .line 165
    goto :goto_a6

    .line 166
    :cond_a5
    move v1, v3

    .line 167
    :goto_a6
    iget-object v5, v0, Lw0/x;->k:Landroid/media/AudioRecord;

    .line 168
    .line 169
    if-eqz v5, :cond_bb

    .line 170
    .line 171
    invoke-virtual {v5}, Landroid/media/AudioRecord;->getState()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-ne v5, v4, :cond_bb

    .line 176
    .line 177
    iget-object v5, v0, Lw0/x;->k:Landroid/media/AudioRecord;

    .line 178
    .line 179
    invoke-virtual {v5}, Landroid/media/AudioRecord;->getRecordingState()I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    const/4 v6, 0x3

    .line 184
    if-ne v5, v6, :cond_bb

    .line 185
    .line 186
    move v5, v4

    .line 187
    goto :goto_bc

    .line 188
    :cond_bb
    move v5, v3

    .line 189
    :goto_bc
    if-eqz v1, :cond_c1

    .line 190
    .line 191
    if-eqz v5, :cond_c1

    .line 192
    .line 193
    goto :goto_50

    .line 194
    :cond_c1
    iget-boolean v6, v0, Lw0/x;->i0:Z

    .line 195
    .line 196
    if-eqz v6, :cond_c6

    .line 197
    .line 198
    goto :goto_50

    .line 199
    :cond_c6
    iput-boolean v4, v0, Lw0/x;->i0:Z

    .line 200
    .line 201
    invoke-virtual {v0}, Lw0/x;->r()Lw0/g1;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    const/16 v6, 0x11

    .line 206
    .line 207
    new-array v6, v6, [B

    .line 208
    .line 209
    fill-array-data v6, :array_19e

    .line 210
    .line 211
    .line 212
    new-array v7, v2, [B

    .line 213
    .line 214
    fill-array-data v7, :array_1ac

    .line 215
    .line 216
    .line 217
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    const/16 v7, 0x9

    .line 222
    .line 223
    new-array v7, v7, [B

    .line 224
    .line 225
    fill-array-data v7, :array_1b4

    .line 226
    .line 227
    .line 228
    new-array v8, v2, [B

    .line 229
    .line 230
    fill-array-data v8, :array_1be

    .line 231
    .line 232
    .line 233
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    const/16 v9, 0xd

    .line 242
    .line 243
    new-array v9, v9, [B

    .line 244
    .line 245
    fill-array-data v9, :array_1c6

    .line 246
    .line 247
    .line 248
    new-array v10, v2, [B

    .line 249
    .line 250
    fill-array-data v10, :array_1d2

    .line 251
    .line 252
    .line 253
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    invoke-virtual {v4, v6, v7}, Lw0/g1;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    iget-object v4, v0, Lw0/x;->a:Ljava/lang/String;

    .line 269
    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const/16 v7, 0x26

    .line 276
    .line 277
    new-array v7, v7, [B

    .line 278
    .line 279
    fill-array-data v7, :array_1da

    .line 280
    .line 281
    .line 282
    new-array v8, v2, [B

    .line 283
    .line 284
    fill-array-data v8, :array_1f2

    .line 285
    .line 286
    .line 287
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const/16 v1, 0x10

    .line 298
    .line 299
    new-array v1, v1, [B

    .line 300
    .line 301
    fill-array-data v1, :array_1fa

    .line 302
    .line 303
    .line 304
    new-array v7, v2, [B

    .line 305
    .line 306
    fill-array-data v7, :array_206

    .line 307
    .line 308
    .line 309
    invoke-static {v1, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Lw0/x;->c()V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_148} :catch_59
    .catchall {:try_start_55 .. :try_end_148} :catchall_56

    .line 327
    .line 328
    .line 329
    goto/16 :goto_50

    .line 330
    .line 331
    :goto_14a
    :try_start_14a
    iget-object v4, v0, Lw0/x;->a:Ljava/lang/String;

    .line 332
    .line 333
    const/16 v5, 0x19

    .line 334
    .line 335
    new-array v5, v5, [B

    .line 336
    .line 337
    fill-array-data v5, :array_20e

    .line 338
    .line 339
    .line 340
    new-array v2, v2, [B

    .line 341
    .line 342
    fill-array-data v2, :array_220

    .line 343
    .line 344
    .line 345
    invoke-static {v5, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15f
    .catchall {:try_start_14a .. :try_end_15f} :catchall_56

    .line 350
    .line 351
    .line 352
    goto/16 :goto_50

    .line 353
    .line 354
    :goto_161
    return-void

    .line 355
    :goto_162
    iput-boolean v3, v0, Lw0/x;->i0:Z

    .line 356
    .line 357
    throw v1

    .line 358
    nop

    .line 359
    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_36
    .end packed-switch

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :array_16c
    .array-data 1
        0x16t
        0x51t
        0x5at
        0x75t
        -0x45t
        0x42t
        -0x7t
        -0x45t
        0x21t
        0x1et
        0x4ct
        0x75t
        -0x50t
        0x11t
        -0xet
        -0xct
        0x26t
        0x5bt
        0x42t
        0x78t
        -0x4ft
        0x16t
        -0x2t
        -0x49t
        0x75t
        0x4dt
        0x4at
        0x6at
        -0x54t
        0xbt
        -0x8t
        -0x46t
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_180
    .array-data 1
        0x55t
        0x3et
        0x2ft
        0x19t
        -0x21t
        0x62t
        -0x69t
        -0x2ct
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    :array_188
    .array-data 1
        -0x38t
        -0x79t
        0x3t
        0x10t
        0x14t
        0x1et
        0x3dt
        -0x3et
        -0x33t
        -0x6at
        0x1et
        0x2at
        0x2at
        0x6t
        0x3et
        -0xct
        -0x18t
        -0x60t
    .end array-data

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    nop

    .line 407
    :array_196
    .array-data 1
        -0x45t
        -0x9t
        0x6at
        0x4ft
        0x75t
        0x75t
        0x49t
        -0x55t
    .end array-data

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :array_19e
    .array-data 1
        -0x53t
        0x4et
        0x5dt
        0x72t
        0x6ct
        0x18t
        0x10t
        -0x2dt
        -0x48t
        0x74t
        0x4ct
        0x78t
        0x6dt
        0x8t
        0x18t
        -0x31t
        -0x55t
    .end array-data

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    nop

    .line 429
    :array_1ac
    .array-data 1
        -0x21t
        0x2bt
        0x3et
        0x1dt
        0x1et
        0x7ct
        0x79t
        -0x43t
    .end array-data

    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_1b4
    .array-data 1
        0x72t
        0x7dt
        0x30t
        -0x49t
        0x10t
        0x5at
        -0x6bt
        -0x4ft
        0x63t
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
    nop

    .line 447
    :array_1be
    .array-data 1
        0x6t
        0x1ct
        0x43t
        -0x24t
        0x51t
        0x36t
        -0x4t
        -0x39t
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :array_1c6
    .array-data 1
        -0x7dt
        -0x2ft
        -0x80t
        0x2dt
        0x24t
        -0x74t
        -0x48t
        -0x56t
        -0x50t
        -0x28t
        -0x76t
        0x34t
        0x33t
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
    nop

    .line 467
    :array_1d2
    .array-data 1
        -0xft
        -0x4ct
        -0x1dt
        0x42t
        0x56t
        -0x18t
        -0x23t
        -0x28t
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_1da
    .array-data 1
        0x66t
        0x3ct
        0x70t
        -0x2dt
        -0x80t
        -0x46t
        0x8t
        0x6ft
        0x53t
        0x79t
        0x64t
        -0x23t
        -0x7at
        -0x43t
        0x9t
        0x65t
        0x5bt
        0x3et
        0x33t
        -0x32t
        -0x69t
        -0x53t
        0x15t
        0x60t
        0x46t
        0x2dt
        0x29t
        -0x64t
        -0x7at
        -0x41t
        0x12t
        0x6at
        0x75t
        0x35t
        0x7at
        -0x36t
        -0x69t
        -0x1dt
    .end array-data

    .line 476
    .line 477
    .line 478
    .line 479
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
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    nop

    .line 499
    :array_1f2
    .array-data 1
        0x34t
        0x59t
        0x13t
        -0x44t
        -0xet
        -0x22t
        0x61t
        0x1t
    .end array-data

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    :array_1fa
    .array-data 1
        0x7bt
        0x7t
        0x14t
        0x72t
        -0x32t
        0x3ft
        -0x26t
        -0x58t
        0x32t
        0x55t
        0x27t
        0x7bt
        -0x3ct
        0x26t
        -0x33t
        -0xft
    .end array-data

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_206
    .array-data 1
        0x57t
        0x27t
        0x66t
        0x17t
        -0x53t
        0x50t
        -0x58t
        -0x34t
    .end array-data

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_20e
    .array-data 1
        -0x4at
        -0x1at
        0x76t
        -0x63t
        0x7dt
        -0x32t
        0x1ft
        -0x52t
        -0x7dt
        -0x5dt
        0x62t
        -0x6dt
        0x7bt
        -0x37t
        0x1et
        -0x5ct
        -0x75t
        -0x1ct
        0x35t
        -0x6ct
        0x6et
        -0x3dt
        0x1at
        -0x5bt
        -0x80t
    .end array-data

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    nop

    .line 545
    :array_220
    .array-data 1
        -0x1ct
        -0x7dt
        0x15t
        -0xet
        0xft
        -0x56t
        0x76t
        -0x40t
    .end array-data
.end method
