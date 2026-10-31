.class public final synthetic Le0/c2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ly0/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/example/navistart/Notik;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/Notik;I)V
    .registers 3

    .line 1
    iput p2, p0, Le0/c2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/c2;->b:Lcom/example/navistart/Notik;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 9

    .line 1
    iget v0, p0, Le0/c2;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Le0/c2;->b:Lcom/example/navistart/Notik;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_14a

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/example/navistart/Notik;->l:Ljava/util/ArrayList;

    .line 12
    .line 13
    :try_start_c
    invoke-static {p1}, Lcom/bumptech/glide/d;->c(Ljava/lang/String;)Lm0/b3;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-array v0, v3, [B

    .line 18
    .line 19
    fill-array-data v0, :array_154

    .line 20
    .line 21
    .line 22
    new-array v4, v3, [B

    .line 23
    .line 24
    fill-array-data v4, :array_15c

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v4, p1, Lm0/b3;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_53

    .line 38
    .line 39
    iget-boolean p1, p1, Lm0/b3;->a:Z

    .line 40
    .line 41
    if-eqz p1, :cond_53

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    invoke-virtual {v1, p1}, Lcom/example/navistart/Notik;->b(Z)V
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_2e} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_2e} :catch_2f

    .line 45
    .line 46
    .line 47
    goto :goto_53

    .line 48
    :catch_2f
    move-exception p1

    .line 49
    goto :goto_32

    .line 50
    :catch_31
    move-exception p1

    .line 51
    :goto_32
    new-array v0, v2, [B

    .line 52
    .line 53
    fill-array-data v0, :array_164

    .line 54
    .line 55
    .line 56
    new-array v1, v3, [B

    .line 57
    .line 58
    fill-array-data v1, :array_16c

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/16 v1, 0x1c

    .line 66
    .line 67
    new-array v1, v1, [B

    .line 68
    .line 69
    fill-array-data v1, :array_174

    .line 70
    .line 71
    .line 72
    new-array v2, v3, [B

    .line 73
    .line 74
    fill-array-data v2, :array_186

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    :cond_53
    :goto_53
    return-void

    .line 85
    :pswitch_54
    sget-object v0, Lcom/example/navistart/Notik;->l:Ljava/util/ArrayList;

    .line 86
    .line 87
    :try_start_56
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/String;)Lm0/b3;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object v0, v1, Lcom/example/navistart/Notik;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    .line 93
    iget-object v4, p1, Lm0/b3;->b:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lru/transfer/MessageData;

    .line 100
    .line 101
    iget-boolean p1, p1, Lm0/b3;->a:Z

    .line 102
    .line 103
    if-nez p1, :cond_92

    .line 104
    .line 105
    if-eqz v0, :cond_92

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Lcom/example/navistart/Notik;->a(Lru/transfer/MessageData;)V
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_6d} :catch_70
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_6d} :catch_6e

    .line 108
    .line 109
    .line 110
    goto :goto_92

    .line 111
    :catch_6e
    move-exception p1

    .line 112
    goto :goto_71

    .line 113
    :catch_70
    move-exception p1

    .line 114
    :goto_71
    new-array v0, v2, [B

    .line 115
    .line 116
    fill-array-data v0, :array_18e

    .line 117
    .line 118
    .line 119
    new-array v1, v3, [B

    .line 120
    .line 121
    fill-array-data v1, :array_196

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const/16 v1, 0x10

    .line 129
    .line 130
    new-array v1, v1, [B

    .line 131
    .line 132
    fill-array-data v1, :array_19e

    .line 133
    .line 134
    .line 135
    new-array v2, v3, [B

    .line 136
    .line 137
    fill-array-data v2, :array_1aa

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .line 146
    .line 147
    :cond_92
    :goto_92
    return-void

    .line 148
    :pswitch_93
    sget-object v0, Lcom/example/navistart/Notik;->l:Ljava/util/ArrayList;

    .line 149
    .line 150
    :try_start_95
    new-instance v0, Lorg/json/JSONObject;

    .line 151
    .line 152
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const/4 p1, 0x3

    .line 156
    new-array p1, p1, [B

    .line 157
    .line 158
    fill-array-data p1, :array_1b2

    .line 159
    .line 160
    .line 161
    new-array v4, v3, [B

    .line 162
    .line 163
    fill-array-data v4, :array_1b8

    .line 164
    .line 165
    .line 166
    invoke-static {p1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {v1, p1}, Lcom/example/navistart/Notik;->c(Ljava/lang/String;)Lru/transfer/MessageData;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    if-eqz v0, :cond_bb

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Lcom/example/navistart/Notik;->e(Lru/transfer/MessageData;)V

    .line 181
    .line 182
    .line 183
    goto :goto_bb

    .line 184
    :catch_b7
    move-exception p1

    .line 185
    goto :goto_c1

    .line 186
    :catch_b9
    move-exception p1

    .line 187
    goto :goto_c1

    .line 188
    :cond_bb
    :goto_bb
    iget-object v0, v1, Lcom/example/navistart/Notik;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 189
    .line 190
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c0
    .catch Lorg/json/JSONException; {:try_start_95 .. :try_end_c0} :catch_b9
    .catch Ljava/lang/RuntimeException; {:try_start_95 .. :try_end_c0} :catch_b7

    .line 191
    .line 192
    .line 193
    goto :goto_e2

    .line 194
    :goto_c1
    new-array v0, v2, [B

    .line 195
    .line 196
    fill-array-data v0, :array_1c0

    .line 197
    .line 198
    .line 199
    new-array v1, v3, [B

    .line 200
    .line 201
    fill-array-data v1, :array_1c8

    .line 202
    .line 203
    .line 204
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    const/16 v1, 0x14

    .line 209
    .line 210
    new-array v1, v1, [B

    .line 211
    .line 212
    fill-array-data v1, :array_1d0

    .line 213
    .line 214
    .line 215
    new-array v2, v3, [B

    .line 216
    .line 217
    fill-array-data v2, :array_1de

    .line 218
    .line 219
    .line 220
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .line 226
    .line 227
    :goto_e2
    return-void

    .line 228
    :pswitch_e3
    sget-object v0, Lcom/example/navistart/Notik;->l:Ljava/util/ArrayList;

    .line 229
    .line 230
    :try_start_e5
    invoke-static {p1}, Lcom/bumptech/glide/c;->g(Ljava/lang/String;)Lru/transfer/MessageData;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {v1, p1}, Lcom/example/navistart/Notik;->d(Lru/transfer/MessageData;)V

    .line 235
    .line 236
    .line 237
    iget-object v0, v1, Lcom/example/navistart/Notik;->f:Ly0/h;

    .line 238
    .line 239
    if-eqz v0, :cond_148

    .line 240
    .line 241
    const/16 v1, 0x11

    .line 242
    .line 243
    new-array v1, v1, [B

    .line 244
    .line 245
    fill-array-data v1, :array_1e6

    .line 246
    .line 247
    .line 248
    new-array v4, v3, [B

    .line 249
    .line 250
    fill-array-data v4, :array_1f4

    .line 251
    .line 252
    .line 253
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {p1}, Lru/transfer/MessageData;->getKey()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    new-instance v4, Lorg/json/JSONObject;

    .line 262
    .line 263
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 264
    .line 265
    .line 266
    const/4 v5, 0x3

    .line 267
    new-array v5, v5, [B

    .line 268
    .line 269
    fill-array-data v5, :array_1fc

    .line 270
    .line 271
    .line 272
    new-array v6, v3, [B

    .line 273
    .line 274
    fill-array-data v6, :array_202

    .line 275
    .line 276
    .line 277
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {v0, v1, p1}, Ly0/h;->y(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_123
    .catch Lorg/json/JSONException; {:try_start_e5 .. :try_end_123} :catch_126
    .catch Ljava/lang/RuntimeException; {:try_start_e5 .. :try_end_123} :catch_124

    .line 290
    .line 291
    .line 292
    goto :goto_148

    .line 293
    :catch_124
    move-exception p1

    .line 294
    goto :goto_127

    .line 295
    :catch_126
    move-exception p1

    .line 296
    :goto_127
    new-array v0, v2, [B

    .line 297
    .line 298
    fill-array-data v0, :array_20a

    .line 299
    .line 300
    .line 301
    new-array v1, v3, [B

    .line 302
    .line 303
    fill-array-data v1, :array_212

    .line 304
    .line 305
    .line 306
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const/16 v1, 0x15

    .line 311
    .line 312
    new-array v1, v1, [B

    .line 313
    .line 314
    fill-array-data v1, :array_21a

    .line 315
    .line 316
    .line 317
    new-array v2, v3, [B

    .line 318
    .line 319
    fill-array-data v2, :array_22a

    .line 320
    .line 321
    .line 322
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    .line 328
    .line 329
    :cond_148
    :goto_148
    return-void

    .line 330
    nop

    .line 331
    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_e3
        :pswitch_93
        :pswitch_54
    .end packed-switch

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_154
    .array-data 1
        -0x4ct
        0x7et
        0x2et
        0x77t
        -0x13t
        0x3at
        -0x1bt
        0x2bt
    .end array-data

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    :array_15c
    .array-data 1
        -0x27t
        0x1bt
        0x5dt
        0x4t
        -0x74t
        0x5dt
        -0x80t
        0x58t
    .end array-data

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_164
    .array-data 1
        0x1ct
        0x21t
        -0x71t
        0xft
        -0x7dt
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    nop

    .line 365
    :array_16c
    .array-data 1
        0x52t
        0x4et
        -0x5t
        0x66t
        -0x18t
        0x1et
        0x19t
        -0x27t
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :array_174
    .array-data 1
        -0x7at
        0x65t
        0x61t
        -0x5ct
        0x1et
        0x53t
        0x4ct
        0x33t
        -0x5bt
        0x63t
        0x60t
        -0x9t
        0x53t
        0x46t
        0x4dt
        0x25t
        -0x49t
        0x61t
        0x6bt
        -0x19t
        0x16t
        0x16t
        0x4ft
        0x21t
        -0x59t
        0x6ft
        0x60t
        -0x10t
    .end array-data

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
    :array_186
    .array-data 1
        -0x3ct
        0x4t
        0x5t
        -0x7ct
        0x73t
        0x36t
        0x3ft
        0x40t
    .end array-data

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :array_18e
    .array-data 1
        0xdt
        0x30t
        -0x62t
        0x19t
        -0x60t
    .end array-data

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    nop

    .line 407
    :array_196
    .array-data 1
        0x43t
        0x5ft
        -0x16t
        0x70t
        -0x35t
        -0x42t
        0x48t
        -0x75t
    .end array-data

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :array_19e
    .array-data 1
        0xft
        -0x23t
        0xft
        0x9t
        -0x53t
        -0x5ct
        -0x11t
        0x58t
        0x34t
        -0x64t
        0x19t
        0x4ct
        -0x54t
        -0x4ct
        -0xdt
        0x40t
    .end array-data

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :array_1aa
    .array-data 1
        0x4dt
        -0x44t
        0x6bt
        0x29t
        -0x21t
        -0x3ft
        -0x61t
        0x34t
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_1b2
    .array-data 1
        -0x54t
        -0x51t
        -0x4ct
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    :array_1b8
    .array-data 1
        -0x39t
        -0x36t
        -0x33t
        -0x23t
        0x7ct
        0x46t
        0x2ct
        -0x40t
    .end array-data

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    :array_1c0
    .array-data 1
        0x1et
        0x4ft
        -0x58t
        0x5dt
        -0x8t
    .end array-data

    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    nop

    .line 457
    :array_1c8
    .array-data 1
        0x50t
        0x20t
        -0x24t
        0x34t
        -0x6dt
        -0x21t
        -0x46t
        0x79t
    .end array-data

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :array_1d0
    .array-data 1
        0x4ft
        0x9t
        0x7et
        0x4ct
        0x2ct
        -0x47t
        0x6t
        -0x5et
        0x7et
        0x18t
        0x75t
        0x1et
        0x2ct
        -0x15t
        0x15t
        -0x57t
        0x60t
        0x7t
        0x6ct
        0x9t
    .end array-data

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    :array_1de
    .array-data 1
        0xdt
        0x68t
        0x1at
        0x6ct
        0x58t
        -0x35t
        0x67t
        -0x34t
    .end array-data

    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_1e6
    .array-data 1
        -0x3at
        -0x2at
        -0x28t
        0x15t
        0x55t
        -0x5at
        0x3ft
        -0x43t
        -0x7bt
        -0x3ft
        -0x32t
        0x5t
        0x51t
        -0x58t
        0x2ct
        -0x55t
        -0x31t
    .end array-data

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
    .line 499
    .line 500
    nop

    .line 501
    :array_1f4
    .array-data 1
        -0x55t
        -0x4dt
        -0x55t
        0x66t
        0x34t
        -0x3ft
        0x5at
        -0x32t
    .end array-data

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :array_1fc
    .array-data 1
        0x54t
        0x4dt
        -0x1t
    .end array-data

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    :array_202
    .array-data 1
        0x3ft
        0x28t
        -0x7at
        0x12t
        -0x2bt
        -0x7ft
        0x43t
        -0x33t
    .end array-data

    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    :array_20a
    .array-data 1
        0x2et
        0xbt
        -0x79t
        -0x4dt
        0xet
    .end array-data

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    nop

    .line 531
    :array_212
    .array-data 1
        0x60t
        0x64t
        -0xdt
        -0x26t
        0x65t
        0x36t
        0x63t
        -0x51t
    .end array-data

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :array_21a
    .array-data 1
        0x39t
        -0x64t
        -0x13t
        0x3dt
        0x49t
        0x64t
        -0x3ct
        0x30t
        0x8t
        -0x73t
        -0x1at
        0x6ft
        0x49t
        0x36t
        -0x38t
        0x3bt
        0x8t
        -0x72t
        -0x18t
        0x7at
        0x58t
    .end array-data

    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    nop

    .line 555
    :array_22a
    .array-data 1
        0x7bt
        -0x3t
        -0x77t
        0x1dt
        0x3dt
        0x16t
        -0x5bt
        0x5et
    .end array-data
.end method
