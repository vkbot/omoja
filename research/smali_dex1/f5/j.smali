.class public final synthetic Lf5/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lf5/j;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lf5/j;->c:Ljava/lang/Object;

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
    .registers 16

    .line 1
    iget v0, p0, Lf5/j;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xb

    .line 5
    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch v0, :pswitch_data_5e6

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Lt1/l;

    .line 17
    .line 18
    new-instance v6, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v0, v1, Lt1/l;->c:Landroid/view/View;

    .line 24
    .line 25
    move-object v7, v0

    .line 26
    check-cast v7, Lx0/c;

    .line 27
    .line 28
    iget-object v0, v7, Lx0/c;->c:Lx0/o;

    .line 29
    .line 30
    iget-object v8, v0, Lx0/o;->u:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    :cond_23
    :goto_23
    if-ge v4, v9, :cond_8f

    .line 37
    .line 38
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    check-cast v0, Lx0/m;

    .line 45
    .line 46
    invoke-static {v0}, Lx0/c;->i(Lx0/m;)Z

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    if-eqz v10, :cond_23

    .line 51
    .line 52
    :try_start_33
    invoke-static {v0}, Lx0/c;->h(Lx0/m;)Z

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    if-eqz v10, :cond_4b

    .line 57
    .line 58
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-static {v0}, Lx0/c;->n(Lx0/m;)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    invoke-interface {v10, v11}, Lcom/example/navistart/cores/CarCmdProxy;->cargetheat(I)I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    goto :goto_5a

    .line 74
    :catch_49
    move-exception v0

    .line 75
    goto :goto_6b

    .line 76
    :cond_4b
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    invoke-static {v0}, Lx0/c;->n(Lx0/m;)I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    invoke-interface {v10, v11}, Lcom/example/navistart/cores/CarCmdProxy;->cargetvent(I)I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    :goto_5a
    if-lt v10, v5, :cond_23

    .line 92
    .line 93
    const/4 v11, 0x4

    .line 94
    if-gt v10, v11, :cond_23

    .line 95
    .line 96
    iget-object v0, v0, Lx0/m;->a:Ljava/lang/String;

    .line 97
    .line 98
    add-int/lit8 v10, v10, -0x1

    .line 99
    .line 100
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-virtual {v6, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_6a} :catch_49

    .line 105
    .line 106
    .line 107
    goto :goto_23

    .line 108
    :goto_6b
    const/16 v10, 0xc

    .line 109
    .line 110
    new-array v10, v10, [B

    .line 111
    .line 112
    fill-array-data v10, :array_61a

    .line 113
    .line 114
    .line 115
    new-array v11, v3, [B

    .line 116
    .line 117
    fill-array-data v11, :array_624

    .line 118
    .line 119
    .line 120
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    const/16 v11, 0x9

    .line 125
    .line 126
    new-array v11, v11, [B

    .line 127
    .line 128
    fill-array-data v11, :array_62c

    .line 129
    .line 130
    .line 131
    new-array v12, v3, [B

    .line 132
    .line 133
    fill-array-data v12, :array_636

    .line 134
    .line 135
    .line 136
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .line 142
    .line 143
    goto :goto_23

    .line 144
    :cond_8f
    iget-object v0, v7, Lx0/c;->b:Landroid/os/Handler;

    .line 145
    .line 146
    new-instance v3, Ls1/x0;

    .line 147
    .line 148
    invoke-direct {v3, v2, v1, v6}, Ls1/x0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_9a
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, Landroid/widget/LinearLayout;

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :pswitch_a2
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 164
    .line 165
    move-object v6, v0

    .line 166
    check-cast v6, Lw0/b1;

    .line 167
    .line 168
    monitor-enter v6

    .line 169
    :try_start_a8
    iget-boolean v0, v6, Lw0/b1;->e:Z

    .line 170
    .line 171
    if-eqz v0, :cond_b2

    .line 172
    .line 173
    monitor-exit v6

    .line 174
    goto/16 :goto_173

    .line 175
    .line 176
    :catchall_af
    move-exception v0

    .line 177
    goto/16 :goto_174

    .line 178
    .line 179
    :cond_b2
    iget v0, v6, Lw0/b1;->f:I

    .line 180
    .line 181
    monitor-exit v6
    :try_end_b5
    .catchall {:try_start_a8 .. :try_end_b5} :catchall_af

    .line 182
    :try_start_b5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    if-nez v7, :cond_bd

    .line 187
    .line 188
    goto/16 :goto_173

    .line 189
    .line 190
    :cond_bd
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-nez v8, :cond_db

    .line 195
    .line 196
    monitor-enter v6
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c4} :catch_150

    .line 197
    :try_start_c4
    iget-boolean v1, v6, Lw0/b1;->e:Z

    .line 198
    .line 199
    if-nez v1, :cond_d6

    .line 200
    .line 201
    iget v1, v6, Lw0/b1;->f:I

    .line 202
    .line 203
    if-ne v0, v1, :cond_d6

    .line 204
    .line 205
    iget-object v0, v6, Lw0/b1;->c:Lw0/l0;

    .line 206
    .line 207
    const-string v1, ""

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lw0/l0;->f0(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_d6

    .line 213
    :catchall_d4
    move-exception v0

    .line 214
    goto :goto_d9

    .line 215
    :cond_d6
    :goto_d6
    monitor-exit v6

    .line 216
    goto/16 :goto_173

    .line 217
    .line 218
    :goto_d9
    monitor-exit v6
    :try_end_da
    .catchall {:try_start_c4 .. :try_end_da} :catchall_d4

    .line 219
    :try_start_da
    throw v0

    .line 220
    :cond_db
    const-class v8, Landroid/bluetooth/BluetoothDevice;

    .line 221
    .line 222
    new-array v2, v2, [B

    .line 223
    .line 224
    fill-array-data v2, :array_63e

    .line 225
    .line 226
    .line 227
    new-array v9, v3, [B

    .line 228
    .line 229
    fill-array-data v9, :array_648

    .line 230
    .line 231
    .line 232
    invoke-static {v2, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v8, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    new-instance v8, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    :cond_fc
    :goto_fc
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_12f

    .line 258
    .line 259
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 264
    .line 265
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    if-eqz v10, :cond_118

    .line 270
    .line 271
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    const/16 v11, 0x200

    .line 276
    .line 277
    if-ne v10, v11, :cond_118

    .line 278
    .line 279
    move v10, v5

    .line 280
    goto :goto_119

    .line 281
    :cond_118
    move v10, v4

    .line 282
    :goto_119
    if-eqz v10, :cond_fc

    .line 283
    .line 284
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 285
    .line 286
    invoke-virtual {v2, v9, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    invoke-virtual {v10, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v10

    .line 294
    if-eqz v10, :cond_fc

    .line 295
    .line 296
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    goto :goto_fc

    .line 304
    :cond_12f
    monitor-enter v6
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_130} :catch_150

    .line 305
    :try_start_130
    iget-boolean v1, v6, Lw0/b1;->e:Z

    .line 306
    .line 307
    if-nez v1, :cond_14c

    .line 308
    .line 309
    iget v1, v6, Lw0/b1;->f:I

    .line 310
    .line 311
    if-ne v0, v1, :cond_14c

    .line 312
    .line 313
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-ne v0, v5, :cond_14c

    .line 318
    .line 319
    iget-object v0, v6, Lw0/b1;->c:Lw0/l0;

    .line 320
    .line 321
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    check-cast v1, Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {v0, v1}, Lw0/l0;->e0(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    goto :goto_14c

    .line 331
    :catchall_14a
    move-exception v0

    .line 332
    goto :goto_14e

    .line 333
    :cond_14c
    :goto_14c
    monitor-exit v6

    .line 334
    goto :goto_173

    .line 335
    :goto_14e
    monitor-exit v6
    :try_end_14f
    .catchall {:try_start_130 .. :try_end_14f} :catchall_14a

    .line 336
    :try_start_14f
    throw v0
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_150} :catch_150

    .line 337
    :catch_150
    const/16 v0, 0xe

    .line 338
    .line 339
    new-array v0, v0, [B

    .line 340
    .line 341
    fill-array-data v0, :array_650

    .line 342
    .line 343
    .line 344
    new-array v1, v3, [B

    .line 345
    .line 346
    fill-array-data v1, :array_65c

    .line 347
    .line 348
    .line 349
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    const/16 v1, 0x4a

    .line 354
    .line 355
    new-array v1, v1, [B

    .line 356
    .line 357
    fill-array-data v1, :array_664

    .line 358
    .line 359
    .line 360
    new-array v2, v3, [B

    .line 361
    .line 362
    fill-array-data v2, :array_68e

    .line 363
    .line 364
    .line 365
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    :goto_173
    return-void

    .line 373
    :goto_174
    :try_start_174
    monitor-exit v6
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_af

    .line 374
    throw v0

    .line 375
    :pswitch_176
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v0, Ln/p;

    .line 378
    .line 379
    iget-object v0, v0, Ln/p;->c:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v0, Lw0/x;

    .line 382
    .line 383
    iget-object v0, v0, Lw0/x;->m:Landroid/content/Context;

    .line 384
    .line 385
    const v1, 0x7f13049b

    .line 386
    .line 387
    .line 388
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    :pswitch_18b
    const-string v0, ""

    .line 397
    .line 398
    iget-object v1, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast v1, Lw0/g;

    .line 401
    .line 402
    :try_start_191
    iget-object v2, v1, Lw0/g;->e:Landroid/media/AudioRecord;

    .line 403
    .line 404
    if-eqz v2, :cond_202

    .line 405
    .line 406
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    const/4 v3, 0x3

    .line 411
    if-eq v2, v3, :cond_19d

    .line 412
    .line 413
    goto :goto_202

    .line 414
    :cond_19d
    iget-object v2, v1, Lw0/g;->e:Landroid/media/AudioRecord;

    .line 415
    .line 416
    iget-object v3, v1, Lw0/g;->j:[B

    .line 417
    .line 418
    array-length v6, v3

    .line 419
    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/media/AudioRecord;->read([BIII)I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    const-wide/16 v3, 0x0

    .line 424
    .line 425
    if-gtz v2, :cond_1cd

    .line 426
    .line 427
    iget-object v2, v1, Lw0/g;->r:Ljava/lang/String;

    .line 428
    .line 429
    if-eqz v2, :cond_209

    .line 430
    .line 431
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    if-nez v2, :cond_209

    .line 440
    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 442
    .line 443
    .line 444
    move-result-wide v5

    .line 445
    iget-wide v7, v1, Lw0/g;->s:J

    .line 446
    .line 447
    cmp-long v2, v5, v7

    .line 448
    .line 449
    if-gez v2, :cond_1c3

    .line 450
    .line 451
    goto :goto_209

    .line 452
    :cond_1c3
    iget-object v2, v1, Lw0/g;->r:Ljava/lang/String;

    .line 453
    .line 454
    iput-object v0, v1, Lw0/g;->r:Ljava/lang/String;

    .line 455
    .line 456
    iput-wide v3, v1, Lw0/g;->s:J

    .line 457
    .line 458
    invoke-virtual {v1, v2}, Lw0/g;->i(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    goto :goto_209

    .line 462
    :cond_1cd
    sget-object v5, Lw0/g;->u:Lw0/b;

    .line 463
    .line 464
    sget-object v6, Lw0/b;->d:Lw0/b;

    .line 465
    .line 466
    if-eq v5, v6, :cond_1d8

    .line 467
    .line 468
    sget-object v5, Lw0/b;->c:Lw0/b;

    .line 469
    .line 470
    invoke-virtual {v1, v5}, Lw0/g;->j(Lw0/b;)V

    .line 471
    .line 472
    .line 473
    :cond_1d8
    invoke-virtual {v1, v2}, Lw0/g;->k(I)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-virtual {v1, v2}, Lw0/g;->m(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    iget-object v2, v1, Lw0/g;->r:Ljava/lang/String;

    .line 481
    .line 482
    if-eqz v2, :cond_209

    .line 483
    .line 484
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    if-nez v2, :cond_209

    .line 493
    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 495
    .line 496
    .line 497
    move-result-wide v5

    .line 498
    iget-wide v7, v1, Lw0/g;->s:J

    .line 499
    .line 500
    cmp-long v2, v5, v7

    .line 501
    .line 502
    if-gez v2, :cond_1f8

    .line 503
    .line 504
    goto :goto_209

    .line 505
    :cond_1f8
    iget-object v2, v1, Lw0/g;->r:Ljava/lang/String;

    .line 506
    .line 507
    iput-object v0, v1, Lw0/g;->r:Ljava/lang/String;

    .line 508
    .line 509
    iput-wide v3, v1, Lw0/g;->s:J

    .line 510
    .line 511
    invoke-virtual {v1, v2}, Lw0/g;->i(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    goto :goto_209

    .line 515
    :cond_202
    :goto_202
    invoke-virtual {v1}, Lw0/g;->n()V
    :try_end_205
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_205} :catch_206

    .line 516
    .line 517
    .line 518
    goto :goto_209

    .line 519
    :catch_206
    invoke-virtual {v1}, Lw0/g;->n()V

    .line 520
    .line 521
    .line 522
    :cond_209
    :goto_209
    return-void

    .line 523
    :pswitch_20a
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v0, Lt1/k;

    .line 526
    .line 527
    iget-object v1, v0, Lt1/k;->b:Lt1/j;

    .line 528
    .line 529
    iget-object v0, v0, Lt1/k;->d:Lcom/example/navistart/LounchB;

    .line 530
    .line 531
    invoke-virtual {v1, v0}, Lt1/j;->d(Landroid/content/Context;)V

    .line 532
    .line 533
    .line 534
    return-void

    .line 535
    :pswitch_216
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v0, Lt1/a;

    .line 538
    .line 539
    iget-object v0, v0, Lt1/a;->c:Landroid/widget/LinearLayout;

    .line 540
    .line 541
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 542
    .line 543
    .line 544
    return-void

    .line 545
    :pswitch_220
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 546
    .line 547
    move-object v7, v0

    .line 548
    check-cast v7, Ls1/f0;

    .line 549
    .line 550
    iget-object v0, v7, Ls1/f0;->c:Ls1/q0;

    .line 551
    .line 552
    iget v1, v0, Ls1/q0;->F:I

    .line 553
    .line 554
    iget v2, v0, Ls1/q0;->G:I

    .line 555
    .line 556
    iget v3, v0, Ls1/q0;->H:I

    .line 557
    .line 558
    iget v4, v0, Ls1/q0;->I:I

    .line 559
    .line 560
    :try_start_22f
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 561
    .line 562
    .line 563
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 564
    .line 565
    .line 566
    move-result-object v6

    .line 567
    invoke-interface {v6, v5}, Lcom/example/navistart/cores/CarCmdProxy;->cargetheat(I)I

    .line 568
    .line 569
    .line 570
    move-result v6

    .line 571
    invoke-static {v6}, Ls1/q0;->w(I)I

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 576
    .line 577
    .line 578
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 579
    .line 580
    .line 581
    move-result-object v6

    .line 582
    invoke-interface {v6, v5}, Lcom/example/navistart/cores/CarCmdProxy;->cargetvent(I)I

    .line 583
    .line 584
    .line 585
    move-result v5

    .line 586
    invoke-static {v5}, Ls1/q0;->w(I)I

    .line 587
    .line 588
    .line 589
    move-result v2

    .line 590
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 591
    .line 592
    .line 593
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 594
    .line 595
    .line 596
    move-result-object v5

    .line 597
    const/4 v6, 0x2

    .line 598
    invoke-interface {v5, v6}, Lcom/example/navistart/cores/CarCmdProxy;->cargetheat(I)I

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    invoke-static {v5}, Ls1/q0;->w(I)I

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 607
    .line 608
    .line 609
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 610
    .line 611
    .line 612
    move-result-object v5

    .line 613
    invoke-interface {v5, v6}, Lcom/example/navistart/cores/CarCmdProxy;->cargetvent(I)I

    .line 614
    .line 615
    .line 616
    move-result v5

    .line 617
    invoke-static {v5}, Ls1/q0;->w(I)I

    .line 618
    .line 619
    .line 620
    move-result v4
    :try_end_26c
    .catchall {:try_start_22f .. :try_end_26c} :catchall_26c

    .line 621
    :catchall_26c
    move v8, v1

    .line 622
    move v9, v2

    .line 623
    move v10, v3

    .line 624
    move v11, v4

    .line 625
    iget-object v0, v0, Ls1/q0;->r:Landroid/os/Handler;

    .line 626
    .line 627
    new-instance v6, Ls1/g0;

    .line 628
    .line 629
    invoke-direct/range {v6 .. v11}, Ls1/g0;-><init>(Ls1/f0;IIII)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 633
    .line 634
    .line 635
    return-void

    .line 636
    :pswitch_27b
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 637
    .line 638
    check-cast v0, Ls1/b;

    .line 639
    .line 640
    invoke-virtual {v0}, Ls1/b;->a()V

    .line 641
    .line 642
    .line 643
    return-void

    .line 644
    :pswitch_283
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 645
    .line 646
    check-cast v0, Lb1/m;

    .line 647
    .line 648
    iget-object v1, v0, Lb1/m;->d:Ljava/lang/Object;

    .line 649
    .line 650
    check-cast v1, Lt1/j;

    .line 651
    .line 652
    iget-object v0, v0, Lb1/m;->f:Ljava/lang/Object;

    .line 653
    .line 654
    check-cast v0, Lcom/example/navistart/LounchB;

    .line 655
    .line 656
    invoke-virtual {v1, v0}, Lt1/j;->d(Landroid/content/Context;)V

    .line 657
    .line 658
    .line 659
    return-void

    .line 660
    :pswitch_293
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 661
    .line 662
    move-object v2, v0

    .line 663
    check-cast v2, Lq0/t;

    .line 664
    .line 665
    iget-object v6, v2, Lq0/t;->c:Landroid/hardware/usb/UsbManager;

    .line 666
    .line 667
    iget-object v7, v2, Lq0/t;->a:Landroid/content/Context;

    .line 668
    .line 669
    iget-object v8, v2, Lq0/t;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 670
    .line 671
    :goto_29e
    iget-object v0, v2, Lq0/t;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 672
    .line 673
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    if-eqz v0, :cond_3c8

    .line 678
    .line 679
    iget-boolean v0, v2, Lq0/t;->k:Z

    .line 680
    .line 681
    if-eqz v0, :cond_2ab

    .line 682
    .line 683
    goto :goto_2b7

    .line 684
    :cond_2ab
    :try_start_2ab
    invoke-static {}, Lq0/t;->c()Ljava/lang/Boolean;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 689
    .line 690
    .line 691
    move-result v0

    .line 692
    if-eqz v0, :cond_2b7

    .line 693
    .line 694
    iput-boolean v5, v2, Lq0/t;->k:Z
    :try_end_2b7
    .catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_2b7} :catch_2b7

    .line 695
    .line 696
    :catch_2b7
    :cond_2b7
    :goto_2b7
    const-wide/16 v9, 0x5dc

    .line 697
    .line 698
    if-nez v6, :cond_2db

    .line 699
    .line 700
    const v0, 0x7f13029d

    .line 701
    .line 702
    .line 703
    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    invoke-virtual {v2}, Lq0/t;->a()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v11

    .line 711
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 712
    .line 713
    .line 714
    invoke-static {v0, v11, v4}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v8}, Lcom/example/navistart/MockGPS/MockGpsService;->h()V

    .line 718
    .line 719
    .line 720
    :try_start_2cf
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2d2
    .catch Ljava/lang/InterruptedException; {:try_start_2cf .. :try_end_2d2} :catch_2d3

    .line 721
    .line 722
    .line 723
    goto :goto_29e

    .line 724
    :catch_2d3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 729
    .line 730
    .line 731
    goto :goto_29e

    .line 732
    :cond_2db
    iget-object v0, v2, Lq0/t;->c:Landroid/hardware/usb/UsbManager;

    .line 733
    .line 734
    if-nez v0, :cond_2e1

    .line 735
    .line 736
    :cond_2df
    :goto_2df
    move-object v0, v1

    .line 737
    goto :goto_2f8

    .line 738
    :cond_2e1
    invoke-static {}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->getDefaultProber()Lcom/hoho/android/usbserial/driver/UsbSerialProber;

    .line 739
    .line 740
    .line 741
    move-result-object v11

    .line 742
    invoke-virtual {v11, v0}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    if-eqz v0, :cond_2df

    .line 747
    .line 748
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 749
    .line 750
    .line 751
    move-result v11

    .line 752
    if-eqz v11, :cond_2f2

    .line 753
    .line 754
    goto :goto_2df

    .line 755
    :cond_2f2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    check-cast v0, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    .line 760
    .line 761
    :goto_2f8
    if-nez v0, :cond_31a

    .line 762
    .line 763
    const v0, 0x7f1302a0

    .line 764
    .line 765
    .line 766
    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    invoke-virtual {v2}, Lq0/t;->a()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v11

    .line 774
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    .line 776
    .line 777
    invoke-static {v0, v11, v4}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v8}, Lcom/example/navistart/MockGPS/MockGpsService;->h()V

    .line 781
    .line 782
    .line 783
    :try_start_30e
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_311
    .catch Ljava/lang/InterruptedException; {:try_start_30e .. :try_end_311} :catch_312

    .line 784
    .line 785
    .line 786
    goto :goto_29e

    .line 787
    :catch_312
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 792
    .line 793
    .line 794
    goto :goto_29e

    .line 795
    :cond_31a
    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    .line 796
    .line 797
    .line 798
    move-result-object v11

    .line 799
    invoke-virtual {v2, v11}, Lq0/t;->f(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v12

    .line 803
    invoke-virtual {v6, v11}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 804
    .line 805
    .line 806
    move-result v13

    .line 807
    if-nez v13, :cond_368

    .line 808
    .line 809
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 810
    .line 811
    const/16 v9, 0x1f

    .line 812
    .line 813
    if-lt v0, v9, :cond_331

    .line 814
    .line 815
    const/high16 v0, 0xa000000

    .line 816
    .line 817
    goto :goto_333

    .line 818
    :cond_331
    const/high16 v0, 0x8000000

    .line 819
    .line 820
    :goto_333
    new-instance v9, Landroid/content/Intent;

    .line 821
    .line 822
    sget-object v10, Lq0/t;->o:Ljava/lang/String;

    .line 823
    .line 824
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v10

    .line 831
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    .line 833
    .line 834
    invoke-static {v7, v4, v9, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    invoke-virtual {v6, v11, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 839
    .line 840
    .line 841
    const v0, 0x7f1302a3

    .line 842
    .line 843
    .line 844
    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 849
    .line 850
    .line 851
    invoke-static {v0, v12, v4}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v8}, Lcom/example/navistart/MockGPS/MockGpsService;->h()V

    .line 855
    .line 856
    .line 857
    const-wide/16 v9, 0xbb8

    .line 858
    .line 859
    :try_start_35a
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_35d
    .catch Ljava/lang/InterruptedException; {:try_start_35a .. :try_end_35d} :catch_35f

    .line 860
    .line 861
    .line 862
    goto/16 :goto_29e

    .line 863
    .line 864
    :catch_35f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 869
    .line 870
    .line 871
    goto/16 :goto_29e

    .line 872
    .line 873
    :cond_368
    :try_start_368
    invoke-virtual {v2, v0, v12}, Lq0/t;->e(Lcom/hoho/android/usbserial/driver/UsbSerialDriver;Ljava/lang/String;)V
    :try_end_36b
    .catch Ljava/io/IOException; {:try_start_368 .. :try_end_36b} :catch_374
    .catchall {:try_start_368 .. :try_end_36b} :catchall_372

    .line 874
    .line 875
    .line 876
    :goto_36b
    invoke-virtual {v2}, Lq0/t;->d()V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v8}, Lcom/example/navistart/MockGPS/MockGpsService;->h()V

    .line 880
    .line 881
    .line 882
    goto :goto_3b3

    .line 883
    :catchall_372
    move-exception v0

    .line 884
    goto :goto_3c1

    .line 885
    :catch_374
    move-exception v0

    .line 886
    :try_start_375
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v11

    .line 890
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v11

    .line 894
    const v13, 0x7f1302a5

    .line 895
    .line 896
    .line 897
    invoke-virtual {v7, v13, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v11

    .line 901
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    .line 903
    .line 904
    invoke-static {v11, v12, v4}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 905
    .line 906
    .line 907
    sget-object v11, Lq0/t;->n:Ljava/lang/String;

    .line 908
    .line 909
    new-instance v12, Ljava/lang/StringBuilder;

    .line 910
    .line 911
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 912
    .line 913
    .line 914
    const/16 v13, 0x15

    .line 915
    .line 916
    new-array v13, v13, [B

    .line 917
    .line 918
    fill-array-data v13, :array_696

    .line 919
    .line 920
    .line 921
    new-array v14, v3, [B

    .line 922
    .line 923
    fill-array-data v14, :array_6a6

    .line 924
    .line 925
    .line 926
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v13

    .line 930
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b2
    .catchall {:try_start_375 .. :try_end_3b2} :catchall_372

    .line 945
    .line 946
    .line 947
    goto :goto_36b

    .line 948
    :goto_3b3
    :try_start_3b3
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b6
    .catch Ljava/lang/InterruptedException; {:try_start_3b3 .. :try_end_3b6} :catch_3b8

    .line 949
    .line 950
    .line 951
    goto/16 :goto_29e

    .line 952
    .line 953
    :catch_3b8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 958
    .line 959
    .line 960
    goto/16 :goto_29e

    .line 961
    .line 962
    :goto_3c1
    invoke-virtual {v2}, Lq0/t;->d()V

    .line 963
    .line 964
    .line 965
    invoke-virtual {v8}, Lcom/example/navistart/MockGPS/MockGpsService;->h()V

    .line 966
    .line 967
    .line 968
    throw v0

    .line 969
    :cond_3c8
    return-void

    .line 970
    :pswitch_3c9
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 971
    .line 972
    move-object v1, v0

    .line 973
    check-cast v1, Lq0/r;

    .line 974
    .line 975
    iget-object v2, v1, Lq0/r;->a:Landroid/content/Context;

    .line 976
    .line 977
    iget-object v6, v1, Lq0/r;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 978
    .line 979
    :goto_3d2
    iget-object v0, v1, Lq0/r;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 980
    .line 981
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 982
    .line 983
    .line 984
    move-result v0

    .line 985
    if-eqz v0, :cond_488

    .line 986
    .line 987
    iget-boolean v0, v1, Lq0/r;->p:Z

    .line 988
    .line 989
    if-eqz v0, :cond_3df

    .line 990
    .line 991
    goto :goto_3eb

    .line 992
    :cond_3df
    :try_start_3df
    invoke-static {}, Lq0/r;->c()Ljava/lang/Boolean;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 997
    .line 998
    .line 999
    move-result v0

    .line 1000
    if-eqz v0, :cond_3eb

    .line 1001
    .line 1002
    iput-boolean v5, v1, Lq0/r;->p:Z
    :try_end_3eb
    .catch Ljava/lang/Exception; {:try_start_3df .. :try_end_3eb} :catch_3eb

    .line 1003
    .line 1004
    :catch_3eb
    :cond_3eb
    :goto_3eb
    invoke-virtual {v1}, Lq0/r;->g()Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    const-wide/16 v7, 0x5dc

    .line 1009
    .line 1010
    if-nez v0, :cond_40e

    .line 1011
    .line 1012
    iget-object v0, v1, Lq0/r;->i:Ljava/lang/String;

    .line 1013
    .line 1014
    invoke-virtual {v1}, Lq0/r;->a()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v9

    .line 1018
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1019
    .line 1020
    .line 1021
    invoke-static {v0, v9, v4}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v6}, Lcom/example/navistart/MockGPS/MockGpsService;->h()V

    .line 1025
    .line 1026
    .line 1027
    :try_start_402
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_405
    .catch Ljava/lang/InterruptedException; {:try_start_402 .. :try_end_405} :catch_406

    .line 1028
    .line 1029
    .line 1030
    goto :goto_3d2

    .line 1031
    :catch_406
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v0

    .line 1035
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1036
    .line 1037
    .line 1038
    goto :goto_3d2

    .line 1039
    :cond_40e
    iget v9, v1, Lq0/r;->n:I

    .line 1040
    .line 1041
    if-lez v9, :cond_415

    .line 1042
    .line 1043
    iget v9, v1, Lq0/r;->n:I

    .line 1044
    .line 1045
    goto :goto_417

    .line 1046
    :cond_415
    iget v9, v1, Lq0/r;->g:I

    .line 1047
    .line 1048
    :goto_417
    invoke-virtual {v1, v9, v0}, Lq0/r;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v9

    .line 1052
    const v10, 0x7f130259

    .line 1053
    .line 1054
    .line 1055
    :try_start_41e
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v10

    .line 1059
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1060
    .line 1061
    .line 1062
    invoke-static {v10, v9, v4}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v1, v0, v9}, Lq0/r;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42b
    .catch Ljava/io/IOException; {:try_start_41e .. :try_end_42b} :catch_434
    .catchall {:try_start_41e .. :try_end_42b} :catchall_432

    .line 1066
    .line 1067
    .line 1068
    :goto_42b
    invoke-virtual {v1}, Lq0/r;->d()V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v6}, Lcom/example/navistart/MockGPS/MockGpsService;->h()V

    .line 1072
    .line 1073
    .line 1074
    goto :goto_473

    .line 1075
    :catchall_432
    move-exception v0

    .line 1076
    goto :goto_481

    .line 1077
    :catch_434
    move-exception v0

    .line 1078
    :try_start_435
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v10

    .line 1082
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v10

    .line 1086
    const v11, 0x7f130298

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v2, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v10

    .line 1093
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1094
    .line 1095
    .line 1096
    invoke-static {v10, v9, v4}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1097
    .line 1098
    .line 1099
    iget-object v9, v1, Lq0/r;->j:Ljava/lang/String;

    .line 1100
    .line 1101
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1104
    .line 1105
    .line 1106
    const/16 v11, 0x1d

    .line 1107
    .line 1108
    new-array v11, v11, [B

    .line 1109
    .line 1110
    fill-array-data v11, :array_6ae

    .line 1111
    .line 1112
    .line 1113
    new-array v12, v3, [B

    .line 1114
    .line 1115
    fill-array-data v12, :array_6c2

    .line 1116
    .line 1117
    .line 1118
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v11

    .line 1122
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v0

    .line 1136
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_472
    .catchall {:try_start_435 .. :try_end_472} :catchall_432

    .line 1137
    .line 1138
    .line 1139
    goto :goto_42b

    .line 1140
    :goto_473
    :try_start_473
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_476
    .catch Ljava/lang/InterruptedException; {:try_start_473 .. :try_end_476} :catch_478

    .line 1141
    .line 1142
    .line 1143
    goto/16 :goto_3d2

    .line 1144
    .line 1145
    :catch_478
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1150
    .line 1151
    .line 1152
    goto/16 :goto_3d2

    .line 1153
    .line 1154
    :goto_481
    invoke-virtual {v1}, Lq0/r;->d()V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v6}, Lcom/example/navistart/MockGPS/MockGpsService;->h()V

    .line 1158
    .line 1159
    .line 1160
    throw v0

    .line 1161
    :cond_488
    return-void

    .line 1162
    :pswitch_489
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 1163
    .line 1164
    check-cast v0, Lq0/p;

    .line 1165
    .line 1166
    :goto_48d
    iget-object v1, v0, Lq0/p;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1167
    .line 1168
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1169
    .line 1170
    .line 1171
    move-result v1

    .line 1172
    if-eqz v1, :cond_4ef

    .line 1173
    .line 1174
    iget-boolean v1, v0, Lq0/p;->e:Z

    .line 1175
    .line 1176
    if-eqz v1, :cond_49a

    .line 1177
    .line 1178
    goto :goto_4a6

    .line 1179
    :cond_49a
    :try_start_49a
    invoke-static {}, Lq0/p;->c()Ljava/lang/Boolean;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v1

    .line 1183
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1184
    .line 1185
    .line 1186
    move-result v1

    .line 1187
    if-eqz v1, :cond_4a6

    .line 1188
    .line 1189
    iput-boolean v5, v0, Lq0/p;->e:Z
    :try_end_4a6
    .catch Ljava/lang/Exception; {:try_start_49a .. :try_end_4a6} :catch_4a6

    .line 1190
    .line 1191
    :catch_4a6
    :cond_4a6
    :goto_4a6
    iget-wide v1, v0, Lq0/p;->h:J

    .line 1192
    .line 1193
    iget-boolean v3, v0, Lq0/p;->f:Z

    .line 1194
    .line 1195
    if-eqz v3, :cond_4e1

    .line 1196
    .line 1197
    iget-boolean v3, v0, Lq0/p;->g:Z

    .line 1198
    .line 1199
    if-eqz v3, :cond_4e1

    .line 1200
    .line 1201
    const-wide/16 v3, 0x0

    .line 1202
    .line 1203
    cmp-long v3, v1, v3

    .line 1204
    .line 1205
    if-lez v3, :cond_4e1

    .line 1206
    .line 1207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1208
    .line 1209
    .line 1210
    move-result-wide v3

    .line 1211
    sub-long/2addr v3, v1

    .line 1212
    const-wide/16 v1, 0xfa0

    .line 1213
    .line 1214
    cmp-long v1, v3, v1

    .line 1215
    .line 1216
    if-lez v1, :cond_4e1

    .line 1217
    .line 1218
    iget-boolean v1, v0, Lq0/p;->i:Z

    .line 1219
    .line 1220
    if-nez v1, :cond_4e1

    .line 1221
    .line 1222
    iput-boolean v5, v0, Lq0/p;->i:Z

    .line 1223
    .line 1224
    iget-object v1, v0, Lq0/p;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 1225
    .line 1226
    invoke-virtual {v1}, Lcom/example/navistart/MockGPS/MockGpsService;->g()V

    .line 1227
    .line 1228
    .line 1229
    iget-object v1, v0, Lq0/p;->b:Lcom/example/navistart/MockGPS/MockGpsService;

    .line 1230
    .line 1231
    iget-object v2, v0, Lq0/p;->a:Landroid/content/Context;

    .line 1232
    .line 1233
    const v3, 0x7f130258

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v2

    .line 1240
    invoke-virtual {v0}, Lq0/p;->a()Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v3

    .line 1244
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1245
    .line 1246
    .line 1247
    invoke-static {v2, v3, v5}, Lcom/example/navistart/MockGPS/MockGpsService;->j(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1248
    .line 1249
    .line 1250
    :cond_4e1
    const-wide/16 v1, 0x64

    .line 1251
    .line 1252
    :try_start_4e3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4e6
    .catch Ljava/lang/InterruptedException; {:try_start_4e3 .. :try_end_4e6} :catch_4e7

    .line 1253
    .line 1254
    .line 1255
    goto :goto_48d

    .line 1256
    :catch_4e7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v1

    .line 1260
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1261
    .line 1262
    .line 1263
    goto :goto_48d

    .line 1264
    :cond_4ef
    return-void

    .line 1265
    :pswitch_4f0
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 1266
    .line 1267
    check-cast v0, Lo7/g4;

    .line 1268
    .line 1269
    iget-object v0, v0, Lo7/g4;->e:Lo7/h4;

    .line 1270
    .line 1271
    iget-object v1, v0, Lo7/h4;->c:Lo7/j;

    .line 1272
    .line 1273
    new-instance v2, Lcom/bumptech/glide/m;

    .line 1274
    .line 1275
    const/16 v3, 0x16

    .line 1276
    .line 1277
    invoke-direct {v2, v3, v0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v1, v2}, Lo7/j;->a(Lcom/bumptech/glide/m;)V

    .line 1281
    .line 1282
    .line 1283
    return-void

    .line 1284
    :pswitch_503
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 1285
    .line 1286
    check-cast v0, Lo7/a3;

    .line 1287
    .line 1288
    invoke-virtual {v0}, Lo7/a3;->e()V

    .line 1289
    .line 1290
    .line 1291
    return-void

    .line 1292
    :pswitch_50b
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 1293
    .line 1294
    check-cast v0, Lo7/j;

    .line 1295
    .line 1296
    iget-object v2, v0, Lo7/j;->d:Ll/d;

    .line 1297
    .line 1298
    if-eqz v2, :cond_522

    .line 1299
    .line 1300
    iget-object v3, v2, Ll/d;->c:Ljava/lang/Object;

    .line 1301
    .line 1302
    check-cast v3, Ln7/j1;

    .line 1303
    .line 1304
    iget-boolean v4, v3, Ln7/j1;->d:Z

    .line 1305
    .line 1306
    if-nez v4, :cond_522

    .line 1307
    .line 1308
    iget-boolean v3, v3, Ln7/j1;->c:Z

    .line 1309
    .line 1310
    if-nez v3, :cond_522

    .line 1311
    .line 1312
    invoke-virtual {v2}, Ll/d;->j()V

    .line 1313
    .line 1314
    .line 1315
    :cond_522
    iput-object v1, v0, Lo7/j;->c:Lo7/r0;

    .line 1316
    .line 1317
    return-void

    .line 1318
    :pswitch_525
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 1319
    .line 1320
    check-cast v0, Lm0/w1;

    .line 1321
    .line 1322
    iget-object v1, v0, Lm0/w1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 1323
    .line 1324
    iget-object v0, v0, Lm0/w1;->f:Ljava/util/ArrayList;

    .line 1325
    .line 1326
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1327
    .line 1328
    .line 1329
    move-result v0

    .line 1330
    sub-int/2addr v0, v5

    .line 1331
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1332
    .line 1333
    .line 1334
    return-void

    .line 1335
    :pswitch_536
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 1336
    .line 1337
    check-cast v0, Lm0/e0;

    .line 1338
    .line 1339
    sget-object v1, Lm0/e0;->A:Ljava/lang/String;

    .line 1340
    .line 1341
    invoke-virtual {v0}, Lm0/e0;->z()V

    .line 1342
    .line 1343
    .line 1344
    iget-object v1, v0, Lm0/e0;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 1345
    .line 1346
    if-nez v1, :cond_544

    .line 1347
    .line 1348
    goto :goto_54d

    .line 1349
    :cond_544
    new-instance v2, Lc7/e;

    .line 1350
    .line 1351
    const/4 v3, 0x7

    .line 1352
    invoke-direct {v2, v0, v4, v3}, Lc7/e;-><init>(Ljava/lang/Object;ZI)V

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1356
    .line 1357
    .line 1358
    :goto_54d
    return-void

    .line 1359
    :pswitch_54e
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 1360
    .line 1361
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 1362
    .line 1363
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 1364
    .line 1365
    .line 1366
    return-void

    .line 1367
    :pswitch_556
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 1368
    .line 1369
    check-cast v0, Lb1/m;

    .line 1370
    .line 1371
    iget-object v1, v0, Lb1/m;->f:Ljava/lang/Object;

    .line 1372
    .line 1373
    check-cast v1, Ll2/c;

    .line 1374
    .line 1375
    new-instance v2, Landroidx/fragment/app/h;

    .line 1376
    .line 1377
    const/16 v3, 0x10

    .line 1378
    .line 1379
    invoke-direct {v2, v3, v0}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 1380
    .line 1381
    .line 1382
    check-cast v1, Lk2/h;

    .line 1383
    .line 1384
    invoke-virtual {v1, v2}, Lk2/h;->c0(Ll2/b;)Ljava/lang/Object;

    .line 1385
    .line 1386
    .line 1387
    return-void

    .line 1388
    :pswitch_56b
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 1389
    .line 1390
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1391
    .line 1392
    const/16 v1, 0x10

    .line 1393
    .line 1394
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 1395
    .line 1396
    .line 1397
    return-void

    .line 1398
    :pswitch_575
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 1399
    .line 1400
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 1401
    .line 1402
    invoke-static {v0}, Lcom/google/android/material/button/MaterialButton;->a(Lcom/google/android/material/button/MaterialButton;)V

    .line 1403
    .line 1404
    .line 1405
    return-void

    .line 1406
    :pswitch_57d
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 1407
    .line 1408
    check-cast v0, Lh0/b;

    .line 1409
    .line 1410
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v0

    .line 1414
    invoke-interface {v0}, Lcom/example/navistart/cores/InterC;->run()Ljava/lang/String;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v0

    .line 1418
    sget-object v1, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 1419
    .line 1420
    invoke-static {v0, v1}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 1421
    .line 1422
    .line 1423
    return-void

    .line 1424
    :pswitch_58f
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 1425
    .line 1426
    check-cast v0, Lg0/e;

    .line 1427
    .line 1428
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1429
    .line 1430
    .line 1431
    const/4 v1, 0x0

    .line 1432
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1433
    .line 1434
    .line 1435
    const v1, 0x3f4ccccd    # 0.8f

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1442
    .line 1443
    .line 1444
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 1445
    .line 1446
    .line 1447
    move-result v1

    .line 1448
    int-to-float v1, v1

    .line 1449
    const/high16 v2, 0x40000000    # 2.0f

    .line 1450
    .line 1451
    div-float/2addr v1, v2

    .line 1452
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1453
    .line 1454
    .line 1455
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 1456
    .line 1457
    .line 1458
    move-result v1

    .line 1459
    int-to-float v1, v1

    .line 1460
    div-float/2addr v1, v2

    .line 1461
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1462
    .line 1463
    .line 1464
    iget-object v0, v0, Lg0/e;->h:Landroid/view/ViewPropertyAnimator;

    .line 1465
    .line 1466
    if-eqz v0, :cond_5d2

    .line 1467
    .line 1468
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1469
    .line 1470
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v0

    .line 1474
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v0

    .line 1478
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v0

    .line 1482
    const-wide/16 v1, 0x12c

    .line 1483
    .line 1484
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v0

    .line 1488
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1489
    .line 1490
    .line 1491
    :cond_5d2
    return-void

    .line 1492
    :pswitch_5d3
    iget-object v0, p0, Lf5/j;->c:Ljava/lang/Object;

    .line 1493
    .line 1494
    check-cast v0, Lf5/k;

    .line 1495
    .line 1496
    iget-boolean v1, v0, Lf5/k;->c:Z

    .line 1497
    .line 1498
    if-eqz v1, :cond_5df

    .line 1499
    .line 1500
    iget-boolean v2, v0, Lf5/k;->d:Z

    .line 1501
    .line 1502
    if-nez v2, :cond_5e2

    .line 1503
    .line 1504
    :cond_5df
    if-eqz v1, :cond_5e2

    .line 1505
    .line 1506
    move v4, v5

    .line 1507
    :cond_5e2
    iput-boolean v4, v0, Lf5/k;->c:Z

    .line 1508
    .line 1509
    return-void

    .line 1510
    nop

    .line 1511
    :pswitch_data_5e6
    .packed-switch 0x0
        :pswitch_5d3
        :pswitch_58f
        :pswitch_57d
        :pswitch_575
        :pswitch_56b
        :pswitch_556
        :pswitch_54e
        :pswitch_536
        :pswitch_525
        :pswitch_50b
        :pswitch_503
        :pswitch_4f0
        :pswitch_489
        :pswitch_3c9
        :pswitch_293
        :pswitch_283
        :pswitch_27b
        :pswitch_220
        :pswitch_216
        :pswitch_20a
        :pswitch_18b
        :pswitch_176
        :pswitch_a2
        :pswitch_9a
    .end packed-switch

    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    :array_61a
    .array-data 1
        -0x53t
        0x76t
        -0x1et
        -0x5t
        0x66t
        0x21t
        0x4t
        0x3t
        -0x67t
        0x66t
        -0x1at
        -0x13t
    .end array-data

    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    :array_624
    .array-data 1
        -0x2t
        0x3t
        -0x6et
        -0x62t
        0x14t
        0x76t
        0x6dt
        0x67t
    .end array-data

    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    :array_62c
    .array-data 1
        0x58t
        -0x4ft
        -0x50t
        -0x39t
        -0x64t
        -0x69t
        0x7bt
        -0x62t
        0x6ft
    .end array-data

    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    nop

    .line 1591
    :array_636
    .array-data 1
        0xbt
        -0x2ct
        -0x2ft
        -0x4dt
        -0x44t
        -0x1bt
        0x1et
        -0x1t
    .end array-data

    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    :array_63e
    .array-data 1
        -0x5ct
        -0x6et
        -0x60t
        0x77t
        -0x38t
        -0x5t
        -0x16t
        -0x24t
        -0x47t
        -0x7ct
        -0x79t
    .end array-data

    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    :array_648
    .array-data 1
        -0x33t
        -0x1ft
        -0x1dt
        0x18t
        -0x5at
        -0x6bt
        -0x71t
        -0x41t
    .end array-data

    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    :array_650
    .array-data 1
        0xdt
        -0x2ft
        -0x56t
        -0x4et
        0x52t
        0x3bt
        -0x40t
        0x7t
        0x35t
        -0x25t
        -0x7ft
        -0x42t
        0x58t
        0x0t
    .end array-data

    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    nop

    .line 1629
    :array_65c
    .array-data 1
        0x5bt
        -0x42t
        -0x3dt
        -0x2ft
        0x37t
        0x6bt
        -0x58t
        0x68t
    .end array-data

    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    :array_664
    .array-data 1
        0x75t
        0x38t
        -0x24t
        0x79t
        -0x35t
        0x3at
        0x49t
        -0x75t
        0x4ct
        0x3et
        -0x26t
        0x63t
        -0x39t
        0x7bt
        0x56t
        -0x21t
        0x5dt
        0x22t
        -0x30t
        0x2dt
        -0x29t
        0x35t
        0x44t
        -0x23t
        0x5dt
        0x3ft
        -0x27t
        0x6ct
        -0x40t
        0x37t
        0x40t
        -0x70t
        0x1ct
        0x37t
        -0x3et
        0x6ct
        -0x35t
        0x2ft
        0x4ct
        -0x3bt
        0x5bt
        0x76t
        -0x2at
        0x62t
        -0x34t
        0x35t
        0x40t
        -0x38t
        0x48t
        0x3ft
        -0x26t
        0x63t
        -0x7et
        0x3et
        0x53t
        -0x32t
        0x52t
        0x22t
        -0x6bt
        0x62t
        -0x30t
        0x7bt
        0x46t
        -0x36t
        0x50t
        0x3at
        -0x6bt
        0x7ft
        -0x39t
        0x2at
        0x50t
        -0x32t
        0x4ft
        0x22t
    .end array-data

    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    nop

    .line 1679
    :array_68e
    .array-data 1
        0x3ct
        0x56t
        -0x4bt
        0xdt
        -0x5et
        0x5bt
        0x25t
        -0x55t
    .end array-data

    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    :array_696
    .array-data 1
        -0x48t
        -0x51t
        -0x62t
        0x7dt
        -0x50t
        -0x7et
        0x1t
        -0x1et
        -0x68t
        -0x6et
        -0x43t
        0x2bt
        -0x6at
        -0x45t
        0x3et
        -0x5dt
        -0x71t
        -0x70t
        -0x47t
        0x67t
        -0x29t
    .end array-data

    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    nop

    .line 1703
    :array_6a6
    .array-data 1
        -0x13t
        -0x4t
        -0x24t
        0x5dt
        -0x9t
        -0x2et
        0x52t
        -0x3et
    .end array-data

    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    :array_6ae
    .array-data 1
        -0x4dt
        0x68t
        -0x7t
        0x2ct
        -0xct
        0x24t
        -0x4t
        0x5ft
        -0x4ft
        0x5et
        -0x4ct
        0x33t
        -0x1bt
        0x24t
        -0x52t
        0x38t
        -0x6ct
        0x63t
        -0xbt
        0x35t
        -0x1ft
        0x28t
        -0x50t
        0x79t
        -0x7dt
        0x61t
        -0xft
        0x79t
        -0x60t
    .end array-data

    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    nop

    .line 1731
    :array_6c2
    .array-data 1
        -0x1ft
        0xdt
        -0x6ct
        0x43t
        -0x80t
        0x41t
        -0x24t
        0x18t
    .end array-data
.end method
