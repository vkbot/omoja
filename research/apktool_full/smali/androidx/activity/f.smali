.class public final synthetic Landroidx/activity/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/activity/f;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Landroidx/activity/f;->d:I

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 13
    iput p4, p0, Landroidx/activity/f;->b:I

    iput-object p1, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    iput p3, p0, Landroidx/activity/f;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Landroidx/activity/f;->b:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x7

    .line 5
    const/16 v3, 0xe

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x1

    .line 10
    const/16 v7, 0x8

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Lx0/c;

    .line 19
    .line 20
    iget v0, p0, Landroidx/activity/f;->d:I

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Lx0/m;

    .line 25
    .line 26
    iget-object v3, v1, Lx0/c;->b:Landroid/os/Handler;

    .line 27
    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    :try_start_0
    invoke-static {v2}, Lx0/c;->h(Lx0/m;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v2}, Lx0/c;->n(Lx0/m;)I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-interface {v5, v6, v7}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_4

    .line 53
    :cond_0
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v2}, Lx0/c;->n(Lx0/m;)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    invoke-interface {v5, v6, v7}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    invoke-static {v2}, Lx0/c;->h(Lx0/m;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    add-int/2addr v0, v6

    .line 81
    invoke-static {v2}, Lx0/c;->n(Lx0/m;)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-interface {v5, v0, v2}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    add-int/2addr v0, v6

    .line 97
    invoke-static {v2}, Lx0/c;->n(Lx0/m;)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-interface {v5, v0, v2}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    :goto_1
    new-instance v0, Le0/f;

    .line 105
    .line 106
    invoke-direct {v0, v1, v4}, Le0/f;-><init>(Lx0/c;I)V

    .line 107
    .line 108
    .line 109
    :goto_2
    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :catch_0
    :try_start_1
    new-instance v0, Le0/f;

    .line 114
    .line 115
    invoke-direct {v0, v1, v6}, Le0/f;-><init>(Lx0/c;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    new-instance v0, Le0/f;

    .line 122
    .line 123
    invoke-direct {v0, v1, v4}, Le0/f;-><init>(Lx0/c;I)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :goto_3
    return-void

    .line 128
    :goto_4
    new-instance v2, Le0/f;

    .line 129
    .line 130
    invoke-direct {v2, v1, v4}, Le0/f;-><init>(Lx0/c;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :pswitch_0
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v0, Lw0/l0;

    .line 140
    .line 141
    iget-object v1, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v1, Ljava/lang/String;

    .line 144
    .line 145
    iget v2, p0, Landroidx/activity/f;->d:I

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Lw0/l0;->c(I)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-nez v4, :cond_3

    .line 152
    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :cond_3
    :try_start_2
    iget-object v4, v0, Lw0/l0;->n:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-nez v4, :cond_4

    .line 162
    .line 163
    invoke-virtual {v0}, Lw0/l0;->j0()Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-nez v4, :cond_4

    .line 168
    .line 169
    invoke-virtual {v0}, Lw0/l0;->c0()V

    .line 170
    .line 171
    .line 172
    iget-object v4, v0, Lw0/l0;->f:Lw0/n0;

    .line 173
    .line 174
    invoke-virtual {v4}, Lw0/n0;->c()V

    .line 175
    .line 176
    .line 177
    invoke-static {v1}, Lw0/n0;->i(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-nez v4, :cond_4

    .line 182
    .line 183
    sget-object v1, Lw0/k0;->c:Lw0/k0;

    .line 184
    .line 185
    invoke-virtual {v0, v1, v2}, Lw0/l0;->V(Lw0/k0;I)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_7

    .line 189
    .line 190
    :cond_4
    iget-boolean v4, v0, Lw0/l0;->k:Z

    .line 191
    .line 192
    if-eqz v4, :cond_5

    .line 193
    .line 194
    sget-object v1, Lw0/k0;->c:Lw0/k0;

    .line 195
    .line 196
    invoke-virtual {v0, v1, v2}, Lw0/l0;->V(Lw0/k0;I)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_7

    .line 200
    .line 201
    :cond_5
    iget-object v4, v0, Lw0/l0;->b:Lz3/f;

    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-static {}, Lz3/f;->j()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-static {v4}, Lz3/f;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-eqz v4, :cond_6

    .line 219
    .line 220
    sget-object v1, Lw0/k0;->b:Lw0/k0;

    .line 221
    .line 222
    invoke-virtual {v0, v1, v2}, Lw0/l0;->V(Lw0/k0;I)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_7

    .line 226
    .line 227
    :cond_6
    iget-object v4, v0, Lw0/l0;->f:Lw0/n0;

    .line 228
    .line 229
    invoke-virtual {v4, v1}, Lw0/n0;->a(Ljava/lang/String;)Lb1/m;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    iget-object v4, v1, Lb1/m;->c:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v4, Lw0/m0;

    .line 236
    .line 237
    sget-object v8, Lw0/m0;->d:Lw0/m0;

    .line 238
    .line 239
    if-eq v4, v8, :cond_d

    .line 240
    .line 241
    sget-object v8, Lw0/m0;->e:Lw0/m0;

    .line 242
    .line 243
    if-ne v4, v8, :cond_7

    .line 244
    .line 245
    goto/16 :goto_6

    .line 246
    .line 247
    :cond_7
    sget-object v6, Lw0/m0;->m:Lw0/m0;

    .line 248
    .line 249
    const/4 v8, -0x1

    .line 250
    if-ne v4, v6, :cond_a

    .line 251
    .line 252
    iget-object v3, v0, Lw0/l0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 253
    .line 254
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    iget-object v4, v0, Lw0/l0;->m:Lw0/j0;

    .line 259
    .line 260
    if-eqz v4, :cond_9

    .line 261
    .line 262
    iget-object v4, v0, Lw0/l0;->s:Lw0/w0;

    .line 263
    .line 264
    if-eqz v4, :cond_9

    .line 265
    .line 266
    iget v4, v0, Lw0/l0;->p:I

    .line 267
    .line 268
    if-ne v4, v3, :cond_9

    .line 269
    .line 270
    invoke-virtual {v0}, Lw0/l0;->j0()Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-nez v4, :cond_8

    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_8
    iget-object v4, v0, Lw0/l0;->c:Ln/p;

    .line 278
    .line 279
    iget-object v6, v0, Lw0/l0;->m:Lw0/j0;

    .line 280
    .line 281
    iget-object v6, v6, Lw0/j0;->a:Lcom/example/navistart/cores/BTProxy;

    .line 282
    .line 283
    iget-object v1, v1, Lb1/m;->e:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v1, Ljava/lang/String;

    .line 286
    .line 287
    new-instance v7, Lw0/h0;

    .line 288
    .line 289
    invoke-direct {v7, v0, v2, v3}, Lw0/h0;-><init>(Lw0/l0;II)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v6, v1, v7}, Ln/p;->d(Lcom/example/navistart/cores/BTProxy;Ljava/lang/String;Lw0/h0;)V

    .line 293
    .line 294
    .line 295
    iput-boolean v5, v0, Lw0/l0;->i:Z

    .line 296
    .line 297
    iput v8, v0, Lw0/l0;->q:I

    .line 298
    .line 299
    goto/16 :goto_7

    .line 300
    .line 301
    :cond_9
    :goto_5
    sget-object v1, Lw0/k0;->c:Lw0/k0;

    .line 302
    .line 303
    invoke-virtual {v0, v1, v2}, Lw0/l0;->V(Lw0/k0;I)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_7

    .line 307
    .line 308
    :cond_a
    sget-object v6, Lw0/m0;->n:Lw0/m0;

    .line 309
    .line 310
    if-ne v4, v6, :cond_b

    .line 311
    .line 312
    iput-boolean v5, v0, Lw0/l0;->i:Z

    .line 313
    .line 314
    iput v8, v0, Lw0/l0;->q:I

    .line 315
    .line 316
    iget-object v1, v0, Lw0/l0;->c:Ln/p;

    .line 317
    .line 318
    iget-object v4, v1, Ln/p;->c:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v4, Lw0/x;

    .line 321
    .line 322
    iget-boolean v4, v4, Lw0/x;->T:Z

    .line 323
    .line 324
    if-eqz v4, :cond_10

    .line 325
    .line 326
    iget-object v1, v1, Ln/p;->c:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v1, Lw0/x;

    .line 329
    .line 330
    new-array v3, v3, [B

    .line 331
    .line 332
    fill-array-data v3, :array_0

    .line 333
    .line 334
    .line 335
    new-array v4, v7, [B

    .line 336
    .line 337
    fill-array-data v4, :array_1

    .line 338
    .line 339
    .line 340
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-virtual {v1, v3}, Lw0/x;->C(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_b
    sget-object v3, Lw0/m0;->b:Lw0/m0;

    .line 349
    .line 350
    if-ne v4, v3, :cond_c

    .line 351
    .line 352
    iput-boolean v5, v0, Lw0/l0;->i:Z

    .line 353
    .line 354
    iput v8, v0, Lw0/l0;->q:I

    .line 355
    .line 356
    goto :goto_7

    .line 357
    :cond_c
    iget-object v3, v0, Lw0/l0;->c:Ln/p;

    .line 358
    .line 359
    invoke-virtual {v3, v1}, Ln/p;->f(Lb1/m;)V

    .line 360
    .line 361
    .line 362
    goto :goto_7

    .line 363
    :cond_d
    :goto_6
    iput v2, v0, Lw0/l0;->q:I

    .line 364
    .line 365
    iget-object v3, v0, Lw0/l0;->s:Lw0/w0;

    .line 366
    .line 367
    if-eqz v3, :cond_e

    .line 368
    .line 369
    iget-object v3, v3, Lw0/w0;->a:Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    if-eqz v3, :cond_e

    .line 376
    .line 377
    iget-object v3, v0, Lw0/l0;->m:Lw0/j0;

    .line 378
    .line 379
    if-eqz v3, :cond_e

    .line 380
    .line 381
    iget-boolean v3, v3, Lw0/j0;->c:Z

    .line 382
    .line 383
    if-eqz v3, :cond_e

    .line 384
    .line 385
    invoke-virtual {v0}, Lw0/l0;->c0()V

    .line 386
    .line 387
    .line 388
    :cond_e
    iget-object v3, v0, Lw0/l0;->s:Lw0/w0;

    .line 389
    .line 390
    if-eqz v3, :cond_f

    .line 391
    .line 392
    invoke-virtual {v0}, Lw0/l0;->j0()Z

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    if-eqz v3, :cond_f

    .line 397
    .line 398
    iget v3, v0, Lw0/l0;->p:I

    .line 399
    .line 400
    iget-object v4, v0, Lw0/l0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 401
    .line 402
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    if-ne v3, v4, :cond_f

    .line 407
    .line 408
    iget-object v1, v0, Lw0/l0;->c:Ln/p;

    .line 409
    .line 410
    iget-object v3, v0, Lw0/l0;->f:Lw0/n0;

    .line 411
    .line 412
    iget-object v4, v0, Lw0/l0;->s:Lw0/w0;

    .line 413
    .line 414
    iput-object v4, v3, Lw0/n0;->c:Lw0/w0;

    .line 415
    .line 416
    iput-boolean v6, v3, Lw0/n0;->h:Z

    .line 417
    .line 418
    invoke-virtual {v3}, Lw0/n0;->f()Lb1/m;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    invoke-virtual {v1, v3}, Ln/p;->f(Lb1/m;)V

    .line 423
    .line 424
    .line 425
    goto :goto_7

    .line 426
    :cond_f
    iget-object v3, v0, Lw0/l0;->c:Ln/p;

    .line 427
    .line 428
    invoke-virtual {v3, v1}, Ln/p;->f(Lb1/m;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Lw0/l0;->S()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 432
    .line 433
    .line 434
    goto :goto_7

    .line 435
    :catch_1
    invoke-virtual {v0}, Lw0/l0;->c0()V

    .line 436
    .line 437
    .line 438
    sget-object v1, Lw0/k0;->c:Lw0/k0;

    .line 439
    .line 440
    invoke-virtual {v0, v1, v2}, Lw0/l0;->V(Lw0/k0;I)V

    .line 441
    .line 442
    .line 443
    :cond_10
    :goto_7
    return-void

    .line 444
    :pswitch_1
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 445
    .line 446
    move-object v9, v0

    .line 447
    check-cast v9, Ls1/u0;

    .line 448
    .line 449
    iget v10, p0, Landroidx/activity/f;->d:I

    .line 450
    .line 451
    iget-object v0, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 452
    .line 453
    move-object v12, v0

    .line 454
    check-cast v12, Ljava/util/HashSet;

    .line 455
    .line 456
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    new-instance v1, Landroid/content/Intent;

    .line 465
    .line 466
    const/16 v2, 0x1a

    .line 467
    .line 468
    new-array v2, v2, [B

    .line 469
    .line 470
    fill-array-data v2, :array_2

    .line 471
    .line 472
    .line 473
    new-array v3, v7, [B

    .line 474
    .line 475
    fill-array-data v3, :array_3

    .line 476
    .line 477
    .line 478
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    const/16 v2, 0x20

    .line 486
    .line 487
    new-array v2, v2, [B

    .line 488
    .line 489
    fill-array-data v2, :array_4

    .line 490
    .line 491
    .line 492
    new-array v3, v7, [B

    .line 493
    .line 494
    fill-array-data v3, :array_5

    .line 495
    .line 496
    .line 497
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 506
    .line 507
    .line 508
    move-result-object v11

    .line 509
    new-instance v1, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    .line 510
    .line 511
    invoke-direct {v1, v0}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 512
    .line 513
    .line 514
    invoke-interface {v11, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 515
    .line 516
    .line 517
    new-instance v8, Lj2/d;

    .line 518
    .line 519
    const/4 v13, 0x7

    .line 520
    invoke-direct/range {v8 .. v13}, Lj2/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v9, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 524
    .line 525
    .line 526
    return-void

    .line 527
    :pswitch_2
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 528
    .line 529
    check-cast v0, Ls1/u0;

    .line 530
    .line 531
    iget-object v1, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 532
    .line 533
    check-cast v1, Le4/o;

    .line 534
    .line 535
    iget-object v3, v1, Le4/o;->d:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v3, Ljava/lang/String;

    .line 538
    .line 539
    iget v4, p0, Landroidx/activity/f;->d:I

    .line 540
    .line 541
    if-eqz v3, :cond_11

    .line 542
    .line 543
    goto :goto_8

    .line 544
    :cond_11
    move v6, v5

    .line 545
    :goto_8
    iget-object v7, v1, Le4/o;->c:Ljava/lang/Object;

    .line 546
    .line 547
    check-cast v7, Ljava/lang/String;

    .line 548
    .line 549
    if-eqz v6, :cond_12

    .line 550
    .line 551
    :try_start_3
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 552
    .line 553
    .line 554
    move-result-object v6

    .line 555
    invoke-virtual {v6}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    new-instance v8, Lcom/example/navistart/cores/Saa;

    .line 560
    .line 561
    iget v9, v1, Le4/o;->a:I

    .line 562
    .line 563
    iget v10, v1, Le4/o;->b:I

    .line 564
    .line 565
    invoke-direct {v8, v7, v3, v9, v10}, Lcom/example/navistart/cores/Saa;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 566
    .line 567
    .line 568
    invoke-interface {v6, v8, v4}, Lcom/example/navistart/cores/InterC;->launchTraySplit(Lcom/example/navistart/cores/Saa;I)Z

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    :goto_9
    move v5, v3

    .line 573
    goto :goto_a

    .line 574
    :cond_12
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    invoke-virtual {v3}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    invoke-interface {v3, v7, v4}, Lcom/example/navistart/cores/InterC;->launchSingleWindow(Ljava/lang/String;I)Z

    .line 583
    .line 584
    .line 585
    move-result v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 586
    goto :goto_9

    .line 587
    :catch_2
    :goto_a
    new-instance v3, Le0/e2;

    .line 588
    .line 589
    invoke-direct {v3, v0, v5, v1, v2}, Le0/e2;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 593
    .line 594
    .line 595
    return-void

    .line 596
    :pswitch_3
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 597
    .line 598
    check-cast v0, Ls1/u0;

    .line 599
    .line 600
    iget v1, p0, Landroidx/activity/f;->d:I

    .line 601
    .line 602
    iget-object v2, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 603
    .line 604
    check-cast v2, Ljava/util/List;

    .line 605
    .line 606
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 607
    .line 608
    .line 609
    move-result v3

    .line 610
    if-eqz v3, :cond_16

    .line 611
    .line 612
    iget-boolean v3, v0, Ls1/u0;->f:Z

    .line 613
    .line 614
    if-eqz v3, :cond_16

    .line 615
    .line 616
    iget v3, v0, Ls1/u0;->p:I

    .line 617
    .line 618
    if-eq v1, v3, :cond_13

    .line 619
    .line 620
    goto :goto_c

    .line 621
    :cond_13
    new-instance v1, Ljava/util/HashSet;

    .line 622
    .line 623
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 624
    .line 625
    .line 626
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    :cond_14
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 631
    .line 632
    .line 633
    move-result v3

    .line 634
    if-eqz v3, :cond_15

    .line 635
    .line 636
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 641
    .line 642
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 643
    .line 644
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 645
    .line 646
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v5

    .line 654
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v5

    .line 658
    if-nez v5, :cond_14

    .line 659
    .line 660
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v4

    .line 664
    if-eqz v4, :cond_14

    .line 665
    .line 666
    iget-object v4, v0, Ls1/u0;->i:Ljava/util/ArrayList;

    .line 667
    .line 668
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    goto :goto_b

    .line 672
    :cond_15
    invoke-virtual {v0}, Ls1/u0;->j()V

    .line 673
    .line 674
    .line 675
    :cond_16
    :goto_c
    return-void

    .line 676
    :pswitch_4
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 677
    .line 678
    check-cast v0, Ls1/q0;

    .line 679
    .line 680
    iget-object v2, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 681
    .line 682
    check-cast v2, Ls1/m0;

    .line 683
    .line 684
    iget v3, p0, Landroidx/activity/f;->d:I

    .line 685
    .line 686
    iget-object v4, v0, Ls1/q0;->J:Ls1/f0;

    .line 687
    .line 688
    iget-object v0, v0, Ls1/q0;->r:Landroid/os/Handler;

    .line 689
    .line 690
    :try_start_4
    sget-object v5, Ls1/m0;->i:Ls1/m0;

    .line 691
    .line 692
    if-eq v2, v5, :cond_17

    .line 693
    .line 694
    sget-object v5, Ls1/m0;->j:Ls1/m0;

    .line 695
    .line 696
    if-ne v2, v5, :cond_18

    .line 697
    .line 698
    :cond_17
    move v1, v6

    .line 699
    :cond_18
    if-le v3, v6, :cond_1a

    .line 700
    .line 701
    invoke-static {v2}, Ls1/q0;->q(Ls1/m0;)Z

    .line 702
    .line 703
    .line 704
    move-result v5

    .line 705
    if-eqz v5, :cond_19

    .line 706
    .line 707
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 708
    .line 709
    .line 710
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 711
    .line 712
    .line 713
    move-result-object v5

    .line 714
    invoke-interface {v5, v6, v1}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V

    .line 715
    .line 716
    .line 717
    goto :goto_d

    .line 718
    :cond_19
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 719
    .line 720
    .line 721
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 722
    .line 723
    .line 724
    move-result-object v5

    .line 725
    invoke-interface {v5, v6, v1}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 726
    .line 727
    .line 728
    :cond_1a
    :goto_d
    invoke-static {v2}, Ls1/q0;->q(Ls1/m0;)Z

    .line 729
    .line 730
    .line 731
    move-result v2

    .line 732
    if-eqz v2, :cond_1b

    .line 733
    .line 734
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 735
    .line 736
    .line 737
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    invoke-interface {v2, v3, v1}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 742
    .line 743
    .line 744
    goto :goto_e

    .line 745
    :cond_1b
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 746
    .line 747
    .line 748
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 749
    .line 750
    .line 751
    move-result-object v2

    .line 752
    invoke-interface {v2, v3, v1}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 753
    .line 754
    .line 755
    :catchall_1
    :goto_e
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 756
    .line 757
    .line 758
    const-wide/16 v1, 0x384

    .line 759
    .line 760
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 761
    .line 762
    .line 763
    return-void

    .line 764
    :pswitch_5
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 765
    .line 766
    move-object v2, v0

    .line 767
    check-cast v2, Lm0/n3;

    .line 768
    .line 769
    iget-object v0, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 770
    .line 771
    move-object v5, v0

    .line 772
    check-cast v5, Lcom/bumptech/glide/manager/t;

    .line 773
    .line 774
    iget v3, p0, Landroidx/activity/f;->d:I

    .line 775
    .line 776
    iget-object v0, v5, Lcom/bumptech/glide/manager/t;->e:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v0, Lh7/k;

    .line 779
    .line 780
    iget-object v1, v5, Lcom/bumptech/glide/manager/t;->d:Ljava/lang/Object;

    .line 781
    .line 782
    check-cast v1, Landroid/content/Context;

    .line 783
    .line 784
    invoke-virtual {v0, v1}, Lh7/k;->o(Landroid/content/Context;)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v5}, Lcom/bumptech/glide/manager/t;->e()Ljava/util/ArrayList;

    .line 788
    .line 789
    .line 790
    move-result-object v4

    .line 791
    iget-object v0, v2, Lm0/n3;->d:Landroid/os/Handler;

    .line 792
    .line 793
    new-instance v1, Lj2/d;

    .line 794
    .line 795
    const/4 v6, 0x5

    .line 796
    invoke-direct/range {v1 .. v6}, Lj2/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 800
    .line 801
    .line 802
    return-void

    .line 803
    :pswitch_6
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 804
    .line 805
    check-cast v0, Lm0/u1;

    .line 806
    .line 807
    iget-object v1, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 808
    .line 809
    check-cast v1, Lm0/s1;

    .line 810
    .line 811
    iget v2, p0, Landroidx/activity/f;->d:I

    .line 812
    .line 813
    iget-object v0, v0, Lm0/u1;->e:Lm0/v1;

    .line 814
    .line 815
    iget-object v0, v0, Lm0/v1;->a:Lm0/w1;

    .line 816
    .line 817
    iget-object v3, v0, Lm0/w1;->g:Ljava/util/ArrayList;

    .line 818
    .line 819
    iget-object v4, v0, Lm0/w1;->f:Ljava/util/ArrayList;

    .line 820
    .line 821
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 822
    .line 823
    .line 824
    move-result-object v8

    .line 825
    iget-object v1, v1, Lm0/s1;->b:Ljava/lang/String;

    .line 826
    .line 827
    invoke-static {v8, v1}, Lm0/w1;->t(Landroid/content/Context;Ljava/lang/String;)Z

    .line 828
    .line 829
    .line 830
    move-result v8

    .line 831
    if-nez v8, :cond_1c

    .line 832
    .line 833
    iget-object v0, v0, Lm0/w1;->e:Lm0/v1;

    .line 834
    .line 835
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 836
    .line 837
    .line 838
    goto/16 :goto_13

    .line 839
    .line 840
    :cond_1c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result v8

    .line 844
    if-nez v8, :cond_1d

    .line 845
    .line 846
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    .line 848
    .line 849
    :cond_1d
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 850
    .line 851
    .line 852
    move-result-object v3

    .line 853
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 854
    .line 855
    .line 856
    move-result-object v3

    .line 857
    invoke-static {v3, v1}, Lm0/w1;->t(Landroid/content/Context;Ljava/lang/String;)Z

    .line 858
    .line 859
    .line 860
    move-result v8

    .line 861
    if-nez v8, :cond_1e

    .line 862
    .line 863
    goto :goto_f

    .line 864
    :cond_1e
    invoke-static {v3}, Lm0/w1;->u(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    .line 865
    .line 866
    .line 867
    move-result-object v8

    .line 868
    new-instance v9, Landroid/content/ComponentName;

    .line 869
    .line 870
    const-class v10, Lcom/example/navistart/DPups;

    .line 871
    .line 872
    invoke-direct {v9, v3, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 873
    .line 874
    .line 875
    if-nez v8, :cond_1f

    .line 876
    .line 877
    goto :goto_f

    .line 878
    :cond_1f
    :try_start_5
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v11

    .line 882
    invoke-virtual {v8, v11}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    .line 883
    .line 884
    .line 885
    move-result v11

    .line 886
    if-eqz v11, :cond_22

    .line 887
    .line 888
    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    .line 889
    .line 890
    .line 891
    move-result v11

    .line 892
    if-nez v11, :cond_20

    .line 893
    .line 894
    goto :goto_f

    .line 895
    :cond_20
    invoke-virtual {v8, v9, v1, v6}, Landroid/app/admin/DevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    .line 896
    .line 897
    .line 898
    iget-object v6, v0, Lm0/w1;->h:Landroid/os/Handler;

    .line 899
    .line 900
    new-instance v8, Lm0/b1;

    .line 901
    .line 902
    invoke-direct {v8, v0, v3, v1}, Lm0/b1;-><init>(Lm0/w1;Landroid/content/Context;Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    const-wide/16 v11, 0x2bc

    .line 906
    .line 907
    invoke-virtual {v6, v8, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 908
    .line 909
    .line 910
    goto :goto_10

    .line 911
    :catch_3
    invoke-static {v3}, Lm0/w1;->u(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    .line 912
    .line 913
    .line 914
    move-result-object v6

    .line 915
    if-nez v6, :cond_21

    .line 916
    .line 917
    goto :goto_f

    .line 918
    :cond_21
    :try_start_6
    new-instance v8, Landroid/content/ComponentName;

    .line 919
    .line 920
    invoke-direct {v8, v3, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {v6, v8, v1, v5}, Landroid/app/admin/DevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 924
    .line 925
    .line 926
    :catch_4
    :cond_22
    :goto_f
    iget-object v3, v0, Lm0/w1;->d:Landroid/widget/TextView;

    .line 927
    .line 928
    if-eqz v3, :cond_23

    .line 929
    .line 930
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 931
    .line 932
    .line 933
    :cond_23
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 934
    .line 935
    .line 936
    move-result-object v3

    .line 937
    invoke-static {v3, v1}, Lm0/w1;->t(Landroid/content/Context;Ljava/lang/String;)Z

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    if-nez v3, :cond_24

    .line 942
    .line 943
    goto :goto_10

    .line 944
    :cond_24
    :try_start_7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 945
    .line 946
    .line 947
    move-result-object v3

    .line 948
    new-array v6, v7, [B

    .line 949
    .line 950
    fill-array-data v6, :array_6

    .line 951
    .line 952
    .line 953
    new-array v8, v7, [B

    .line 954
    .line 955
    fill-array-data v8, :array_7

    .line 956
    .line 957
    .line 958
    invoke-static {v6, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v6

    .line 962
    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v3

    .line 966
    check-cast v3, Landroid/app/ActivityManager;

    .line 967
    .line 968
    if-eqz v3, :cond_25

    .line 969
    .line 970
    invoke-virtual {v3, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 971
    .line 972
    .line 973
    :catch_5
    :cond_25
    :goto_10
    if-ltz v2, :cond_26

    .line 974
    .line 975
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 976
    .line 977
    .line 978
    move-result v3

    .line 979
    if-ge v2, v3, :cond_26

    .line 980
    .line 981
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v3

    .line 985
    check-cast v3, Lm0/s1;

    .line 986
    .line 987
    iget-object v3, v3, Lm0/s1;->b:Ljava/lang/String;

    .line 988
    .line 989
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    move-result v1

    .line 993
    if-eqz v1, :cond_26

    .line 994
    .line 995
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    iget-object v1, v0, Lm0/w1;->e:Lm0/v1;

    .line 999
    .line 1000
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 1001
    .line 1002
    .line 1003
    goto :goto_11

    .line 1004
    :cond_26
    invoke-virtual {v0}, Lm0/w1;->v()V

    .line 1005
    .line 1006
    .line 1007
    :goto_11
    iget-object v1, v0, Lm0/w1;->c:Landroid/widget/TextView;

    .line 1008
    .line 1009
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1010
    .line 1011
    .line 1012
    move-result v2

    .line 1013
    if-eqz v2, :cond_27

    .line 1014
    .line 1015
    move v2, v5

    .line 1016
    goto :goto_12

    .line 1017
    :cond_27
    move v2, v7

    .line 1018
    :goto_12
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    .line 1020
    .line 1021
    iget-object v0, v0, Lm0/w1;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 1022
    .line 1023
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1024
    .line 1025
    .line 1026
    move-result v1

    .line 1027
    if-eqz v1, :cond_28

    .line 1028
    .line 1029
    move v5, v7

    .line 1030
    :cond_28
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1031
    .line 1032
    .line 1033
    :goto_13
    return-void

    .line 1034
    :pswitch_7
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 1035
    .line 1036
    move-object v9, v0

    .line 1037
    check-cast v9, Lm0/n0;

    .line 1038
    .line 1039
    iget-object v0, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 1040
    .line 1041
    check-cast v0, Landroid/content/Context;

    .line 1042
    .line 1043
    iget v10, p0, Landroidx/activity/f;->d:I

    .line 1044
    .line 1045
    sget-object v1, Lm0/n0;->k:Ljava/lang/String;

    .line 1046
    .line 1047
    :try_start_8
    invoke-static {v0}, Lcom/bumptech/glide/d;->n(Landroid/content/Context;)Ld1/a;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1051
    :try_start_9
    iget v2, v9, Lm0/n0;->c:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1052
    .line 1053
    if-eq v10, v2, :cond_29

    .line 1054
    .line 1055
    :goto_14
    :try_start_a
    invoke-virtual {v1}, Ld1/a;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1056
    .line 1057
    .line 1058
    goto/16 :goto_1a

    .line 1059
    .line 1060
    :cond_29
    const/16 v2, 0x9

    .line 1061
    .line 1062
    :try_start_b
    new-array v2, v2, [B

    .line 1063
    .line 1064
    fill-array-data v2, :array_8

    .line 1065
    .line 1066
    .line 1067
    new-array v4, v7, [B

    .line 1068
    .line 1069
    fill-array-data v4, :array_9

    .line 1070
    .line 1071
    .line 1072
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v2

    .line 1076
    new-array v3, v3, [B

    .line 1077
    .line 1078
    fill-array-data v3, :array_a

    .line 1079
    .line 1080
    .line 1081
    new-array v4, v7, [B

    .line 1082
    .line 1083
    fill-array-data v4, :array_b

    .line 1084
    .line 1085
    .line 1086
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v3

    .line 1090
    invoke-virtual {v1, v3}, Ld1/a;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v3

    .line 1094
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v3

    .line 1098
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1099
    .line 1100
    .line 1101
    move-result v2

    .line 1102
    if-eqz v2, :cond_2f

    .line 1103
    .line 1104
    new-instance v2, Landroidx/fragment/app/h;

    .line 1105
    .line 1106
    const/16 v3, 0x13

    .line 1107
    .line 1108
    invoke-direct {v2, v3, v1}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 1109
    .line 1110
    .line 1111
    invoke-static {v2}, Ld1/d;->c(Landroidx/fragment/app/h;)Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v11

    .line 1115
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    new-instance v12, Ljava/util/ArrayList;

    .line 1120
    .line 1121
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v2

    .line 1128
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v2

    .line 1132
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1133
    .line 1134
    .line 1135
    move-result v3

    .line 1136
    if-eqz v3, :cond_2e

    .line 1137
    .line 1138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v3

    .line 1142
    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 1143
    .line 1144
    iget v4, v9, Lm0/n0;->c:I

    .line 1145
    .line 1146
    if-eq v10, v4, :cond_2a

    .line 1147
    .line 1148
    goto :goto_14

    .line 1149
    :cond_2a
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1150
    .line 1151
    and-int/lit16 v4, v4, 0x81

    .line 1152
    .line 1153
    if-eqz v4, :cond_2b

    .line 1154
    .line 1155
    goto :goto_15

    .line 1156
    :cond_2b
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v4

    .line 1160
    new-instance v8, Lm0/k0;

    .line 1161
    .line 1162
    iget-object v13, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1163
    .line 1164
    if-nez v4, :cond_2c

    .line 1165
    .line 1166
    move-object v4, v13

    .line 1167
    goto :goto_16

    .line 1168
    :cond_2c
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v4

    .line 1172
    :goto_16
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v14

    .line 1176
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1177
    .line 1178
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v3

    .line 1182
    if-eqz v3, :cond_2d

    .line 1183
    .line 1184
    move v3, v6

    .line 1185
    goto :goto_17

    .line 1186
    :cond_2d
    move v3, v5

    .line 1187
    :goto_17
    invoke-direct {v8, v13, v4, v14, v3}, Lm0/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    .line 1192
    .line 1193
    goto :goto_15

    .line 1194
    :catchall_2
    move-exception v0

    .line 1195
    move-object v2, v0

    .line 1196
    goto :goto_18

    .line 1197
    :cond_2e
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    new-instance v2, Lh3/d;

    .line 1202
    .line 1203
    invoke-direct {v2, v6, v0}, Lh3/d;-><init>(ILjava/lang/Object;)V

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1207
    .line 1208
    .line 1209
    iget-object v0, v9, Lm0/n0;->b:Landroid/os/Handler;

    .line 1210
    .line 1211
    new-instance v8, Lj2/d;

    .line 1212
    .line 1213
    const/4 v13, 0x2

    .line 1214
    invoke-direct/range {v8 .. v13}, Lj2/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1218
    .line 1219
    .line 1220
    goto/16 :goto_14

    .line 1221
    .line 1222
    :cond_2f
    new-instance v0, Ljava/io/IOException;

    .line 1223
    .line 1224
    const/16 v2, 0xb

    .line 1225
    .line 1226
    new-array v2, v2, [B

    .line 1227
    .line 1228
    fill-array-data v2, :array_c

    .line 1229
    .line 1230
    .line 1231
    new-array v3, v7, [B

    .line 1232
    .line 1233
    fill-array-data v3, :array_d

    .line 1234
    .line 1235
    .line 1236
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v2

    .line 1240
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1244
    :goto_18
    :try_start_c
    invoke-virtual {v1}, Ld1/a;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1245
    .line 1246
    .line 1247
    goto :goto_19

    .line 1248
    :catchall_3
    move-exception v0

    .line 1249
    :try_start_d
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1250
    .line 1251
    .line 1252
    :goto_19
    throw v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 1253
    :catch_6
    iget-object v0, v9, Lm0/n0;->b:Landroid/os/Handler;

    .line 1254
    .line 1255
    new-instance v1, La4/c;

    .line 1256
    .line 1257
    invoke-direct {v1, v9, v10, v7}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1261
    .line 1262
    .line 1263
    :goto_1a
    return-void

    .line 1264
    :pswitch_8
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 1265
    .line 1266
    check-cast v0, Lcom/bumptech/glide/m;

    .line 1267
    .line 1268
    iget v1, p0, Landroidx/activity/f;->d:I

    .line 1269
    .line 1270
    iget-object v3, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 1271
    .line 1272
    check-cast v3, Lorg/json/JSONObject;

    .line 1273
    .line 1274
    iget-object v0, v0, Lcom/bumptech/glide/m;->c:Ljava/lang/Object;

    .line 1275
    .line 1276
    check-cast v0, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;

    .line 1277
    .line 1278
    invoke-static {v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->v(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Z

    .line 1279
    .line 1280
    .line 1281
    move-result v4

    .line 1282
    if-eqz v4, :cond_34

    .line 1283
    .line 1284
    invoke-static {v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->z(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)I

    .line 1285
    .line 1286
    .line 1287
    move-result v4

    .line 1288
    if-ne v1, v4, :cond_34

    .line 1289
    .line 1290
    invoke-static {v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->y(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Lm0/h0;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v1

    .line 1294
    if-eqz v1, :cond_34

    .line 1295
    .line 1296
    invoke-static {v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->K(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Z

    .line 1297
    .line 1298
    .line 1299
    move-result v1

    .line 1300
    if-nez v1, :cond_30

    .line 1301
    .line 1302
    goto :goto_1d

    .line 1303
    :cond_30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1304
    .line 1305
    .line 1306
    move-result-wide v4

    .line 1307
    invoke-static {v0, v4, v5}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->I(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;J)V

    .line 1308
    .line 1309
    .line 1310
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 1311
    .line 1312
    if-nez v3, :cond_31

    .line 1313
    .line 1314
    goto :goto_1b

    .line 1315
    :cond_31
    new-array v1, v2, [B

    .line 1316
    .line 1317
    fill-array-data v1, :array_e

    .line 1318
    .line 1319
    .line 1320
    new-array v2, v7, [B

    .line 1321
    .line 1322
    fill-array-data v2, :array_f

    .line 1323
    .line 1324
    .line 1325
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v1

    .line 1329
    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 1330
    .line 1331
    .line 1332
    move-result-wide v4

    .line 1333
    :goto_1b
    invoke-static {v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->B(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Ljava/util/ArrayDeque;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v1

    .line 1337
    new-instance v2, Lm0/g0;

    .line 1338
    .line 1339
    invoke-static {v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->C(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)J

    .line 1340
    .line 1341
    .line 1342
    move-result-wide v6

    .line 1343
    invoke-direct {v2, v6, v7, v4, v5}, Lm0/g0;-><init>(JD)V

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1347
    .line 1348
    .line 1349
    :goto_1c
    invoke-static {v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->B(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Ljava/util/ArrayDeque;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v1

    .line 1353
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1354
    .line 1355
    .line 1356
    move-result v1

    .line 1357
    if-nez v1, :cond_33

    .line 1358
    .line 1359
    invoke-static {v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->B(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Ljava/util/ArrayDeque;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v1

    .line 1363
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 1364
    .line 1365
    .line 1366
    move-result v1

    .line 1367
    const/16 v2, 0x709

    .line 1368
    .line 1369
    if-gt v1, v2, :cond_32

    .line 1370
    .line 1371
    invoke-static {v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->C(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)J

    .line 1372
    .line 1373
    .line 1374
    move-result-wide v1

    .line 1375
    invoke-static {v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->B(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Ljava/util/ArrayDeque;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v4

    .line 1379
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v4

    .line 1383
    check-cast v4, Lm0/g0;

    .line 1384
    .line 1385
    iget-wide v4, v4, Lm0/g0;->a:J

    .line 1386
    .line 1387
    sub-long/2addr v1, v4

    .line 1388
    const-wide/32 v4, 0x1b7740

    .line 1389
    .line 1390
    .line 1391
    cmp-long v1, v1, v4

    .line 1392
    .line 1393
    if-lez v1, :cond_33

    .line 1394
    .line 1395
    :cond_32
    invoke-static {v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->B(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Ljava/util/ArrayDeque;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v1

    .line 1399
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1400
    .line 1401
    .line 1402
    goto :goto_1c

    .line 1403
    :cond_33
    invoke-static {v0, v3}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->L(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;Lorg/json/JSONObject;)V

    .line 1404
    .line 1405
    .line 1406
    :cond_34
    :goto_1d
    return-void

    .line 1407
    :pswitch_9
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 1408
    .line 1409
    move-object v1, v0

    .line 1410
    check-cast v1, Lm0/i;

    .line 1411
    .line 1412
    iget-object v0, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 1413
    .line 1414
    check-cast v0, Landroid/content/Context;

    .line 1415
    .line 1416
    iget v2, p0, Landroidx/activity/f;->d:I

    .line 1417
    .line 1418
    :try_start_e
    invoke-static {v0}, Lcom/bumptech/glide/d;->n(Landroid/content/Context;)Ld1/a;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 1422
    const/16 v0, 0x9

    .line 1423
    .line 1424
    :try_start_f
    new-array v0, v0, [B

    .line 1425
    .line 1426
    fill-array-data v0, :array_10

    .line 1427
    .line 1428
    .line 1429
    new-array v6, v7, [B

    .line 1430
    .line 1431
    fill-array-data v6, :array_11

    .line 1432
    .line 1433
    .line 1434
    invoke-static {v0, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v0

    .line 1438
    new-array v3, v3, [B

    .line 1439
    .line 1440
    fill-array-data v3, :array_12

    .line 1441
    .line 1442
    .line 1443
    new-array v6, v7, [B

    .line 1444
    .line 1445
    fill-array-data v6, :array_13

    .line 1446
    .line 1447
    .line 1448
    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v3

    .line 1452
    invoke-virtual {v4, v3}, Ld1/a;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v3

    .line 1456
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v3

    .line 1460
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1461
    .line 1462
    .line 1463
    move-result v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1464
    :try_start_10
    invoke-virtual {v4}, Ld1/a;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    .line 1465
    .line 1466
    .line 1467
    goto :goto_1f

    .line 1468
    :catchall_4
    move-exception v0

    .line 1469
    move-object v3, v0

    .line 1470
    :try_start_11
    invoke-virtual {v4}, Ld1/a;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 1471
    .line 1472
    .line 1473
    goto :goto_1e

    .line 1474
    :catchall_5
    move-exception v0

    .line 1475
    :try_start_12
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1476
    .line 1477
    .line 1478
    :goto_1e
    throw v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    .line 1479
    :catch_7
    :goto_1f
    iget-object v0, v1, Lm0/i;->g:Landroid/os/Handler;

    .line 1480
    .line 1481
    new-instance v3, Lm0/e;

    .line 1482
    .line 1483
    invoke-direct {v3, v1, v2, v5}, Lm0/e;-><init>(Lm0/i;IZ)V

    .line 1484
    .line 1485
    .line 1486
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1487
    .line 1488
    .line 1489
    return-void

    .line 1490
    :pswitch_a
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 1491
    .line 1492
    check-cast v0, Lcom/example/navistart/VibVodActivity;

    .line 1493
    .line 1494
    iget-object v2, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 1495
    .line 1496
    check-cast v2, Ljava/lang/Boolean;

    .line 1497
    .line 1498
    iget v3, p0, Landroidx/activity/f;->d:I

    .line 1499
    .line 1500
    sget-object v7, Lcom/example/navistart/VibVodActivity;->g:Ljava/lang/Boolean;

    .line 1501
    .line 1502
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1503
    .line 1504
    .line 1505
    move-result v2

    .line 1506
    if-eqz v2, :cond_3b

    .line 1507
    .line 1508
    if-eq v3, v6, :cond_39

    .line 1509
    .line 1510
    if-eq v3, v1, :cond_37

    .line 1511
    .line 1512
    if-eq v3, v4, :cond_35

    .line 1513
    .line 1514
    goto/16 :goto_20

    .line 1515
    .line 1516
    :cond_35
    iget-object v1, v0, Lcom/example/navistart/VibVodActivity;->e:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 1517
    .line 1518
    invoke-virtual {v1}, Lcom/example/navistart/mainview/HeatingButtonView;->getEnabled()Ljava/lang/Boolean;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v1

    .line 1522
    sput-object v1, Lcom/example/navistart/VibVodActivity;->g:Ljava/lang/Boolean;

    .line 1523
    .line 1524
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1525
    .line 1526
    .line 1527
    move-result v1

    .line 1528
    iget-object v0, v0, Lcom/example/navistart/VibVodActivity;->e:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 1529
    .line 1530
    if-eqz v1, :cond_36

    .line 1531
    .line 1532
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1533
    .line 1534
    .line 1535
    iput-boolean v5, v0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 1536
    .line 1537
    invoke-virtual {v0, v6}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 1538
    .line 1539
    .line 1540
    goto/16 :goto_20

    .line 1541
    .line 1542
    :cond_36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1543
    .line 1544
    .line 1545
    iput-boolean v6, v0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 1546
    .line 1547
    invoke-virtual {v0, v4}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 1548
    .line 1549
    .line 1550
    goto :goto_20

    .line 1551
    :cond_37
    iget-object v1, v0, Lcom/example/navistart/VibVodActivity;->d:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 1552
    .line 1553
    invoke-virtual {v1}, Lcom/example/navistart/mainview/HeatingButtonView;->getEnabled()Ljava/lang/Boolean;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v1

    .line 1557
    sput-object v1, Lcom/example/navistart/VibVodActivity;->g:Ljava/lang/Boolean;

    .line 1558
    .line 1559
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1560
    .line 1561
    .line 1562
    move-result v1

    .line 1563
    iget-object v0, v0, Lcom/example/navistart/VibVodActivity;->d:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 1564
    .line 1565
    if-eqz v1, :cond_38

    .line 1566
    .line 1567
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1568
    .line 1569
    .line 1570
    iput-boolean v5, v0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 1571
    .line 1572
    invoke-virtual {v0, v6}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 1573
    .line 1574
    .line 1575
    goto :goto_20

    .line 1576
    :cond_38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1577
    .line 1578
    .line 1579
    iput-boolean v6, v0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 1580
    .line 1581
    invoke-virtual {v0, v4}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 1582
    .line 1583
    .line 1584
    goto :goto_20

    .line 1585
    :cond_39
    iget-object v1, v0, Lcom/example/navistart/VibVodActivity;->c:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 1586
    .line 1587
    invoke-virtual {v1}, Lcom/example/navistart/mainview/HeatingButtonView;->getEnabled()Ljava/lang/Boolean;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v1

    .line 1591
    sput-object v1, Lcom/example/navistart/VibVodActivity;->g:Ljava/lang/Boolean;

    .line 1592
    .line 1593
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1594
    .line 1595
    .line 1596
    move-result v1

    .line 1597
    iget-object v0, v0, Lcom/example/navistart/VibVodActivity;->c:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 1598
    .line 1599
    if-eqz v1, :cond_3a

    .line 1600
    .line 1601
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1602
    .line 1603
    .line 1604
    iput-boolean v5, v0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 1605
    .line 1606
    invoke-virtual {v0, v6}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 1607
    .line 1608
    .line 1609
    goto :goto_20

    .line 1610
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1611
    .line 1612
    .line 1613
    iput-boolean v6, v0, Lcom/example/navistart/mainview/HeatingButtonView;->e:Z

    .line 1614
    .line 1615
    invoke-virtual {v0, v4}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 1616
    .line 1617
    .line 1618
    goto :goto_20

    .line 1619
    :cond_3b
    if-eq v3, v6, :cond_3e

    .line 1620
    .line 1621
    if-eq v3, v1, :cond_3d

    .line 1622
    .line 1623
    if-eq v3, v4, :cond_3c

    .line 1624
    .line 1625
    goto :goto_20

    .line 1626
    :cond_3c
    iget-object v0, v0, Lcom/example/navistart/VibVodActivity;->e:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 1627
    .line 1628
    sget-object v1, Lcom/example/navistart/VibVodActivity;->g:Ljava/lang/Boolean;

    .line 1629
    .line 1630
    invoke-virtual {v0, v1}, Lcom/example/navistart/mainview/HeatingButtonView;->d(Ljava/lang/Boolean;)V

    .line 1631
    .line 1632
    .line 1633
    goto :goto_20

    .line 1634
    :cond_3d
    iget-object v0, v0, Lcom/example/navistart/VibVodActivity;->d:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 1635
    .line 1636
    sget-object v1, Lcom/example/navistart/VibVodActivity;->g:Ljava/lang/Boolean;

    .line 1637
    .line 1638
    invoke-virtual {v0, v1}, Lcom/example/navistart/mainview/HeatingButtonView;->d(Ljava/lang/Boolean;)V

    .line 1639
    .line 1640
    .line 1641
    goto :goto_20

    .line 1642
    :cond_3e
    iget-object v0, v0, Lcom/example/navistart/VibVodActivity;->c:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 1643
    .line 1644
    sget-object v1, Lcom/example/navistart/VibVodActivity;->g:Ljava/lang/Boolean;

    .line 1645
    .line 1646
    invoke-virtual {v0, v1}, Lcom/example/navistart/mainview/HeatingButtonView;->d(Ljava/lang/Boolean;)V

    .line 1647
    .line 1648
    .line 1649
    :goto_20
    return-void

    .line 1650
    :pswitch_b
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 1651
    .line 1652
    check-cast v0, Landroidx/profileinstaller/DeviceProfileWriter;

    .line 1653
    .line 1654
    iget v1, p0, Landroidx/activity/f;->d:I

    .line 1655
    .line 1656
    iget-object v2, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 1657
    .line 1658
    invoke-static {v0, v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->a(Landroidx/profileinstaller/DeviceProfileWriter;ILjava/lang/Object;)V

    .line 1659
    .line 1660
    .line 1661
    return-void

    .line 1662
    :pswitch_c
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 1663
    .line 1664
    check-cast v0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 1665
    .line 1666
    iget v1, p0, Landroidx/activity/f;->d:I

    .line 1667
    .line 1668
    iget-object v2, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 1669
    .line 1670
    check-cast v2, Landroid/content/IntentSender$SendIntentException;

    .line 1671
    .line 1672
    invoke-static {v0, v1, v2}, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->b(Landroidx/activity/ComponentActivity$activityResultRegistry$1;ILandroid/content/IntentSender$SendIntentException;)V

    .line 1673
    .line 1674
    .line 1675
    return-void

    .line 1676
    :pswitch_d
    iget-object v0, p0, Landroidx/activity/f;->c:Ljava/lang/Object;

    .line 1677
    .line 1678
    check-cast v0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 1679
    .line 1680
    iget v1, p0, Landroidx/activity/f;->d:I

    .line 1681
    .line 1682
    iget-object v2, p0, Landroidx/activity/f;->e:Ljava/lang/Object;

    .line 1683
    .line 1684
    check-cast v2, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    .line 1685
    .line 1686
    invoke-static {v0, v1, v2}, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->c(Landroidx/activity/ComponentActivity$activityResultRegistry$1;ILandroidx/activity/result/contract/ActivityResultContract$SynchronousResult;)V

    .line 1687
    .line 1688
    .line 1689
    return-void

    .line 1690
    nop

    .line 1691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
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
    :array_0
    .array-data 1
        -0x3t
        0x3at
        0x3ct
        0x4at
        -0x60t
        0x2ct
        -0x5et
        -0x39t
        -0x3t
        0x3et
        0x3ct
        0x4at
        -0x66t
        0x2bt
    .end array-data

    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    nop

    .line 1735
    :array_1
    .array-data 1
        -0x62t
        0x5bt
        0x50t
        0x26t
        -0x1t
        0x4ft
        -0x3dt
        -0x57t
    .end array-data

    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    :array_2
    .array-data 1
        -0x72t
        -0x6at
        -0x23t
        0x2et
        0x6ft
        -0x43t
        -0x51t
        0x43t
        -0x7at
        -0x6at
        -0x33t
        0x39t
        0x6et
        -0x60t
        -0x1bt
        0xct
        -0x74t
        -0x74t
        -0x30t
        0x33t
        0x6et
        -0x6t
        -0x7at
        0x2ct
        -0x5at
        -0x4at
    .end array-data

    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    nop

    .line 1761
    :array_3
    .array-data 1
        -0x11t
        -0x8t
        -0x47t
        0x5ct
        0x0t
        -0x2ct
        -0x35t
        0x6dt
    .end array-data

    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    :array_4
    .array-data 1
        0x61t
        0x68t
        0x52t
        0x4bt
        0x7t
        -0x6bt
        0x1dt
        0x3ft
        0x69t
        0x68t
        0x42t
        0x5ct
        0x6t
        -0x78t
        0x57t
        0x72t
        0x61t
        0x72t
        0x53t
        0x5et
        0x7t
        -0x72t
        0x0t
        0x3ft
        0x4ct
        0x47t
        0x63t
        0x77t
        0x2bt
        -0x4ct
        0x3ct
        0x43t
    .end array-data

    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    :array_5
    .array-data 1
        0x0t
        0x6t
        0x36t
        0x39t
        0x68t
        -0x4t
        0x79t
        0x11t
    .end array-data

    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    :array_6
    .array-data 1
        -0x2ft
        0x52t
        0x1ft
        0x4ct
        0x5ft
        0x2ft
        0x31t
        0x6at
    .end array-data

    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    :array_7
    .array-data 1
        -0x50t
        0x31t
        0x6bt
        0x25t
        0x29t
        0x46t
        0x45t
        0x13t
    .end array-data

    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    :array_8
    .array-data 1
        -0x12t
        -0x69t
        0x17t
        0x3bt
        -0x6et
        -0x5dt
        -0x48t
        0x25t
        -0x3t
    .end array-data

    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    nop

    .line 1823
    :array_9
    .array-data 1
        -0x5ct
        -0x2ct
        0x43t
        0x64t
        -0x40t
        -0x1at
        -0x7t
        0x61t
    .end array-data

    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    :array_a
    .array-data 1
        0x30t
        0x6t
        -0x2bt
        0x12t
        0x42t
        -0x77t
        0x75t
        0x6t
        0xat
        0x37t
        -0x8t
        0x3ct
        0x26t
        -0x66t
    .end array-data

    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    nop

    .line 1843
    :array_b
    .array-data 1
        0x55t
        0x65t
        -0x43t
        0x7dt
        0x62t
        -0x3dt
        0x36t
        0x52t
    .end array-data

    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    :array_c
    .array-data 1
        -0x1at
        0xat
        -0x5ct
        0x26t
        -0x22t
        -0x4at
        0x2et
        0x11t
        -0x2ft
        0x8t
        -0x60t
    .end array-data

    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    :array_d
    .array-data 1
        -0x4dt
        0x64t
        -0x3bt
        0x50t
        -0x41t
        -0x21t
        0x42t
        0x70t
    .end array-data

    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    :array_e
    .array-data 1
        -0x77t
        0x76t
        0x6dt
        -0x7t
        -0x22t
        -0x59t
        -0x3at
    .end array-data

    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    :array_f
    .array-data 1
        -0x7t
        0x19t
        0x1at
        -0x64t
        -0x54t
        -0x14t
        -0x4ft
        0x4et
    .end array-data

    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    :array_10
    .array-data 1
        0xet
        0x71t
        -0xet
        0x4t
        -0x32t
        0x1ft
        -0xbt
        -0x23t
        0x1dt
    .end array-data

    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    nop

    .line 1895
    :array_11
    .array-data 1
        0x44t
        0x32t
        -0x5at
        0x5bt
        -0x64t
        0x5at
        -0x4ct
        -0x67t
    .end array-data

    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    :array_12
    .array-data 1
        0x45t
        -0x3et
        -0x1bt
        0x8t
        -0x4et
        0x2t
        0x50t
        0x1t
        0x7ft
        -0xdt
        -0x38t
        0x26t
        -0x2at
        0x11t
    .end array-data

    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    nop

    .line 1915
    :array_13
    .array-data 1
        0x20t
        -0x5ft
        -0x73t
        0x67t
        -0x6et
        0x48t
        0x13t
        0x55t
    .end array-data
.end method
