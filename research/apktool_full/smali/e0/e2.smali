.class public final synthetic Le0/e2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Le0/e2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/e2;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Le0/e2;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iput-boolean p3, p0, Le0/e2;->c:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;I)V
    .locals 0

    .line 13
    iput p4, p0, Le0/e2;->b:I

    iput-object p1, p0, Le0/e2;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Le0/e2;->c:Z

    iput-object p3, p0, Le0/e2;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Le0/e2;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Le0/e2;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ls1/u0;

    .line 14
    .line 15
    iget-boolean v1, p0, Le0/e2;->c:Z

    .line 16
    .line 17
    iget-object v5, p0, Le0/e2;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, Le4/o;

    .line 20
    .line 21
    iget-object v6, v0, Ls1/u0;->j:Ljava/util/ArrayList;

    .line 22
    .line 23
    iput-boolean v3, v0, Ls1/u0;->o:Z

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-nez v7, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v5}, Le4/o;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Le4/o;->a()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v6, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/16 v5, 0x14

    .line 53
    .line 54
    if-le v1, v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    sub-int/2addr v1, v4

    .line 61
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    sget-object v5, Ls1/u0;->u:Ljava/lang/String;

    .line 70
    .line 71
    new-array v4, v4, [B

    .line 72
    .line 73
    const/16 v7, -0x25

    .line 74
    .line 75
    aput-byte v7, v4, v3

    .line 76
    .line 77
    new-array v2, v2, [B

    .line 78
    .line 79
    fill-array-data v2, :array_0

    .line 80
    .line 81
    .line 82
    invoke-static {v4, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v2, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v5, v2}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ls1/u0;->l()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const v1, 0x7f13036e

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void

    .line 112
    :pswitch_0
    iget-object v0, p0, Le0/e2;->d:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v0, Ls1/q0;

    .line 115
    .line 116
    iget-object v2, p0, Le0/e2;->e:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v2, Ljava/util/ArrayList;

    .line 119
    .line 120
    iget-boolean v3, p0, Le0/e2;->c:Z

    .line 121
    .line 122
    invoke-virtual {v0, v2, v3, v1}, Ls1/q0;->M(Ljava/util/ArrayList;ZLj0/e;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_1
    iget-object v0, p0, Le0/e2;->d:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Ls1/q0;

    .line 129
    .line 130
    iget-object v1, p0, Le0/e2;->e:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v1, Landroid/graphics/Bitmap;

    .line 133
    .line 134
    iget-boolean v3, p0, Le0/e2;->c:Z

    .line 135
    .line 136
    iget-boolean v4, v0, Ls1/q0;->E:Z

    .line 137
    .line 138
    if-eqz v4, :cond_3

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    iget-object v4, v0, Ls1/q0;->c:Landroid/widget/ImageView;

    .line 142
    .line 143
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    .line 145
    .line 146
    if-eqz v3, :cond_4

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const/16 v1, 0x17

    .line 153
    .line 154
    new-array v1, v1, [B

    .line 155
    .line 156
    fill-array-data v1, :array_1

    .line 157
    .line 158
    .line 159
    new-array v2, v2, [B

    .line 160
    .line 161
    fill-array-data v2, :array_2

    .line 162
    .line 163
    .line 164
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    :cond_4
    :goto_2
    return-void

    .line 172
    :pswitch_2
    iget-object v0, p0, Le0/e2;->d:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Lq0/f;

    .line 175
    .line 176
    iget-boolean v1, p0, Le0/e2;->c:Z

    .line 177
    .line 178
    iget-object v2, p0, Le0/e2;->e:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v2, Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0, v2, v1}, Lq0/f;->b(Ljava/lang/String;Z)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :pswitch_3
    iget-object v0, p0, Le0/e2;->d:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Lcom/woha/wifim/MainWifiManadger;

    .line 189
    .line 190
    iget-object v2, p0, Le0/e2;->e:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v2, Lokhttp3/Call;

    .line 193
    .line 194
    iget-boolean v3, p0, Le0/e2;->c:Z

    .line 195
    .line 196
    iget-object v4, v0, Lcom/woha/wifim/MainWifiManadger;->q:Lokhttp3/Call;

    .line 197
    .line 198
    if-ne v4, v2, :cond_8

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_8

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_5

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_5
    iput-object v1, v0, Lcom/woha/wifim/MainWifiManadger;->q:Lokhttp3/Call;

    .line 214
    .line 215
    if-eqz v3, :cond_6

    .line 216
    .line 217
    const v1, 0x7f1304eb

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_6
    const v1, 0x7f1304ed

    .line 222
    .line 223
    .line 224
    :goto_3
    if-eqz v3, :cond_7

    .line 225
    .line 226
    const v2, 0x7f05037e

    .line 227
    .line 228
    .line 229
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    goto :goto_4

    .line 234
    :cond_7
    const/high16 v2, -0x10000

    .line 235
    .line 236
    :goto_4
    invoke-virtual {v0, v1, v2}, Lcom/woha/wifim/MainWifiManadger;->x(II)V

    .line 237
    .line 238
    .line 239
    :cond_8
    :goto_5
    return-void

    .line 240
    :pswitch_4
    iget-object v0, p0, Le0/e2;->d:Ljava/lang/Object;

    .line 241
    .line 242
    move-object v6, v0

    .line 243
    check-cast v6, Lm0/q2;

    .line 244
    .line 245
    iget-boolean v7, p0, Le0/e2;->c:Z

    .line 246
    .line 247
    iget-object v0, p0, Le0/e2;->e:Ljava/lang/Object;

    .line 248
    .line 249
    move-object v10, v0

    .line 250
    check-cast v10, Landroid/content/Context;

    .line 251
    .line 252
    iget-object v0, v6, Lm0/q2;->b:Lp0/e;

    .line 253
    .line 254
    if-eqz v7, :cond_9

    .line 255
    .line 256
    :try_start_0
    new-instance v1, Lm0/o2;

    .line 257
    .line 258
    invoke-direct {v1, v6, v3}, Lm0/o2;-><init>(Lm0/q2;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v1}, Lp0/e;->f(Lp0/d;)Lo7/i4;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    goto :goto_6

    .line 266
    :catch_0
    move-exception v0

    .line 267
    goto :goto_8

    .line 268
    :cond_9
    new-instance v1, Lm0/o2;

    .line 269
    .line 270
    invoke-direct {v1, v6, v4}, Lm0/o2;-><init>(Lm0/q2;I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    sget-object v5, Lp0/b;->c:Ljava/lang/Object;

    .line 277
    .line 278
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :try_start_1
    iget-object v8, v0, Lp0/e;->a:Landroid/content/Context;

    .line 280
    .line 281
    invoke-static {v8}, Lp0/b;->f(Landroid/content/Context;)Z

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    if-eqz v8, :cond_a

    .line 286
    .line 287
    const/16 v0, 0x1a

    .line 288
    .line 289
    new-array v0, v0, [B

    .line 290
    .line 291
    fill-array-data v0, :array_3

    .line 292
    .line 293
    .line 294
    new-array v1, v2, [B

    .line 295
    .line 296
    fill-array-data v1, :array_4

    .line 297
    .line 298
    .line 299
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    new-instance v1, Lo7/i4;

    .line 304
    .line 305
    invoke-direct {v1, v3, v3, v4, v0}, Lo7/i4;-><init>(ZIILjava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    monitor-exit v5

    .line 309
    move-object v0, v1

    .line 310
    goto :goto_6

    .line 311
    :catchall_0
    move-exception v0

    .line 312
    goto :goto_7

    .line 313
    :cond_a
    invoke-virtual {v0, v1}, Lp0/e;->d(Lm0/o2;)Lo7/i4;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    monitor-exit v5

    .line 318
    :goto_6
    move-object v9, v0

    .line 319
    goto :goto_9

    .line 320
    :goto_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 322
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const/4 v5, 0x2

    .line 339
    new-array v5, v5, [B

    .line 340
    .line 341
    fill-array-data v5, :array_5

    .line 342
    .line 343
    .line 344
    new-array v2, v2, [B

    .line 345
    .line 346
    fill-array-data v2, :array_6

    .line 347
    .line 348
    .line 349
    invoke-static {v5, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    new-instance v1, Lo7/i4;

    .line 368
    .line 369
    invoke-direct {v1, v3, v3, v4, v0}, Lo7/i4;-><init>(ZIILjava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    move-object v9, v1

    .line 373
    :goto_9
    iget-object v0, v6, Lm0/q2;->b:Lp0/e;

    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    invoke-static {}, Lp0/e;->e()Z

    .line 379
    .line 380
    .line 381
    move-result v8

    .line 382
    iget-object v0, v6, Lm0/q2;->i:Landroid/os/Handler;

    .line 383
    .line 384
    new-instance v5, Lm0/p2;

    .line 385
    .line 386
    invoke-direct/range {v5 .. v10}, Lm0/p2;-><init>(Lm0/q2;ZZLo7/i4;Landroid/content/Context;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    .line 391
    .line 392
    return-void

    .line 393
    :pswitch_5
    iget-object v0, p0, Le0/e2;->d:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v0, Lh0/b;

    .line 396
    .line 397
    iget-object v1, p0, Le0/e2;->e:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v1, Landroid/content/Context;

    .line 400
    .line 401
    iget-boolean v2, p0, Le0/e2;->c:Z

    .line 402
    .line 403
    sget-object v5, Lh0/b;->h:Lh0/a;

    .line 404
    .line 405
    iget-object v3, v0, Lh0/b;->a:Le0/p;

    .line 406
    .line 407
    iget-object v3, v3, Le0/p;->a:Ln0/c;

    .line 408
    .line 409
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    monitor-enter v5

    .line 414
    :try_start_3
    iget-object v4, v5, Lh0/a;->h:Ln0/c;

    .line 415
    .line 416
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_b

    .line 421
    .line 422
    if-eqz v2, :cond_c

    .line 423
    .line 424
    :cond_b
    invoke-virtual {v5, v3, v0, v1}, Lh0/a;->a(Ln0/c;Lcom/example/navistart/cores/InterC;Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 425
    .line 426
    .line 427
    :cond_c
    monitor-exit v5

    .line 428
    return-void

    .line 429
    :catchall_1
    move-exception v0

    .line 430
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 431
    throw v0

    .line 432
    :pswitch_6
    iget-object v0, p0, Le0/e2;->d:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v0, Lcom/example/navistart/OverlayService;

    .line 435
    .line 436
    iget-boolean v5, p0, Le0/e2;->c:Z

    .line 437
    .line 438
    iget-object v6, p0, Le0/e2;->e:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v6, Ljava/lang/String;

    .line 441
    .line 442
    sget-object v7, Lcom/example/navistart/OverlayService;->f:Lcom/example/navistart/OverlayService;

    .line 443
    .line 444
    invoke-static {}, Lw0/a0;->e()Z

    .line 445
    .line 446
    .line 447
    move-result v7

    .line 448
    if-eq v5, v7, :cond_d

    .line 449
    .line 450
    goto/16 :goto_b

    .line 451
    .line 452
    :cond_d
    if-eqz v5, :cond_e

    .line 453
    .line 454
    sget-boolean v1, Lcom/example/navistart/OverlayService;->g:Z

    .line 455
    .line 456
    if-eqz v1, :cond_12

    .line 457
    .line 458
    iget-object v0, v0, Lcom/example/navistart/OverlayService;->b:Lt1/a;

    .line 459
    .line 460
    if-eqz v0, :cond_12

    .line 461
    .line 462
    invoke-virtual {v0, v6}, Lt1/a;->setText(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    goto/16 :goto_b

    .line 466
    .line 467
    :cond_e
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v5

    .line 471
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 472
    .line 473
    .line 474
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 475
    .line 476
    .line 477
    move-result-object v7

    .line 478
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    invoke-static {}, Lj0/c;->f()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v7

    .line 485
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v7

    .line 489
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 490
    .line 491
    .line 492
    move-result v7

    .line 493
    if-eqz v7, :cond_f

    .line 494
    .line 495
    invoke-virtual {v0}, Lcom/example/navistart/OverlayService;->b()V

    .line 496
    .line 497
    .line 498
    :cond_f
    sget-boolean v7, Lcom/example/navistart/OverlayService;->g:Z

    .line 499
    .line 500
    if-eqz v7, :cond_12

    .line 501
    .line 502
    iget-object v7, v0, Lcom/example/navistart/OverlayService;->b:Lt1/a;

    .line 503
    .line 504
    invoke-virtual {v7, v6}, Lt1/a;->setText(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 508
    .line 509
    .line 510
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 511
    .line 512
    .line 513
    move-result-object v6

    .line 514
    invoke-virtual {v6, v5}, Lj0/c;->d(Ljava/lang/String;)Lj0/e;

    .line 515
    .line 516
    .line 517
    move-result-object v5

    .line 518
    invoke-static {v5}, Lj0/f;->d(Lj0/e;)Z

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    if-eqz v6, :cond_12

    .line 523
    .line 524
    invoke-virtual {v0}, Lcom/example/navistart/OverlayService;->d()V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0}, Lcom/example/navistart/OverlayService;->a()V

    .line 528
    .line 529
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .line 534
    .line 535
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 536
    .line 537
    .line 538
    move-result-object v6

    .line 539
    sget-object v7, Le0/m;->j:[B

    .line 540
    .line 541
    sget-object v8, Le0/p3;->a:[Ljava/lang/String;

    .line 542
    .line 543
    const-string v8, ""

    .line 544
    .line 545
    invoke-static {v7, v6, v8, v0}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 546
    .line 547
    .line 548
    const/16 v6, 0x9

    .line 549
    .line 550
    new-array v6, v6, [B

    .line 551
    .line 552
    fill-array-data v6, :array_7

    .line 553
    .line 554
    .line 555
    invoke-static {v6, v0}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 556
    .line 557
    .line 558
    sget-object v6, Le0/x1;->q:Ljava/lang/String;

    .line 559
    .line 560
    invoke-static {v0, v6}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 565
    .line 566
    .line 567
    move-result-object v6

    .line 568
    sget-object v7, Le0/m;->f:[B

    .line 569
    .line 570
    invoke-static {v7, v6, v8, v0}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-eqz v0, :cond_11

    .line 575
    .line 576
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    const-wide v8, 0x7fffffffffffffffL

    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    invoke-static {v8, v9, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 590
    .line 591
    .line 592
    move-result-wide v8

    .line 593
    new-instance v0, Ljava/lang/String;

    .line 594
    .line 595
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 596
    .line 597
    .line 598
    move-result-object v6

    .line 599
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 600
    .line 601
    .line 602
    move-result-object v10

    .line 603
    new-instance v11, Ljava/lang/String;

    .line 604
    .line 605
    invoke-direct {v11, v7}, Ljava/lang/String;-><init>([B)V

    .line 606
    .line 607
    .line 608
    sget-object v7, Le0/m;->g:[B

    .line 609
    .line 610
    invoke-static {v7, v10, v11}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v7

    .line 614
    new-array v10, v4, [B

    .line 615
    .line 616
    const/16 v11, -0x13

    .line 617
    .line 618
    aput-byte v11, v10, v3

    .line 619
    .line 620
    new-array v2, v2, [B

    .line 621
    .line 622
    fill-array-data v2, :array_8

    .line 623
    .line 624
    .line 625
    invoke-static {v10, v2, v6, v7, v3}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 630
    .line 631
    .line 632
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 633
    .line 634
    .line 635
    move-result-wide v6

    .line 636
    cmp-long v0, v8, v6

    .line 637
    .line 638
    if-gez v0, :cond_10

    .line 639
    .line 640
    move v3, v4

    .line 641
    :cond_10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    goto :goto_a

    .line 646
    :cond_11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 647
    .line 648
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    if-eqz v0, :cond_12

    .line 653
    .line 654
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 655
    .line 656
    .line 657
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-virtual {v0, v5, v1}, Lj0/c;->j(Lj0/e;Ljava/lang/Integer;)V

    .line 662
    .line 663
    .line 664
    :cond_12
    :goto_b
    return-void

    .line 665
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_0
    .array-data 1
        -0x20t
        0xet
        0x5dt
        -0x63t
        0x29t
        -0xdt
        0x79t
        0x27t
    .end array-data

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    :array_1
    .array-data 1
        -0x72t
        0x2at
        -0x55t
        0x43t
        -0x11t
        0x1ft
        -0x2ct
        0xbt
        -0x20t
        0x5et
        -0x36t
        0x2dt
        -0x7et
        0x72t
        0x4at
        0xbt
        -0x14t
        0x5et
        -0x40t
        0x2ct
        -0x52t
        0x72t
        0x49t
    .end array-data

    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    :array_2
    .array-data 1
        0x5et
        -0x72t
        0x7bt
        -0x3t
        0x3ft
        -0x5et
        -0xct
        -0x25t
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    :array_3
    .array-data 1
        0x7bt
        -0x1t
        -0x36t
        -0x23t
        -0x39t
        -0x70t
        0x6bt
        0x6et
        0x17t
        -0x14t
        -0x26t
        -0x40t
        -0x3ft
        -0x74t
        0x2et
        0x75t
        0x59t
        -0x42t
        -0x31t
        -0x3ft
        -0x35t
        -0x61t
        0x7ct
        0x79t
        0x44t
        -0x13t
    .end array-data

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    nop

    .line 733
    :array_4
    .array-data 1
        0x37t
        -0x62t
        -0x41t
        -0x4dt
        -0x5ct
        -0x8t
        0xet
        0x1ct
    .end array-data

    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    :array_5
    .array-data 1
        0x4bt
        0x10t
    .end array-data

    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    nop

    .line 747
    :array_6
    .array-data 1
        0x71t
        0x30t
        0x33t
        0x76t
        0x6at
        -0x42t
        -0x2ct
        -0x78t
    .end array-data

    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    :array_7
    .array-data 1
        0x6ct
        0x69t
        0x63t
        0x74t
        0x5ft
        0x72t
        0x69t
        0x75t
        0x65t
    .end array-data

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    nop

    .line 765
    :array_8
    .array-data 1
        -0x23t
        -0x53t
        0x2t
        -0x2at
        -0x27t
        -0x37t
        0x60t
        -0x1ct
    .end array-data
.end method
