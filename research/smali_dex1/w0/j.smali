.class public final synthetic Lw0/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lw0/o;


# direct methods
.method public synthetic constructor <init>(Lw0/o;I)V
    .registers 3

    .line 1
    iput p2, p0, Lw0/j;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/j;->c:Lw0/o;

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
    .registers 10

    .line 1
    iget v0, p0, Lw0/j;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_154

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lw0/j;->c:Lw0/o;

    .line 10
    .line 11
    :try_start_a
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lh0/b;->q()Lw0/y;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eq v3, v0, :cond_2e

    .line 19
    .line 20
    monitor-enter v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_2b
    .catchall {:try_start_a .. :try_end_14} :catchall_28

    .line 21
    :try_start_14
    iget-object v3, v0, Lw0/o;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 22
    .line 23
    if-eqz v3, :cond_1e

    .line 24
    .line 25
    invoke-interface {v3, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 26
    .line 27
    .line 28
    goto :goto_1e

    .line 29
    :catchall_1c
    move-exception v3

    .line 30
    goto :goto_26

    .line 31
    :cond_1e
    :goto_1e
    const/4 v3, 0x0

    .line 32
    iput-object v3, v0, Lw0/o;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 33
    .line 34
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_1c

    .line 35
    :cond_22
    :goto_22
    iput-boolean v1, v0, Lw0/o;->Q:Z

    .line 36
    .line 37
    goto/16 :goto_f0

    .line 38
    .line 39
    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_1c

    .line 40
    :try_start_27
    throw v3

    .line 41
    :catchall_28
    move-exception v2

    .line 42
    goto/16 :goto_f1

    .line 43
    .line 44
    :catch_2b
    move-exception v3

    .line 45
    goto/16 :goto_d9

    .line 46
    .line 47
    :cond_2e
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/16 v4, 0x12

    .line 52
    .line 53
    new-array v4, v4, [B

    .line 54
    .line 55
    fill-array-data v4, :array_15a

    .line 56
    .line 57
    .line 58
    new-array v5, v2, [B

    .line 59
    .line 60
    fill-array-data v5, :array_168

    .line 61
    .line 62
    .line 63
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3, v4, v1}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_49

    .line 72
    .line 73
    goto :goto_22

    .line 74
    :cond_49
    iget-object v3, v0, Lw0/o;->l:Lorg/vosk/Model;

    .line 75
    .line 76
    if-eqz v3, :cond_22

    .line 77
    .line 78
    invoke-virtual {v0}, Lw0/o;->j()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_54

    .line 83
    .line 84
    goto :goto_22

    .line 85
    :cond_54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    iget-wide v5, v0, Lw0/o;->P:J

    .line 90
    .line 91
    sub-long/2addr v3, v5

    .line 92
    const-wide/16 v5, 0x1388

    .line 93
    .line 94
    cmp-long v3, v3, v5

    .line 95
    .line 96
    if-gez v3, :cond_62

    .line 97
    .line 98
    goto :goto_22

    .line 99
    :cond_62
    iget-object v3, v0, Lw0/o;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    if-eqz v3, :cond_77

    .line 103
    .line 104
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_77

    .line 109
    .line 110
    iget-object v3, v0, Lw0/o;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 111
    .line 112
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_77

    .line 117
    .line 118
    move v3, v4

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    move v3, v1

    .line 121
    :goto_78
    iget-object v5, v0, Lw0/o;->k:Landroid/media/AudioRecord;

    .line 122
    .line 123
    if-eqz v5, :cond_8d

    .line 124
    .line 125
    invoke-virtual {v5}, Landroid/media/AudioRecord;->getState()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-ne v5, v4, :cond_8d

    .line 130
    .line 131
    iget-object v5, v0, Lw0/o;->k:Landroid/media/AudioRecord;

    .line 132
    .line 133
    invoke-virtual {v5}, Landroid/media/AudioRecord;->getRecordingState()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    const/4 v6, 0x3

    .line 138
    if-ne v5, v6, :cond_8d

    .line 139
    .line 140
    move v5, v4

    .line 141
    goto :goto_8e

    .line 142
    :cond_8d
    move v5, v1

    .line 143
    :goto_8e
    if-eqz v3, :cond_93

    .line 144
    .line 145
    if-eqz v5, :cond_93

    .line 146
    .line 147
    goto :goto_22

    .line 148
    :cond_93
    iget-boolean v6, v0, Lw0/o;->Q:Z

    .line 149
    .line 150
    if-eqz v6, :cond_98

    .line 151
    .line 152
    goto :goto_22

    .line 153
    :cond_98
    iput-boolean v4, v0, Lw0/o;->Q:Z

    .line 154
    .line 155
    iget-object v4, v0, Lw0/o;->a:Ljava/lang/String;

    .line 156
    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const/16 v7, 0x26

    .line 163
    .line 164
    new-array v7, v7, [B

    .line 165
    .line 166
    fill-array-data v7, :array_170

    .line 167
    .line 168
    .line 169
    new-array v8, v2, [B

    .line 170
    .line 171
    fill-array-data v8, :array_188

    .line 172
    .line 173
    .line 174
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const/16 v3, 0x10

    .line 185
    .line 186
    new-array v3, v3, [B

    .line 187
    .line 188
    fill-array-data v3, :array_190

    .line 189
    .line 190
    .line 191
    new-array v7, v2, [B

    .line 192
    .line 193
    fill-array-data v7, :array_19c

    .line 194
    .line 195
    .line 196
    invoke-static {v3, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lw0/o;->c()V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_d7} :catch_2b
    .catchall {:try_start_27 .. :try_end_d7} :catchall_28

    .line 214
    .line 215
    .line 216
    goto/16 :goto_22

    .line 217
    .line 218
    :goto_d9
    :try_start_d9
    iget-object v4, v0, Lw0/o;->a:Ljava/lang/String;

    .line 219
    .line 220
    const/16 v5, 0x19

    .line 221
    .line 222
    new-array v5, v5, [B

    .line 223
    .line 224
    fill-array-data v5, :array_1a4

    .line 225
    .line 226
    .line 227
    new-array v2, v2, [B

    .line 228
    .line 229
    fill-array-data v2, :array_1b6

    .line 230
    .line 231
    .line 232
    invoke-static {v5, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ee
    .catchall {:try_start_d9 .. :try_end_ee} :catchall_28

    .line 237
    .line 238
    .line 239
    goto/16 :goto_22

    .line 240
    .line 241
    :goto_f0
    return-void

    .line 242
    :goto_f1
    iput-boolean v1, v0, Lw0/o;->Q:Z

    .line 243
    .line 244
    throw v2

    .line 245
    :pswitch_f4
    iget-object v0, p0, Lw0/j;->c:Lw0/o;

    .line 246
    .line 247
    const/16 v3, 0xa

    .line 248
    .line 249
    :try_start_f8
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Lw0/o;->l()Ljava/util/ArrayList;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v0, v3}, Lw0/o;->C(Ljava/util/ArrayList;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    iput-object v4, v0, Lw0/o;->n:Ljava/util/List;

    .line 264
    .line 265
    iget-object v4, v0, Lw0/o;->a:Ljava/lang/String;

    .line 266
    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    const/16 v6, 0x1e

    .line 273
    .line 274
    new-array v6, v6, [B

    .line 275
    .line 276
    fill-array-data v6, :array_1be

    .line 277
    .line 278
    .line 279
    new-array v7, v2, [B

    .line 280
    .line 281
    fill-array-data v7, :array_1d2

    .line 282
    .line 283
    .line 284
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_130} :catch_135
    .catchall {:try_start_f8 .. :try_end_130} :catchall_133

    .line 303
    .line 304
    .line 305
    :goto_130
    iput-boolean v1, v0, Lw0/o;->o:Z

    .line 306
    .line 307
    goto :goto_150

    .line 308
    :catchall_133
    move-exception v2

    .line 309
    goto :goto_151

    .line 310
    :catch_135
    move-exception v3

    .line 311
    :try_start_136
    iget-object v4, v0, Lw0/o;->a:Ljava/lang/String;

    .line 312
    .line 313
    const/16 v5, 0x25

    .line 314
    .line 315
    new-array v5, v5, [B

    .line 316
    .line 317
    fill-array-data v5, :array_1da

    .line 318
    .line 319
    .line 320
    new-array v2, v2, [B

    .line 321
    .line 322
    fill-array-data v2, :array_1f2

    .line 323
    .line 324
    .line 325
    invoke-static {v5, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .line 331
    .line 332
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 333
    .line 334
    iput-object v2, v0, Lw0/o;->n:Ljava/util/List;
    :try_end_14f
    .catchall {:try_start_136 .. :try_end_14f} :catchall_133

    .line 335
    .line 336
    goto :goto_130

    .line 337
    :goto_150
    return-void

    .line 338
    :goto_151
    iput-boolean v1, v0, Lw0/o;->o:Z

    .line 339
    .line 340
    throw v2

    .line 341
    :pswitch_data_154
    .packed-switch 0x0
        :pswitch_f4
    .end packed-switch

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :array_15a
    .array-data 1
        -0x72t
        0x75t
        0x7at
        0xet
        0x64t
        0x31t
        0x34t
        -0x70t
        -0x75t
        0x64t
        0x67t
        0x34t
        0x5at
        0x29t
        0x37t
        -0x5at
        -0x52t
        0x52t
    .end array-data

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    nop

    .line 361
    :array_168
    .array-data 1
        -0x3t
        0x5t
        0x13t
        0x51t
        0x5t
        0x5at
        0x40t
        -0x7t
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_170
    .array-data 1
        -0x42t
        -0x6ft
        0x3et
        0x18t
        -0x42t
        0x6ft
        -0x53t
        0x7et
        -0x75t
        -0x2ct
        0x2at
        0x16t
        -0x48t
        0x68t
        -0x54t
        0x74t
        -0x7dt
        -0x6dt
        0x7dt
        0x5t
        -0x57t
        0x78t
        -0x50t
        0x71t
        -0x62t
        -0x80t
        0x67t
        0x57t
        -0x48t
        0x6at
        -0x49t
        0x7bt
        -0x53t
        -0x68t
        0x34t
        0x1t
        -0x57t
        0x36t
    .end array-data

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
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    nop

    .line 393
    :array_188
    .array-data 1
        -0x14t
        -0xct
        0x5dt
        0x77t
        -0x34t
        0xbt
        -0x3ct
        0x10t
    .end array-data

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    :array_190
    .array-data 1
        -0x7t
        -0x7ft
        0x73t
        -0x72t
        0x6t
        0x27t
        0x55t
        -0x46t
        -0x50t
        -0x2dt
        0x40t
        -0x79t
        0xct
        0x3et
        0x42t
        -0x1dt
    .end array-data

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :array_19c
    .array-data 1
        -0x2bt
        -0x5ft
        0x1t
        -0x15t
        0x65t
        0x48t
        0x27t
        -0x22t
    .end array-data

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :array_1a4
    .array-data 1
        0x36t
        0x5ct
        0x42t
        0x7ft
        0x24t
        0x6ct
        -0x5ft
        0x28t
        0x3t
        0x19t
        0x56t
        0x71t
        0x22t
        0x6bt
        -0x60t
        0x22t
        0xbt
        0x5et
        0x1t
        0x76t
        0x37t
        0x61t
        -0x5ct
        0x23t
        0x0t
    .end array-data

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    nop

    .line 439
    :array_1b6
    .array-data 1
        0x64t
        0x39t
        0x21t
        0x10t
        0x56t
        0x8t
        -0x38t
        0x46t
    .end array-data

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_1be
    .array-data 1
        -0x4et
        0x1bt
        -0x1et
        0x36t
        0x3bt
        -0x2t
        0x1t
        -0x1ft
        -0x3ft
        0x1dt
        -0x12t
        0x39t
        0x31t
        -0x1dt
        0xct
        -0x1dt
        -0x6bt
        0x1bt
        -0x4t
        0x77t
        0x25t
        -0x8t
        0xdt
        -0xet
        -0x80t
        0xct
        -0x16t
        0x33t
        0x6ft
        -0x56t
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
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
        -0x1ft
        0x7et
        -0x71t
        0x57t
        0x55t
        -0x76t
        0x68t
        -0x7et
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
        0x13t
        0x4ct
        -0x3at
        -0x67t
        -0x2dt
        0x1bt
        0x43t
        -0x14t
        0x24t
        0x3t
        -0x3dt
        -0x79t
        -0x2et
        0x4bt
        0x4ct
        -0xft
        0x35t
        0x3t
        -0x40t
        -0x70t
        -0x26t
        0x5at
        0x43t
        -0x9t
        0x39t
        0x40t
        -0x6dt
        -0x6at
        -0x2at
        0x55t
        0x49t
        -0x16t
        0x34t
        0x42t
        -0x39t
        -0x70t
        -0x3ct
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
        0x50t
        0x23t
        -0x4dt
        -0xbt
        -0x49t
        0x3bt
        0x2dt
        -0x7dt
    .end array-data
.end method
