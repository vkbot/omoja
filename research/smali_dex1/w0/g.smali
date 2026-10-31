.class public final Lw0/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lw0/y;


# static fields
.field public static u:Lw0/b;

.field public static v:Lw0/b;

.field public static w:Lw0/f;


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public b:Ljava/util/concurrent/ScheduledFuture;

.field public final c:Landroid/media/AudioManager;

.field public d:Landroid/media/AudioFocusRequest;

.field public e:Landroid/media/AudioRecord;

.field public final f:Lorg/vosk/Model;

.field public final g:Landroid/content/Context;

.field public h:Z

.field public final i:I

.field public final j:[B

.field public final k:[B

.field public final l:Ljava/lang/Object;

.field public m:Lorg/vosk/Recognizer;

.field public n:Lorg/vosk/Recognizer;

.field public o:I

.field public p:I

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:J

.field public t:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lw0/b;->b:Lw0/b;

    .line 2
    .line 3
    sput-object v0, Lw0/g;->u:Lw0/b;

    .line 4
    .line 5
    sput-object v0, Lw0/g;->v:Lw0/b;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/16 v2, 0xc

    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    fill-array-data v3, :array_212

    .line 13
    .line 14
    .line 15
    const/16 v4, 0x8

    .line 16
    .line 17
    new-array v5, v4, [B

    .line 18
    .line 19
    fill-array-data v5, :array_21c

    .line 20
    .line 21
    .line 22
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    new-array v3, v2, [B

    .line 26
    .line 27
    fill-array-data v3, :array_224

    .line 28
    .line 29
    .line 30
    new-array v5, v4, [B

    .line 31
    .line 32
    fill-array-data v5, :array_22e

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v5, -0x1

    .line 40
    invoke-static {v5, v3}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iput-object v3, v0, Lw0/g;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    iput-boolean v3, v0, Lw0/g;->h:Z

    .line 48
    .line 49
    const/16 v5, 0x3e80

    .line 50
    .line 51
    const/16 v6, 0x10

    .line 52
    .line 53
    const/4 v7, 0x2

    .line 54
    invoke-static {v5, v6, v7}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    iput v5, v0, Lw0/g;->i:I

    .line 59
    .line 60
    const/16 v5, 0x2000

    .line 61
    .line 62
    new-array v5, v5, [B

    .line 63
    .line 64
    iput-object v5, v0, Lw0/g;->j:[B

    .line 65
    .line 66
    const v5, 0x27100

    .line 67
    .line 68
    .line 69
    new-array v5, v5, [B

    .line 70
    .line 71
    iput-object v5, v0, Lw0/g;->k:[B

    .line 72
    .line 73
    new-instance v5, Ljava/lang/Object;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v5, v0, Lw0/g;->l:Ljava/lang/Object;

    .line 79
    .line 80
    iput v3, v0, Lw0/g;->o:I

    .line 81
    .line 82
    iput v3, v0, Lw0/g;->p:I

    .line 83
    .line 84
    iput-boolean v3, v0, Lw0/g;->q:Z

    .line 85
    .line 86
    const-string v5, ""

    .line 87
    .line 88
    iput-object v5, v0, Lw0/g;->r:Ljava/lang/String;

    .line 89
    .line 90
    const-wide/16 v8, 0x0

    .line 91
    .line 92
    iput-wide v8, v0, Lw0/g;->s:J

    .line 93
    .line 94
    iput-wide v8, v0, Lw0/g;->t:J

    .line 95
    .line 96
    iput-object v1, v0, Lw0/g;->g:Landroid/content/Context;

    .line 97
    .line 98
    const/16 v5, 0x9

    .line 99
    .line 100
    new-array v5, v5, [B

    .line 101
    .line 102
    fill-array-data v5, :array_236

    .line 103
    .line 104
    .line 105
    new-array v8, v4, [B

    .line 106
    .line 107
    fill-array-data v8, :array_240

    .line 108
    .line 109
    .line 110
    invoke-static {v5, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const/4 v8, 0x4

    .line 115
    new-array v9, v8, [B

    .line 116
    .line 117
    fill-array-data v9, :array_248

    .line 118
    .line 119
    .line 120
    new-array v10, v4, [B

    .line 121
    .line 122
    fill-array-data v10, :array_24e

    .line 123
    .line 124
    .line 125
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    invoke-static {v5, v9}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    const/4 v5, 0x1

    .line 133
    invoke-static {v5}, Lcom/sun/jna/Native;->setProtected(Z)V

    .line 134
    .line 135
    .line 136
    const/16 v9, 0x15

    .line 137
    .line 138
    new-array v10, v9, [B

    .line 139
    .line 140
    fill-array-data v10, :array_256

    .line 141
    .line 142
    .line 143
    new-array v11, v4, [B

    .line 144
    .line 145
    fill-array-data v11, :array_266

    .line 146
    .line 147
    .line 148
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v10, v11}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    const/16 v10, 0xb

    .line 162
    .line 163
    new-array v10, v10, [B

    .line 164
    .line 165
    fill-array-data v10, :array_26e

    .line 166
    .line 167
    .line 168
    new-array v11, v4, [B

    .line 169
    .line 170
    fill-array-data v11, :array_278

    .line 171
    .line 172
    .line 173
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    invoke-static {v10}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-array v10, v8, [B

    .line 181
    .line 182
    fill-array-data v10, :array_280

    .line 183
    .line 184
    .line 185
    new-array v11, v4, [B

    .line 186
    .line 187
    fill-array-data v11, :array_286

    .line 188
    .line 189
    .line 190
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    invoke-static {v10}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :try_start_c4
    sget-object v10, Lw0/l1;->a:Ljava/lang/String;

    .line 198
    .line 199
    new-instance v10, Ljava/io/File;

    .line 200
    .line 201
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    sget-object v12, Lw0/l1;->a:Ljava/lang/String;

    .line 206
    .line 207
    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v10}, Lw0/l1;->e(Ljava/io/File;)Ljava/io/File;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    if-nez v10, :cond_dd

    .line 215
    .line 216
    sget-object v10, Lw0/k1;->e:Lw0/k1;

    .line 217
    .line 218
    const/4 v11, 0x0

    .line 219
    invoke-static {v1, v10, v11}, Lw0/l1;->f(Landroid/content/Context;Lw0/k1;Lw0/u0;)V

    .line 220
    .line 221
    .line 222
    :cond_dd
    new-instance v10, Ljava/io/File;

    .line 223
    .line 224
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v10}, Lw0/l1;->e(Ljava/io/File;)Ljava/io/File;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    const/4 v11, 0x5

    .line 236
    const/16 v12, 0xe

    .line 237
    .line 238
    const/4 v13, 0x6

    .line 239
    const/4 v14, 0x3

    .line 240
    const/4 v15, 0x7

    .line 241
    if-eqz v10, :cond_166

    .line 242
    .line 243
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    new-instance v6, Lorg/vosk/Model;

    .line 248
    .line 249
    invoke-direct {v6, v2}, Lorg/vosk/Model;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iput-object v6, v0, Lw0/g;->f:Lorg/vosk/Model;

    .line 253
    .line 254
    iget-object v2, v0, Lw0/g;->c:Landroid/media/AudioManager;

    .line 255
    .line 256
    if-nez v2, :cond_143

    .line 257
    .line 258
    new-array v2, v11, [B

    .line 259
    .line 260
    const/16 v6, -0x7a

    .line 261
    .line 262
    aput-byte v6, v2, v3

    .line 263
    .line 264
    const/16 v6, 0x5e

    .line 265
    .line 266
    aput-byte v6, v2, v5

    .line 267
    .line 268
    aput-byte v12, v2, v7

    .line 269
    .line 270
    const/16 v6, -0x5f

    .line 271
    .line 272
    aput-byte v6, v2, v14

    .line 273
    .line 274
    const/16 v6, 0x3c

    .line 275
    .line 276
    aput-byte v6, v2, v8

    .line 277
    .line 278
    new-array v4, v4, [B

    .line 279
    .line 280
    const/16 v6, -0x19

    .line 281
    .line 282
    aput-byte v6, v4, v3

    .line 283
    .line 284
    const/16 v3, 0x2b

    .line 285
    .line 286
    aput-byte v3, v4, v5

    .line 287
    .line 288
    const/16 v3, 0x6a

    .line 289
    .line 290
    aput-byte v3, v4, v7

    .line 291
    .line 292
    const/16 v3, -0x38

    .line 293
    .line 294
    aput-byte v3, v4, v14

    .line 295
    .line 296
    const/16 v3, 0x53

    .line 297
    .line 298
    aput-byte v3, v4, v8

    .line 299
    .line 300
    const/16 v3, 0x1e

    .line 301
    .line 302
    aput-byte v3, v4, v11

    .line 303
    .line 304
    const/16 v3, -0x13

    .line 305
    .line 306
    aput-byte v3, v4, v13

    .line 307
    .line 308
    const/16 v3, -0x24

    .line 309
    .line 310
    aput-byte v3, v4, v15

    .line 311
    .line 312
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    check-cast v1, Landroid/media/AudioManager;

    .line 321
    .line 322
    iput-object v1, v0, Lw0/g;->c:Landroid/media/AudioManager;

    .line 323
    .line 324
    :cond_143
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 325
    .line 326
    const/16 v2, 0x1f

    .line 327
    .line 328
    if-lt v1, v2, :cond_211

    .line 329
    .line 330
    sget-object v1, Lw0/g;->w:Lw0/f;

    .line 331
    .line 332
    if-eqz v1, :cond_152

    .line 333
    .line 334
    iget-object v2, v0, Lw0/g;->c:Landroid/media/AudioManager;

    .line 335
    .line 336
    invoke-static {v2, v1}, Landroidx/core/app/c;->s(Landroid/media/AudioManager;Landroid/media/AudioManager$OnModeChangedListener;)V

    .line 337
    .line 338
    .line 339
    :cond_152
    new-instance v1, Lw0/f;

    .line 340
    .line 341
    const/4 v2, 0x0

    .line 342
    invoke-direct {v1, v0, v2}, Lw0/f;-><init>(Lw0/y;I)V

    .line 343
    .line 344
    .line 345
    sput-object v1, Lw0/g;->w:Lw0/f;

    .line 346
    .line 347
    iget-object v1, v0, Lw0/g;->c:Landroid/media/AudioManager;

    .line 348
    .line 349
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    sget-object v3, Lw0/g;->w:Lw0/f;

    .line 354
    .line 355
    invoke-static {v1, v2, v3}, Landroidx/core/app/c;->t(Landroid/media/AudioManager;Ljava/util/concurrent/ExecutorService;Landroid/media/AudioManager$OnModeChangedListener;)V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :cond_166
    new-instance v1, Ljava/io/IOException;

    .line 360
    .line 361
    const/16 v10, 0x1b

    .line 362
    .line 363
    new-array v10, v10, [B

    .line 364
    .line 365
    const/16 v16, -0x36

    .line 366
    .line 367
    aput-byte v16, v10, v3

    .line 368
    .line 369
    const/16 v16, -0x4c

    .line 370
    .line 371
    aput-byte v16, v10, v5

    .line 372
    .line 373
    const/16 v16, -0x14

    .line 374
    .line 375
    aput-byte v16, v10, v7

    .line 376
    .line 377
    const/16 v16, 0x25

    .line 378
    .line 379
    aput-byte v16, v10, v14

    .line 380
    .line 381
    const/16 v16, 0x21

    .line 382
    .line 383
    aput-byte v16, v10, v8

    .line 384
    .line 385
    const/16 v16, -0x32

    .line 386
    .line 387
    aput-byte v16, v10, v11

    .line 388
    .line 389
    const/16 v16, -0x76

    .line 390
    .line 391
    aput-byte v16, v10, v13

    .line 392
    .line 393
    aput-byte v2, v10, v15

    .line 394
    .line 395
    const/16 v16, -0x7

    .line 396
    .line 397
    aput-byte v16, v10, v4

    .line 398
    .line 399
    const/16 v16, 0x9

    .line 400
    .line 401
    const/16 v17, -0x49

    .line 402
    .line 403
    aput-byte v17, v10, v16

    .line 404
    .line 405
    const/16 v16, -0x41

    .line 406
    .line 407
    const/16 v17, 0xa

    .line 408
    .line 409
    aput-byte v16, v10, v17

    .line 410
    .line 411
    const/16 v16, 0xb

    .line 412
    .line 413
    const/16 v17, 0x27

    .line 414
    .line 415
    aput-byte v17, v10, v16

    .line 416
    .line 417
    const/16 v16, 0x72

    .line 418
    .line 419
    aput-byte v16, v10, v2

    .line 420
    .line 421
    const/16 v2, 0xd

    .line 422
    .line 423
    const/16 v17, -0x7d

    .line 424
    .line 425
    aput-byte v17, v10, v2

    .line 426
    .line 427
    const/16 v2, -0x75

    .line 428
    .line 429
    aput-byte v2, v10, v12

    .line 430
    .line 431
    const/16 v2, 0xf

    .line 432
    .line 433
    aput-byte v15, v10, v2

    .line 434
    .line 435
    const/16 v2, -0x18

    .line 436
    .line 437
    aput-byte v2, v10, v6

    .line 438
    .line 439
    const/16 v2, 0x11

    .line 440
    .line 441
    const/4 v6, -0x5

    .line 442
    aput-byte v6, v10, v2

    .line 443
    .line 444
    const/16 v2, 0x12

    .line 445
    .line 446
    const/16 v12, -0xa

    .line 447
    .line 448
    aput-byte v12, v10, v2

    .line 449
    .line 450
    const/16 v2, 0x13

    .line 451
    .line 452
    const/16 v12, 0x20

    .line 453
    .line 454
    aput-byte v12, v10, v2

    .line 455
    .line 456
    const/16 v2, 0x14

    .line 457
    .line 458
    aput-byte v16, v10, v2

    .line 459
    .line 460
    const/16 v2, -0x29

    .line 461
    .line 462
    aput-byte v2, v10, v9

    .line 463
    .line 464
    const/16 v2, 0x16

    .line 465
    .line 466
    const/16 v9, -0x7c

    .line 467
    .line 468
    aput-byte v9, v10, v2

    .line 469
    .line 470
    const/16 v2, 0x17

    .line 471
    .line 472
    aput-byte v8, v10, v2

    .line 473
    .line 474
    const/16 v2, 0x18

    .line 475
    .line 476
    const/16 v9, -0x10

    .line 477
    .line 478
    aput-byte v9, v10, v2

    .line 479
    .line 480
    const/16 v2, 0x19

    .line 481
    .line 482
    const/16 v9, -0x42

    .line 483
    .line 484
    aput-byte v9, v10, v2

    .line 485
    .line 486
    const/16 v2, 0x1a

    .line 487
    .line 488
    aput-byte v6, v10, v2

    .line 489
    .line 490
    new-array v2, v4, [B

    .line 491
    .line 492
    const/16 v4, -0x64

    .line 493
    .line 494
    aput-byte v4, v2, v3

    .line 495
    .line 496
    const/16 v3, -0x25

    .line 497
    .line 498
    aput-byte v3, v2, v5

    .line 499
    .line 500
    const/16 v3, -0x61

    .line 501
    .line 502
    aput-byte v3, v2, v7

    .line 503
    .line 504
    const/16 v3, 0x4e

    .line 505
    .line 506
    aput-byte v3, v2, v14

    .line 507
    .line 508
    aput-byte v5, v2, v8

    .line 509
    .line 510
    const/16 v3, -0x5d

    .line 511
    .line 512
    aput-byte v3, v2, v11

    .line 513
    .line 514
    const/16 v3, -0x1b

    .line 515
    .line 516
    aput-byte v3, v2, v13

    .line 517
    .line 518
    const/16 v3, 0x68

    .line 519
    .line 520
    aput-byte v3, v2, v15

    .line 521
    .line 522
    invoke-static {v10, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    throw v1
    :try_end_211
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_211} :catch_211

    .line 530
    :catch_211
    :cond_211
    return-void

    .line 531
    :array_212
    .array-data 1
        0x3ft
        -0x2et
        0x7dt
        0x30t
        0x72t
        0x72t
        0x8t
        -0x2t
        0x5t
        -0x34t
        0x71t
        0x60t
    .end array-data

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
    :array_21c
    .array-data 1
        0x6ct
        -0x5et
        0x14t
        0x53t
        0x1at
        0x37t
        0x66t
        -0x67t
    .end array-data

    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    :array_224
    .array-data 1
        -0x76t
        -0x23t
        0x32t
        0x7at
        0x20t
        0x69t
        0x5dt
        -0xct
        -0x50t
        -0x3dt
        0x3et
        0x2at
    .end array-data

    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :array_22e
    .array-data 1
        -0x27t
        -0x53t
        0x5bt
        0x19t
        0x48t
        0x2ct
        0x33t
        -0x6dt
    .end array-data

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :array_236
    .array-data 1
        -0x2bt
        -0x25t
        0x50t
        -0x78t
        0xat
        -0x47t
        0x79t
        0x2bt
        -0x34t
    .end array-data

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    nop

    .line 577
    :array_240
    .array-data 1
        -0x41t
        -0x4bt
        0x31t
        -0x5at
        0x64t
        -0x2at
        0xat
        0x52t
    .end array-data

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    :array_248
    .array-data 1
        0x7t
        -0x1ct
        0x58t
        -0x4bt
    .end array-data

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    :array_24e
    .array-data 1
        0x73t
        -0x6at
        0x2dt
        -0x30t
        0x24t
        0x26t
        -0xet
        0x7et
    .end array-data

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    :array_256
    .array-data 1
        0x77t
        -0x2bt
        0x36t
        0x5et
        -0x40t
        0x68t
        -0x32t
        0x58t
        0x33t
        -0x29t
        0x3et
        0x12t
        -0x30t
        0x66t
        -0x2dt
        0x55t
        0x33t
        -0x35t
        0x36t
        0x4t
        -0x36t
    .end array-data

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    nop

    .line 615
    :array_266
    .array-data 1
        0x1dt
        -0x45t
        0x57t
        0x70t
        -0x5et
        0x7t
        -0x5ft
        0x2ct
    .end array-data

    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    :array_26e
    .array-data 1
        -0x6bt
        0x6ct
        -0x4ft
        0x56t
        0x7ct
        0x2et
        -0x72t
        0x6bt
        -0x75t
        0x61t
        -0x50t
    .end array-data

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :array_278
    .array-data 1
        -0x1t
        0x2t
        -0x28t
        0x32t
        0x15t
        0x5dt
        -0x2t
        0xat
    .end array-data

    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    :array_280
    .array-data 1
        -0x60t
        -0x17t
        -0x5bt
        0x64t
    .end array-data

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    :array_286
    .array-data 1
        -0x2at
        -0x7at
        -0x2at
        0xft
        0x79t
        0x70t
        -0x5at
        -0x35t
    .end array-data
.end method

.method public static f()Ljava/lang/Boolean;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Le0/m;->j:[B

    .line 11
    .line 12
    sget-object v3, Le0/p3;->a:[Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    fill-array-data v1, :array_7c

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Le0/x1;->q:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Le0/m;->f:[B

    .line 40
    .line 41
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_78

    .line 46
    .line 47
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-wide v3, 0x7fffffffffffffffL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    new-instance v3, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    new-instance v6, Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 77
    .line 78
    .line 79
    sget-object v2, Le0/m;->g:[B

    .line 80
    .line 81
    invoke-static {v2, v5, v6}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/4 v5, 0x1

    .line 86
    new-array v6, v5, [B

    .line 87
    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v8, -0x3

    .line 90
    aput-byte v8, v6, v7

    .line 91
    .line 92
    const/16 v8, 0x8

    .line 93
    .line 94
    new-array v8, v8, [B

    .line 95
    .line 96
    fill-array-data v8, :array_86

    .line 97
    .line 98
    .line 99
    invoke-static {v6, v8, v4, v2, v7}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 104
    .line 105
    .line 106
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    cmp-long v0, v0, v2

    .line 111
    .line 112
    if-gez v0, :cond_72

    .line 113
    .line 114
    goto :goto_73

    .line 115
    :cond_72
    move v5, v7

    .line 116
    :goto_73
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    return-object v0

    .line 121
    :cond_78
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 122
    .line 123
    return-object v0

    .line 124
    nop

    .line 125
    :array_7c
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

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    nop

    .line 135
    :array_86
    .array-data 1
        -0x33t
        -0x23t
        0x58t
        -0x5ct
        -0x45t
        -0x6ct
        0x7ct
        -0x3t
    .end array-data
.end method

.method public static g(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lj0/c;->f()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_30

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_30

    .line 26
    .line 27
    if-eqz p0, :cond_30

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_30

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_30
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method public static h(Ljava/lang/String;)Z
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_5

    .line 3
    .line 4
    goto/16 :goto_a2

    .line 5
    .line 6
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_11

    .line 15
    .line 16
    goto/16 :goto_a2

    .line 17
    .line 18
    :cond_11
    const/4 v1, 0x2

    .line 19
    new-array v2, v1, [B

    .line 20
    .line 21
    fill-array-data v2, :array_a4

    .line 22
    .line 23
    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    new-array v4, v3, [B

    .line 27
    .line 28
    fill-array-data v4, :array_aa

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2a

    .line 40
    .line 41
    goto/16 :goto_a2

    .line 42
    .line 43
    :cond_2a
    new-array v1, v1, [B

    .line 44
    .line 45
    fill-array-data v1, :array_b2

    .line 46
    .line 47
    .line 48
    new-array v2, v3, [B

    .line 49
    .line 50
    fill-array-data v2, :array_b8

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3f

    .line 62
    .line 63
    goto :goto_a2

    .line 64
    :cond_3f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v2, 0x5

    .line 69
    if-ge v1, v2, :cond_47

    .line 70
    .line 71
    goto :goto_a2

    .line 72
    :cond_47
    const/4 v1, 0x1

    .line 73
    new-array v4, v1, [B

    .line 74
    .line 75
    const/16 v5, -0x6f

    .line 76
    .line 77
    aput-byte v5, v4, v0

    .line 78
    .line 79
    new-array v5, v3, [B

    .line 80
    .line 81
    fill-array-data v5, :array_c0

    .line 82
    .line 83
    .line 84
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_a2

    .line 93
    .line 94
    new-array v4, v1, [B

    .line 95
    .line 96
    const/16 v5, 0x56

    .line 97
    .line 98
    aput-byte v5, v4, v0

    .line 99
    .line 100
    new-array v5, v3, [B

    .line 101
    .line 102
    fill-array-data v5, :array_c8

    .line 103
    .line 104
    .line 105
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_73

    .line 114
    .line 115
    goto :goto_a2

    .line 116
    :cond_73
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    array-length v5, v4

    .line 121
    move v6, v0

    .line 122
    :goto_79
    if-ge v6, v5, :cond_9c

    .line 123
    .line 124
    aget-char v7, v4, v6

    .line 125
    .line 126
    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-nez v8, :cond_99

    .line 131
    .line 132
    new-array v8, v2, [B

    .line 133
    .line 134
    fill-array-data v8, :array_d0

    .line 135
    .line 136
    .line 137
    new-array v9, v3, [B

    .line 138
    .line 139
    fill-array-data v9, :array_d8

    .line 140
    .line 141
    .line 142
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    const/4 v8, -0x1

    .line 151
    if-ne v7, v8, :cond_99

    .line 152
    .line 153
    goto :goto_a2

    .line 154
    :cond_99
    add-int/lit8 v6, v6, 0x1

    .line 155
    .line 156
    goto :goto_79

    .line 157
    :cond_9c
    :try_start_9c
    new-instance v2, Lorg/json/JSONArray;

    .line 158
    .line 159
    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a1} :catch_a2

    .line 160
    .line 161
    .line 162
    return v1

    .line 163
    :catch_a2
    :cond_a2
    :goto_a2
    return v0

    .line 164
    nop

    .line 165
    :array_a4
    .array-data 1
        0x75t
        -0x29t
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    nop

    .line 171
    :array_aa
    .array-data 1
        0x2et
        -0x76t
        0x2t
        -0x65t
        0x5ct
        0x70t
        -0x52t
        0x51t
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_b2
    .array-data 1
        0x4ft
        0x4t
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    nop

    .line 185
    :array_b8
    .array-data 1
        0x34t
        0x79t
        0x3bt
        -0x61t
        0x37t
        0x3ft
        0xct
        -0x5at
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_c0
    .array-data 1
        -0x36t
        -0x63t
        0x35t
        -0x65t
        -0x77t
        -0x1dt
        -0x53t
        0x4ct
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_c8
    .array-data 1
        0xbt
        -0x6at
        0xdt
        -0x52t
        0x2bt
        -0x56t
        -0x9t
        -0x4dt
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_d0
    .array-data 1
        0x2et
        0x68t
        -0x3et
        -0x37t
        -0x4et
    .end array-data

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    nop

    .line 217
    :array_d8
    .array-data 1
        0xct
        0x33t
        -0x61t
        -0x1bt
        -0x6et
        -0x69t
        -0x36t
        0x3at
    .end array-data
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lw0/g;->c:Landroid/media/AudioManager;

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    iget-object v1, p0, Lw0/g;->d:Landroid/media/AudioFocusRequest;

    .line 6
    .line 7
    if-eqz v1, :cond_11

    .line 8
    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v3, 0x1a

    .line 12
    .line 13
    if-lt v2, v3, :cond_11

    .line 14
    .line 15
    invoke-static {v0, v1}, Lorg/apache/commons/net/util/a;->t(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    iget-object v0, p0, Lw0/g;->l:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    const/4 v1, 0x0

    .line 22
    :try_start_15
    iput-boolean v1, p0, Lw0/g;->q:Z

    .line 23
    .line 24
    iget-object v2, p0, Lw0/g;->m:Lorg/vosk/Recognizer;

    .line 25
    .line 26
    if-eqz v2, :cond_21

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/vosk/Recognizer;->reset()V

    .line 29
    .line 30
    .line 31
    goto :goto_21

    .line 32
    :catchall_1f
    move-exception v1

    .line 33
    goto :goto_3b

    .line 34
    :cond_21
    :goto_21
    iget-object v2, p0, Lw0/g;->n:Lorg/vosk/Recognizer;

    .line 35
    .line 36
    if-eqz v2, :cond_28

    .line 37
    .line 38
    invoke-virtual {v2}, Lorg/vosk/Recognizer;->reset()V

    .line 39
    .line 40
    .line 41
    :cond_28
    iput v1, p0, Lw0/g;->o:I

    .line 42
    .line 43
    iput v1, p0, Lw0/g;->p:I

    .line 44
    .line 45
    const-string v1, ""

    .line 46
    .line 47
    iput-object v1, p0, Lw0/g;->r:Ljava/lang/String;

    .line 48
    .line 49
    const-wide/16 v1, 0x0

    .line 50
    .line 51
    iput-wide v1, p0, Lw0/g;->s:J

    .line 52
    .line 53
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_1f

    .line 54
    sget-object v0, Lw0/g;->v:Lw0/b;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lw0/g;->j(Lw0/b;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :goto_3b
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_1f

    .line 61
    throw v1
.end method

.method public final b()V
    .registers 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_32

    .line 6
    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    fill-array-data v0, :array_3a

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lw0/g;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 23
    .line 24
    if-eqz v0, :cond_28

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_28

    .line 31
    .line 32
    iget-object v0, p0, Lw0/g;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lw0/g;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 40
    .line 41
    :cond_28
    invoke-virtual {p0}, Lw0/g;->o()V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lw0/b;->b:Lw0/b;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lw0/g;->j(Lw0/b;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :array_32
    .array-data 1
        0x2ft
        -0x18t
        0x70t
        -0x50t
        0x12t
        -0x59t
        -0x7et
        -0x31t
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_3a
    .array-data 1
        0x5ct
        -0x64t
        0x1ft
        -0x40t
        0x44t
        -0x38t
        -0xft
        -0x5ct
    .end array-data
.end method

.method public final c()V
    .registers 10

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_30

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_3a

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lw0/g;->b()V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lf5/j;

    .line 28
    .line 29
    const/16 v0, 0x14

    .line 30
    .line 31
    invoke-direct {v3, v0, p0}, Lf5/j;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v6, 0x1e

    .line 35
    .line 36
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    iget-object v2, p0, Lw0/g;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 39
    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lw0/g;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 47
    .line 48
    return-void

    .line 49
    :array_30
    .array-data 1
        -0x80t
        -0x7at
        0x16t
        -0x7dt
        0x35t
        -0x7ft
        -0x4ft
        0xft
        -0x68t
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    nop

    .line 59
    :array_3a
    .array-data 1
        -0xdt
        -0xet
        0x77t
        -0xft
        0x41t
        -0x29t
        -0x22t
        0x7ct
    .end array-data
.end method

.method public final d()V
    .registers 5

    .line 1
    sget-object v0, Lw0/g;->u:Lw0/b;

    .line 2
    .line 3
    sput-object v0, Lw0/g;->v:Lw0/b;

    .line 4
    .line 5
    iget-object v0, p0, Lw0/g;->d:Landroid/media/AudioFocusRequest;

    .line 6
    .line 7
    const/16 v1, 0x1a

    .line 8
    .line 9
    if-nez v0, :cond_39

    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    if-lt v0, v1, :cond_39

    .line 14
    .line 15
    invoke-static {}, Lw0/d;->d()Landroid/media/AudioFocusRequest$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v2, Lw0/e;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v2, p0, v3}, Lw0/e;-><init>(Lw0/y;I)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2}, Lorg/apache/commons/net/util/a;->l(Landroid/media/AudioFocusRequest$Builder;Lw0/e;)Landroid/media/AudioFocusRequest$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v0, v2}, Lorg/apache/commons/net/util/a;->k(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lw0/d;->f(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lw0/g;->d:Landroid/media/AudioFocusRequest;

    .line 57
    .line 58
    :cond_39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    if-lt v0, v1, :cond_44

    .line 61
    .line 62
    iget-object v0, p0, Lw0/g;->c:Landroid/media/AudioManager;

    .line 63
    .line 64
    iget-object v1, p0, Lw0/g;->d:Landroid/media/AudioFocusRequest;

    .line 65
    .line 66
    invoke-static {v0, v1}, Lw0/d;->j(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)V

    .line 67
    .line 68
    .line 69
    :cond_44
    invoke-virtual {p0}, Lw0/g;->p()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    sget-object v0, Lw0/b;->d:Lw0/b;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lw0/g;->j(Lw0/b;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final e()Lw0/b;
    .registers 2

    .line 1
    sget-object v0, Lw0/g;->u:Lw0/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized i(Ljava/lang/String;)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Lw0/g;->f()Ljava/lang/Boolean;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_22

    .line 11
    .line 12
    sget-object v0, Lw0/a0;->e:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_12
    if-ge v2, v1, :cond_22

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    check-cast v3, Lw0/b0;

    .line 28
    .line 29
    invoke-interface {v3, p1}, Lw0/b0;->i(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    .line 30
    .line 31
    .line 32
    goto :goto_12

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_20

    .line 38
    throw p1
.end method

.method public final j(Lw0/b;)V
    .registers 6

    .line 1
    invoke-static {}, Lw0/g;->f()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_23

    .line 10
    .line 11
    sput-object p1, Lw0/g;->u:Lw0/b;

    .line 12
    .line 13
    sput-object p1, Lw0/c;->a:Lw0/b;

    .line 14
    .line 15
    sget-object v0, Lw0/a0;->e:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_15
    if-ge v2, v1, :cond_23

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    check-cast v3, Lw0/b0;

    .line 31
    .line 32
    invoke-interface {v3, p1}, Lw0/b0;->m(Lw0/b;)V

    .line 33
    .line 34
    .line 35
    goto :goto_15

    .line 36
    :cond_23
    return-void
.end method

.method public final k(I)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lw0/g;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lw0/g;->j:[B

    .line 5
    .line 6
    invoke-virtual {p0, p1, v1}, Lw0/g;->l(I[B)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lw0/g;->q:Z

    .line 10
    .line 11
    if-eqz v1, :cond_11

    .line 12
    .line 13
    iget-object v1, p0, Lw0/g;->n:Lorg/vosk/Recognizer;

    .line 14
    .line 15
    goto :goto_13

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    goto :goto_2b

    .line 18
    :cond_11
    iget-object v1, p0, Lw0/g;->m:Lorg/vosk/Recognizer;

    .line 19
    .line 20
    :goto_13
    if-nez v1, :cond_18

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    monitor-exit v0

    .line 24
    return-object p1

    .line 25
    :cond_18
    iget-object v2, p0, Lw0/g;->j:[B

    .line 26
    .line 27
    invoke-virtual {v1, v2, p1}, Lorg/vosk/Recognizer;->acceptWaveForm([BI)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_25

    .line 32
    .line 33
    invoke-virtual {v1}, Lorg/vosk/Recognizer;->getResult()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_29

    .line 38
    :cond_25
    invoke-virtual {v1}, Lorg/vosk/Recognizer;->getPartialResult()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_29
    monitor-exit v0

    .line 43
    return-object p1

    .line 44
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_f

    .line 45
    throw p1
.end method

.method public final l(I[B)V
    .registers 8

    .line 1
    if-eqz p2, :cond_38

    .line 2
    .line 3
    if-gtz p1, :cond_5

    .line 4
    .line 5
    goto :goto_38

    .line 6
    :cond_5
    array-length v0, p2

    .line 7
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lw0/g;->k:[B

    .line 12
    .line 13
    array-length v1, v0

    .line 14
    sub-int v1, p1, v1

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr p1, v1

    .line 22
    :goto_15
    if-lez p1, :cond_38

    .line 23
    .line 24
    array-length v2, v0

    .line 25
    iget v3, p0, Lw0/g;->p:I

    .line 26
    .line 27
    sub-int/2addr v2, v3

    .line 28
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget v3, p0, Lw0/g;->p:I

    .line 33
    .line 34
    invoke-static {p2, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iget v3, p0, Lw0/g;->p:I

    .line 38
    .line 39
    add-int/2addr v3, v2

    .line 40
    array-length v4, v0

    .line 41
    rem-int/2addr v3, v4

    .line 42
    iput v3, p0, Lw0/g;->p:I

    .line 43
    .line 44
    iget v3, p0, Lw0/g;->o:I

    .line 45
    .line 46
    add-int/2addr v3, v2

    .line 47
    array-length v4, v0

    .line 48
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iput v3, p0, Lw0/g;->o:I

    .line 53
    .line 54
    add-int/2addr v1, v2

    .line 55
    sub-int/2addr p1, v2

    .line 56
    goto :goto_15

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .registers 8

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_eb

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_10

    .line 14
    .line 15
    goto/16 :goto_eb

    .line 16
    .line 17
    :cond_10
    :try_start_10
    new-instance v1, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean p1, p0, Lw0/g;->q:Z

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    new-array v2, v2, [B

    .line 26
    .line 27
    fill-array-data v2, :array_ec

    .line 28
    .line 29
    .line 30
    const/16 v3, 0x8

    .line 31
    .line 32
    new-array v4, v3, [B

    .line 33
    .line 34
    fill-array-data v4, :array_f2

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-nez p1, :cond_4f

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_4f

    .line 56
    .line 57
    const/4 v2, 0x7

    .line 58
    new-array v2, v2, [B

    .line 59
    .line 60
    fill-array-data v2, :array_fa

    .line 61
    .line 62
    .line 63
    new-array v3, v3, [B

    .line 64
    .line 65
    fill-array-data v3, :array_102

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :cond_4f
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_eb

    .line 85
    .line 86
    const-wide/16 v3, 0x0

    .line 87
    .line 88
    if-nez p1, :cond_83

    .line 89
    .line 90
    invoke-static {v2}, Lw0/g;->g(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_61

    .line 95
    .line 96
    goto/16 :goto_eb

    .line 97
    .line 98
    :cond_61
    invoke-virtual {p0}, Lw0/g;->p()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-nez v2, :cond_68

    .line 103
    .line 104
    goto :goto_6c

    .line 105
    :cond_68
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :goto_6c
    iput-object v0, p0, Lw0/g;->r:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_75

    .line 116
    .line 117
    goto :goto_7d

    .line 118
    :cond_75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 119
    .line 120
    .line 121
    move-result-wide v0

    .line 122
    const-wide/16 v2, 0x1c2

    .line 123
    .line 124
    add-long v3, v0, v2

    .line 125
    .line 126
    :goto_7d
    iput-wide v3, p0, Lw0/g;->s:J

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Lw0/g;->m(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_83
    iget-object p1, p0, Lw0/g;->r:Ljava/lang/String;

    .line 133
    .line 134
    const/4 v1, 0x0

    .line 135
    const/4 v5, 0x1

    .line 136
    if-eqz p1, :cond_95

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-nez p1, :cond_95

    .line 147
    .line 148
    move p1, v5

    .line 149
    goto :goto_96

    .line 150
    :cond_95
    move p1, v1

    .line 151
    :goto_96
    if-eqz p1, :cond_e8

    .line 152
    .line 153
    iget-object p1, p0, Lw0/g;->r:Ljava/lang/String;

    .line 154
    .line 155
    if-eqz p1, :cond_a7

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_a7

    .line 166
    .line 167
    move v1, v5

    .line 168
    :cond_a7
    if-eqz v1, :cond_c8

    .line 169
    .line 170
    if-eqz v2, :cond_c8

    .line 171
    .line 172
    invoke-static {v2}, Lw0/g;->g(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_c8

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    iget-object v1, p0, Lw0/g;->r:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    add-int/lit8 v1, v1, 0x2

    .line 197
    .line 198
    if-gt p1, v1, :cond_c8

    .line 199
    .line 200
    goto :goto_eb

    .line 201
    :cond_c8
    invoke-static {v2}, Lw0/g;->g(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-nez p1, :cond_e4

    .line 206
    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    iget-object v1, p0, Lw0/g;->r:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v1, " "

    .line 218
    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    :cond_e4
    iput-object v0, p0, Lw0/g;->r:Ljava/lang/String;

    .line 230
    .line 231
    iput-wide v3, p0, Lw0/g;->s:J

    .line 232
    .line 233
    :cond_e8
    invoke-virtual {p0, v2}, Lw0/g;->i(Ljava/lang/String;)V
    :try_end_eb
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_eb} :catch_eb

    .line 234
    .line 235
    .line 236
    :catch_eb
    :cond_eb
    :goto_eb
    return-void

    .line 237
    :array_ec
    .array-data 1
        0x39t
        -0x41t
        0x20t
        -0x4dt
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :array_f2
    .array-data 1
        0x4dt
        -0x26t
        0x58t
        -0x39t
        -0x4ct
        -0x77t
        0xat
        -0x3dt
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :array_fa
    .array-data 1
        -0x78t
        -0x2ft
        0x29t
        -0x4bt
        -0x80t
        0x12t
        -0x18t
    .end array-data

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_102
    .array-data 1
        -0x8t
        -0x50t
        0x5bt
        -0x3ft
        -0x17t
        0x73t
        -0x7ct
        -0x2bt
    .end array-data
.end method

.method public final n()V
    .registers 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lw0/g;->t:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x3e8

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-gez v2, :cond_10

    .line 14
    .line 15
    goto/16 :goto_eb

    .line 16
    .line 17
    :cond_10
    iput-wide v0, p0, Lw0/g;->t:J

    .line 18
    .line 19
    iget-object v0, p0, Lw0/g;->g:Landroid/content/Context;

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    new-array v1, v1, [B

    .line 23
    .line 24
    fill-array-data v1, :array_ec

    .line 25
    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    new-array v3, v2, [B

    .line 30
    .line 31
    fill-array-data v3, :array_f4

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/media/AudioManager;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_eb

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_eb

    .line 55
    .line 56
    invoke-virtual {p0}, Lw0/g;->o()V

    .line 57
    .line 58
    .line 59
    :try_start_3a
    new-instance v0, Lorg/json/JSONArray;

    .line 60
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lj0/c;->f()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_66

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_66

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :cond_66
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Lw0/g;->h(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_75

    .line 115
    .line 116
    goto/16 :goto_eb

    .line 117
    .line 118
    :cond_75
    iget-object v1, p0, Lw0/g;->l:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter v1
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_78} :catch_e8

    .line 121
    :try_start_78
    new-instance v3, Lorg/vosk/Recognizer;

    .line 122
    .line 123
    iget-object v4, p0, Lw0/g;->f:Lorg/vosk/Model;

    .line 124
    .line 125
    const/16 v7, 0x3e80

    .line 126
    .line 127
    int-to-float v5, v7

    .line 128
    invoke-direct {v3, v4, v5, v0}, Lorg/vosk/Recognizer;-><init>(Lorg/vosk/Model;FLjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iput-object v3, p0, Lw0/g;->m:Lorg/vosk/Recognizer;

    .line 132
    .line 133
    new-instance v0, Lorg/vosk/Recognizer;

    .line 134
    .line 135
    iget-object v3, p0, Lw0/g;->f:Lorg/vosk/Model;

    .line 136
    .line 137
    invoke-direct {v0, v3, v5}, Lorg/vosk/Recognizer;-><init>(Lorg/vosk/Model;F)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lw0/g;->n:Lorg/vosk/Recognizer;

    .line 141
    .line 142
    sget-object v0, Lw0/g;->u:Lw0/b;

    .line 143
    .line 144
    sget-object v3, Lw0/b;->d:Lw0/b;

    .line 145
    .line 146
    const/4 v4, 0x1

    .line 147
    const/4 v5, 0x0

    .line 148
    if-ne v0, v3, :cond_97

    .line 149
    .line 150
    move v0, v4

    .line 151
    goto :goto_98

    .line 152
    :cond_97
    move v0, v5

    .line 153
    :goto_98
    iput-boolean v0, p0, Lw0/g;->q:Z

    .line 154
    .line 155
    iput v5, p0, Lw0/g;->o:I

    .line 156
    .line 157
    iput v5, p0, Lw0/g;->p:I

    .line 158
    .line 159
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_78 .. :try_end_9f} :catchall_e5

    .line 160
    :try_start_9f
    iget-object v0, p0, Lw0/g;->g:Landroid/content/Context;

    .line 161
    .line 162
    const/16 v1, 0x1f

    .line 163
    .line 164
    new-array v1, v1, [B

    .line 165
    .line 166
    fill-array-data v1, :array_fc

    .line 167
    .line 168
    .line 169
    new-array v3, v2, [B

    .line 170
    .line 171
    fill-array-data v3, :array_110

    .line 172
    .line 173
    .line 174
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_df

    .line 183
    .line 184
    new-instance v5, Landroid/media/AudioRecord;

    .line 185
    .line 186
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const/16 v1, 0x19

    .line 191
    .line 192
    new-array v1, v1, [B

    .line 193
    .line 194
    fill-array-data v1, :array_118

    .line 195
    .line 196
    .line 197
    new-array v2, v2, [B

    .line 198
    .line 199
    fill-array-data v2, :array_12a

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0, v1, v4}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    iget v10, p0, Lw0/g;->i:I

    .line 211
    .line 212
    const/16 v8, 0x10

    .line 213
    .line 214
    const/4 v9, 0x2

    .line 215
    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 216
    .line 217
    .line 218
    iput-object v5, p0, Lw0/g;->e:Landroid/media/AudioRecord;

    .line 219
    .line 220
    invoke-virtual {v5}, Landroid/media/AudioRecord;->startRecording()V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_df
    sget-object v0, Lw0/b;->b:Lw0/b;

    .line 225
    .line 226
    invoke-virtual {p0, v0}, Lw0/g;->j(Lw0/b;)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_e4} :catch_e8

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :catchall_e5
    move-exception v0

    .line 231
    :try_start_e6
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    .line 232
    :try_start_e7
    throw v0
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_e8} :catch_e8

    .line 233
    :catch_e8
    invoke-virtual {p0}, Lw0/g;->o()V

    .line 234
    .line 235
    .line 236
    :cond_eb
    :goto_eb
    return-void

    .line 237
    :array_ec
    .array-data 1
        -0x62t
        -0x3dt
        -0x34t
        -0x67t
        0x4dt
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    nop

    .line 245
    :array_f4
    .array-data 1
        -0x1t
        -0x4at
        -0x58t
        -0x10t
        0x22t
        0x59t
        -0x4at
        0x24t
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_fc
    .array-data 1
        0x7ft
        -0x62t
        -0x54t
        0x15t
        0x2ct
        -0x5et
        0x2at
        0x2ft
        0x6et
        -0x6bt
        -0x46t
        0xat
        0x2at
        -0x48t
        0x3dt
        0x68t
        0x71t
        -0x62t
        -0x1at
        0x35t
        0x6t
        -0x78t
        0x1t
        0x53t
        0x5at
        -0x51t
        -0x77t
        0x32t
        0x7t
        -0x7et
        0x1t
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_110
    .array-data 1
        0x1et
        -0x10t
        -0x38t
        0x67t
        0x43t
        -0x35t
        0x4et
        0x1t
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_118
    .array-data 1
        -0x1et
        -0x73t
        0x6at
        0xbt
        -0x12t
        0x67t
        -0x2ct
        -0x6t
        -0x40t
        -0x66t
        0x6at
        0x7t
        -0x3t
        0x1bt
        -0x10t
        -0x14t
        -0x35t
        -0x7ft
        0x61t
        0x31t
        -0x20t
        0x40t
        -0x3dt
        -0x6t
        -0x36t
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    nop

    .line 299
    :array_12a
    .array-data 1
        -0x51t
        -0x18t
        0xet
        0x62t
        -0x71t
        0x35t
        -0x4ft
        -0x67t
    .end array-data
.end method

.method public final o()V
    .registers 3

    .line 1
    iget-object v0, p0, Lw0/g;->e:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_18

    .line 4
    .line 5
    :try_start_4
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_10

    .line 11
    .line 12
    iget-object v0, p0, Lw0/g;->e:Landroid/media/AudioRecord;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_10} :catch_10

    .line 15
    .line 16
    .line 17
    :catch_10
    :cond_10
    iget-object v0, p0, Lw0/g;->e:Landroid/media/AudioRecord;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lw0/g;->e:Landroid/media/AudioRecord;

    .line 24
    .line 25
    :cond_18
    sget-object v0, Lw0/b;->b:Lw0/b;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lw0/g;->j(Lw0/b;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final p()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lw0/g;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lw0/g;->n:Lorg/vosk/Recognizer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_14

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_18

    .line 8
    .line 9
    :try_start_8
    new-instance v1, Lorg/vosk/Recognizer;

    .line 10
    .line 11
    iget-object v3, p0, Lw0/g;->f:Lorg/vosk/Model;

    .line 12
    .line 13
    const/high16 v4, 0x467a0000    # 16000.0f

    .line 14
    .line 15
    invoke-direct {v1, v3, v4}, Lorg/vosk/Recognizer;-><init>(Lorg/vosk/Model;F)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lw0/g;->n:Lorg/vosk/Recognizer;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_16
    .catchall {:try_start_8 .. :try_end_13} :catchall_14

    .line 19
    .line 20
    goto :goto_18

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    goto :goto_60

    .line 23
    :catch_16
    :try_start_16
    monitor-exit v0

    .line 24
    return-object v2

    .line 25
    :cond_18
    :goto_18
    iget-object v1, p0, Lw0/g;->n:Lorg/vosk/Recognizer;

    .line 26
    .line 27
    invoke-virtual {v1}, Lorg/vosk/Recognizer;->reset()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p0, Lw0/g;->q:Z

    .line 32
    .line 33
    iget-object v1, p0, Lw0/g;->k:[B

    .line 34
    .line 35
    iget v3, p0, Lw0/g;->o:I

    .line 36
    .line 37
    if-gtz v3, :cond_28

    .line 38
    .line 39
    move-object v4, v2

    .line 40
    goto :goto_43

    .line 41
    :cond_28
    new-array v4, v3, [B

    .line 42
    .line 43
    iget v5, p0, Lw0/g;->p:I

    .line 44
    .line 45
    sub-int/2addr v5, v3

    .line 46
    array-length v6, v1

    .line 47
    add-int/2addr v5, v6

    .line 48
    array-length v6, v1

    .line 49
    rem-int/2addr v5, v6

    .line 50
    array-length v6, v1

    .line 51
    sub-int/2addr v6, v5

    .line 52
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v6, 0x0

    .line 57
    invoke-static {v1, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    .line 59
    .line 60
    iget v5, p0, Lw0/g;->o:I

    .line 61
    .line 62
    if-ge v3, v5, :cond_43

    .line 63
    .line 64
    sub-int/2addr v5, v3

    .line 65
    invoke-static {v1, v6, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    .line 67
    .line 68
    :cond_43
    :goto_43
    if-eqz v4, :cond_5e

    .line 69
    .line 70
    array-length v1, v4

    .line 71
    if-lez v1, :cond_5e

    .line 72
    .line 73
    iget-object v1, p0, Lw0/g;->n:Lorg/vosk/Recognizer;

    .line 74
    .line 75
    array-length v2, v4

    .line 76
    invoke-virtual {v1, v4, v2}, Lorg/vosk/Recognizer;->acceptWaveForm([BI)Z

    .line 77
    .line 78
    .line 79
    move-result v1
    :try_end_4f
    .catchall {:try_start_16 .. :try_end_4f} :catchall_14

    .line 80
    iget-object v2, p0, Lw0/g;->n:Lorg/vosk/Recognizer;

    .line 81
    .line 82
    if-eqz v1, :cond_58

    .line 83
    .line 84
    :try_start_53
    invoke-virtual {v2}, Lorg/vosk/Recognizer;->getResult()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_5c

    .line 89
    :cond_58
    invoke-virtual {v2}, Lorg/vosk/Recognizer;->getPartialResult()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :goto_5c
    monitor-exit v0

    .line 94
    return-object v1

    .line 95
    :cond_5e
    monitor-exit v0

    .line 96
    return-object v2

    .line 97
    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_53 .. :try_end_61} :catchall_14

    .line 98
    throw v1
.end method
