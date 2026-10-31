.class public final Lj2/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le2/d;

.field public final c:Lk2/d;

.field public final d:La5/h;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ll2/c;

.field public final g:Lm2/a;

.field public final h:Lm2/a;

.field public final i:Lk2/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le2/d;Lk2/d;La5/h;Ljava/util/concurrent/Executor;Ll2/c;Lm2/a;Lm2/a;Lk2/c;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj2/i;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lj2/i;->b:Le2/d;

    .line 7
    .line 8
    iput-object p3, p0, Lj2/i;->c:Lk2/d;

    .line 9
    .line 10
    iput-object p4, p0, Lj2/i;->d:La5/h;

    .line 11
    .line 12
    iput-object p5, p0, Lj2/i;->e:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iput-object p6, p0, Lj2/i;->f:Ll2/c;

    .line 15
    .line 16
    iput-object p7, p0, Lj2/i;->g:Lm2/a;

    .line 17
    .line 18
    iput-object p8, p0, Lj2/i;->h:Lm2/a;

    .line 19
    .line 20
    iput-object p9, p0, Lj2/i;->i:Lk2/c;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ld2/j;I)V
    .registers 47

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    iget-object v2, v1, Lj2/i;->b:Le2/d;

    .line 6
    .line 7
    iget-object v0, v3, Ld2/j;->a:Ljava/lang/String;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_9
    iget-object v4, v2, Le2/d;->c:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v4, :cond_20

    .line 18
    .line 19
    iget-object v4, v2, Le2/d;->c:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Le2/e;
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1d

    .line 26
    .line 27
    monitor-exit v2

    .line 28
    move-object v4, v0

    .line 29
    goto :goto_48

    .line 30
    :catchall_1d
    move-exception v0

    .line 31
    goto/16 :goto_5f1

    .line 32
    .line 33
    :cond_20
    :try_start_20
    iget-object v4, v2, Le2/d;->a:Landroid/support/v4/media/h;

    .line 34
    .line 35
    invoke-virtual {v4, v0}, Landroid/support/v4/media/h;->e(Ljava/lang/String;)Lcom/google/android/datatransport/cct/CctBackendFactory;

    .line 36
    .line 37
    .line 38
    move-result-object v4
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_1d

    .line 39
    if-nez v4, :cond_2b

    .line 40
    .line 41
    monitor-exit v2

    .line 42
    move-object v4, v5

    .line 43
    goto :goto_48

    .line 44
    :cond_2b
    :try_start_2b
    iget-object v6, v2, Le2/d;->b:La5/h;

    .line 45
    .line 46
    iget-object v7, v6, La5/h;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v7, Landroid/content/Context;

    .line 49
    .line 50
    iget-object v8, v6, La5/h;->d:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v8, Lm2/a;

    .line 53
    .line 54
    iget-object v6, v6, La5/h;->e:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v6, Lm2/a;

    .line 57
    .line 58
    new-instance v9, Le2/b;

    .line 59
    .line 60
    invoke-direct {v9, v7, v8, v6, v0}, Le2/b;-><init>(Landroid/content/Context;Lm2/a;Lm2/a;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v9}, Lcom/google/android/datatransport/cct/CctBackendFactory;->create(Le2/c;)Le2/e;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iget-object v6, v2, Le2/d;->c:Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_1d

    .line 70
    .line 71
    .line 72
    monitor-exit v2

    .line 73
    :goto_48
    move-object v2, v4

    .line 74
    move-object v8, v5

    .line 75
    const-wide/16 v4, 0x0

    .line 76
    .line 77
    :goto_4c
    iget-object v0, v1, Lj2/i;->f:Ll2/c;

    .line 78
    .line 79
    new-instance v9, Lj2/f;

    .line 80
    .line 81
    const/4 v10, 0x0

    .line 82
    invoke-direct {v9, v1, v3, v10}, Lj2/f;-><init>(Lj2/i;Ld2/j;I)V

    .line 83
    .line 84
    .line 85
    check-cast v0, Lk2/h;

    .line 86
    .line 87
    invoke-virtual {v0, v9}, Lk2/h;->c0(Ll2/b;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget-object v9, v1, Lj2/i;->f:Ll2/c;

    .line 98
    .line 99
    if-eqz v0, :cond_5e6

    .line 100
    .line 101
    new-instance v0, Lj2/f;

    .line 102
    .line 103
    const/4 v11, 0x1

    .line 104
    invoke-direct {v0, v1, v3, v11}, Lj2/f;-><init>(Lj2/i;Ld2/j;I)V

    .line 105
    .line 106
    .line 107
    check-cast v9, Lk2/h;

    .line 108
    .line 109
    invoke-virtual {v9, v0}, Lk2/h;->c0(Ll2/b;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move-object v9, v0

    .line 114
    check-cast v9, Ljava/lang/Iterable;

    .line 115
    .line 116
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_7e

    .line 125
    .line 126
    return-void

    .line 127
    :cond_7e
    const/4 v14, 0x3

    .line 128
    const-wide/16 v6, -0x1

    .line 129
    .line 130
    if-nez v2, :cond_96

    .line 131
    .line 132
    const-string v0, "Uploader"

    .line 133
    .line 134
    const-string v10, "Unknown backend for %s, deleting event batch for it..."

    .line 135
    .line 136
    invoke-static {v3, v0, v10}, Le3/d;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance v0, Le2/a;

    .line 140
    .line 141
    invoke-direct {v0, v14, v6, v7}, Le2/a;-><init>(IJ)V

    .line 142
    .line 143
    .line 144
    move-object/from16 v20, v2

    .line 145
    .line 146
    move-wide/from16 v31, v4

    .line 147
    .line 148
    :goto_93
    const/4 v2, 0x2

    .line 149
    goto/16 :goto_544

    .line 150
    .line 151
    :cond_96
    new-instance v8, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    if-eqz v16, :cond_b3

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v16

    .line 170
    move-object/from16 v15, v16

    .line 171
    .line 172
    check-cast v15, Lk2/b;

    .line 173
    .line 174
    iget-object v15, v15, Lk2/b;->c:Ld2/i;

    .line 175
    .line 176
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_9f

    .line 180
    :cond_b3
    iget-object v0, v3, Ld2/j;->b:[B

    .line 181
    .line 182
    if-eqz v0, :cond_241

    .line 183
    .line 184
    iget-object v0, v1, Lj2/i;->f:Ll2/c;

    .line 185
    .line 186
    iget-object v13, v1, Lj2/i;->i:Lk2/c;

    .line 187
    .line 188
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    new-instance v12, Landroidx/fragment/app/h;

    .line 192
    .line 193
    const/16 v11, 0xd

    .line 194
    .line 195
    invoke-direct {v12, v11, v13}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    check-cast v0, Lk2/h;

    .line 199
    .line 200
    invoke-virtual {v0, v12}, Lk2/h;->c0(Ll2/b;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Lg2/a;

    .line 205
    .line 206
    new-instance v11, Ld2/h;

    .line 207
    .line 208
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 209
    .line 210
    .line 211
    new-instance v12, Ljava/util/HashMap;

    .line 212
    .line 213
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 214
    .line 215
    .line 216
    iput-object v12, v11, Ld2/h;->f:Ljava/lang/Object;

    .line 217
    .line 218
    iget-object v12, v1, Lj2/i;->g:Lm2/a;

    .line 219
    .line 220
    invoke-interface {v12}, Lm2/a;->d()J

    .line 221
    .line 222
    .line 223
    move-result-wide v12

    .line 224
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    iput-object v12, v11, Ld2/h;->d:Ljava/lang/Object;

    .line 229
    .line 230
    iget-object v12, v1, Lj2/i;->h:Lm2/a;

    .line 231
    .line 232
    invoke-interface {v12}, Lm2/a;->d()J

    .line 233
    .line 234
    .line 235
    move-result-wide v12

    .line 236
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    iput-object v12, v11, Ld2/h;->e:Ljava/lang/Object;

    .line 241
    .line 242
    const-string v12, "GDT_CLIENT_METRICS"

    .line 243
    .line 244
    iput-object v12, v11, Ld2/h;->a:Ljava/lang/Object;

    .line 245
    .line 246
    new-instance v12, Ld2/l;

    .line 247
    .line 248
    const-string v13, "proto"

    .line 249
    .line 250
    new-instance v6, La2/a;

    .line 251
    .line 252
    invoke-direct {v6, v13}, La2/a;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    sget-object v7, Ld2/n;->a:La5/h;

    .line 259
    .line 260
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    .line 264
    .line 265
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 266
    .line 267
    .line 268
    :try_start_10b
    invoke-virtual {v7, v0, v13}, La5/h;->g(Lg2/a;Ljava/io/ByteArrayOutputStream;)V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_10e} :catch_10e

    .line 269
    .line 270
    .line 271
    :catch_10e
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-direct {v12, v6, v0}, Ld2/l;-><init>(La2/a;[B)V

    .line 276
    .line 277
    .line 278
    iput-object v12, v11, Ld2/h;->c:Ljava/lang/Object;

    .line 279
    .line 280
    invoke-virtual {v11}, Ld2/h;->l()Ld2/i;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    move-object v6, v2

    .line 285
    check-cast v6, Lb2/c;

    .line 286
    .line 287
    iget-object v7, v6, Lb2/c;->c:Landroid/content/Context;

    .line 288
    .line 289
    iget-object v6, v6, Lb2/c;->b:Landroid/net/ConnectivityManager;

    .line 290
    .line 291
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-virtual {v0}, Ld2/i;->c()Ld2/h;

    .line 296
    .line 297
    .line 298
    move-result-object v11

    .line 299
    const-string v0, "sdk-version"

    .line 300
    .line 301
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 302
    .line 303
    iget-object v13, v11, Ld2/h;->f:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v13, Ljava/util/HashMap;

    .line 306
    .line 307
    if-eqz v13, :cond_23b

    .line 308
    .line 309
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v12

    .line 313
    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    const-string v0, "model"

    .line 317
    .line 318
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v11, v0, v12}, Ld2/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    const-string v0, "hardware"

    .line 324
    .line 325
    sget-object v12, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {v11, v0, v12}, Ld2/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    const-string v0, "device"

    .line 331
    .line 332
    sget-object v12, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v11, v0, v12}, Ld2/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string v0, "product"

    .line 338
    .line 339
    sget-object v12, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v11, v0, v12}, Ld2/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string v0, "os-uild"

    .line 345
    .line 346
    sget-object v12, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {v11, v0, v12}, Ld2/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    const-string v0, "manufacturer"

    .line 352
    .line 353
    sget-object v12, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v11, v0, v12}, Ld2/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string v0, "fingerprint"

    .line 359
    .line 360
    sget-object v12, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v11, v0, v12}, Ld2/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    const-string v0, "tz-offset"

    .line 366
    .line 367
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 368
    .line 369
    .line 370
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 371
    .line 372
    .line 373
    move-result-object v12

    .line 374
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 375
    .line 376
    .line 377
    move-result-object v13

    .line 378
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 379
    .line 380
    .line 381
    move-result-wide v14

    .line 382
    invoke-virtual {v12, v14, v15}, Ljava/util/TimeZone;->getOffset(J)I

    .line 383
    .line 384
    .line 385
    move-result v12

    .line 386
    div-int/lit16 v12, v12, 0x3e8

    .line 387
    .line 388
    int-to-long v12, v12

    .line 389
    iget-object v14, v11, Ld2/h;->f:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v14, Ljava/util/HashMap;

    .line 392
    .line 393
    if-eqz v14, :cond_235

    .line 394
    .line 395
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v12

    .line 399
    invoke-virtual {v14, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    const-string v0, "net-type"

    .line 403
    .line 404
    if-nez v6, :cond_199

    .line 405
    .line 406
    sget-object v12, Lc2/v;->b:Landroid/util/SparseArray;

    .line 407
    .line 408
    const/4 v12, -0x1

    .line 409
    goto :goto_19d

    .line 410
    :cond_199
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    .line 411
    .line 412
    .line 413
    move-result v12

    .line 414
    :goto_19d
    iget-object v13, v11, Ld2/h;->f:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v13, Ljava/util/HashMap;

    .line 417
    .line 418
    if-eqz v13, :cond_22f

    .line 419
    .line 420
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v12

    .line 424
    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    const-string v0, "mobile-subtype"

    .line 428
    .line 429
    if-nez v6, :cond_1b2

    .line 430
    .line 431
    sget-object v6, Lc2/u;->b:Landroid/util/SparseArray;

    .line 432
    .line 433
    :cond_1b0
    move v6, v10

    .line 434
    goto :goto_1c8

    .line 435
    :cond_1b2
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 436
    .line 437
    .line 438
    move-result v6

    .line 439
    const/4 v12, -0x1

    .line 440
    if-ne v6, v12, :cond_1be

    .line 441
    .line 442
    sget-object v6, Lc2/u;->b:Landroid/util/SparseArray;

    .line 443
    .line 444
    const/16 v6, 0x64

    .line 445
    .line 446
    goto :goto_1c8

    .line 447
    :cond_1be
    sget-object v12, Lc2/u;->b:Landroid/util/SparseArray;

    .line 448
    .line 449
    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v12

    .line 453
    check-cast v12, Lc2/u;

    .line 454
    .line 455
    if-eqz v12, :cond_1b0

    .line 456
    .line 457
    :goto_1c8
    iget-object v12, v11, Ld2/h;->f:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v12, Ljava/util/HashMap;

    .line 460
    .line 461
    if-eqz v12, :cond_229

    .line 462
    .line 463
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    invoke-virtual {v12, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    const-string v0, "country"

    .line 471
    .line 472
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 473
    .line 474
    .line 475
    move-result-object v6

    .line 476
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v6

    .line 480
    invoke-virtual {v11, v0, v6}, Ld2/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    const-string v0, "locale"

    .line 484
    .line 485
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 486
    .line 487
    .line 488
    move-result-object v6

    .line 489
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    invoke-virtual {v11, v0, v6}, Ld2/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    const-string v0, "mcc_mnc"

    .line 497
    .line 498
    const-string v6, "phone"

    .line 499
    .line 500
    invoke-virtual {v7, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v6

    .line 504
    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 505
    .line 506
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v6

    .line 510
    invoke-virtual {v11, v0, v6}, Ld2/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    const-string v6, "application_build"

    .line 514
    .line 515
    :try_start_202
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v7

    .line 523
    invoke-virtual {v0, v7, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    iget v12, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_210
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_202 .. :try_end_210} :catch_211

    .line 528
    .line 529
    goto :goto_21a

    .line 530
    :catch_211
    move-exception v0

    .line 531
    const-string v7, "CctTransportBackend"

    .line 532
    .line 533
    const-string v12, "Unable to find version code for package"

    .line 534
    .line 535
    invoke-static {v7, v12, v0}, Le3/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 536
    .line 537
    .line 538
    const/4 v12, -0x1

    .line 539
    :goto_21a
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-virtual {v11, v6, v0}, Ld2/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v11}, Ld2/h;->l()Ld2/i;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    goto :goto_241

    .line 554
    :cond_229
    const-string v0, "Property \"autoMetadata\" has not been set"

    .line 555
    .line 556
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    return-void

    .line 560
    :cond_22f
    const-string v0, "Property \"autoMetadata\" has not been set"

    .line 561
    .line 562
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    return-void

    .line 566
    :cond_235
    const-string v0, "Property \"autoMetadata\" has not been set"

    .line 567
    .line 568
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    return-void

    .line 572
    :cond_23b
    const-string v0, "Property \"autoMetadata\" has not been set"

    .line 573
    .line 574
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    return-void

    .line 578
    :cond_241
    :goto_241
    iget-object v0, v3, Ld2/j;->b:[B

    .line 579
    .line 580
    move-object v6, v2

    .line 581
    check-cast v6, Lb2/c;

    .line 582
    .line 583
    const-string v7, "CctTransportBackend"

    .line 584
    .line 585
    const-string v11, "Missing required properties:"

    .line 586
    .line 587
    const-string v12, ""

    .line 588
    .line 589
    new-instance v13, Ljava/util/HashMap;

    .line 590
    .line 591
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 595
    .line 596
    .line 597
    move-result v14

    .line 598
    move v15, v10

    .line 599
    :goto_256
    if-ge v15, v14, :cond_28b

    .line 600
    .line 601
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v19

    .line 605
    add-int/lit8 v15, v15, 0x1

    .line 606
    .line 607
    move-object/from16 v10, v19

    .line 608
    .line 609
    check-cast v10, Ld2/i;

    .line 610
    .line 611
    move-object/from16 v19, v0

    .line 612
    .line 613
    iget-object v0, v10, Ld2/i;->a:Ljava/lang/String;

    .line 614
    .line 615
    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v20

    .line 619
    if-nez v20, :cond_27a

    .line 620
    .line 621
    move-object/from16 v20, v2

    .line 622
    .line 623
    new-instance v2, Ljava/util/ArrayList;

    .line 624
    .line 625
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    goto :goto_285

    .line 635
    :cond_27a
    move-object/from16 v20, v2

    .line 636
    .line 637
    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    check-cast v0, Ljava/util/List;

    .line 642
    .line 643
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    :goto_285
    move-object/from16 v0, v19

    .line 647
    .line 648
    move-object/from16 v2, v20

    .line 649
    .line 650
    const/4 v10, 0x0

    .line 651
    goto :goto_256

    .line 652
    :cond_28b
    move-object/from16 v19, v0

    .line 653
    .line 654
    move-object/from16 v20, v2

    .line 655
    .line 656
    new-instance v0, Ljava/util/ArrayList;

    .line 657
    .line 658
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    :goto_29c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 670
    .line 671
    .line 672
    move-result v8

    .line 673
    if-eqz v8, :cond_496

    .line 674
    .line 675
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v8

    .line 679
    check-cast v8, Ljava/util/Map$Entry;

    .line 680
    .line 681
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v13

    .line 685
    check-cast v13, Ljava/util/List;

    .line 686
    .line 687
    const/4 v14, 0x0

    .line 688
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v13

    .line 692
    check-cast v13, Ld2/i;

    .line 693
    .line 694
    sget-object v14, Lc2/x;->b:Lc2/x;

    .line 695
    .line 696
    iget-object v14, v6, Lb2/c;->f:Lm2/a;

    .line 697
    .line 698
    invoke-interface {v14}, Lm2/a;->d()J

    .line 699
    .line 700
    .line 701
    move-result-wide v22

    .line 702
    iget-object v14, v6, Lb2/c;->e:Lm2/a;

    .line 703
    .line 704
    invoke-interface {v14}, Lm2/a;->d()J

    .line 705
    .line 706
    .line 707
    move-result-wide v24

    .line 708
    const-string v14, "sdk-version"

    .line 709
    .line 710
    invoke-virtual {v13, v14}, Ld2/i;->b(Ljava/lang/String;)I

    .line 711
    .line 712
    .line 713
    move-result v14

    .line 714
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 715
    .line 716
    .line 717
    move-result-object v27

    .line 718
    const-string v14, "model"

    .line 719
    .line 720
    invoke-virtual {v13, v14}, Ld2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v28

    .line 724
    const-string v14, "hardware"

    .line 725
    .line 726
    invoke-virtual {v13, v14}, Ld2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v29

    .line 730
    const-string v14, "device"

    .line 731
    .line 732
    invoke-virtual {v13, v14}, Ld2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v30

    .line 736
    const-string v14, "product"

    .line 737
    .line 738
    invoke-virtual {v13, v14}, Ld2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v31

    .line 742
    const-string v14, "os-uild"

    .line 743
    .line 744
    invoke-virtual {v13, v14}, Ld2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v32

    .line 748
    const-string v14, "manufacturer"

    .line 749
    .line 750
    invoke-virtual {v13, v14}, Ld2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v33

    .line 754
    const-string v14, "fingerprint"

    .line 755
    .line 756
    invoke-virtual {v13, v14}, Ld2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v34

    .line 760
    const-string v14, "country"

    .line 761
    .line 762
    invoke-virtual {v13, v14}, Ld2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v36

    .line 766
    const-string v14, "locale"

    .line 767
    .line 768
    invoke-virtual {v13, v14}, Ld2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v35

    .line 772
    const-string v14, "mcc_mnc"

    .line 773
    .line 774
    invoke-virtual {v13, v14}, Ld2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v37

    .line 778
    const-string v14, "application_build"

    .line 779
    .line 780
    invoke-virtual {v13, v14}, Ld2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v38

    .line 784
    new-instance v26, Lc2/h;

    .line 785
    .line 786
    invoke-direct/range {v26 .. v38}, Lc2/h;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    move-object/from16 v13, v26

    .line 790
    .line 791
    new-instance v14, Lc2/j;

    .line 792
    .line 793
    invoke-direct {v14, v13}, Lc2/j;-><init>(Lc2/h;)V

    .line 794
    .line 795
    .line 796
    :try_start_31b
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v13

    .line 800
    check-cast v13, Ljava/lang/String;

    .line 801
    .line 802
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 803
    .line 804
    .line 805
    move-result v13

    .line 806
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 807
    .line 808
    .line 809
    move-result-object v13
    :try_end_329
    .catch Ljava/lang/NumberFormatException; {:try_start_31b .. :try_end_329} :catch_32e

    .line 810
    move-object/from16 v27, v13

    .line 811
    .line 812
    const/16 v28, 0x0

    .line 813
    .line 814
    goto :goto_338

    .line 815
    :catch_32e
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v13

    .line 819
    check-cast v13, Ljava/lang/String;

    .line 820
    .line 821
    move-object/from16 v28, v13

    .line 822
    .line 823
    const/16 v27, 0x0

    .line 824
    .line 825
    :goto_338
    new-instance v13, Ljava/util/ArrayList;

    .line 826
    .line 827
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .line 829
    .line 830
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v8

    .line 834
    check-cast v8, Ljava/util/List;

    .line 835
    .line 836
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 837
    .line 838
    .line 839
    move-result-object v8

    .line 840
    :goto_347
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 841
    .line 842
    .line 843
    move-result v15

    .line 844
    if-eqz v15, :cond_47e

    .line 845
    .line 846
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v15

    .line 850
    check-cast v15, Ld2/i;

    .line 851
    .line 852
    iget-object v10, v15, Ld2/i;->c:Ld2/l;

    .line 853
    .line 854
    move-object/from16 v30, v2

    .line 855
    .line 856
    iget-object v2, v10, Ld2/l;->a:La2/a;

    .line 857
    .line 858
    iget-object v10, v10, Ld2/l;->b:[B

    .line 859
    .line 860
    const-string v3, "proto"

    .line 861
    .line 862
    move-wide/from16 v31, v4

    .line 863
    .line 864
    new-instance v4, La2/a;

    .line 865
    .line 866
    invoke-direct {v4, v3}, La2/a;-><init>(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v2, v4}, La2/a;->equals(Ljava/lang/Object;)Z

    .line 870
    .line 871
    .line 872
    move-result v3

    .line 873
    if-eqz v3, :cond_373

    .line 874
    .line 875
    new-instance v2, Lc2/k;

    .line 876
    .line 877
    const/4 v3, 0x0

    .line 878
    invoke-direct {v2, v3}, Lc2/k;-><init>(I)V

    .line 879
    .line 880
    .line 881
    iput-object v10, v2, Lc2/k;->g:Ljava/lang/Object;

    .line 882
    .line 883
    goto :goto_394

    .line 884
    :cond_373
    const-string v3, "json"

    .line 885
    .line 886
    new-instance v4, La2/a;

    .line 887
    .line 888
    invoke-direct {v4, v3}, La2/a;-><init>(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v2, v4}, La2/a;->equals(Ljava/lang/Object;)Z

    .line 892
    .line 893
    .line 894
    move-result v3

    .line 895
    if-eqz v3, :cond_45c

    .line 896
    .line 897
    new-instance v2, Ljava/lang/String;

    .line 898
    .line 899
    const-string v3, "UTF-8"

    .line 900
    .line 901
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 902
    .line 903
    .line 904
    move-result-object v3

    .line 905
    invoke-direct {v2, v10, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 906
    .line 907
    .line 908
    new-instance v3, Lc2/k;

    .line 909
    .line 910
    const/4 v4, 0x0

    .line 911
    invoke-direct {v3, v4}, Lc2/k;-><init>(I)V

    .line 912
    .line 913
    .line 914
    iput-object v2, v3, Lc2/k;->h:Ljava/lang/Object;

    .line 915
    .line 916
    move-object v2, v3

    .line 917
    :goto_394
    iget-wide v4, v15, Ld2/i;->d:J

    .line 918
    .line 919
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 920
    .line 921
    .line 922
    move-result-object v3

    .line 923
    iput-object v3, v2, Lc2/k;->c:Ljava/lang/Object;

    .line 924
    .line 925
    iget-wide v3, v15, Ld2/i;->e:J

    .line 926
    .line 927
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    iput-object v3, v2, Lc2/k;->d:Ljava/lang/Object;

    .line 932
    .line 933
    const-string v3, "tz-offset"

    .line 934
    .line 935
    iget-object v4, v15, Ld2/i;->f:Ljava/util/Map;

    .line 936
    .line 937
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v3

    .line 941
    check-cast v3, Ljava/lang/String;

    .line 942
    .line 943
    if-nez v3, :cond_3b3

    .line 944
    .line 945
    const-wide/16 v3, 0x0

    .line 946
    .line 947
    goto :goto_3bb

    .line 948
    :cond_3b3
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 949
    .line 950
    .line 951
    move-result-object v3

    .line 952
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 953
    .line 954
    .line 955
    move-result-wide v3

    .line 956
    :goto_3bb
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 957
    .line 958
    .line 959
    move-result-object v3

    .line 960
    iput-object v3, v2, Lc2/k;->e:Ljava/lang/Object;

    .line 961
    .line 962
    const-string v3, "net-type"

    .line 963
    .line 964
    invoke-virtual {v15, v3}, Ld2/i;->b(Ljava/lang/String;)I

    .line 965
    .line 966
    .line 967
    move-result v3

    .line 968
    sget-object v4, Lc2/v;->b:Landroid/util/SparseArray;

    .line 969
    .line 970
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    move-result-object v3

    .line 974
    check-cast v3, Lc2/v;

    .line 975
    .line 976
    const-string v4, "mobile-subtype"

    .line 977
    .line 978
    invoke-virtual {v15, v4}, Ld2/i;->b(Ljava/lang/String;)I

    .line 979
    .line 980
    .line 981
    move-result v4

    .line 982
    sget-object v5, Lc2/u;->b:Landroid/util/SparseArray;

    .line 983
    .line 984
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-result-object v4

    .line 988
    check-cast v4, Lc2/u;

    .line 989
    .line 990
    new-instance v5, Lc2/o;

    .line 991
    .line 992
    invoke-direct {v5, v3, v4}, Lc2/o;-><init>(Lc2/v;Lc2/u;)V

    .line 993
    .line 994
    .line 995
    iput-object v5, v2, Lc2/k;->i:Ljava/lang/Object;

    .line 996
    .line 997
    iget-object v3, v15, Ld2/i;->b:Ljava/lang/Integer;

    .line 998
    .line 999
    if-eqz v3, :cond_3ea

    .line 1000
    .line 1001
    iput-object v3, v2, Lc2/k;->f:Ljava/lang/Object;

    .line 1002
    .line 1003
    :cond_3ea
    iget-object v3, v2, Lc2/k;->c:Ljava/lang/Object;

    .line 1004
    .line 1005
    check-cast v3, Ljava/lang/Long;

    .line 1006
    .line 1007
    if-nez v3, :cond_3f3

    .line 1008
    .line 1009
    const-string v3, " eventTimeMs"

    .line 1010
    .line 1011
    goto :goto_3f4

    .line 1012
    :cond_3f3
    move-object v3, v12

    .line 1013
    :goto_3f4
    iget-object v4, v2, Lc2/k;->d:Ljava/lang/Object;

    .line 1014
    .line 1015
    check-cast v4, Ljava/lang/Long;

    .line 1016
    .line 1017
    if-nez v4, :cond_400

    .line 1018
    .line 1019
    const-string v4, " eventUptimeMs"

    .line 1020
    .line 1021
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v3

    .line 1025
    :cond_400
    iget-object v4, v2, Lc2/k;->e:Ljava/lang/Object;

    .line 1026
    .line 1027
    check-cast v4, Ljava/lang/Long;

    .line 1028
    .line 1029
    if-nez v4, :cond_40c

    .line 1030
    .line 1031
    const-string v4, " timezoneOffsetSeconds"

    .line 1032
    .line 1033
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v3

    .line 1037
    :cond_40c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1038
    .line 1039
    .line 1040
    move-result v4

    .line 1041
    if-eqz v4, :cond_454

    .line 1042
    .line 1043
    new-instance v33, Lc2/l;

    .line 1044
    .line 1045
    iget-object v3, v2, Lc2/k;->c:Ljava/lang/Object;

    .line 1046
    .line 1047
    check-cast v3, Ljava/lang/Long;

    .line 1048
    .line 1049
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 1050
    .line 1051
    .line 1052
    move-result-wide v34

    .line 1053
    iget-object v3, v2, Lc2/k;->f:Ljava/lang/Object;

    .line 1054
    .line 1055
    move-object/from16 v36, v3

    .line 1056
    .line 1057
    check-cast v36, Ljava/lang/Integer;

    .line 1058
    .line 1059
    iget-object v3, v2, Lc2/k;->d:Ljava/lang/Object;

    .line 1060
    .line 1061
    check-cast v3, Ljava/lang/Long;

    .line 1062
    .line 1063
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 1064
    .line 1065
    .line 1066
    move-result-wide v37

    .line 1067
    iget-object v3, v2, Lc2/k;->g:Ljava/lang/Object;

    .line 1068
    .line 1069
    move-object/from16 v39, v3

    .line 1070
    .line 1071
    check-cast v39, [B

    .line 1072
    .line 1073
    iget-object v3, v2, Lc2/k;->h:Ljava/lang/Object;

    .line 1074
    .line 1075
    move-object/from16 v40, v3

    .line 1076
    .line 1077
    check-cast v40, Ljava/lang/String;

    .line 1078
    .line 1079
    iget-object v3, v2, Lc2/k;->e:Ljava/lang/Object;

    .line 1080
    .line 1081
    check-cast v3, Ljava/lang/Long;

    .line 1082
    .line 1083
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 1084
    .line 1085
    .line 1086
    move-result-wide v41

    .line 1087
    iget-object v2, v2, Lc2/k;->i:Ljava/lang/Object;

    .line 1088
    .line 1089
    move-object/from16 v43, v2

    .line 1090
    .line 1091
    check-cast v43, Lc2/o;

    .line 1092
    .line 1093
    invoke-direct/range {v33 .. v43}, Lc2/l;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLc2/w;)V

    .line 1094
    .line 1095
    .line 1096
    move-object/from16 v2, v33

    .line 1097
    .line 1098
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    .line 1100
    .line 1101
    :cond_44c
    :goto_44c
    move-object/from16 v3, p1

    .line 1102
    .line 1103
    move-object/from16 v2, v30

    .line 1104
    .line 1105
    move-wide/from16 v4, v31

    .line 1106
    .line 1107
    goto/16 :goto_347

    .line 1108
    .line 1109
    :cond_454
    invoke-virtual {v11, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v0

    .line 1113
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    return-void

    .line 1117
    :cond_45c
    invoke-static {v7}, Le3/d;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v3

    .line 1121
    const/4 v4, 0x5

    .line 1122
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1123
    .line 1124
    .line 1125
    move-result v5

    .line 1126
    if-eqz v5, :cond_44c

    .line 1127
    .line 1128
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    const-string v10, "Received event of unsupported encoding "

    .line 1131
    .line 1132
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    const-string v2, ". Skipping..."

    .line 1139
    .line 1140
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v2

    .line 1147
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    .line 1149
    .line 1150
    goto :goto_44c

    .line 1151
    :cond_47e
    move-object/from16 v30, v2

    .line 1152
    .line 1153
    move-wide/from16 v31, v4

    .line 1154
    .line 1155
    new-instance v21, Lc2/m;

    .line 1156
    .line 1157
    move-object/from16 v29, v13

    .line 1158
    .line 1159
    move-object/from16 v26, v14

    .line 1160
    .line 1161
    invoke-direct/range {v21 .. v29}, Lc2/m;-><init>(JJLc2/j;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1162
    .line 1163
    .line 1164
    move-object/from16 v2, v21

    .line 1165
    .line 1166
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    .line 1168
    .line 1169
    move-object/from16 v3, p1

    .line 1170
    .line 1171
    move-object/from16 v2, v30

    .line 1172
    .line 1173
    goto/16 :goto_29c

    .line 1174
    .line 1175
    :cond_496
    move-wide/from16 v31, v4

    .line 1176
    .line 1177
    const/4 v4, 0x5

    .line 1178
    new-instance v2, Lc2/i;

    .line 1179
    .line 1180
    invoke-direct {v2, v0}, Lc2/i;-><init>(Ljava/util/ArrayList;)V

    .line 1181
    .line 1182
    .line 1183
    iget-object v0, v6, Lb2/c;->d:Ljava/net/URL;

    .line 1184
    .line 1185
    if-eqz v19, :cond_4bf

    .line 1186
    .line 1187
    :try_start_4a2
    invoke-static/range {v19 .. v19}, Lb2/a;->a([B)Lb2/a;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0

    .line 1191
    iget-object v3, v0, Lb2/a;->b:Ljava/lang/String;

    .line 1192
    .line 1193
    if-eqz v3, :cond_4ab

    .line 1194
    .line 1195
    goto :goto_4ac

    .line 1196
    :cond_4ab
    const/4 v3, 0x0

    .line 1197
    :goto_4ac
    iget-object v0, v0, Lb2/a;->a:Ljava/lang/String;

    .line 1198
    .line 1199
    invoke-static {v0}, Lb2/c;->a(Ljava/lang/String;)Ljava/net/URL;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0
    :try_end_4b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a2 .. :try_end_4b2} :catch_4b5

    .line 1203
    move-object v5, v3

    .line 1204
    :goto_4b3
    const/4 v3, 0x3

    .line 1205
    goto :goto_4c1

    .line 1206
    :catch_4b5
    new-instance v0, Le2/a;

    .line 1207
    .line 1208
    const/4 v3, 0x3

    .line 1209
    const-wide/16 v4, -0x1

    .line 1210
    .line 1211
    invoke-direct {v0, v3, v4, v5}, Le2/a;-><init>(IJ)V

    .line 1212
    .line 1213
    .line 1214
    goto/16 :goto_93

    .line 1215
    .line 1216
    :cond_4bf
    const/4 v5, 0x0

    .line 1217
    goto :goto_4b3

    .line 1218
    :goto_4c1
    :try_start_4c1
    new-instance v8, La5/h;

    .line 1219
    .line 1220
    const/4 v10, 0x1

    .line 1221
    invoke-direct {v8, v0, v2, v5, v10}, La5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1222
    .line 1223
    .line 1224
    new-instance v0, Landroidx/fragment/app/h;

    .line 1225
    .line 1226
    invoke-direct {v0, v3, v6}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 1227
    .line 1228
    .line 1229
    move v10, v4

    .line 1230
    :cond_4cd
    invoke-virtual {v0, v8}, Landroidx/fragment/app/h;->f(La5/h;)Lb2/b;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v2

    .line 1234
    iget-object v3, v2, Lb2/b;->c:Ljava/lang/Object;

    .line 1235
    .line 1236
    check-cast v3, Ljava/net/URL;

    .line 1237
    .line 1238
    if-eqz v3, :cond_4ec

    .line 1239
    .line 1240
    const-string v4, "Following redirect to: %s"

    .line 1241
    .line 1242
    invoke-static {v3, v7, v4}, Le3/d;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    .line 1244
    .line 1245
    new-instance v4, La5/h;

    .line 1246
    .line 1247
    iget-object v5, v8, La5/h;->d:Ljava/lang/Object;

    .line 1248
    .line 1249
    check-cast v5, Lc2/i;

    .line 1250
    .line 1251
    iget-object v6, v8, La5/h;->e:Ljava/lang/Object;

    .line 1252
    .line 1253
    check-cast v6, Ljava/lang/String;

    .line 1254
    .line 1255
    const/4 v8, 0x1

    .line 1256
    invoke-direct {v4, v3, v5, v6, v8}, La5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1257
    .line 1258
    .line 1259
    move-object v8, v4

    .line 1260
    goto :goto_4ed

    .line 1261
    :cond_4ec
    const/4 v8, 0x0

    .line 1262
    :goto_4ed
    if-eqz v8, :cond_4f6

    .line 1263
    .line 1264
    const/16 v18, -0x1

    .line 1265
    .line 1266
    add-int/lit8 v10, v10, -0x1

    .line 1267
    .line 1268
    const/4 v3, 0x1

    .line 1269
    if-ge v10, v3, :cond_4cd

    .line 1270
    .line 1271
    :cond_4f6
    iget v0, v2, Lb2/b;->b:I

    .line 1272
    .line 1273
    const/16 v3, 0xc8

    .line 1274
    .line 1275
    if-ne v0, v3, :cond_508

    .line 1276
    .line 1277
    iget-wide v2, v2, Lb2/b;->a:J

    .line 1278
    .line 1279
    new-instance v0, Le2/a;

    .line 1280
    .line 1281
    const/4 v8, 0x1

    .line 1282
    invoke-direct {v0, v8, v2, v3}, Le2/a;-><init>(IJ)V
    :try_end_504
    .catch Ljava/io/IOException; {:try_start_4c1 .. :try_end_504} :catch_506

    .line 1283
    .line 1284
    .line 1285
    goto/16 :goto_93

    .line 1286
    .line 1287
    :catch_506
    move-exception v0

    .line 1288
    goto :goto_537

    .line 1289
    :cond_508
    const/16 v2, 0x1f4

    .line 1290
    .line 1291
    if-ge v0, v2, :cond_510

    .line 1292
    .line 1293
    const/16 v2, 0x194

    .line 1294
    .line 1295
    if-ne v0, v2, :cond_513

    .line 1296
    .line 1297
    :cond_510
    const-wide/16 v4, -0x1

    .line 1298
    .line 1299
    goto :goto_52f

    .line 1300
    :cond_513
    const/16 v2, 0x190

    .line 1301
    .line 1302
    if-ne v0, v2, :cond_525

    .line 1303
    .line 1304
    :try_start_517
    new-instance v0, Le2/a;
    :try_end_519
    .catch Ljava/io/IOException; {:try_start_517 .. :try_end_519} :catch_521

    .line 1305
    .line 1306
    const/4 v2, 0x4

    .line 1307
    const-wide/16 v4, -0x1

    .line 1308
    .line 1309
    :try_start_51c
    invoke-direct {v0, v2, v4, v5}, Le2/a;-><init>(IJ)V

    .line 1310
    .line 1311
    .line 1312
    goto/16 :goto_93

    .line 1313
    .line 1314
    :catch_521
    move-exception v0

    .line 1315
    const-wide/16 v4, -0x1

    .line 1316
    .line 1317
    goto :goto_537

    .line 1318
    :cond_525
    const-wide/16 v4, -0x1

    .line 1319
    .line 1320
    new-instance v0, Le2/a;

    .line 1321
    .line 1322
    const/4 v3, 0x3

    .line 1323
    invoke-direct {v0, v3, v4, v5}, Le2/a;-><init>(IJ)V

    .line 1324
    .line 1325
    .line 1326
    goto/16 :goto_93

    .line 1327
    .line 1328
    :goto_52f
    new-instance v0, Le2/a;

    .line 1329
    .line 1330
    const/4 v2, 0x2

    .line 1331
    invoke-direct {v0, v2, v4, v5}, Le2/a;-><init>(IJ)V
    :try_end_535
    .catch Ljava/io/IOException; {:try_start_51c .. :try_end_535} :catch_506

    .line 1332
    .line 1333
    .line 1334
    goto/16 :goto_93

    .line 1335
    .line 1336
    :goto_537
    const-string v2, "Could not make request to the backend"

    .line 1337
    .line 1338
    invoke-static {v7, v2, v0}, Le3/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1339
    .line 1340
    .line 1341
    new-instance v0, Le2/a;

    .line 1342
    .line 1343
    const/4 v2, 0x2

    .line 1344
    const-wide/16 v4, -0x1

    .line 1345
    .line 1346
    invoke-direct {v0, v2, v4, v5}, Le2/a;-><init>(IJ)V

    .line 1347
    .line 1348
    .line 1349
    :goto_544
    iget v3, v0, Le2/a;->a:I

    .line 1350
    .line 1351
    iget-object v6, v1, Lj2/i;->f:Ll2/c;

    .line 1352
    .line 1353
    if-ne v3, v2, :cond_562

    .line 1354
    .line 1355
    new-instance v0, Lj2/g;

    .line 1356
    .line 1357
    move-object/from16 v3, p1

    .line 1358
    .line 1359
    move-object v2, v9

    .line 1360
    move-wide/from16 v4, v31

    .line 1361
    .line 1362
    invoke-direct/range {v0 .. v5}, Lj2/g;-><init>(Lj2/i;Ljava/lang/Iterable;Ld2/j;J)V

    .line 1363
    .line 1364
    .line 1365
    check-cast v6, Lk2/h;

    .line 1366
    .line 1367
    invoke-virtual {v6, v0}, Lk2/h;->c0(Ll2/b;)Ljava/lang/Object;

    .line 1368
    .line 1369
    .line 1370
    iget-object v0, v1, Lj2/i;->d:La5/h;

    .line 1371
    .line 1372
    const/4 v8, 0x1

    .line 1373
    add-int/lit8 v2, p2, 0x1

    .line 1374
    .line 1375
    invoke-virtual {v0, v3, v2, v8}, La5/h;->v(Ld2/q;IZ)V

    .line 1376
    .line 1377
    .line 1378
    return-void

    .line 1379
    :cond_562
    move-object/from16 v3, p1

    .line 1380
    .line 1381
    move-object v2, v9

    .line 1382
    move-wide/from16 v4, v31

    .line 1383
    .line 1384
    const/4 v8, 0x1

    .line 1385
    new-instance v7, Lf5/f;

    .line 1386
    .line 1387
    const/16 v9, 0x9

    .line 1388
    .line 1389
    invoke-direct {v7, v9, v1, v2}, Lf5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1390
    .line 1391
    .line 1392
    check-cast v6, Lk2/h;

    .line 1393
    .line 1394
    invoke-virtual {v6, v7}, Lk2/h;->c0(Ll2/b;)Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    iget v6, v0, Le2/a;->a:I

    .line 1398
    .line 1399
    if-ne v6, v8, :cond_591

    .line 1400
    .line 1401
    iget-wide v6, v0, Le2/a;->b:J

    .line 1402
    .line 1403
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 1404
    .line 1405
    .line 1406
    move-result-wide v4

    .line 1407
    iget-object v0, v3, Ld2/j;->b:[B

    .line 1408
    .line 1409
    if-eqz v0, :cond_5e1

    .line 1410
    .line 1411
    iget-object v0, v1, Lj2/i;->f:Ll2/c;

    .line 1412
    .line 1413
    new-instance v2, Landroidx/fragment/app/h;

    .line 1414
    .line 1415
    const/16 v6, 0xf

    .line 1416
    .line 1417
    invoke-direct {v2, v6, v1}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 1418
    .line 1419
    .line 1420
    check-cast v0, Lk2/h;

    .line 1421
    .line 1422
    invoke-virtual {v0, v2}, Lk2/h;->c0(Ll2/b;)Ljava/lang/Object;

    .line 1423
    .line 1424
    .line 1425
    goto :goto_5e1

    .line 1426
    :cond_591
    const/4 v7, 0x4

    .line 1427
    if-ne v6, v7, :cond_5e1

    .line 1428
    .line 1429
    new-instance v0, Ljava/util/HashMap;

    .line 1430
    .line 1431
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1432
    .line 1433
    .line 1434
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v2

    .line 1438
    :goto_59d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1439
    .line 1440
    .line 1441
    move-result v6

    .line 1442
    if-eqz v6, :cond_5d3

    .line 1443
    .line 1444
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v6

    .line 1448
    check-cast v6, Lk2/b;

    .line 1449
    .line 1450
    iget-object v6, v6, Lk2/b;->c:Ld2/i;

    .line 1451
    .line 1452
    iget-object v6, v6, Ld2/i;->a:Ljava/lang/String;

    .line 1453
    .line 1454
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1455
    .line 1456
    .line 1457
    move-result v7

    .line 1458
    if-nez v7, :cond_5bd

    .line 1459
    .line 1460
    const/16 v17, 0x1

    .line 1461
    .line 1462
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v7

    .line 1466
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    .line 1468
    .line 1469
    goto :goto_59d

    .line 1470
    :cond_5bd
    const/16 v17, 0x1

    .line 1471
    .line 1472
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v7

    .line 1476
    check-cast v7, Ljava/lang/Integer;

    .line 1477
    .line 1478
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 1479
    .line 1480
    .line 1481
    move-result v7

    .line 1482
    add-int/lit8 v7, v7, 0x1

    .line 1483
    .line 1484
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v7

    .line 1488
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    .line 1490
    .line 1491
    goto :goto_59d

    .line 1492
    :cond_5d3
    iget-object v2, v1, Lj2/i;->f:Ll2/c;

    .line 1493
    .line 1494
    new-instance v6, Lf5/f;

    .line 1495
    .line 1496
    const/16 v7, 0xa

    .line 1497
    .line 1498
    invoke-direct {v6, v7, v1, v0}, Lf5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1499
    .line 1500
    .line 1501
    check-cast v2, Lk2/h;

    .line 1502
    .line 1503
    invoke-virtual {v2, v6}, Lk2/h;->c0(Ll2/b;)Ljava/lang/Object;

    .line 1504
    .line 1505
    .line 1506
    :cond_5e1
    :goto_5e1
    move-object/from16 v2, v20

    .line 1507
    .line 1508
    const/4 v8, 0x0

    .line 1509
    goto/16 :goto_4c

    .line 1510
    .line 1511
    :cond_5e6
    new-instance v0, Lj2/h;

    .line 1512
    .line 1513
    invoke-direct {v0, v4, v5, v1, v3}, Lj2/h;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1514
    .line 1515
    .line 1516
    check-cast v9, Lk2/h;

    .line 1517
    .line 1518
    invoke-virtual {v9, v0}, Lk2/h;->c0(Ll2/b;)Ljava/lang/Object;

    .line 1519
    .line 1520
    .line 1521
    return-void

    .line 1522
    :goto_5f1
    :try_start_5f1
    monitor-exit v2
    :try_end_5f2
    .catchall {:try_start_5f1 .. :try_end_5f2} :catchall_1d

    .line 1523
    throw v0
.end method
