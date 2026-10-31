.class public final synthetic Lq0/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lq0/d;


# direct methods
.method public synthetic constructor <init>(Lq0/d;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq0/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lq0/a;->c:Lq0/d;

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
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lq0/a;->b:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v3, v1, Lq0/a;->c:Lq0/d;

    .line 10
    .line 11
    :goto_0
    iget-object v0, v3, Lq0/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_25

    .line 18
    .line 19
    iget-object v0, v3, Lq0/d;->g:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Lq0/d;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/16 v5, 0x8

    .line 27
    .line 28
    const v6, 0x7f130259

    .line 29
    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    new-instance v8, Lq0/c;

    .line 35
    .line 36
    invoke-direct {v8, v0, v7}, Lq0/c;-><init>(Ljava/lang/String;Landroid/net/Network;)V

    .line 37
    .line 38
    .line 39
    move/from16 v16, v4

    .line 40
    .line 41
    goto/16 :goto_16

    .line 42
    .line 43
    :cond_0
    iget-object v0, v3, Lq0/d;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 44
    .line 45
    iget-object v8, v3, Lq0/d;->a:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    iget-object v9, v3, Lq0/d;->a:Landroid/content/Context;

    .line 52
    .line 53
    iget v10, v3, Lq0/d;->h:I

    .line 54
    .line 55
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    const v11, 0x7f130255

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {v8, v9, v4}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 77
    .line 78
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v0, v3, Lq0/d;->m:Lq0/c;

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    invoke-static {v8, v0}, Lq0/d;->c(Ljava/util/LinkedHashMap;Lq0/c;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-object v0, v3, Lq0/d;->a:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {v0}, Ly5/k;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    if-eqz v9, :cond_2

    .line 95
    .line 96
    move/from16 v16, v4

    .line 97
    .line 98
    goto/16 :goto_8

    .line 99
    .line 100
    :cond_2
    invoke-static {v0}, Ly5/k;->h(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    if-nez v9, :cond_3

    .line 105
    .line 106
    :goto_1
    move/from16 v16, v4

    .line 107
    .line 108
    move-object v9, v7

    .line 109
    goto/16 :goto_8

    .line 110
    .line 111
    :cond_3
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    if-nez v10, :cond_4

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    array-length v11, v10

    .line 119
    move v12, v4

    .line 120
    :goto_2
    if-ge v12, v11, :cond_7

    .line 121
    .line 122
    aget-object v13, v10, v12

    .line 123
    .line 124
    invoke-virtual {v9, v13}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 125
    .line 126
    .line 127
    move-result-object v14

    .line 128
    if-eqz v14, :cond_6

    .line 129
    .line 130
    invoke-virtual {v14, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 131
    .line 132
    .line 133
    move-result v14

    .line 134
    if-nez v14, :cond_5

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_5
    invoke-virtual {v9, v13}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    invoke-static {v13}, Ly5/k;->f(Landroid/net/LinkProperties;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    if-eqz v13, :cond_6

    .line 146
    .line 147
    move/from16 v16, v4

    .line 148
    .line 149
    move-object v9, v13

    .line 150
    goto/16 :goto_8

    .line 151
    .line 152
    :cond_6
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_7
    const/4 v9, 0x4

    .line 156
    new-array v10, v9, [B

    .line 157
    .line 158
    fill-array-data v10, :array_0

    .line 159
    .line 160
    .line 161
    new-array v11, v5, [B

    .line 162
    .line 163
    fill-array-data v11, :array_1

    .line 164
    .line 165
    .line 166
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    new-array v11, v9, [B

    .line 171
    .line 172
    fill-array-data v11, :array_2

    .line 173
    .line 174
    .line 175
    new-array v12, v5, [B

    .line 176
    .line 177
    fill-array-data v12, :array_3

    .line 178
    .line 179
    .line 180
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    const/4 v12, 0x5

    .line 185
    new-array v12, v12, [B

    .line 186
    .line 187
    fill-array-data v12, :array_4

    .line 188
    .line 189
    .line 190
    new-array v13, v5, [B

    .line 191
    .line 192
    fill-array-data v13, :array_5

    .line 193
    .line 194
    .line 195
    invoke-static {v12, v13}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    const/4 v13, 0x2

    .line 200
    new-array v13, v13, [B

    .line 201
    .line 202
    fill-array-data v13, :array_6

    .line 203
    .line 204
    .line 205
    new-array v14, v5, [B

    .line 206
    .line 207
    fill-array-data v14, :array_7

    .line 208
    .line 209
    .line 210
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    invoke-static {v0}, Ly5/k;->h(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 219
    .line 220
    .line 221
    move-result-object v11

    .line 222
    if-nez v11, :cond_9

    .line 223
    .line 224
    :cond_8
    :goto_4
    move/from16 v16, v4

    .line 225
    .line 226
    move-object v9, v7

    .line 227
    goto :goto_7

    .line 228
    :cond_9
    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    if-nez v12, :cond_a

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_a
    array-length v13, v12

    .line 236
    move v14, v4

    .line 237
    :goto_5
    if-ge v14, v13, :cond_8

    .line 238
    .line 239
    aget-object v15, v12, v14

    .line 240
    .line 241
    invoke-virtual {v11, v15}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 242
    .line 243
    .line 244
    move-result-object v15

    .line 245
    if-eqz v15, :cond_c

    .line 246
    .line 247
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    if-eqz v6, :cond_c

    .line 252
    .line 253
    move/from16 v16, v4

    .line 254
    .line 255
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 256
    .line 257
    invoke-virtual {v6, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    move/from16 v6, v16

    .line 262
    .line 263
    :goto_6
    if-ge v6, v9, :cond_d

    .line 264
    .line 265
    aget-object v9, v10, v6

    .line 266
    .line 267
    if-eqz v9, :cond_b

    .line 268
    .line 269
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 270
    .line 271
    invoke-virtual {v9, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_b

    .line 280
    .line 281
    invoke-static {v15}, Ly5/k;->f(Landroid/net/LinkProperties;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    if-eqz v2, :cond_d

    .line 286
    .line 287
    move-object v9, v2

    .line 288
    goto :goto_7

    .line 289
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 290
    .line 291
    const/4 v2, 0x1

    .line 292
    const/4 v9, 0x4

    .line 293
    goto :goto_6

    .line 294
    :cond_c
    move/from16 v16, v4

    .line 295
    .line 296
    :cond_d
    add-int/lit8 v14, v14, 0x1

    .line 297
    .line 298
    move/from16 v4, v16

    .line 299
    .line 300
    const/4 v2, 0x1

    .line 301
    const v6, 0x7f130259

    .line 302
    .line 303
    .line 304
    const/4 v9, 0x4

    .line 305
    goto :goto_5

    .line 306
    :goto_7
    if-eqz v9, :cond_e

    .line 307
    .line 308
    goto :goto_8

    .line 309
    :cond_e
    invoke-static {v0}, Ly5/k;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    :goto_8
    if-eqz v9, :cond_f

    .line 314
    .line 315
    new-instance v0, Lq0/c;

    .line 316
    .line 317
    invoke-direct {v0, v9, v7}, Lq0/c;-><init>(Ljava/lang/String;Landroid/net/Network;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v8, v0}, Lq0/d;->c(Ljava/util/LinkedHashMap;Lq0/c;)V

    .line 321
    .line 322
    .line 323
    :cond_f
    iget-object v0, v3, Lq0/d;->a:Landroid/content/Context;

    .line 324
    .line 325
    const/16 v2, 0xc

    .line 326
    .line 327
    new-array v2, v2, [B

    .line 328
    .line 329
    fill-array-data v2, :array_8

    .line 330
    .line 331
    .line 332
    new-array v4, v5, [B

    .line 333
    .line 334
    fill-array-data v4, :array_9

    .line 335
    .line 336
    .line 337
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 346
    .line 347
    const/4 v2, 0x6

    .line 348
    if-nez v0, :cond_10

    .line 349
    .line 350
    goto :goto_c

    .line 351
    :cond_10
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    if-nez v4, :cond_11

    .line 356
    .line 357
    goto :goto_c

    .line 358
    :cond_11
    array-length v6, v4

    .line 359
    move/from16 v9, v16

    .line 360
    .line 361
    move v10, v9

    .line 362
    :goto_9
    if-ge v9, v6, :cond_15

    .line 363
    .line 364
    aget-object v11, v4, v9

    .line 365
    .line 366
    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 367
    .line 368
    .line 369
    move-result-object v12

    .line 370
    if-nez v12, :cond_12

    .line 371
    .line 372
    goto :goto_b

    .line 373
    :cond_12
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    .line 374
    .line 375
    .line 376
    move-result-object v12

    .line 377
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 378
    .line 379
    .line 380
    move-result-object v12

    .line 381
    :cond_13
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 382
    .line 383
    .line 384
    move-result v13

    .line 385
    if-eqz v13, :cond_14

    .line 386
    .line 387
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v13

    .line 391
    check-cast v13, Landroid/net/LinkAddress;

    .line 392
    .line 393
    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 394
    .line 395
    .line 396
    move-result-object v13

    .line 397
    instance-of v14, v13, Ljava/net/Inet4Address;

    .line 398
    .line 399
    if-eqz v14, :cond_13

    .line 400
    .line 401
    invoke-virtual {v13}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    .line 402
    .line 403
    .line 404
    move-result v14

    .line 405
    if-eqz v14, :cond_13

    .line 406
    .line 407
    invoke-virtual {v13}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 408
    .line 409
    .line 410
    move-result v14

    .line 411
    if-nez v14, :cond_13

    .line 412
    .line 413
    invoke-virtual {v13}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 414
    .line 415
    .line 416
    move-result v14

    .line 417
    if-nez v14, :cond_13

    .line 418
    .line 419
    if-ge v10, v2, :cond_13

    .line 420
    .line 421
    check-cast v13, Ljava/net/Inet4Address;

    .line 422
    .line 423
    invoke-static {v8, v13, v11}, Lq0/d;->d(Ljava/util/LinkedHashMap;Ljava/net/Inet4Address;Landroid/net/Network;)V

    .line 424
    .line 425
    .line 426
    add-int/lit8 v10, v10, 0x1

    .line 427
    .line 428
    goto :goto_a

    .line 429
    :cond_14
    :goto_b
    add-int/lit8 v9, v9, 0x1

    .line 430
    .line 431
    goto :goto_9

    .line 432
    :cond_15
    :goto_c
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    move/from16 v4, v16

    .line 437
    .line 438
    :cond_16
    :goto_d
    if-eqz v0, :cond_1a

    .line 439
    .line 440
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 441
    .line 442
    .line 443
    move-result v6

    .line 444
    if-eqz v6, :cond_1a

    .line 445
    .line 446
    if-ge v4, v2, :cond_1a

    .line 447
    .line 448
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    check-cast v6, Ljava/net/NetworkInterface;

    .line 453
    .line 454
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->isUp()Z

    .line 455
    .line 456
    .line 457
    move-result v9

    .line 458
    if-eqz v9, :cond_16

    .line 459
    .line 460
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->isLoopback()Z

    .line 461
    .line 462
    .line 463
    move-result v9

    .line 464
    if-eqz v9, :cond_17

    .line 465
    .line 466
    goto :goto_d

    .line 467
    :cond_17
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    :cond_18
    :goto_e
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 472
    .line 473
    .line 474
    move-result v9

    .line 475
    if-eqz v9, :cond_16

    .line 476
    .line 477
    if-ge v4, v2, :cond_16

    .line 478
    .line 479
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v9

    .line 483
    check-cast v9, Ljava/net/InetAddress;

    .line 484
    .line 485
    instance-of v10, v9, Ljava/net/Inet4Address;

    .line 486
    .line 487
    if-eqz v10, :cond_19

    .line 488
    .line 489
    invoke-virtual {v9}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    .line 490
    .line 491
    .line 492
    move-result v10

    .line 493
    if-eqz v10, :cond_19

    .line 494
    .line 495
    invoke-virtual {v9}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 496
    .line 497
    .line 498
    move-result v10

    .line 499
    if-nez v10, :cond_19

    .line 500
    .line 501
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 502
    .line 503
    .line 504
    move-result v10

    .line 505
    if-nez v10, :cond_19

    .line 506
    .line 507
    const/4 v10, 0x1

    .line 508
    goto :goto_f

    .line 509
    :cond_19
    move/from16 v10, v16

    .line 510
    .line 511
    :goto_f
    if-eqz v10, :cond_18

    .line 512
    .line 513
    check-cast v9, Ljava/net/Inet4Address;

    .line 514
    .line 515
    invoke-static {v8, v9, v7}, Lq0/d;->d(Ljava/util/LinkedHashMap;Ljava/net/Inet4Address;Landroid/net/Network;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .line 517
    .line 518
    add-int/lit8 v4, v4, 0x1

    .line 519
    .line 520
    goto :goto_e

    .line 521
    :catch_0
    move-exception v0

    .line 522
    goto :goto_10

    .line 523
    :catch_1
    move-exception v0

    .line 524
    :goto_10
    sget-object v2, Lq0/d;->o:Ljava/lang/String;

    .line 525
    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .line 530
    .line 531
    const/16 v6, 0x26

    .line 532
    .line 533
    new-array v6, v6, [B

    .line 534
    .line 535
    fill-array-data v6, :array_a

    .line 536
    .line 537
    .line 538
    new-array v9, v5, [B

    .line 539
    .line 540
    fill-array-data v9, :array_b

    .line 541
    .line 542
    .line 543
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v6

    .line 547
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .line 563
    .line 564
    :cond_1a
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    if-eqz v0, :cond_1b

    .line 569
    .line 570
    goto/16 :goto_15

    .line 571
    .line 572
    :cond_1b
    const/16 v0, 0x30

    .line 573
    .line 574
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    new-instance v0, Ljava/util/concurrent/ExecutorCompletionService;

    .line 579
    .line 580
    invoke-direct {v0, v2}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 581
    .line 582
    .line 583
    new-instance v4, Ljava/util/ArrayList;

    .line 584
    .line 585
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 589
    .line 590
    .line 591
    move-result-object v6

    .line 592
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 597
    .line 598
    .line 599
    move-result v8

    .line 600
    if-eqz v8, :cond_1c

    .line 601
    .line 602
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v8

    .line 606
    check-cast v8, Lq0/c;

    .line 607
    .line 608
    new-instance v9, Lf5/x;

    .line 609
    .line 610
    const/4 v10, 0x2

    .line 611
    invoke-direct {v9, v10, v3, v8}, Lf5/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v9}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 615
    .line 616
    .line 617
    move-result-object v8

    .line 618
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    goto :goto_11

    .line 622
    :cond_1c
    move/from16 v6, v16

    .line 623
    .line 624
    :goto_12
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 625
    .line 626
    .line 627
    move-result v8

    .line 628
    if-ge v6, v8, :cond_1f

    .line 629
    .line 630
    iget-object v8, v3, Lq0/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 631
    .line 632
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 633
    .line 634
    .line 635
    move-result v8
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    if-eqz v8, :cond_1f

    .line 637
    .line 638
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    .line 639
    .line 640
    .line 641
    move-result-object v8

    .line 642
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v8

    .line 646
    check-cast v8, Lq0/c;

    .line 647
    .line 648
    if-eqz v8, :cond_1e

    .line 649
    .line 650
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 651
    .line 652
    .line 653
    move-result v9

    .line 654
    move/from16 v10, v16

    .line 655
    .line 656
    :goto_13
    if-ge v10, v9, :cond_1d

    .line 657
    .line 658
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v11

    .line 662
    add-int/lit8 v10, v10, 0x1

    .line 663
    .line 664
    check-cast v11, Ljava/util/concurrent/Future;

    .line 665
    .line 666
    const/4 v12, 0x1

    .line 667
    invoke-interface {v11, v12}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 668
    .line 669
    .line 670
    goto :goto_13

    .line 671
    :catchall_0
    move-exception v0

    .line 672
    goto/16 :goto_1b

    .line 673
    .line 674
    :cond_1d
    sget-object v9, Lq0/d;->o:Ljava/lang/String;

    .line 675
    .line 676
    new-instance v10, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .line 680
    .line 681
    const/16 v11, 0x19

    .line 682
    .line 683
    new-array v11, v11, [B

    .line 684
    .line 685
    fill-array-data v11, :array_c

    .line 686
    .line 687
    .line 688
    new-array v12, v5, [B

    .line 689
    .line 690
    fill-array-data v12, :array_d

    .line 691
    .line 692
    .line 693
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v11

    .line 697
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    iget-object v11, v8, Lq0/c;->a:Ljava/lang/String;

    .line 701
    .line 702
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    const/4 v12, 0x1

    .line 706
    new-array v11, v12, [B

    .line 707
    .line 708
    const/16 v12, -0x66

    .line 709
    .line 710
    aput-byte v12, v11, v16

    .line 711
    .line 712
    new-array v12, v5, [B

    .line 713
    .line 714
    fill-array-data v12, :array_e

    .line 715
    .line 716
    .line 717
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v11

    .line 721
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    iget v11, v3, Lq0/d;->h:I

    .line 725
    .line 726
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v10

    .line 733
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 734
    .line 735
    .line 736
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 737
    .line 738
    .line 739
    move-object v7, v8

    .line 740
    goto :goto_15

    .line 741
    :catch_2
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    .line 742
    .line 743
    goto :goto_12

    .line 744
    :cond_1f
    :goto_14
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 745
    .line 746
    .line 747
    goto :goto_15

    .line 748
    :catch_3
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 753
    .line 754
    .line 755
    goto :goto_14

    .line 756
    :goto_15
    if-eqz v7, :cond_20

    .line 757
    .line 758
    iput-object v7, v3, Lq0/d;->m:Lq0/c;

    .line 759
    .line 760
    :cond_20
    move-object v8, v7

    .line 761
    :goto_16
    const-wide/16 v6, 0x5dc

    .line 762
    .line 763
    const v2, 0x7f13026a

    .line 764
    .line 765
    .line 766
    if-nez v8, :cond_21

    .line 767
    .line 768
    iget-object v0, v3, Lq0/d;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 769
    .line 770
    iget-object v4, v3, Lq0/d;->a:Landroid/content/Context;

    .line 771
    .line 772
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v2

    .line 776
    invoke-virtual {v3}, Lq0/d;->a()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v4

    .line 780
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 781
    .line 782
    .line 783
    move/from16 v5, v16

    .line 784
    .line 785
    invoke-static {v2, v4, v5}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 786
    .line 787
    .line 788
    iget-object v0, v3, Lq0/d;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 789
    .line 790
    invoke-virtual {v0}, Lcom/example/navistart/MockGPS/MockGpsService;->h()V

    .line 791
    .line 792
    .line 793
    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 794
    .line 795
    .line 796
    goto :goto_17

    .line 797
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 802
    .line 803
    .line 804
    :goto_17
    const/4 v2, 0x1

    .line 805
    goto/16 :goto_0

    .line 806
    .line 807
    :cond_21
    iget-object v0, v8, Lq0/c;->a:Ljava/lang/String;

    .line 808
    .line 809
    invoke-static {v0}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    const/4 v12, 0x1

    .line 814
    new-array v4, v12, [B

    .line 815
    .line 816
    const/16 v9, -0x55

    .line 817
    .line 818
    const/16 v16, 0x0

    .line 819
    .line 820
    aput-byte v9, v4, v16

    .line 821
    .line 822
    new-array v9, v5, [B

    .line 823
    .line 824
    fill-array-data v9, :array_f

    .line 825
    .line 826
    .line 827
    invoke-static {v4, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v4

    .line 831
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    iget v4, v3, Lq0/d;->h:I

    .line 835
    .line 836
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v4

    .line 843
    :try_start_5
    iget-object v0, v3, Lq0/d;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 844
    .line 845
    iget-object v9, v3, Lq0/d;->a:Landroid/content/Context;

    .line 846
    .line 847
    const v10, 0x7f130259

    .line 848
    .line 849
    .line 850
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v9

    .line 854
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 855
    .line 856
    .line 857
    const/4 v10, 0x0

    .line 858
    invoke-static {v9, v4, v10}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v3, v8, v4}, Lq0/d;->f(Lq0/c;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 862
    .line 863
    .line 864
    :cond_22
    :goto_18
    iget-object v0, v3, Lq0/d;->i:Ljava/net/Socket;

    .line 865
    .line 866
    invoke-virtual {v3, v0}, Lq0/d;->e(Ljava/net/Socket;)V

    .line 867
    .line 868
    .line 869
    iget-object v0, v3, Lq0/d;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 870
    .line 871
    invoke-virtual {v0}, Lcom/example/navistart/MockGPS/MockGpsService;->h()V

    .line 872
    .line 873
    .line 874
    goto :goto_19

    .line 875
    :catchall_1
    move-exception v0

    .line 876
    goto :goto_1a

    .line 877
    :catch_5
    move-exception v0

    .line 878
    :try_start_6
    iget-object v8, v3, Lq0/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 879
    .line 880
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 881
    .line 882
    .line 883
    move-result v8

    .line 884
    if-eqz v8, :cond_22

    .line 885
    .line 886
    iget-object v8, v3, Lq0/d;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 887
    .line 888
    iget-object v9, v3, Lq0/d;->a:Landroid/content/Context;

    .line 889
    .line 890
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v10

    .line 894
    if-eqz v10, :cond_23

    .line 895
    .line 896
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v11

    .line 900
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 901
    .line 902
    .line 903
    move-result v11

    .line 904
    if-eqz v11, :cond_24

    .line 905
    .line 906
    :cond_23
    iget-object v10, v3, Lq0/d;->a:Landroid/content/Context;

    .line 907
    .line 908
    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v10

    .line 912
    :cond_24
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v2

    .line 916
    const v10, 0x7f130298

    .line 917
    .line 918
    .line 919
    invoke-virtual {v9, v10, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v2

    .line 923
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 924
    .line 925
    .line 926
    const/4 v10, 0x0

    .line 927
    invoke-static {v2, v4, v10}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 928
    .line 929
    .line 930
    sget-object v2, Lq0/d;->o:Ljava/lang/String;

    .line 931
    .line 932
    new-instance v4, Ljava/lang/StringBuilder;

    .line 933
    .line 934
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 935
    .line 936
    .line 937
    const/16 v8, 0x18

    .line 938
    .line 939
    new-array v8, v8, [B

    .line 940
    .line 941
    fill-array-data v8, :array_10

    .line 942
    .line 943
    .line 944
    new-array v5, v5, [B

    .line 945
    .line 946
    fill-array-data v5, :array_11

    .line 947
    .line 948
    .line 949
    invoke-static {v8, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v5

    .line 953
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    .line 962
    .line 963
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 968
    .line 969
    .line 970
    goto :goto_18

    .line 971
    :goto_19
    :try_start_7
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_6

    .line 972
    .line 973
    .line 974
    goto/16 :goto_17

    .line 975
    .line 976
    :catch_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 977
    .line 978
    .line 979
    move-result-object v0

    .line 980
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 981
    .line 982
    .line 983
    goto/16 :goto_17

    .line 984
    .line 985
    :goto_1a
    iget-object v2, v3, Lq0/d;->i:Ljava/net/Socket;

    .line 986
    .line 987
    invoke-virtual {v3, v2}, Lq0/d;->e(Ljava/net/Socket;)V

    .line 988
    .line 989
    .line 990
    iget-object v2, v3, Lq0/d;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 991
    .line 992
    invoke-virtual {v2}, Lcom/example/navistart/MockGPS/MockGpsService;->h()V

    .line 993
    .line 994
    .line 995
    throw v0

    .line 996
    :goto_1b
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 997
    .line 998
    .line 999
    throw v0

    .line 1000
    :cond_25
    return-void

    .line 1001
    :pswitch_0
    iget-object v2, v1, Lq0/a;->c:Lq0/d;

    .line 1002
    .line 1003
    iget-object v3, v2, Lq0/d;->i:Ljava/net/Socket;

    .line 1004
    .line 1005
    iget-object v0, v2, Lq0/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1006
    .line 1007
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1008
    .line 1009
    .line 1010
    move-result v0

    .line 1011
    if-eqz v0, :cond_29

    .line 1012
    .line 1013
    if-eqz v3, :cond_29

    .line 1014
    .line 1015
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    .line 1016
    .line 1017
    .line 1018
    move-result v0

    .line 1019
    if-nez v0, :cond_29

    .line 1020
    .line 1021
    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    .line 1022
    .line 1023
    .line 1024
    move-result v0

    .line 1025
    if-nez v0, :cond_26

    .line 1026
    .line 1027
    goto :goto_1d

    .line 1028
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1029
    .line 1030
    .line 1031
    move-result-wide v4

    .line 1032
    iget-wide v6, v2, Lq0/d;->j:J

    .line 1033
    .line 1034
    const-wide/16 v8, 0x0

    .line 1035
    .line 1036
    cmp-long v0, v6, v8

    .line 1037
    .line 1038
    if-lez v0, :cond_27

    .line 1039
    .line 1040
    iget-wide v6, v2, Lq0/d;->j:J

    .line 1041
    .line 1042
    sub-long v6, v4, v6

    .line 1043
    .line 1044
    const-wide/16 v10, 0x1388

    .line 1045
    .line 1046
    cmp-long v0, v6, v10

    .line 1047
    .line 1048
    if-lez v0, :cond_27

    .line 1049
    .line 1050
    invoke-virtual {v2, v3}, Lq0/d;->e(Ljava/net/Socket;)V

    .line 1051
    .line 1052
    .line 1053
    goto :goto_1d

    .line 1054
    :cond_27
    iget-wide v6, v2, Lq0/d;->k:J

    .line 1055
    .line 1056
    cmp-long v0, v6, v8

    .line 1057
    .line 1058
    if-lez v0, :cond_28

    .line 1059
    .line 1060
    iget-wide v6, v2, Lq0/d;->k:J

    .line 1061
    .line 1062
    sub-long/2addr v4, v6

    .line 1063
    const-wide/16 v6, 0xfa0

    .line 1064
    .line 1065
    cmp-long v0, v4, v6

    .line 1066
    .line 1067
    if-lez v0, :cond_28

    .line 1068
    .line 1069
    iget-boolean v0, v2, Lq0/d;->l:Z

    .line 1070
    .line 1071
    if-nez v0, :cond_28

    .line 1072
    .line 1073
    const/4 v12, 0x1

    .line 1074
    iput-boolean v12, v2, Lq0/d;->l:Z

    .line 1075
    .line 1076
    iget-object v0, v2, Lq0/d;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 1077
    .line 1078
    invoke-virtual {v0}, Lcom/example/navistart/MockGPS/MockGpsService;->g()V

    .line 1079
    .line 1080
    .line 1081
    iget-object v0, v2, Lq0/d;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 1082
    .line 1083
    iget-object v4, v2, Lq0/d;->a:Landroid/content/Context;

    .line 1084
    .line 1085
    const v5, 0x7f130258

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v4

    .line 1092
    invoke-virtual {v2}, Lq0/d;->a()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v5

    .line 1096
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1097
    .line 1098
    .line 1099
    invoke-static {v4, v5, v12}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1100
    .line 1101
    .line 1102
    goto :goto_1c

    .line 1103
    :cond_28
    const/4 v12, 0x1

    .line 1104
    :goto_1c
    :try_start_8
    iget-object v4, v2, Lq0/d;->f:Ljava/lang/Object;

    .line 1105
    .line 1106
    monitor-enter v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1107
    :try_start_9
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v0

    .line 1111
    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1115
    .line 1116
    .line 1117
    monitor-exit v4

    .line 1118
    goto :goto_1d

    .line 1119
    :catchall_2
    move-exception v0

    .line 1120
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1121
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 1122
    :catch_7
    invoke-virtual {v2, v3}, Lq0/d;->e(Ljava/net/Socket;)V

    .line 1123
    .line 1124
    .line 1125
    :cond_29
    :goto_1d
    return-void

    .line 1126
    nop

    .line 1127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    :array_0
    .array-data 1
        0x38t
        0x10t
        0x70t
        -0x7ft
    .end array-data

    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    :array_1
    .array-data 1
        0x4ft
        0x7ct
        0x11t
        -0x11t
        -0x4at
        0x17t
        -0x29t
        0x3bt
    .end array-data

    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    :array_2
    .array-data 1
        0x65t
        -0x20t
        -0x26t
        0x3ft
    .end array-data

    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    :array_3
    .array-data 1
        0x12t
        -0x77t
        -0x44t
        0x56t
        -0x5t
        -0x6ft
        0x62t
        0x28t
    .end array-data

    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    :array_4
    .array-data 1
        0xat
        0x79t
        -0x7ct
        0x31t
        -0x70t
    .end array-data

    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    nop

    .line 1169
    :array_5
    .array-data 1
        0x79t
        0xet
        -0x18t
        0x50t
        -0x2t
        0x78t
        0x46t
        0x6et
    .end array-data

    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    :array_6
    .array-data 1
        -0x9t
        -0x41t
    .end array-data

    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    nop

    .line 1183
    :array_7
    .array-data 1
        -0x80t
        -0x2dt
        0x24t
        -0x2at
        0x1bt
        0x40t
        -0x6et
        0x22t
    .end array-data

    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    :array_8
    .array-data 1
        -0x6et
        -0x3ft
        0x3dt
        0x7bt
        -0x6ft
        0x2bt
        -0x12t
        -0x3ft
        -0x79t
        -0x39t
        0x27t
        0x6ct
    .end array-data

    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    :array_9
    .array-data 1
        -0xft
        -0x52t
        0x53t
        0x15t
        -0xct
        0x48t
        -0x66t
        -0x58t
    .end array-data

    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    :array_a
    .array-data 1
        -0x1at
        -0x38t
        -0x24t
        -0x9t
        -0x6ct
        0x74t
        0x5dt
        -0x75t
        -0x24t
        -0x7at
        -0x28t
        -0x5t
        -0x73t
        0x7ct
        0x18t
        -0x73t
        -0x2et
        -0x2et
        -0x28t
        -0x4bt
        -0x6ct
        0x7et
        0x1et
        -0x62t
        -0x21t
        -0x7at
        -0x2ct
        -0x5t
        -0x74t
        0x74t
        0xft
        -0x67t
        -0x2et
        -0x3bt
        -0x28t
        -0x1at
        -0x3et
        0x31t
    .end array-data

    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    nop

    .line 1233
    :array_b
    .array-data 1
        -0x4dt
        -0x5at
        -0x43t
        -0x6bt
        -0x8t
        0x11t
        0x7dt
        -0x1t
    .end array-data

    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    :array_c
    .array-data 1
        0x4ct
        0x43t
        0x49t
        0xct
        -0x6at
        -0x15t
        0x8t
        -0x66t
        0x6et
        0x61t
        0x3at
        0x48t
        -0x54t
        -0x3t
        0x19t
        -0x7dt
        0x7dt
        0x76t
        0x68t
        0x49t
        -0x5ft
        -0x52t
        0x1bt
        -0x68t
        0x2bt
    .end array-data

    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    nop

    .line 1259
    :array_d
    .array-data 1
        0xbt
        0x13t
        0x1at
        0x2ct
        -0x3bt
        -0x72t
        0x7at
        -0x14t
    .end array-data

    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    :array_e
    .array-data 1
        -0x60t
        -0x76t
        -0x72t
        0x3at
        0xet
        -0xbt
        0xat
        0x4ft
    .end array-data

    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    :array_f
    .array-data 1
        -0x6ft
        0xdt
        -0x41t
        -0x59t
        -0x54t
        0x7at
        -0x54t
        -0x3bt
    .end array-data

    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    :array_10
    .array-data 1
        -0x74t
        0x7at
        -0xet
        0x2ct
        -0x74t
        0x62t
        -0x14t
        0x7t
        -0x52t
        0x58t
        -0x7ft
        0x79t
        -0x4ft
        0x66t
        -0x18t
        0x10t
        -0x5et
        0x46t
        -0x40t
        0x6et
        -0x4dt
        0x62t
        -0x5ct
        0x51t
    .end array-data

    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    :array_11
    .array-data 1
        -0x35t
        0x2at
        -0x5ft
        0xct
        -0x21t
        0x7t
        -0x62t
        0x71t
    .end array-data
.end method
