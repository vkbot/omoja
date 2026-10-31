.class public final Lj/e0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lj/g;
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field public final b:Lj/k;

.field public final c:Lj/h;

.field public d:I

.field public e:I

.field public f:Lh/e;

.field public g:Ljava/util/List;

.field public h:I

.field public volatile i:Ln/q;

.field public j:Ljava/io/File;

.field public k:Lj/f0;


# direct methods
.method public constructor <init>(Lj/h;Lj/k;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lj/e0;->e:I

    .line 6
    .line 7
    iput-object p1, p0, Lj/e0;->c:Lj/h;

    .line 8
    .line 9
    iput-object p2, p0, Lj/e0;->b:Lj/k;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final c()Z
    .registers 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "Failed to find any load path from "

    .line 4
    .line 5
    iget-object v2, v1, Lj/e0;->c:Lj/h;

    .line 6
    .line 7
    invoke-virtual {v2}, Lj/h;->a()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_14

    .line 16
    .line 17
    const/16 v17, 0x0

    .line 18
    .line 19
    goto/16 :goto_170

    .line 20
    .line 21
    :cond_14
    iget-object v3, v1, Lj/e0;->c:Lj/h;

    .line 22
    .line 23
    iget-object v5, v3, Lj/h;->c:Lcom/bumptech/glide/e;

    .line 24
    .line 25
    invoke-virtual {v5}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/j;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget-object v6, v3, Lj/h;->d:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-object v7, v3, Lj/h;->g:Ljava/lang/Class;

    .line 36
    .line 37
    iget-object v3, v3, Lj/h;->k:Ljava/lang/Class;

    .line 38
    .line 39
    iget-object v8, v5, Lcom/bumptech/glide/j;->h:Ll/d;

    .line 40
    .line 41
    iget-object v9, v8, Ll/d;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v9, Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    check-cast v9, Lc0/n;

    .line 51
    .line 52
    if-nez v9, :cond_3b

    .line 53
    .line 54
    new-instance v9, Lc0/n;

    .line 55
    .line 56
    invoke-direct {v9, v6, v7, v3}, Lc0/n;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 57
    .line 58
    .line 59
    goto :goto_41

    .line 60
    :cond_3b
    iput-object v6, v9, Lc0/n;->a:Ljava/lang/Class;

    .line 61
    .line 62
    iput-object v7, v9, Lc0/n;->b:Ljava/lang/Class;

    .line 63
    .line 64
    iput-object v3, v9, Lc0/n;->c:Ljava/lang/Class;

    .line 65
    .line 66
    :goto_41
    iget-object v11, v8, Ll/d;->d:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v11, Landroidx/collection/ArrayMap;

    .line 69
    .line 70
    monitor-enter v11

    .line 71
    :try_start_46
    iget-object v12, v8, Ll/d;->d:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v12, Landroidx/collection/ArrayMap;

    .line 74
    .line 75
    invoke-virtual {v12, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    check-cast v12, Ljava/util/List;

    .line 80
    .line 81
    monitor-exit v11
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_1db

    .line 82
    iget-object v8, v8, Ll/d;->c:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v8, Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    .line 86
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    if-nez v12, :cond_ca

    .line 90
    .line 91
    new-instance v12, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v8, v5, Lcom/bumptech/glide/j;->a:Ln/u;

    .line 97
    .line 98
    monitor-enter v8

    .line 99
    :try_start_62
    iget-object v9, v8, Ln/u;->a:Ln/z;

    .line 100
    .line 101
    invoke-virtual {v9, v6}, Ln/z;->c(Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    move-result-object v9
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_c7

    .line 105
    monitor-exit v8

    .line 106
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    const/4 v11, 0x0

    .line 111
    :cond_6e
    if-ge v11, v8, :cond_a8

    .line 112
    .line 113
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    add-int/lit8 v11, v11, 0x1

    .line 118
    .line 119
    check-cast v13, Ljava/lang/Class;

    .line 120
    .line 121
    iget-object v14, v5, Lcom/bumptech/glide/j;->c:Ll/d;

    .line 122
    .line 123
    invoke-virtual {v14, v13, v7}, Ll/d;->u(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    const/4 v15, 0x0

    .line 132
    :goto_83
    if-ge v15, v14, :cond_6e

    .line 133
    .line 134
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v16

    .line 138
    add-int/lit8 v15, v15, 0x1

    .line 139
    .line 140
    const/16 v17, 0x0

    .line 141
    .line 142
    move-object/from16 v4, v16

    .line 143
    .line 144
    check-cast v4, Ljava/lang/Class;

    .line 145
    .line 146
    iget-object v10, v5, Lcom/bumptech/glide/j;->f:Li7/i;

    .line 147
    .line 148
    invoke-virtual {v10, v4, v3}, Li7/i;->e(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    if-nez v10, :cond_a6

    .line 157
    .line 158
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-nez v10, :cond_a6

    .line 163
    .line 164
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    :cond_a6
    const/4 v10, 0x0

    .line 168
    goto :goto_83

    .line 169
    :cond_a8
    const/16 v17, 0x0

    .line 170
    .line 171
    iget-object v4, v5, Lcom/bumptech/glide/j;->h:Ll/d;

    .line 172
    .line 173
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    iget-object v8, v4, Ll/d;->d:Ljava/lang/Object;

    .line 178
    .line 179
    move-object v9, v8

    .line 180
    check-cast v9, Landroidx/collection/ArrayMap;

    .line 181
    .line 182
    monitor-enter v9

    .line 183
    :try_start_b6
    iget-object v4, v4, Ll/d;->d:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v4, Landroidx/collection/ArrayMap;

    .line 186
    .line 187
    new-instance v8, Lc0/n;

    .line 188
    .line 189
    invoke-direct {v8, v6, v7, v3}, Lc0/n;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v8, v5}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    monitor-exit v9

    .line 196
    goto :goto_cc

    .line 197
    :catchall_c4
    move-exception v0

    .line 198
    monitor-exit v9
    :try_end_c6
    .catchall {:try_start_b6 .. :try_end_c6} :catchall_c4

    .line 199
    throw v0

    .line 200
    :catchall_c7
    move-exception v0

    .line 201
    :try_start_c8
    monitor-exit v8
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    .line 202
    throw v0

    .line 203
    :cond_ca
    const/16 v17, 0x0

    .line 204
    .line 205
    :goto_cc
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_fb

    .line 210
    .line 211
    const-class v2, Ljava/io/File;

    .line 212
    .line 213
    iget-object v3, v1, Lj/e0;->c:Lj/h;

    .line 214
    .line 215
    iget-object v3, v3, Lj/h;->k:Ljava/lang/Class;

    .line 216
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_e0

    .line 222
    .line 223
    goto/16 :goto_170

    .line 224
    .line 225
    :cond_e0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, v1, Lj/e0;->c:Lj/h;

    .line 231
    .line 232
    iget-object v0, v0, Lj/h;->d:Ljava/lang/Object;

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v0, " to "

    .line 242
    .line 243
    iget-object v3, v1, Lj/e0;->c:Lj/h;

    .line 244
    .line 245
    iget-object v3, v3, Lj/h;->k:Ljava/lang/Class;

    .line 246
    .line 247
    invoke-static {v2, v0, v3}, Lai/onnxruntime/b;->p(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    const/4 v0, 0x0

    .line 251
    return v0

    .line 252
    :cond_fb
    :goto_fb
    iget-object v0, v1, Lj/e0;->g:Ljava/util/List;

    .line 253
    .line 254
    const/4 v3, 0x1

    .line 255
    if-eqz v0, :cond_159

    .line 256
    .line 257
    iget v4, v1, Lj/e0;->h:I

    .line 258
    .line 259
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-ge v4, v0, :cond_159

    .line 264
    .line 265
    const/4 v0, 0x0

    .line 266
    iput-object v0, v1, Lj/e0;->i:Ln/q;

    .line 267
    .line 268
    move/from16 v4, v17

    .line 269
    .line 270
    :cond_10d
    :goto_10d
    if-nez v4, :cond_158

    .line 271
    .line 272
    iget v0, v1, Lj/e0;->h:I

    .line 273
    .line 274
    iget-object v2, v1, Lj/e0;->g:Ljava/util/List;

    .line 275
    .line 276
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-ge v0, v2, :cond_158

    .line 281
    .line 282
    iget-object v0, v1, Lj/e0;->g:Ljava/util/List;

    .line 283
    .line 284
    iget v2, v1, Lj/e0;->h:I

    .line 285
    .line 286
    add-int/lit8 v5, v2, 0x1

    .line 287
    .line 288
    iput v5, v1, Lj/e0;->h:I

    .line 289
    .line 290
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Ln/r;

    .line 295
    .line 296
    iget-object v2, v1, Lj/e0;->j:Ljava/io/File;

    .line 297
    .line 298
    iget-object v5, v1, Lj/e0;->c:Lj/h;

    .line 299
    .line 300
    iget v6, v5, Lj/h;->e:I

    .line 301
    .line 302
    iget v7, v5, Lj/h;->f:I

    .line 303
    .line 304
    iget-object v5, v5, Lj/h;->i:Lh/h;

    .line 305
    .line 306
    invoke-interface {v0, v2, v6, v7, v5}, Ln/r;->b(Ljava/lang/Object;IILh/h;)Ln/q;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    iput-object v0, v1, Lj/e0;->i:Ln/q;

    .line 311
    .line 312
    iget-object v0, v1, Lj/e0;->i:Ln/q;

    .line 313
    .line 314
    if-eqz v0, :cond_10d

    .line 315
    .line 316
    iget-object v0, v1, Lj/e0;->c:Lj/h;

    .line 317
    .line 318
    iget-object v2, v1, Lj/e0;->i:Ln/q;

    .line 319
    .line 320
    iget-object v2, v2, Ln/q;->c:Lcom/bumptech/glide/load/data/e;

    .line 321
    .line 322
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-virtual {v0, v2}, Lj/h;->c(Ljava/lang/Class;)Lj/b0;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    if-eqz v0, :cond_10d

    .line 331
    .line 332
    iget-object v0, v1, Lj/e0;->i:Ln/q;

    .line 333
    .line 334
    iget-object v0, v0, Ln/q;->c:Lcom/bumptech/glide/load/data/e;

    .line 335
    .line 336
    iget-object v2, v1, Lj/e0;->c:Lj/h;

    .line 337
    .line 338
    iget-object v2, v2, Lj/h;->o:Lcom/bumptech/glide/h;

    .line 339
    .line 340
    invoke-interface {v0, v2, v1}, Lcom/bumptech/glide/load/data/e;->e(Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/data/d;)V

    .line 341
    .line 342
    .line 343
    move v4, v3

    .line 344
    goto :goto_10d

    .line 345
    :cond_158
    return v4

    .line 346
    :cond_159
    const/4 v0, 0x0

    .line 347
    iget v4, v1, Lj/e0;->e:I

    .line 348
    .line 349
    add-int/2addr v4, v3

    .line 350
    iput v4, v1, Lj/e0;->e:I

    .line 351
    .line 352
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-lt v4, v5, :cond_175

    .line 357
    .line 358
    iget v4, v1, Lj/e0;->d:I

    .line 359
    .line 360
    add-int/2addr v4, v3

    .line 361
    iput v4, v1, Lj/e0;->d:I

    .line 362
    .line 363
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-lt v4, v3, :cond_171

    .line 368
    .line 369
    :goto_170
    return v17

    .line 370
    :cond_171
    move/from16 v3, v17

    .line 371
    .line 372
    iput v3, v1, Lj/e0;->e:I

    .line 373
    .line 374
    :cond_175
    iget v3, v1, Lj/e0;->d:I

    .line 375
    .line 376
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    move-object/from16 v20, v3

    .line 381
    .line 382
    check-cast v20, Lh/e;

    .line 383
    .line 384
    iget v3, v1, Lj/e0;->e:I

    .line 385
    .line 386
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    check-cast v3, Ljava/lang/Class;

    .line 391
    .line 392
    iget-object v4, v1, Lj/e0;->c:Lj/h;

    .line 393
    .line 394
    invoke-virtual {v4, v3}, Lj/h;->e(Ljava/lang/Class;)Lh/l;

    .line 395
    .line 396
    .line 397
    move-result-object v24

    .line 398
    new-instance v18, Lj/f0;

    .line 399
    .line 400
    iget-object v4, v1, Lj/e0;->c:Lj/h;

    .line 401
    .line 402
    iget-object v5, v4, Lj/h;->c:Lcom/bumptech/glide/e;

    .line 403
    .line 404
    iget-object v5, v5, Lcom/bumptech/glide/e;->a:Lk/g;

    .line 405
    .line 406
    iget-object v6, v4, Lj/h;->n:Lh/e;

    .line 407
    .line 408
    iget v7, v4, Lj/h;->e:I

    .line 409
    .line 410
    iget v8, v4, Lj/h;->f:I

    .line 411
    .line 412
    iget-object v9, v4, Lj/h;->i:Lh/h;

    .line 413
    .line 414
    move-object/from16 v25, v3

    .line 415
    .line 416
    move-object/from16 v19, v5

    .line 417
    .line 418
    move-object/from16 v21, v6

    .line 419
    .line 420
    move/from16 v22, v7

    .line 421
    .line 422
    move/from16 v23, v8

    .line 423
    .line 424
    move-object/from16 v26, v9

    .line 425
    .line 426
    invoke-direct/range {v18 .. v26}, Lj/f0;-><init>(Lk/g;Lh/e;Lh/e;IILh/l;Ljava/lang/Class;Lh/h;)V

    .line 427
    .line 428
    .line 429
    move-object/from16 v5, v18

    .line 430
    .line 431
    move-object/from16 v3, v20

    .line 432
    .line 433
    iput-object v5, v1, Lj/e0;->k:Lj/f0;

    .line 434
    .line 435
    iget-object v4, v4, Lj/h;->h:Lc0/h;

    .line 436
    .line 437
    invoke-virtual {v4}, Lc0/h;->a()Ll/a;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    iget-object v5, v1, Lj/e0;->k:Lj/f0;

    .line 442
    .line 443
    invoke-interface {v4, v5}, Ll/a;->c(Lh/e;)Ljava/io/File;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    iput-object v4, v1, Lj/e0;->j:Ljava/io/File;

    .line 448
    .line 449
    if-eqz v4, :cond_1d6

    .line 450
    .line 451
    iput-object v3, v1, Lj/e0;->f:Lh/e;

    .line 452
    .line 453
    iget-object v3, v1, Lj/e0;->c:Lj/h;

    .line 454
    .line 455
    iget-object v3, v3, Lj/h;->c:Lcom/bumptech/glide/e;

    .line 456
    .line 457
    invoke-virtual {v3}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/j;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/j;->f(Ljava/lang/Object;)Ljava/util/List;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    iput-object v3, v1, Lj/e0;->g:Ljava/util/List;

    .line 466
    .line 467
    const/4 v3, 0x0

    .line 468
    iput v3, v1, Lj/e0;->h:I

    .line 469
    .line 470
    goto :goto_1d7

    .line 471
    :cond_1d6
    const/4 v3, 0x0

    .line 472
    :goto_1d7
    move/from16 v17, v3

    .line 473
    .line 474
    goto/16 :goto_fb

    .line 475
    .line 476
    :catchall_1db
    move-exception v0

    .line 477
    :try_start_1dc
    monitor-exit v11
    :try_end_1dd
    .catchall {:try_start_1dc .. :try_end_1dd} :catchall_1db

    .line 478
    throw v0
.end method

.method public final cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj/e0;->i:Ln/q;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget-object v0, v0, Ln/q;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lj/e0;->b:Lj/k;

    .line 2
    .line 3
    iget-object v1, p0, Lj/e0;->k:Lj/f0;

    .line 4
    .line 5
    iget-object v2, p0, Lj/e0;->i:Ln/q;

    .line 6
    .line 7
    iget-object v2, v2, Ln/q;->c:Lcom/bumptech/glide/load/data/e;

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    invoke-virtual {v0, v1, p1, v2, v3}, Lj/k;->b(Lh/e;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lj/e0;->b:Lj/k;

    .line 2
    .line 3
    iget-object v1, p0, Lj/e0;->f:Lh/e;

    .line 4
    .line 5
    iget-object v2, p0, Lj/e0;->i:Ln/q;

    .line 6
    .line 7
    iget-object v3, v2, Ln/q;->c:Lcom/bumptech/glide/load/data/e;

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    iget-object v5, p0, Lj/e0;->k:Lj/f0;

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    invoke-virtual/range {v0 .. v5}, Lj/k;->a(Lh/e;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILh/e;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
