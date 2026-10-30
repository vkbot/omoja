.class public final Le0/q;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static f:Z = true


# instance fields
.field public final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final b:Landroid/content/Context;

.field public final c:Le0/c0;

.field public final d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final e:Lu0/a;


# direct methods
.method public constructor <init>(Lcom/example/navistart/MyApplication;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    new-array v2, v1, [B

    .line 14
    .line 15
    fill-array-data v2, :array_1

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, -0x1

    .line 23
    invoke-static {v2, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Le0/q;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iput-object v2, p0, Le0/q;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, p0, Le0/q;->b:Landroid/content/Context;

    .line 40
    .line 41
    new-instance v2, Le0/c0;

    .line 42
    .line 43
    invoke-direct {v2}, Le0/c0;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Le0/q;->c:Le0/c0;

    .line 47
    .line 48
    new-instance v2, Lu0/a;

    .line 49
    .line 50
    invoke-direct {v2, p1}, Lu0/a;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Le0/q;->e:Lu0/a;

    .line 54
    .line 55
    new-instance p1, La4/g;

    .line 56
    .line 57
    invoke-direct {p1, v1, p0}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 1
        -0x23t
        0x62t
        -0x2t
        -0x40t
        -0x5ct
        0x56t
        -0x6bt
        0x57t
        -0x6t
        0x7ct
        -0x6t
        -0x3ft
    .end array-data

    .line 66
    .line 67
    .line 68
    :array_1
    .array-data 1
        -0x62t
        0x10t
        -0x61t
        -0x4dt
        -0x34t
        0x1et
        -0xct
        0x39t
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, v0, Le0/q;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/16 v4, 0xd

    .line 12
    .line 13
    new-array v5, v4, [B

    .line 14
    .line 15
    fill-array-data v5, :array_0

    .line 16
    .line 17
    .line 18
    const/16 v6, 0x8

    .line 19
    .line 20
    new-array v7, v6, [B

    .line 21
    .line 22
    fill-array-data v7, :array_1

    .line 23
    .line 24
    .line 25
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_5

    .line 37
    .line 38
    invoke-static {v2}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/16 v7, 0xa

    .line 47
    .line 48
    new-array v8, v7, [B

    .line 49
    .line 50
    fill-array-data v8, :array_2

    .line 51
    .line 52
    .line 53
    new-array v9, v6, [B

    .line 54
    .line 55
    fill-array-data v9, :array_3

    .line 56
    .line 57
    .line 58
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {v5}, Lcom/example/navistart/punto;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    sget-object v8, Le0/m;->j:[B

    .line 71
    .line 72
    sget-object v9, Le0/p3;->a:[Ljava/lang/String;

    .line 73
    .line 74
    new-instance v9, Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    .line 77
    .line 78
    .line 79
    iget-object v8, v0, Le0/q;->e:Lu0/a;

    .line 80
    .line 81
    const-string v10, ""

    .line 82
    .line 83
    invoke-virtual {v8, v9, v10}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    new-instance v11, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    invoke-virtual {v8, v12, v10}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v2}, Lcom/example/navistart/boot;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_4

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-nez v8, :cond_0

    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :cond_0
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 133
    .line 134
    const/16 v11, 0x1a

    .line 135
    .line 136
    if-lt v8, v11, :cond_1

    .line 137
    .line 138
    new-instance v10, Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v1}, Lc5/h;->i(Ljava/io/File;)Ljava/nio/file/Path;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v1}, Lc5/h;->z(Ljava/nio/file/Path;)[B

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 149
    .line 150
    invoke-direct {v10, v1, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 151
    .line 152
    .line 153
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    const/16 v12, 0x10

    .line 158
    .line 159
    const/16 v13, 0xe

    .line 160
    .line 161
    const/16 v14, 0xb

    .line 162
    .line 163
    const/16 v15, -0x69

    .line 164
    .line 165
    const/16 v16, 0x7

    .line 166
    .line 167
    const/16 v17, 0x6

    .line 168
    .line 169
    const/16 v18, 0x5

    .line 170
    .line 171
    const/16 v19, 0x4

    .line 172
    .line 173
    move/from16 v20, v4

    .line 174
    .line 175
    const/4 v4, 0x3

    .line 176
    const/16 v21, 0x1

    .line 177
    .line 178
    move/from16 v22, v7

    .line 179
    .line 180
    const/4 v7, 0x2

    .line 181
    const/16 v23, -0x24

    .line 182
    .line 183
    const/4 v8, 0x0

    .line 184
    if-eqz v1, :cond_2

    .line 185
    .line 186
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 187
    .line 188
    const/16 v2, 0x12

    .line 189
    .line 190
    new-array v2, v2, [B

    .line 191
    .line 192
    const/16 v3, -0x50

    .line 193
    .line 194
    aput-byte v3, v2, v8

    .line 195
    .line 196
    const/16 v3, -0x4b

    .line 197
    .line 198
    aput-byte v3, v2, v21

    .line 199
    .line 200
    const/16 v3, -0x7d

    .line 201
    .line 202
    aput-byte v3, v2, v7

    .line 203
    .line 204
    const/16 v3, -0x36

    .line 205
    .line 206
    aput-byte v3, v2, v4

    .line 207
    .line 208
    const/16 v5, 0x2f

    .line 209
    .line 210
    aput-byte v5, v2, v19

    .line 211
    .line 212
    const/16 v5, -0x48

    .line 213
    .line 214
    aput-byte v5, v2, v18

    .line 215
    .line 216
    const/16 v5, 0x37

    .line 217
    .line 218
    aput-byte v5, v2, v17

    .line 219
    .line 220
    const/16 v5, -0x70

    .line 221
    .line 222
    aput-byte v5, v2, v16

    .line 223
    .line 224
    aput-byte v23, v2, v6

    .line 225
    .line 226
    const/16 v5, 0x9

    .line 227
    .line 228
    const/16 v9, -0x4d

    .line 229
    .line 230
    aput-byte v9, v2, v5

    .line 231
    .line 232
    aput-byte v15, v2, v22

    .line 233
    .line 234
    aput-byte v3, v2, v14

    .line 235
    .line 236
    const/16 v3, 0xc

    .line 237
    .line 238
    const/16 v5, 0x2c

    .line 239
    .line 240
    aput-byte v5, v2, v3

    .line 241
    .line 242
    const/16 v3, -0x44

    .line 243
    .line 244
    aput-byte v3, v2, v20

    .line 245
    .line 246
    const/16 v3, 0x2b

    .line 247
    .line 248
    aput-byte v3, v2, v13

    .line 249
    .line 250
    const/16 v3, 0xf

    .line 251
    .line 252
    const/16 v5, -0x7f

    .line 253
    .line 254
    aput-byte v5, v2, v3

    .line 255
    .line 256
    const/16 v3, -0x7b

    .line 257
    .line 258
    aput-byte v3, v2, v12

    .line 259
    .line 260
    const/16 v3, 0x11

    .line 261
    .line 262
    const/16 v5, -0xc

    .line 263
    .line 264
    aput-byte v5, v2, v3

    .line 265
    .line 266
    new-array v3, v6, [B

    .line 267
    .line 268
    const/4 v5, -0x4

    .line 269
    aput-byte v5, v3, v8

    .line 270
    .line 271
    const/16 v5, -0x26

    .line 272
    .line 273
    aput-byte v5, v3, v21

    .line 274
    .line 275
    const/16 v5, -0x1c

    .line 276
    .line 277
    aput-byte v5, v3, v7

    .line 278
    .line 279
    const/16 v5, -0x16

    .line 280
    .line 281
    aput-byte v5, v3, v4

    .line 282
    .line 283
    const/16 v4, 0x49

    .line 284
    .line 285
    aput-byte v4, v3, v19

    .line 286
    .line 287
    const/16 v4, -0x2f

    .line 288
    .line 289
    aput-byte v4, v3, v18

    .line 290
    .line 291
    const/16 v4, 0x5b

    .line 292
    .line 293
    aput-byte v4, v3, v17

    .line 294
    .line 295
    const/16 v4, -0xb

    .line 296
    .line 297
    aput-byte v4, v3, v16

    .line 298
    .line 299
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    move/from16 v20, v11

    .line 312
    .line 313
    const/16 v11, 0x2800

    .line 314
    .line 315
    if-le v1, v11, :cond_3

    .line 316
    .line 317
    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    .line 322
    .line 323
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 324
    .line 325
    .line 326
    :try_start_1
    new-array v11, v7, [B

    .line 327
    .line 328
    const/16 v22, 0x62

    .line 329
    .line 330
    aput-byte v22, v11, v8

    .line 331
    .line 332
    const/16 v22, -0x3f

    .line 333
    .line 334
    aput-byte v22, v11, v21

    .line 335
    .line 336
    move/from16 v22, v8

    .line 337
    .line 338
    new-array v8, v6, [B

    .line 339
    .line 340
    aput-byte v14, v8, v22

    .line 341
    .line 342
    const/16 v14, -0x5b

    .line 343
    .line 344
    aput-byte v14, v8, v21

    .line 345
    .line 346
    const/16 v14, 0x2e

    .line 347
    .line 348
    aput-byte v14, v8, v7

    .line 349
    .line 350
    const/16 v14, -0x6a

    .line 351
    .line 352
    aput-byte v14, v8, v4

    .line 353
    .line 354
    const/4 v14, -0x6

    .line 355
    aput-byte v14, v8, v19

    .line 356
    .line 357
    const/16 v14, -0x3c

    .line 358
    .line 359
    aput-byte v14, v8, v18

    .line 360
    .line 361
    const/16 v14, 0x5f

    .line 362
    .line 363
    aput-byte v14, v8, v17

    .line 364
    .line 365
    const/16 v14, -0x62

    .line 366
    .line 367
    aput-byte v14, v8, v16

    .line 368
    .line 369
    invoke-static {v11, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    invoke-virtual {v1, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    .line 375
    .line 376
    new-array v3, v7, [B

    .line 377
    .line 378
    const/16 v8, -0x15

    .line 379
    .line 380
    aput-byte v8, v3, v22

    .line 381
    .line 382
    const/16 v8, 0x59

    .line 383
    .line 384
    aput-byte v8, v3, v21

    .line 385
    .line 386
    new-array v8, v6, [B

    .line 387
    .line 388
    const/16 v11, -0x68

    .line 389
    .line 390
    aput-byte v11, v8, v22

    .line 391
    .line 392
    const/16 v11, 0x31

    .line 393
    .line 394
    aput-byte v11, v8, v21

    .line 395
    .line 396
    const/16 v11, 0x68

    .line 397
    .line 398
    aput-byte v11, v8, v7

    .line 399
    .line 400
    const/16 v11, 0x52

    .line 401
    .line 402
    aput-byte v11, v8, v4

    .line 403
    .line 404
    aput-byte v23, v8, v19

    .line 405
    .line 406
    aput-byte v7, v8, v18

    .line 407
    .line 408
    const/16 v11, 0x3d

    .line 409
    .line 410
    aput-byte v11, v8, v17

    .line 411
    .line 412
    aput-byte v20, v8, v16

    .line 413
    .line 414
    invoke-static {v3, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    .line 420
    .line 421
    new-array v3, v7, [B

    .line 422
    .line 423
    const/4 v5, -0x7

    .line 424
    aput-byte v5, v3, v22

    .line 425
    .line 426
    aput-byte v13, v3, v21

    .line 427
    .line 428
    new-array v5, v6, [B

    .line 429
    .line 430
    const/16 v8, -0x77

    .line 431
    .line 432
    aput-byte v8, v5, v22

    .line 433
    .line 434
    const/16 v8, 0x67

    .line 435
    .line 436
    aput-byte v8, v5, v21

    .line 437
    .line 438
    const/16 v8, 0x19

    .line 439
    .line 440
    aput-byte v8, v5, v7

    .line 441
    .line 442
    const/16 v8, 0x57

    .line 443
    .line 444
    aput-byte v8, v5, v4

    .line 445
    .line 446
    const/16 v8, -0x14

    .line 447
    .line 448
    aput-byte v8, v5, v19

    .line 449
    .line 450
    const/16 v8, 0x5c

    .line 451
    .line 452
    aput-byte v8, v5, v18

    .line 453
    .line 454
    const/16 v8, 0x58

    .line 455
    .line 456
    aput-byte v8, v5, v17

    .line 457
    .line 458
    aput-byte v19, v5, v16

    .line 459
    .line 460
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    invoke-virtual {v1, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    .line 466
    .line 467
    new-array v3, v7, [B

    .line 468
    .line 469
    const/16 v5, -0x80

    .line 470
    .line 471
    aput-byte v5, v3, v22

    .line 472
    .line 473
    const/16 v5, 0x28

    .line 474
    .line 475
    aput-byte v5, v3, v21

    .line 476
    .line 477
    new-array v5, v6, [B

    .line 478
    .line 479
    const/16 v8, -0x1b

    .line 480
    .line 481
    aput-byte v8, v5, v22

    .line 482
    .line 483
    const/16 v8, 0x45

    .line 484
    .line 485
    aput-byte v8, v5, v21

    .line 486
    .line 487
    const/16 v8, -0x7a

    .line 488
    .line 489
    aput-byte v8, v5, v7

    .line 490
    .line 491
    const/16 v8, -0x27

    .line 492
    .line 493
    aput-byte v8, v5, v4

    .line 494
    .line 495
    const/16 v8, -0x76

    .line 496
    .line 497
    aput-byte v8, v5, v19

    .line 498
    .line 499
    const/16 v8, 0x20

    .line 500
    .line 501
    aput-byte v8, v5, v18

    .line 502
    .line 503
    const/16 v8, 0x1f

    .line 504
    .line 505
    aput-byte v8, v5, v17

    .line 506
    .line 507
    const/16 v8, -0x75

    .line 508
    .line 509
    aput-byte v8, v5, v16

    .line 510
    .line 511
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    .line 517
    .line 518
    new-array v2, v4, [B

    .line 519
    .line 520
    const/16 v3, 0x78

    .line 521
    .line 522
    aput-byte v3, v2, v22

    .line 523
    .line 524
    const/16 v3, -0x28

    .line 525
    .line 526
    aput-byte v3, v2, v21

    .line 527
    .line 528
    const/16 v3, -0x23

    .line 529
    .line 530
    aput-byte v3, v2, v7

    .line 531
    .line 532
    new-array v3, v6, [B

    .line 533
    .line 534
    const/16 v5, 0x14

    .line 535
    .line 536
    aput-byte v5, v3, v22

    .line 537
    .line 538
    const/16 v5, -0x49

    .line 539
    .line 540
    aput-byte v5, v3, v21

    .line 541
    .line 542
    const/16 v5, -0x46

    .line 543
    .line 544
    aput-byte v5, v3, v7

    .line 545
    .line 546
    aput-byte v12, v3, v4

    .line 547
    .line 548
    const/16 v4, 0x15

    .line 549
    .line 550
    aput-byte v4, v3, v19

    .line 551
    .line 552
    const/16 v4, 0x7c

    .line 553
    .line 554
    aput-byte v4, v3, v18

    .line 555
    .line 556
    aput-byte v15, v3, v17

    .line 557
    .line 558
    const/16 v4, 0x4a

    .line 559
    .line 560
    aput-byte v4, v3, v16

    .line 561
    .line 562
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    invoke-virtual {v1, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 567
    .line 568
    .line 569
    const/16 v2, 0x27

    .line 570
    .line 571
    new-array v2, v2, [B

    .line 572
    .line 573
    fill-array-data v2, :array_4

    .line 574
    .line 575
    .line 576
    new-array v3, v6, [B

    .line 577
    .line 578
    fill-array-data v3, :array_5

    .line 579
    .line 580
    .line 581
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    const/16 v3, 0x1f

    .line 590
    .line 591
    new-array v3, v3, [B

    .line 592
    .line 593
    fill-array-data v3, :array_6

    .line 594
    .line 595
    .line 596
    new-array v4, v6, [B

    .line 597
    .line 598
    fill-array-data v4, :array_7

    .line 599
    .line 600
    .line 601
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    invoke-static {v1, v3}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    new-instance v3, Lokhttp3/Request$Builder;

    .line 614
    .line 615
    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    const/16 v2, 0xc

    .line 627
    .line 628
    new-array v2, v2, [B

    .line 629
    .line 630
    fill-array-data v2, :array_8

    .line 631
    .line 632
    .line 633
    new-array v3, v6, [B

    .line 634
    .line 635
    fill-array-data v3, :array_9

    .line 636
    .line 637
    .line 638
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    const/16 v3, 0x10

    .line 643
    .line 644
    new-array v3, v3, [B

    .line 645
    .line 646
    fill-array-data v3, :array_a

    .line 647
    .line 648
    .line 649
    new-array v4, v6, [B

    .line 650
    .line 651
    fill-array-data v4, :array_b

    .line 652
    .line 653
    .line 654
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v3

    .line 658
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    const/4 v2, 0x6

    .line 663
    new-array v2, v2, [B

    .line 664
    .line 665
    fill-array-data v2, :array_c

    .line 666
    .line 667
    .line 668
    new-array v3, v6, [B

    .line 669
    .line 670
    fill-array-data v3, :array_d

    .line 671
    .line 672
    .line 673
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v2

    .line 677
    const/16 v3, 0x10

    .line 678
    .line 679
    new-array v3, v3, [B

    .line 680
    .line 681
    fill-array-data v3, :array_e

    .line 682
    .line 683
    .line 684
    new-array v4, v6, [B

    .line 685
    .line 686
    fill-array-data v4, :array_f

    .line 687
    .line 688
    .line 689
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    iget-object v2, v0, Le0/q;->c:Le0/c0;

    .line 702
    .line 703
    iget-object v2, v2, Le0/c0;->a:Lokhttp3/OkHttpClient;

    .line 704
    .line 705
    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    new-instance v2, Lw7/c;

    .line 710
    .line 711
    const/4 v3, 0x5

    .line 712
    invoke-direct {v2, v3}, Lw7/c;-><init>(I)V

    .line 713
    .line 714
    .line 715
    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 716
    .line 717
    .line 718
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 719
    .line 720
    const/16 v2, 0x16

    .line 721
    .line 722
    new-array v2, v2, [B

    .line 723
    .line 724
    fill-array-data v2, :array_10

    .line 725
    .line 726
    .line 727
    new-array v3, v6, [B

    .line 728
    .line 729
    fill-array-data v3, :array_11

    .line 730
    .line 731
    .line 732
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    return-void

    .line 740
    :cond_4
    :goto_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 741
    .line 742
    const/16 v2, 0x26

    .line 743
    .line 744
    new-array v2, v2, [B

    .line 745
    .line 746
    fill-array-data v2, :array_12

    .line 747
    .line 748
    .line 749
    new-array v3, v6, [B

    .line 750
    .line 751
    fill-array-data v3, :array_13

    .line 752
    .line 753
    .line 754
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v2

    .line 758
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    :catch_0
    :cond_5
    return-void

    .line 762
    nop

    .line 763
    :array_0
    .array-data 1
        0x4et
        -0x80t
        -0x24t
        -0x2at
        0x40t
        -0x30t
        0x79t
        0x36t
        0x4at
        -0x24t
        -0x37t
        -0x23t
        0x5ct
    .end array-data

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    nop

    .line 775
    :array_1
    .array-data 1
        0x2dt
        -0xet
        -0x43t
        -0x5bt
        0x28t
        -0x71t
        0x15t
        0x59t
    .end array-data

    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    :array_2
    .array-data 1
        0x5ft
        -0x6dt
        -0x59t
        -0x2ft
        0x46t
        0x75t
        0x50t
        0x74t
        0x57t
        -0x67t
    .end array-data

    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    nop

    .line 793
    :array_3
    .array-data 1
        0x3et
        -0x3t
        -0x3dt
        -0x5dt
        0x29t
        0x1ct
        0x34t
        0x2bt
    .end array-data

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    :array_4
    .array-data 1
        0x4dt
        0x48t
        0x7at
        0x53t
        -0x69t
        -0x36t
        -0x6bt
        0x1t
        0x4ft
        0x5ft
        0x6ft
        0x51t
        -0x70t
        -0x61t
        -0x2bt
        0x42t
        0x56t
        0x12t
        0x7ct
        0x56t
        -0x35t
        -0x61t
        -0x32t
        0x5et
        0xat
        0x49t
        0x7et
        0x4ft
        -0x75t
        -0x6ft
        -0x22t
        0x71t
        0x49t
        0x53t
        0x69t
        0xdt
        -0x6ct
        -0x68t
        -0x36t
    .end array-data

    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    :array_5
    .array-data 1
        0x25t
        0x3ct
        0xet
        0x23t
        -0x1ct
        -0x10t
        -0x46t
        0x2et
    .end array-data

    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    :array_6
    .array-data 1
        -0x2ft
        -0x4ft
        0x11t
        0x50t
        -0x77t
        -0xft
        0x27t
        -0x32t
        -0x27t
        -0x52t
        0xft
        0x13t
        -0x76t
        -0x1ft
        0x29t
        -0x2ct
        -0x75t
        -0x1ft
        0x2t
        0x54t
        -0x7ft
        -0x20t
        0x35t
        -0x21t
        -0x3ct
        -0x4t
        0x14t
        0x48t
        -0x7at
        -0x41t
        0x7et
    .end array-data

    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    :array_7
    .array-data 1
        -0x50t
        -0x3ft
        0x61t
        0x3ct
        -0x20t
        -0x6et
        0x46t
        -0x46t
    .end array-data

    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    :array_8
    .array-data 1
        0x35t
        0x14t
        -0x32t
        -0x52t
        0x27t
        0x38t
        -0x52t
        -0x80t
        0x22t
        0x2t
        -0x30t
        -0x41t
    .end array-data

    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    :array_9
    .array-data 1
        0x76t
        0x7bt
        -0x60t
        -0x26t
        0x42t
        0x56t
        -0x26t
        -0x53t
    .end array-data

    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    :array_a
    .array-data 1
        -0x37t
        -0x51t
        0x64t
        0x7ft
        0x2ft
        -0x5et
        0x51t
        0x7bt
        -0x3ft
        -0x50t
        0x7at
        0x3ct
        0x2ct
        -0x4et
        0x5ft
        0x61t
    .end array-data

    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    :array_b
    .array-data 1
        -0x58t
        -0x21t
        0x14t
        0x13t
        0x46t
        -0x3ft
        0x30t
        0xft
    .end array-data

    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    :array_c
    .array-data 1
        0x1dt
        -0x6t
        0x62t
        -0x33t
        -0x3dt
        0x62t
    .end array-data

    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    nop

    .line 907
    :array_d
    .array-data 1
        0x5ct
        -0x67t
        0x1t
        -0x58t
        -0x4dt
        0x16t
        0x1ct
        -0x78t
    .end array-data

    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    :array_e
    .array-data 1
        -0x32t
        0x11t
        0x6et
        -0x53t
        0x53t
        0x8t
        0x30t
        -0x68t
        -0x3at
        0xet
        0x70t
        -0x12t
        0x50t
        0x18t
        0x3et
        -0x7et
    .end array-data

    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    :array_f
    .array-data 1
        -0x51t
        0x61t
        0x1et
        -0x3ft
        0x3at
        0x6bt
        0x51t
        -0x14t
    .end array-data

    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    :array_10
    .array-data 1
        0x53t
        0x28t
        0x17t
        0x51t
        0x23t
        -0x57t
        -0x49t
        -0x5at
        0x3ft
        0x34t
        0x5t
        0x12t
        0x33t
        -0x57t
        -0x56t
        -0x5ft
        0x79t
        0x32t
        0x1ct
        0x1dt
        0x29t
        -0x1et
    .end array-data

    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    nop

    .line 951
    :array_11
    .array-data 1
        0x1ft
        0x47t
        0x70t
        0x71t
        0x50t
        -0x34t
        -0x27t
        -0x2et
    .end array-data

    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    :array_12
    .array-data 1
        -0x7bt
        -0x66t
        -0x2bt
        -0x79t
        0x7dt
        0x24t
        0x52t
        -0x57t
        -0x17t
        -0x64t
        -0x3ft
        -0x79t
        0x72t
        0x23t
        0x48t
        -0x53t
        -0x5bt
        -0x64t
        -0x2at
        -0x79t
        0x74t
        0x3ft
        0x1et
        -0x51t
        -0x58t
        -0x65t
        -0x24t
        -0x38t
        0x6ft
        0x6dt
        0x5ct
        -0x57t
        -0x17t
        -0x79t
        -0x29t
        -0x3at
        0x7ft
        0x63t
    .end array-data

    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    nop

    .line 983
    :array_13
    .array-data 1
        -0x37t
        -0xbt
        -0x4et
        -0x59t
        0x1bt
        0x4dt
        0x3et
        -0x34t
    .end array-data
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 13

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Le0/q;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/16 v4, 0xd

    .line 12
    .line 13
    new-array v4, v4, [B

    .line 14
    .line 15
    fill-array-data v4, :array_0

    .line 16
    .line 17
    .line 18
    const/16 v5, 0x8

    .line 19
    .line 20
    new-array v6, v5, [B

    .line 21
    .line 22
    fill-array-data v6, :array_1

    .line 23
    .line 24
    .line 25
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    const/4 v2, 0x7

    .line 49
    new-array v2, v2, [B

    .line 50
    .line 51
    fill-array-data v2, :array_2

    .line 52
    .line 53
    .line 54
    new-array v4, v5, [B

    .line 55
    .line 56
    fill-array-data v4, :array_3

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_0
    move-object v4, p2

    .line 64
    :goto_1
    if-eqz v4, :cond_3

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    array-length v7, v6

    .line 71
    move v8, v3

    .line 72
    :goto_2
    if-ge v8, v7, :cond_2

    .line 73
    .line 74
    aget-object v9, v6, v8

    .line 75
    .line 76
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    if-eqz v9, :cond_0

    .line 81
    .line 82
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 83
    .line 84
    const/16 v11, 0x15

    .line 85
    .line 86
    new-array v11, v11, [B

    .line 87
    .line 88
    fill-array-data v11, :array_4

    .line 89
    .line 90
    .line 91
    new-array v12, v5, [B

    .line 92
    .line 93
    fill-array-data v12, :array_5

    .line 94
    .line 95
    .line 96
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_0
    if-eqz v9, :cond_1

    .line 108
    .line 109
    const/16 v10, 0xe

    .line 110
    .line 111
    new-array v11, v10, [B

    .line 112
    .line 113
    fill-array-data v11, :array_6

    .line 114
    .line 115
    .line 116
    new-array v12, v5, [B

    .line 117
    .line 118
    fill-array-data v12, :array_7

    .line 119
    .line 120
    .line 121
    invoke-static {v11, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    if-eqz v11, :cond_1

    .line 130
    .line 131
    new-array v4, v10, [B

    .line 132
    .line 133
    fill-array-data v4, :array_8

    .line 134
    .line 135
    .line 136
    new-array v6, v5, [B

    .line 137
    .line 138
    fill-array-data v6, :array_9

    .line 139
    .line 140
    .line 141
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    goto :goto_3

    .line 154
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    goto :goto_1

    .line 162
    :cond_3
    const/4 v4, 0x0

    .line 163
    :goto_3
    if-nez v4, :cond_4

    .line 164
    .line 165
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    :cond_4
    :try_start_1
    new-instance v6, Ljava/io/FileWriter;

    .line 174
    .line 175
    invoke-direct {v6, v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    .line 177
    .line 178
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const/16 v7, 0xb

    .line 184
    .line 185
    new-array v8, v7, [B

    .line 186
    .line 187
    fill-array-data v8, :array_a

    .line 188
    .line 189
    .line 190
    new-array v9, v5, [B

    .line 191
    .line 192
    fill-array-data v9, :array_b

    .line 193
    .line 194
    .line 195
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 203
    .line 204
    .line 205
    move-result-wide v8

    .line 206
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    const/16 v8, 0x9

    .line 225
    .line 226
    new-array v8, v8, [B

    .line 227
    .line 228
    fill-array-data v8, :array_c

    .line 229
    .line 230
    .line 231
    new-array v9, v5, [B

    .line 232
    .line 233
    fill-array-data v9, :array_d

    .line 234
    .line 235
    .line 236
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    new-array v2, v5, [B

    .line 262
    .line 263
    fill-array-data v2, :array_e

    .line 264
    .line 265
    .line 266
    new-array v8, v5, [B

    .line 267
    .line 268
    fill-array-data v8, :array_f

    .line 269
    .line 270
    .line 271
    invoke-static {v2, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    new-array v2, v7, [B

    .line 297
    .line 298
    fill-array-data v2, :array_10

    .line 299
    .line 300
    .line 301
    new-array v4, v5, [B

    .line 302
    .line 303
    fill-array-data v4, :array_11

    .line 304
    .line 305
    .line 306
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v2, "\n\n"

    .line 317
    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    array-length v2, v1

    .line 333
    move v4, v3

    .line 334
    :goto_4
    if-ge v4, v2, :cond_5

    .line 335
    .line 336
    aget-object v7, v1, v4

    .line 337
    .line 338
    new-instance v8, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    add-int/lit8 v4, v4, 0x1

    .line 361
    .line 362
    goto :goto_4

    .line 363
    :catchall_0
    move-exception v0

    .line 364
    goto :goto_7

    .line 365
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    :goto_5
    if-eqz v1, :cond_7

    .line 370
    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    const/16 v4, 0xc

    .line 377
    .line 378
    new-array v4, v4, [B

    .line 379
    .line 380
    fill-array-data v4, :array_12

    .line 381
    .line 382
    .line 383
    new-array v7, v5, [B

    .line 384
    .line 385
    fill-array-data v7, :array_13

    .line 386
    .line 387
    .line 388
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-virtual {v6, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    array-length v4, v2

    .line 413
    move v7, v3

    .line 414
    :goto_6
    if-ge v7, v4, :cond_6

    .line 415
    .line 416
    aget-object v8, v2, v7

    .line 417
    .line 418
    new-instance v9, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .line 422
    .line 423
    const/4 v10, 0x4

    .line 424
    new-array v10, v10, [B

    .line 425
    .line 426
    fill-array-data v10, :array_14

    .line 427
    .line 428
    .line 429
    new-array v11, v5, [B

    .line 430
    .line 431
    fill-array-data v11, :array_15

    .line 432
    .line 433
    .line 434
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v10

    .line 438
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v8

    .line 451
    invoke-virtual {v6, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    add-int/lit8 v7, v7, 0x1

    .line 455
    .line 456
    goto :goto_6

    .line 457
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 458
    .line 459
    .line 460
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    goto :goto_5

    .line 462
    :cond_7
    :try_start_3
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 463
    .line 464
    .line 465
    goto :goto_9

    .line 466
    :goto_7
    :try_start_4
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 467
    .line 468
    .line 469
    goto :goto_8

    .line 470
    :catchall_1
    move-exception v1

    .line 471
    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 472
    .line 473
    .line 474
    :goto_8
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 475
    :catch_1
    :goto_9
    invoke-virtual {p0}, Le0/q;->a()V

    .line 476
    .line 477
    .line 478
    sget-boolean v0, Le0/q;->f:Z

    .line 479
    .line 480
    if-eqz v0, :cond_9

    .line 481
    .line 482
    iget-object v0, p0, Le0/q;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 483
    .line 484
    if-eqz v0, :cond_8

    .line 485
    .line 486
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 487
    .line 488
    .line 489
    goto :goto_a

    .line 490
    :cond_8
    const/4 p1, 0x2

    .line 491
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 492
    .line 493
    .line 494
    :cond_9
    :goto_a
    return-void

    .line 495
    :array_0
    .array-data 1
        0x29t
        0x27t
        0x5ft
        0xbt
        0x42t
        0x10t
        -0x78t
        0x1at
        0x2dt
        0x7bt
        0x4at
        0x0t
        0x5et
    .end array-data

    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    nop

    .line 507
    :array_1
    .array-data 1
        0x4at
        0x55t
        0x3et
        0x78t
        0x2at
        0x4ft
        -0x1ct
        0x75t
    .end array-data

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    :array_2
    .array-data 1
        0x28t
        -0x33t
        0x34t
        0x14t
        -0x32t
        -0x63t
        -0x73t
    .end array-data

    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    :array_3
    .array-data 1
        0x5dt
        -0x5dt
        0x5ft
        0x7at
        -0x5ft
        -0x16t
        -0x1dt
        0x44t
    .end array-data

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    :array_4
    .array-data 1
        -0x64t
        -0x36t
        0x7at
        -0x47t
        -0x5et
        -0x67t
        0x8t
        0x24t
        -0x56t
        -0x25t
        0x2at
        -0x60t
        -0x42t
        -0x24t
        0x18t
        0x3ft
        -0x52t
        -0x2at
        0x64t
        -0xdt
        -0x10t
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
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    nop

    .line 547
    :array_5
    .array-data 1
        -0x31t
        -0x41t
        0xat
        -0x37t
        -0x30t
        -0x4t
        0x7bt
        0x57t
    .end array-data

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    :array_6
    .array-data 1
        -0x78t
        0x77t
        0xet
        -0x6et
        0x5et
        0xdt
        0x38t
        -0x64t
        -0x71t
        0x77t
        0x2t
        -0x6ct
        0x53t
        0x3ft
    .end array-data

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    nop

    .line 567
    :array_7
    .array-data 1
        -0x39t
        0x25t
        0x47t
        -0x2bt
        0x17t
        0x43t
        0x67t
        -0x38t
    .end array-data

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    :array_8
    .array-data 1
        0x6ct
        -0x2ft
        -0x67t
        0x6et
        0x1bt
        -0x78t
        -0x14t
        -0x43t
        0x6bt
        -0x2ft
        -0x6bt
        0x68t
        0x16t
        -0x46t
    .end array-data

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    nop

    .line 587
    :array_9
    .array-data 1
        0x23t
        -0x7dt
        -0x30t
        0x29t
        0x52t
        -0x3at
        -0x4dt
        -0x17t
    .end array-data

    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    :array_a
    .array-data 1
        -0x2bt
        -0x63t
        0x4t
        -0x32t
        0x55t
        -0x7dt
        -0x4ct
        -0x3bt
        -0xft
        -0x32t
        0x49t
    .end array-data

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    :array_b
    .array-data 1
        -0x7ft
        -0xct
        0x69t
        -0x55t
        0x26t
        -0x9t
        -0x2bt
        -0x58t
    .end array-data

    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    :array_c
    .array-data 1
        -0x13t
        -0x5t
        0x5ft
        -0x67t
        -0x13t
        0x59t
        -0x55t
        -0x30t
        -0x65t
    .end array-data

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    nop

    .line 623
    :array_d
    .array-data 1
        -0x45t
        -0x62t
        0x2dt
        -0x16t
        -0x7ct
        0x36t
        -0x3bt
        -0x16t
    .end array-data

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    :array_e
    .array-data 1
        0x7at
        0x60t
        -0x77t
        0x2dt
        -0x4et
        0x29t
        -0x13t
        -0x26t
    .end array-data

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    :array_f
    .array-data 1
        0x2et
        0x8t
        -0x5t
        0x48t
        -0x2dt
        0x4dt
        -0x29t
        -0x6t
    .end array-data

    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    :array_10
    .array-data 1
        0x51t
        -0x50t
        -0x53t
        -0x35t
        0x44t
        -0xet
        -0x2dt
        -0x5at
        0x7at
        -0xet
        -0x12t
    .end array-data

    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    :array_11
    .array-data 1
        0x14t
        -0x38t
        -0x32t
        -0x52t
        0x34t
        -0x7at
        -0x46t
        -0x37t
    .end array-data

    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    :array_12
    .array-data 1
        -0xft
        0x31t
        0x7ft
        -0x64t
        -0x21t
        0x6et
        0xat
        0x6et
        -0x67t
        0xbt
        0x24t
        -0x37t
    .end array-data

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
    :array_13
    .array-data 1
        -0x5t
        0x72t
        0x1et
        -0x17t
        -0x54t
        0xbt
        0x6et
        0x4et
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_14
    .array-data 1
        -0x20t
        0x10t
        -0x7dt
        -0x72t
    .end array-data

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    :array_15
    .array-data 1
        -0x17t
        0x71t
        -0x9t
        -0x52t
        -0x47t
        0x72t
        0x6at
        -0x6ct
    .end array-data
.end method
