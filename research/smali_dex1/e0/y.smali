.class public final synthetic Le0/y;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Le0/a0;


# direct methods
.method public synthetic constructor <init>(Le0/a0;I)V
    .registers 3

    .line 1
    iput p2, p0, Le0/y;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/y;->c:Le0/a0;

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
    .registers 14

    .line 1
    iget v0, p0, Le0/y;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x8

    .line 6
    .line 7
    const/4 v4, 0x5

    .line 8
    packed-switch v0, :pswitch_data_18c

    .line 9
    .line 10
    .line 11
    iget-object v5, p0, Le0/y;->c:Le0/a0;

    .line 12
    .line 13
    iget-object v0, v5, Le0/a0;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/example/navistart/cores/HUDMassageObj;

    .line 20
    .line 21
    if-eqz v0, :cond_d3

    .line 22
    .line 23
    monitor-enter v5

    .line 24
    :try_start_17
    sget-object v6, Le0/a0;->k:Lcom/example/navistart/cores/HUDMassageObj;

    .line 25
    .line 26
    invoke-virtual {v0, v6}, Lcom/example/navistart/cores/HUDMassageObj;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_2d

    .line 31
    .line 32
    sget v6, Le0/a0;->l:I

    .line 33
    .line 34
    if-lez v6, :cond_2a

    .line 35
    .line 36
    sub-int/2addr v6, v1

    .line 37
    sput v6, Le0/a0;->l:I
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_27

    .line 38
    .line 39
    goto :goto_4c

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    goto/16 :goto_d1

    .line 42
    .line 43
    :cond_2a
    monitor-exit v5

    .line 44
    goto/16 :goto_d3

    .line 45
    .line 46
    :cond_2d
    :try_start_2d
    sget-object v1, Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;->ARAD:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 47
    .line 48
    iget-object v6, v0, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 49
    .line 50
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3a

    .line 55
    .line 56
    const/4 v1, 0x3

    .line 57
    sput v1, Le0/a0;->l:I

    .line 58
    .line 59
    :cond_3a
    sget-object v1, Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;->NAVI:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 60
    .line 61
    iget-object v6, v0, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 62
    .line 63
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_46

    .line 68
    .line 69
    sput v2, Le0/a0;->l:I

    .line 70
    .line 71
    :cond_46
    invoke-virtual {v0, v0}, Lcom/example/navistart/cores/HUDMassageObj;->copy(Lcom/example/navistart/cores/HUDMassageObj;)Lcom/example/navistart/cores/HUDMassageObj;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    sput-object v1, Le0/a0;->k:Lcom/example/navistart/cores/HUDMassageObj;

    .line 76
    .line 77
    :goto_4c
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    new-array v4, v4, [B

    .line 82
    .line 83
    fill-array-data v4, :array_194

    .line 84
    .line 85
    .line 86
    new-array v3, v3, [B

    .line 87
    .line 88
    fill-array-data v3, :array_19c

    .line 89
    .line 90
    .line 91
    invoke-static {v4, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v1, v3, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iput-object v1, v5, Le0/a0;->b:Ljava/lang/Boolean;

    .line 104
    .line 105
    iget-object v1, v5, Le0/a0;->g:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v1}, Ln0/a;->valueOf(Ljava/lang/String;)Ln0/a;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object v1, v1, Ln0/a;->c:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    sget-object v2, Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;->NAVI:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 118
    .line 119
    iget-object v3, v0, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_9b

    .line 126
    .line 127
    iget-boolean v1, v5, Le0/a0;->f:Z

    .line 128
    .line 129
    if-eqz v1, :cond_8b

    .line 130
    .line 131
    iget-boolean v1, v5, Le0/a0;->e:Z

    .line 132
    .line 133
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v5, v0, v1}, Le0/a0;->c(Lcom/example/navistart/cores/HUDMassageObj;Ljava/lang/Boolean;)V

    .line 138
    .line 139
    .line 140
    :cond_8b
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lh0/b;->p()Lk1/a;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-eqz v1, :cond_cf

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Lk1/a;->a(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 153
    .line 154
    .line 155
    goto :goto_cf

    .line 156
    :cond_9b
    sget-object v2, Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;->ARAD:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 157
    .line 158
    iget-object v3, v0, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_cf

    .line 165
    .line 166
    iget-object v2, v0, Lcom/example/navistart/cores/HUDMassageObj;->aradarSenderType:Lcom/example/navistart/cores/HUDMassageObj$AradarSenderType;

    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_cf

    .line 177
    .line 178
    iget-boolean v1, v5, Le0/a0;->d:Z

    .line 179
    .line 180
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iget-boolean v2, v5, Le0/a0;->e:Z

    .line 185
    .line 186
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v5, v0, v1, v2}, Le0/a0;->b(Lcom/example/navistart/cores/HUDMassageObj;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lh0/b;->p()Lk1/a;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    if-eqz v1, :cond_cf

    .line 204
    .line 205
    invoke-virtual {v1, v0}, Lk1/a;->a(Lcom/example/navistart/cores/HUDMassageObj;)V
    :try_end_cf
    .catchall {:try_start_2d .. :try_end_cf} :catchall_27

    .line 206
    .line 207
    .line 208
    :cond_cf
    :goto_cf
    monitor-exit v5

    .line 209
    goto :goto_d3

    .line 210
    :goto_d1
    :try_start_d1
    monitor-exit v5
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_27

    .line 211
    throw v0

    .line 212
    :cond_d3
    :goto_d3
    return-void

    .line 213
    :pswitch_d4
    iget-object v1, p0, Le0/y;->c:Le0/a0;

    .line 214
    .line 215
    sget-object v0, Le0/a0;->j:Ljava/lang/Boolean;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_123

    .line 222
    .line 223
    sget-object v0, Le0/a0;->i:Ljava/lang/Boolean;

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_123

    .line 230
    .line 231
    monitor-enter v1

    .line 232
    :try_start_e7
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 233
    .line 234
    .line 235
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 236
    .line 237
    .line 238
    invoke-static {}, Lh0/b;->r()Lcom/example/navistart/cores/ProBroProxy;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-interface {v0}, Lcom/example/navistart/cores/ProBroProxy;->StopHUD()V

    .line 243
    .line 244
    .line 245
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    new-array v5, v4, [B

    .line 250
    .line 251
    fill-array-data v5, :array_1a4

    .line 252
    .line 253
    .line 254
    new-array v6, v3, [B

    .line 255
    .line 256
    fill-array-data v6, :array_1ac

    .line 257
    .line 258
    .line 259
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-virtual {v0, v5, v2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V
    :try_end_109
    .catchall {:try_start_e7 .. :try_end_109} :catchall_120

    .line 264
    .line 265
    .line 266
    monitor-exit v1

    .line 267
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    new-array v1, v4, [B

    .line 272
    .line 273
    fill-array-data v1, :array_1b4

    .line 274
    .line 275
    .line 276
    new-array v3, v3, [B

    .line 277
    .line 278
    fill-array-data v3, :array_1bc

    .line 279
    .line 280
    .line 281
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v0, v1, v2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 286
    .line 287
    .line 288
    goto :goto_123

    .line 289
    :catchall_120
    move-exception v0

    .line 290
    :try_start_121
    monitor-exit v1
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    .line 291
    throw v0

    .line 292
    :cond_123
    :goto_123
    return-void

    .line 293
    :pswitch_124
    iget-object v5, p0, Le0/y;->c:Le0/a0;

    .line 294
    .line 295
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    new-array v4, v4, [B

    .line 300
    .line 301
    fill-array-data v4, :array_1c4

    .line 302
    .line 303
    .line 304
    new-array v3, v3, [B

    .line 305
    .line 306
    fill-array-data v3, :array_1cc

    .line 307
    .line 308
    .line 309
    invoke-static {v4, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-virtual {v0, v3, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iput-object v0, v5, Le0/a0;->b:Ljava/lang/Boolean;

    .line 322
    .line 323
    invoke-virtual {v5}, Le0/a0;->d()V

    .line 324
    .line 325
    .line 326
    iget-object v0, v5, Le0/a0;->b:Ljava/lang/Boolean;

    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_160

    .line 333
    .line 334
    sget-object v0, Le0/a0;->i:Ljava/lang/Boolean;

    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_160

    .line 341
    .line 342
    sget-object v0, Le0/a0;->j:Ljava/lang/Boolean;

    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_160

    .line 349
    .line 350
    invoke-virtual {v5}, Le0/a0;->g()V

    .line 351
    .line 352
    .line 353
    :cond_160
    monitor-enter v5

    .line 354
    :try_start_161
    sget-object v0, Le0/a0;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 355
    .line 356
    if-eqz v0, :cond_173

    .line 357
    .line 358
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-nez v0, :cond_173

    .line 363
    .line 364
    sget-object v0, Le0/a0;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 365
    .line 366
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 367
    .line 368
    .line 369
    goto :goto_173

    .line 370
    :catchall_171
    move-exception v0

    .line 371
    goto :goto_189

    .line 372
    :cond_173
    :goto_173
    iget-object v6, v5, Le0/a0;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 373
    .line 374
    new-instance v7, Le0/y;

    .line 375
    .line 376
    const/4 v0, 0x2

    .line 377
    invoke-direct {v7, v5, v0}, Le0/y;-><init>(Le0/a0;I)V

    .line 378
    .line 379
    .line 380
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 381
    .line 382
    const-wide/16 v8, 0xa

    .line 383
    .line 384
    const-wide/16 v10, 0x64

    .line 385
    .line 386
    invoke-virtual/range {v6 .. v12}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    sput-object v0, Le0/a0;->h:Ljava/util/concurrent/ScheduledFuture;
    :try_end_187
    .catchall {:try_start_161 .. :try_end_187} :catchall_171

    .line 391
    .line 392
    monitor-exit v5

    .line 393
    return-void

    .line 394
    :goto_189
    :try_start_189
    monitor-exit v5
    :try_end_18a
    .catchall {:try_start_189 .. :try_end_18a} :catchall_171

    .line 395
    throw v0

    .line 396
    nop

    .line 397
    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_124
        :pswitch_d4
    .end packed-switch

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    :array_194
    .array-data 1
        -0x3t
        -0x5dt
        -0x29t
        0x30t
        0x2bt
    .end array-data

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    nop

    .line 413
    :array_19c
    .array-data 1
        -0x53t
        -0x2ft
        -0x48t
        0x63t
        0x7ct
        0x64t
        0xbt
        0x52t
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
        0x3ft
        0x22t
        0x40t
        0x61t
        -0x65t
    .end array-data

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
        0x6ft
        0x50t
        0x2ft
        0x32t
        -0x34t
        0x13t
        -0x7t
        -0x41t
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
        0x2bt
        -0x3at
        0x3at
        0x73t
        0x1et
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    nop

    .line 445
    :array_1bc
    .array-data 1
        0x7bt
        -0x4ct
        0x55t
        0x20t
        0x49t
        0x4et
        0x37t
        -0x3bt
    .end array-data

    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    :array_1c4
    .array-data 1
        0x4t
        0x63t
        0x6t
        -0x30t
        0x52t
    .end array-data

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    nop

    .line 461
    :array_1cc
    .array-data 1
        0x54t
        0x11t
        0x69t
        -0x7dt
        0x5t
        0x51t
        -0x73t
        0x5ft
    .end array-data
.end method
