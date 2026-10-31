.class public final Lf7/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lf7/h;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/h;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lf7/h;

    .line 7
    .line 8
    const-string v1, "An [Interface] section is required"

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lf7/c;->a:Lf7/h;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object p1, p1, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lf7/c;->b:Ljava/util/List;

    .line 29
    .line 30
    return-void
.end method

.method public static a(Ljava/io/BufferedReader;)Lf7/c;
    .locals 16

    .line 1
    new-instance v1, Landroid/support/v4/media/h;

    .line 2
    .line 3
    const/16 v0, 0x9

    .line 4
    .line 5
    invoke-direct {v1, v0}, Landroid/support/v4/media/h;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    move v5, v4

    .line 21
    :goto_0
    move v6, v5

    .line 22
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    const/4 v8, -0x1

    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v10, 0x1

    .line 29
    if-eqz v7, :cond_8

    .line 30
    .line 31
    const/16 v11, 0x23

    .line 32
    .line 33
    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(I)I

    .line 34
    .line 35
    .line 36
    move-result v11

    .line 37
    if-eq v11, v8, :cond_0

    .line 38
    .line 39
    invoke-virtual {v7, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-eqz v8, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string v8, "["

    .line 55
    .line 56
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_5

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/support/v4/media/h;->o(Ljava/util/ArrayList;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    :cond_2
    const-string v4, "[Interface]"

    .line 71
    .line 72
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_3

    .line 77
    .line 78
    move v4, v3

    .line 79
    move v5, v10

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const-string v4, "[Peer]"

    .line 82
    .line 83
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    move v6, v3

    .line 90
    move v4, v10

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    new-instance v0, Lf7/b;

    .line 93
    .line 94
    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_5
    if-eqz v6, :cond_6

    .line 99
    .line 100
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    if-eqz v4, :cond_7

    .line 105
    .line 106
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_7
    new-instance v0, Lf7/b;

    .line 111
    .line 112
    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_8
    if-eqz v4, :cond_9

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Landroid/support/v4/media/h;->o(Ljava/util/ArrayList;)V

    .line 119
    .line 120
    .line 121
    :cond_9
    if-eqz v5, :cond_1d

    .line 122
    .line 123
    new-instance v4, Lf5/i;

    .line 124
    .line 125
    invoke-direct {v4}, Lf5/i;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v0, v4, Lf5/i;->e:Ljava/lang/Object;

    .line 129
    .line 130
    move-object v5, v0

    .line 131
    check-cast v5, Ljava/util/LinkedHashSet;

    .line 132
    .line 133
    iget-object v0, v4, Lf5/i;->f:Ljava/lang/Object;

    .line 134
    .line 135
    move-object v6, v0

    .line 136
    check-cast v6, Ljava/util/LinkedHashSet;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    move v0, v3

    .line 143
    :goto_2
    if-ge v0, v7, :cond_19

    .line 144
    .line 145
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    add-int/lit8 v12, v0, 0x1

    .line 150
    .line 151
    check-cast v11, Ljava/lang/CharSequence;

    .line 152
    .line 153
    invoke-static {v11}, Lf7/a;->a(Ljava/lang/CharSequence;)Ljava/util/Optional;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    new-instance v11, Landroidx/emoji2/text/flatbuffer/a;

    .line 158
    .line 159
    invoke-direct {v11, v10}, Landroidx/emoji2/text/flatbuffer/a;-><init>(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v11}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Lf7/a;

    .line 167
    .line 168
    iget-object v11, v0, Lf7/a;->a:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v0, v0, Lf7/a;->b:Ljava/lang/String;

    .line 171
    .line 172
    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 173
    .line 174
    invoke-virtual {v11, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 182
    .line 183
    .line 184
    move-result v13

    .line 185
    sparse-switch v13, :sswitch_data_0

    .line 186
    .line 187
    .line 188
    :goto_3
    move v11, v8

    .line 189
    goto :goto_4

    .line 190
    :sswitch_0
    const-string v13, "listenport"

    .line 191
    .line 192
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    if-nez v11, :cond_a

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_a
    const/4 v11, 0x6

    .line 200
    goto :goto_4

    .line 201
    :sswitch_1
    const-string v13, "includedapplications"

    .line 202
    .line 203
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    if-nez v11, :cond_b

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_b
    const/4 v11, 0x5

    .line 211
    goto :goto_4

    .line 212
    :sswitch_2
    const-string v13, "mtu"

    .line 213
    .line 214
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    if-nez v11, :cond_c

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_c
    const/4 v11, 0x4

    .line 222
    goto :goto_4

    .line 223
    :sswitch_3
    const-string v13, "dns"

    .line 224
    .line 225
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    if-nez v11, :cond_d

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_d
    const/4 v11, 0x3

    .line 233
    goto :goto_4

    .line 234
    :sswitch_4
    const-string v13, "address"

    .line 235
    .line 236
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v11

    .line 240
    if-nez v11, :cond_e

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_e
    const/4 v11, 0x2

    .line 244
    goto :goto_4

    .line 245
    :sswitch_5
    const-string v13, "privatekey"

    .line 246
    .line 247
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    if-nez v11, :cond_f

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_f
    move v11, v10

    .line 255
    goto :goto_4

    .line 256
    :sswitch_6
    const-string v13, "excludedapplications"

    .line 257
    .line 258
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v11

    .line 262
    if-nez v11, :cond_10

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_10
    move v11, v3

    .line 266
    :goto_4
    packed-switch v11, :pswitch_data_0

    .line 267
    .line 268
    .line 269
    new-instance v0, Lf7/b;

    .line 270
    .line 271
    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    throw v0

    .line 275
    :pswitch_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-ltz v0, :cond_12

    .line 280
    .line 281
    const v11, 0xffff

    .line 282
    .line 283
    .line 284
    if-gt v0, v11, :cond_12

    .line 285
    .line 286
    if-nez v0, :cond_11

    .line 287
    .line 288
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    goto :goto_5

    .line 293
    :cond_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    :goto_5
    iput-object v0, v4, Lf5/i;->h:Ljava/lang/Object;

    .line 302
    .line 303
    goto/16 :goto_c

    .line 304
    .line 305
    :cond_12
    new-instance v1, Lf7/b;

    .line 306
    .line 307
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    invoke-direct {v1, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 311
    .line 312
    .line 313
    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    new-instance v1, Lf7/b;

    .line 316
    .line 317
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 318
    .line 319
    .line 320
    throw v1

    .line 321
    :pswitch_1
    sget-object v11, Lf7/a;->d:Ljava/util/regex/Pattern;

    .line 322
    .line 323
    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    new-instance v11, Ljava/util/ArrayList;

    .line 328
    .line 329
    array-length v13, v0

    .line 330
    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .line 332
    .line 333
    array-length v13, v0

    .line 334
    move v14, v3

    .line 335
    :goto_6
    if-ge v14, v13, :cond_13

    .line 336
    .line 337
    aget-object v15, v0, v14

    .line 338
    .line 339
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    add-int/lit8 v14, v14, 0x1

    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_13
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 353
    .line 354
    .line 355
    goto/16 :goto_c

    .line 356
    .line 357
    :pswitch_2
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-ltz v0, :cond_15

    .line 362
    .line 363
    if-nez v0, :cond_14

    .line 364
    .line 365
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    goto :goto_7

    .line 370
    :cond_14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    :goto_7
    iput-object v0, v4, Lf5/i;->i:Ljava/lang/Object;

    .line 379
    .line 380
    goto/16 :goto_c

    .line 381
    .line 382
    :cond_15
    new-instance v1, Lf7/b;

    .line 383
    .line 384
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    invoke-direct {v1, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 388
    .line 389
    .line 390
    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    :catch_1
    move-exception v0

    .line 392
    new-instance v1, Lf7/b;

    .line 393
    .line 394
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 395
    .line 396
    .line 397
    throw v1

    .line 398
    :pswitch_3
    :try_start_2
    sget-object v11, Lf7/a;->d:Ljava/util/regex/Pattern;

    .line 399
    .line 400
    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v11

    .line 404
    array-length v13, v11

    .line 405
    move v14, v3

    .line 406
    :goto_8
    if-ge v14, v13, :cond_18

    .line 407
    .line 408
    aget-object v15, v11, v14
    :try_end_2
    .catch Lf7/i; {:try_start_2 .. :try_end_2} :catch_3

    .line 409
    .line 410
    :try_start_3
    invoke-static {v15}, Lf7/d;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    iget-object v3, v4, Lf5/i;->c:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v3, Ljava/util/LinkedHashSet;

    .line 417
    .line 418
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lf7/i; {:try_start_3 .. :try_end_3} :catch_2

    .line 419
    .line 420
    .line 421
    goto :goto_9

    .line 422
    :catch_2
    move-exception v0

    .line 423
    :try_start_4
    iget-object v3, v0, Lf7/i;->b:Ljava/lang/Class;

    .line 424
    .line 425
    const-class v8, Ljava/net/InetAddress;

    .line 426
    .line 427
    if-ne v3, v8, :cond_16

    .line 428
    .line 429
    sget-object v3, Lf7/d;->c:Ljava/util/regex/Pattern;

    .line 430
    .line 431
    invoke-virtual {v3, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    if-eqz v3, :cond_16

    .line 440
    .line 441
    iget-object v0, v4, Lf5/i;->d:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 444
    .line 445
    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    :goto_9
    add-int/lit8 v14, v14, 0x1

    .line 449
    .line 450
    const/4 v3, 0x0

    .line 451
    const/4 v8, -0x1

    .line 452
    goto :goto_8

    .line 453
    :cond_16
    throw v0
    :try_end_4
    .catch Lf7/i; {:try_start_4 .. :try_end_4} :catch_3

    .line 454
    :catch_3
    move-exception v0

    .line 455
    new-instance v1, Lf7/b;

    .line 456
    .line 457
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 458
    .line 459
    .line 460
    throw v1

    .line 461
    :pswitch_4
    :try_start_5
    sget-object v3, Lf7/a;->d:Ljava/util/regex/Pattern;

    .line 462
    .line 463
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    array-length v3, v0

    .line 468
    const/4 v8, 0x0

    .line 469
    :goto_a
    if-ge v8, v3, :cond_18

    .line 470
    .line 471
    aget-object v11, v0, v8

    .line 472
    .line 473
    invoke-static {v11}, Lf7/f;->a(Ljava/lang/String;)Lf7/f;

    .line 474
    .line 475
    .line 476
    move-result-object v11

    .line 477
    iget-object v13, v4, Lf5/i;->b:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v13, Ljava/util/LinkedHashSet;

    .line 480
    .line 481
    invoke-interface {v13, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lf7/i; {:try_start_5 .. :try_end_5} :catch_4

    .line 482
    .line 483
    .line 484
    add-int/lit8 v8, v8, 0x1

    .line 485
    .line 486
    goto :goto_a

    .line 487
    :catch_4
    move-exception v0

    .line 488
    new-instance v1, Lf7/b;

    .line 489
    .line 490
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 491
    .line 492
    .line 493
    throw v1

    .line 494
    :pswitch_5
    :try_start_6
    new-instance v3, Landroid/support/v4/media/h;

    .line 495
    .line 496
    invoke-static {v0}, Lg7/b;->c(Ljava/lang/String;)Lg7/b;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-direct {v3, v0}, Landroid/support/v4/media/h;-><init>(Lg7/b;)V

    .line 501
    .line 502
    .line 503
    iput-object v3, v4, Lf5/i;->g:Ljava/lang/Object;
    :try_end_6
    .catch Lg7/c; {:try_start_6 .. :try_end_6} :catch_5

    .line 504
    .line 505
    goto :goto_c

    .line 506
    :catch_5
    move-exception v0

    .line 507
    new-instance v1, Lf7/b;

    .line 508
    .line 509
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 510
    .line 511
    .line 512
    throw v1

    .line 513
    :pswitch_6
    sget-object v3, Lf7/a;->d:Ljava/util/regex/Pattern;

    .line 514
    .line 515
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    new-instance v3, Ljava/util/ArrayList;

    .line 520
    .line 521
    array-length v8, v0

    .line 522
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 523
    .line 524
    .line 525
    array-length v8, v0

    .line 526
    const/4 v11, 0x0

    .line 527
    :goto_b
    if-ge v11, v8, :cond_17

    .line 528
    .line 529
    aget-object v13, v0, v11

    .line 530
    .line 531
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    add-int/lit8 v11, v11, 0x1

    .line 538
    .line 539
    goto :goto_b

    .line 540
    :cond_17
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 545
    .line 546
    .line 547
    :cond_18
    :goto_c
    move v0, v12

    .line 548
    const/4 v3, 0x0

    .line 549
    const/4 v8, -0x1

    .line 550
    goto/16 :goto_2

    .line 551
    .line 552
    :cond_19
    iget-object v0, v4, Lf5/i;->g:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast v0, Landroid/support/v4/media/h;

    .line 555
    .line 556
    if-eqz v0, :cond_1c

    .line 557
    .line 558
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    if-nez v0, :cond_1b

    .line 563
    .line 564
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    if-eqz v0, :cond_1a

    .line 569
    .line 570
    goto :goto_d

    .line 571
    :cond_1a
    new-instance v0, Lf7/b;

    .line 572
    .line 573
    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 574
    .line 575
    .line 576
    throw v0

    .line 577
    :cond_1b
    :goto_d
    new-instance v0, Lf7/h;

    .line 578
    .line 579
    invoke-direct {v0, v4}, Lf7/h;-><init>(Lf5/i;)V

    .line 580
    .line 581
    .line 582
    iput-object v0, v1, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 583
    .line 584
    new-instance v0, Lf7/c;

    .line 585
    .line 586
    invoke-direct {v0, v1}, Lf7/c;-><init>(Landroid/support/v4/media/h;)V

    .line 587
    .line 588
    .line 589
    return-object v0

    .line 590
    :cond_1c
    new-instance v0, Lf7/b;

    .line 591
    .line 592
    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 593
    .line 594
    .line 595
    throw v0

    .line 596
    :cond_1d
    new-instance v0, Lf7/b;

    .line 597
    .line 598
    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 599
    .line 600
    .line 601
    throw v0

    .line 602
    nop

    .line 603
    :sswitch_data_0
    .sparse-switch
        -0x7848dc13 -> :sswitch_6
        -0x6fd21a04 -> :sswitch_5
        -0x4468640c -> :sswitch_4
        0x18529 -> :sswitch_3
        0x1a7ae -> :sswitch_2
        0x1d96abdf -> :sswitch_1
        0x34236ac8 -> :sswitch_0
    .end sparse-switch

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
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
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
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lf7/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lf7/c;

    .line 8
    .line 9
    iget-object v0, p0, Lf7/c;->a:Lf7/h;

    .line 10
    .line 11
    iget-object v2, p1, Lf7/c;->a:Lf7/h;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lf7/h;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lf7/c;->b:Ljava/util/List;

    .line 20
    .line 21
    iget-object p1, p1, Lf7/c;->b:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf7/c;->a:Lf7/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf7/h;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lf7/c;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "(Config "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf7/c;->a:Lf7/h;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " ("

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lf7/c;->b:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " peers))"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
