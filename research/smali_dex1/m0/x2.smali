.class public final Lm0/x2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Lm0/c3;


# direct methods
.method public constructor <init>(Lm0/c3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm0/x2;->a:Lm0/c3;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/x2;->a:Lm0/c3;

    .line 2
    .line 3
    iget-object v0, v0, Lm0/c3;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lm0/w2;

    .line 6
    .line 7
    iget-object v3, v0, Lm0/x2;->a:Lm0/c3;

    .line 8
    .line 9
    iget-object v2, v3, Lm0/c3;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    move/from16 v4, p2

    .line 12
    .line 13
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    move-object v8, v2

    .line 18
    check-cast v8, Ljava/io/File;

    .line 19
    .line 20
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_1f

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_23

    .line 31
    .line 32
    :cond_1f
    invoke-static {v8}, Lm0/c3;->G(Ljava/io/File;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_23
    iget-object v4, v1, Lm0/w2;->a:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/4 v9, 0x0

    .line 43
    const/16 v10, 0x8

    .line 44
    .line 45
    const v6, 0x7f130175

    .line 46
    .line 47
    .line 48
    if-eqz v5, :cond_5f

    .line 49
    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 v7, 0x1

    .line 56
    new-array v7, v7, [B

    .line 57
    .line 58
    const/16 v11, 0x34

    .line 59
    .line 60
    aput-byte v11, v7, v9

    .line 61
    .line 62
    new-array v11, v10, [B

    .line 63
    .line 64
    fill-array-data v11, :array_194

    .line 65
    .line 66
    .line 67
    invoke-static {v7, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/4 v7, 0x2

    .line 82
    new-array v7, v7, [B

    .line 83
    .line 84
    fill-array-data v7, :array_19c

    .line 85
    .line 86
    .line 87
    new-array v11, v10, [B

    .line 88
    .line 89
    fill-array-data v11, :array_1a2

    .line 90
    .line 91
    .line 92
    invoke-static {v7, v11, v5, v2}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    :cond_5f
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    iget-object v11, v1, Lm0/w2;->b:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    .line 102
    .line 103
    .line 104
    move-result-wide v4

    .line 105
    const-wide/16 v12, 0x0

    .line 106
    .line 107
    cmp-long v2, v4, v12

    .line 108
    .line 109
    if-lez v2, :cond_7e

    .line 110
    .line 111
    const/4 v2, 0x3

    .line 112
    invoke-static {v2, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    new-instance v7, Ljava/util/Date;

    .line 117
    .line 118
    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    :goto_7c
    move-object v12, v2

    .line 126
    goto :goto_81

    .line 127
    :cond_7e
    const-string v2, ""

    .line 128
    .line 129
    goto :goto_7c

    .line 130
    :goto_81
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    const/4 v13, 0x5

    .line 135
    const-string v14, "\n"

    .line 136
    .line 137
    if-eqz v2, :cond_143

    .line 138
    .line 139
    new-instance v15, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    new-array v2, v13, [B

    .line 152
    .line 153
    fill-array-data v2, :array_1aa

    .line 154
    .line 155
    .line 156
    new-array v4, v10, [B

    .line 157
    .line 158
    fill-array-data v4, :array_1b2

    .line 159
    .line 160
    .line 161
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-static {v8}, Lm0/c3;->G(Ljava/io/File;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    iget-object v2, v3, Lm0/c3;->c:Ljava/util/HashMap;

    .line 173
    .line 174
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Lm0/y2;

    .line 179
    .line 180
    if-eqz v2, :cond_dd

    .line 181
    .line 182
    iget-boolean v4, v2, Lm0/y2;->e:Z

    .line 183
    .line 184
    if-eqz v4, :cond_c1

    .line 185
    .line 186
    const v2, 0x7f130442

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    goto :goto_11d

    .line 194
    :cond_c1
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    iget-wide v5, v2, Lm0/y2;->b:J

    .line 199
    .line 200
    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    iget-boolean v2, v2, Lm0/y2;->d:Z

    .line 205
    .line 206
    if-eqz v2, :cond_db

    .line 207
    .line 208
    const v2, 0x7f130444

    .line 209
    .line 210
    .line 211
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v3, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    goto :goto_11d

    .line 220
    :cond_db
    move-object v2, v4

    .line 221
    goto :goto_11d

    .line 222
    :cond_dd
    iget-object v2, v3, Lm0/c3;->d:Ljava/util/HashSet;

    .line 223
    .line 224
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_e6

    .line 229
    .line 230
    goto :goto_116

    .line 231
    :cond_e6
    :try_start_e6
    invoke-virtual {v8}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 232
    .line 233
    .line 234
    move-result-object v2
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ea} :catch_ec

    .line 235
    :goto_ea
    move-object v4, v2

    .line 236
    goto :goto_f1

    .line 237
    :catch_ec
    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    goto :goto_ea

    .line 242
    :goto_f1
    iget v5, v3, Lm0/c3;->w:I

    .line 243
    .line 244
    const/16 v2, 0x19

    .line 245
    .line 246
    new-array v2, v2, [B

    .line 247
    .line 248
    fill-array-data v2, :array_1ba

    .line 249
    .line 250
    .line 251
    new-array v7, v10, [B

    .line 252
    .line 253
    fill-array-data v7, :array_1cc

    .line 254
    .line 255
    .line 256
    invoke-static {v2, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    const/4 v7, -0x1

    .line 261
    invoke-static {v7, v2}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    move-object v7, v2

    .line 266
    new-instance v2, Lj2/d;

    .line 267
    .line 268
    move-object/from16 v16, v7

    .line 269
    .line 270
    const/4 v7, 0x3

    .line 271
    move-object/from16 v9, v16

    .line 272
    .line 273
    invoke-direct/range {v2 .. v7}, Lj2/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v9, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 277
    .line 278
    .line 279
    :goto_116
    const v2, 0x7f130443

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    :goto_11d
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    new-array v2, v13, [B

    .line 290
    .line 291
    fill-array-data v2, :array_1d4

    .line 292
    .line 293
    .line 294
    new-array v3, v10, [B

    .line 295
    .line 296
    fill-array-data v3, :array_1dc

    .line 297
    .line 298
    .line 299
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-static {v8}, Lm0/c3;->G(Ljava/io/File;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    goto :goto_179

    .line 324
    :cond_143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 334
    .line 335
    .line 336
    move-result-wide v4

    .line 337
    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    new-array v3, v13, [B

    .line 345
    .line 346
    fill-array-data v3, :array_1e4

    .line 347
    .line 348
    .line 349
    new-array v4, v10, [B

    .line 350
    .line 351
    fill-array-data v4, :array_1ec

    .line 352
    .line 353
    .line 354
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-static {v8}, Lm0/c3;->G(Ljava/io/File;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    :goto_179
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    .line 380
    .line 381
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 382
    .line 383
    new-instance v3, Landroidx/navigation/ui/a;

    .line 384
    .line 385
    const/16 v4, 0xf

    .line 386
    .line 387
    invoke-direct {v3, v4, v0, v8}, Landroidx/navigation/ui/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    .line 392
    .line 393
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 394
    .line 395
    new-instance v2, Lm0/v2;

    .line 396
    .line 397
    const/4 v3, 0x0

    .line 398
    invoke-direct {v2, v0, v8, v3}, Lm0/v2;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/lang/Object;I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :array_194
    .array-data 1
        0x6ft
        -0x4t
        0x1t
        -0x7ct
        -0x25t
        -0x37t
        -0x1bt
        0x4ct
    .end array-data

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :array_19c
    .array-data 1
        -0x41t
        0x6ct
    .end array-data

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    nop

    .line 419
    :array_1a2
    .array-data 1
        -0x1et
        0x4ct
        0x1bt
        0x59t
        0x7at
        -0x72t
        0x7dt
        -0x1ct
    .end array-data

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
        -0x4t
        0x48t
        -0x62t
        -0x70t
        0x68t
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    nop

    .line 435
    :array_1b2
    .array-data 1
        -0x24t
        0x68t
        -0x1et
        -0x50t
        0x48t
        0x52t
        -0xet
        -0x2et
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_1ba
    .array-data 1
        0x6ct
        0x34t
        0x54t
        0x63t
        -0x15t
        0x2et
        -0x6ct
        -0x5at
        0x74t
        0x26t
        0x5ft
        0x70t
        -0x36t
        0x22t
        -0x76t
        -0x7bt
        0x56t
        0x2bt
        0x55t
        0x74t
        -0x21t
        0x14t
        -0x6ft
        -0x47t
        0x5ct
    .end array-data

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    nop

    .line 461
    :array_1cc
    .array-data 1
        0x39t
        0x47t
        0x31t
        0x11t
        -0x53t
        0x47t
        -0x8t
        -0x3dt
    .end array-data

    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    :array_1d4
    .array-data 1
        -0x6dt
        -0x7et
        0x11t
        -0x73t
        -0x37t
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    nop

    .line 477
    :array_1dc
    .array-data 1
        -0x4dt
        -0x5et
        0x6dt
        -0x53t
        -0x17t
        0x7et
        0x37t
        0x2t
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    :array_1e4
    .array-data 1
        0xbt
        0x6ct
        0x42t
        -0x2at
        -0x65t
    .end array-data

    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    nop

    .line 493
    :array_1ec
    .array-data 1
        0x2bt
        0x4ct
        0x3et
        -0xat
        -0x45t
        0x34t
        0x4at
        0x46t
    .end array-data
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 11

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f070184

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x54

    .line 21
    .line 22
    iget-object v2, p0, Lm0/x2;->a:Lm0/c3;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lm0/c3;->z(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x12

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lm0/c3;->z(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/16 v4, 0xe

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Lm0/c3;->z(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual {v2, v1}, Lm0/c3;->z(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v2, v4}, Lm0/c3;->z(I)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {p2, v3, v5, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 55
    .line 56
    const/4 v3, -0x1

    .line 57
    const/4 v4, -0x2

    .line 58
    invoke-direct {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    const/16 v5, 0xa

    .line 62
    .line 63
    invoke-virtual {v2, v5}, Lm0/c3;->z(I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const/4 v6, 0x0

    .line 68
    invoke-virtual {v1, v6, v6, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    const v7, 0x7f050381

    .line 84
    .line 85
    .line 86
    invoke-static {v5, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    .line 92
    .line 93
    const/high16 v5, 0x41900000    # 18.0f

    .line 94
    .line 95
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    new-instance v5, Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const v7, 0x7f050382

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    .line 126
    .line 127
    const/high16 p1, 0x41600000    # 14.0f

    .line 128
    .line 129
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 133
    .line 134
    .line 135
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    .line 137
    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    .line 139
    .line 140
    const/4 v0, 0x4

    .line 141
    invoke-virtual {v2, v0}, Lm0/c3;->z(I)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-virtual {p1, v6, v0, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    new-instance p1, Lm0/w2;

    .line 155
    .line 156
    invoke-direct {p1, p2, v1, v5}, Lm0/w2;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 157
    .line 158
    .line 159
    return-object p1
.end method
