.class public final synthetic Lm0/r2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/c3;


# direct methods
.method public synthetic constructor <init>(Lm0/c3;I)V
    .registers 3

    .line 1
    iput p2, p0, Lm0/r2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/r2;->c:Lm0/c3;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 14

    .line 1
    iget p1, p0, Lm0/r2;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    iget-object v2, p0, Lm0/r2;->c:Lm0/c3;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_1b4

    .line 9
    .line 10
    .line 11
    iput-object v0, v2, Lm0/c3;->u:Ljava/io/File;

    .line 12
    .line 13
    const p1, 0x7f130434

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v2, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lm0/c3;->K()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1a
    iget-object p1, v2, Lm0/c3;->u:Ljava/io/File;

    .line 28
    .line 29
    iget-object v3, v2, Lm0/c3;->t:Ljava/io/File;

    .line 30
    .line 31
    iget-boolean v4, v2, Lm0/c3;->v:Z

    .line 32
    .line 33
    if-nez v4, :cond_67

    .line 34
    .line 35
    if-eqz p1, :cond_67

    .line 36
    .line 37
    if-nez v3, :cond_27

    .line 38
    .line 39
    goto :goto_67

    .line 40
    :cond_27
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_3d

    .line 45
    .line 46
    iput-object v0, v2, Lm0/c3;->u:Ljava/io/File;

    .line 47
    .line 48
    invoke-virtual {v2}, Lm0/c3;->K()V

    .line 49
    .line 50
    .line 51
    const p1, 0x7f13044c

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v2, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_67

    .line 62
    :cond_3d
    const v0, 0x7f130438

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v4, 0x1

    .line 70
    invoke-virtual {v2, v0, v4}, Lm0/c3;->H(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    const/16 v0, 0x17

    .line 74
    .line 75
    new-array v0, v0, [B

    .line 76
    .line 77
    fill-array-data v0, :array_1c4

    .line 78
    .line 79
    .line 80
    new-array v1, v1, [B

    .line 81
    .line 82
    fill-array-data v1, :array_1d4

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v1, -0x1

    .line 90
    invoke-static {v1, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Lb1/n;

    .line 95
    .line 96
    const/16 v4, 0xa

    .line 97
    .line 98
    invoke-direct {v1, v2, v3, p1, v4}, Lb1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    :cond_67
    :goto_67
    return-void

    .line 105
    :pswitch_68
    iget-object p1, v2, Lm0/c3;->r:Lh7/k;

    .line 106
    .line 107
    if-eqz p1, :cond_73

    .line 108
    .line 109
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Lh7/k;->o(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    :cond_73
    invoke-virtual {v2}, Lm0/c3;->v()V

    .line 117
    .line 118
    .line 119
    iget-object p1, v2, Lm0/c3;->t:Ljava/io/File;

    .line 120
    .line 121
    invoke-virtual {v2, p1}, Lm0/c3;->D(Ljava/io/File;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_7c
    iget-object p1, v2, Lm0/c3;->t:Ljava/io/File;

    .line 126
    .line 127
    if-eqz p1, :cond_91

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-nez p1, :cond_87

    .line 134
    .line 135
    goto :goto_91

    .line 136
    :cond_87
    iget-object p1, v2, Lm0/c3;->t:Ljava/io/File;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v2, p1}, Lm0/c3;->D(Ljava/io/File;)V

    .line 143
    .line 144
    .line 145
    goto :goto_9b

    .line 146
    :cond_91
    :goto_91
    const p1, 0x7f130410

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v2, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_9b
    return-void

    .line 157
    :pswitch_9c
    iget-object p1, v2, Lm0/c3;->s:Ljava/io/File;

    .line 158
    .line 159
    invoke-virtual {v2, p1}, Lm0/c3;->D(Ljava/io/File;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :pswitch_a2
    iget-object p1, v2, Lm0/c3;->r:Lh7/k;

    .line 164
    .line 165
    if-eqz p1, :cond_ad

    .line 166
    .line 167
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {p1, v3}, Lh7/k;->o(Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    :cond_ad
    new-instance p1, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    new-instance v3, Ljava/util/HashSet;

    .line 180
    .line 181
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 182
    .line 183
    .line 184
    const/4 v4, 0x0

    .line 185
    :try_start_b8
    iget-object v5, v2, Lm0/c3;->r:Lh7/k;

    .line 186
    .line 187
    if-eqz v5, :cond_d3

    .line 188
    .line 189
    invoke-virtual {v5}, Lh7/k;->e()Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    move v7, v4

    .line 198
    :goto_c5
    if-ge v7, v6, :cond_d3

    .line 199
    .line 200
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    add-int/lit8 v7, v7, 0x1

    .line 205
    .line 206
    check-cast v8, Ljava/io/File;

    .line 207
    .line 208
    invoke-static {p1, v3, v8}, Lm0/c3;->t(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_d2} :catch_d3

    .line 209
    .line 210
    .line 211
    goto :goto_c5

    .line 212
    :catch_d3
    :cond_d3
    const/16 v5, 0x9

    .line 213
    .line 214
    :try_start_d5
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-static {v6, v0}, Landroidx/core/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    array-length v6, v0

    .line 223
    move v7, v4

    .line 224
    :goto_df
    if-ge v7, v6, :cond_122

    .line 225
    .line 226
    aget-object v8, v0, v7

    .line 227
    .line 228
    if-nez v8, :cond_e6

    .line 229
    .line 230
    goto :goto_11f

    .line 231
    :cond_e6
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    new-array v9, v1, [B

    .line 236
    .line 237
    fill-array-data v9, :array_1dc

    .line 238
    .line 239
    .line 240
    new-array v10, v1, [B

    .line 241
    .line 242
    fill-array-data v10, :array_1e4

    .line 243
    .line 244
    .line 245
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    new-array v10, v5, [B

    .line 254
    .line 255
    fill-array-data v10, :array_1ec

    .line 256
    .line 257
    .line 258
    new-array v11, v1, [B

    .line 259
    .line 260
    fill-array-data v11, :array_1f6

    .line 261
    .line 262
    .line 263
    invoke-static {v10, v11}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    if-eqz v10, :cond_11f

    .line 272
    .line 273
    if-gtz v9, :cond_113

    .line 274
    .line 275
    goto :goto_11f

    .line 276
    :cond_113
    new-instance v10, Ljava/io/File;

    .line 277
    .line 278
    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-static {p1, v3, v10}, Lm0/c3;->t(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;)V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_11f} :catch_122

    .line 286
    .line 287
    .line 288
    :cond_11f
    :goto_11f
    add-int/lit8 v7, v7, 0x1

    .line 289
    .line 290
    goto :goto_df

    .line 291
    :catch_122
    :cond_122
    :try_start_122
    new-instance v0, Ljava/io/File;

    .line 292
    .line 293
    new-array v5, v5, [B

    .line 294
    .line 295
    fill-array-data v5, :array_1fe

    .line 296
    .line 297
    .line 298
    new-array v1, v1, [B

    .line 299
    .line 300
    fill-array-data v1, :array_208

    .line 301
    .line 302
    .line 303
    invoke-static {v5, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    if-eqz v0, :cond_147

    .line 315
    .line 316
    array-length v1, v0

    .line 317
    move v5, v4

    .line 318
    :goto_13d
    if-ge v5, v1, :cond_147

    .line 319
    .line 320
    aget-object v6, v0, v5

    .line 321
    .line 322
    invoke-static {p1, v3, v6}, Lm0/c3;->t(Ljava/util/ArrayList;Ljava/util/HashSet;Ljava/io/File;)V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_144} :catch_147

    .line 323
    .line 324
    .line 325
    add-int/lit8 v5, v5, 0x1

    .line 326
    .line 327
    goto :goto_13d

    .line 328
    :catch_147
    :cond_147
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_158

    .line 333
    .line 334
    const p1, 0x7f130416

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-virtual {v2, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    goto :goto_197

    .line 345
    :cond_158
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    new-array v0, v0, [Ljava/lang/String;

    .line 350
    .line 351
    :goto_15e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-ge v4, v1, :cond_173

    .line 356
    .line 357
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    check-cast v1, Ljava/io/File;

    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    aput-object v1, v0, v4

    .line 368
    .line 369
    add-int/lit8 v4, v4, 0x1

    .line 370
    .line 371
    goto :goto_15e

    .line 372
    :cond_173
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 373
    .line 374
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    const v4, 0x7f1402ef

    .line 379
    .line 380
    .line 381
    invoke-direct {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 382
    .line 383
    .line 384
    const v3, 0x7f130415

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    new-instance v3, Le0/e0;

    .line 396
    .line 397
    const/4 v4, 0x7

    .line 398
    invoke-direct {v3, v4, v2, p1}, Le0/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 406
    .line 407
    .line 408
    :goto_197
    return-void

    .line 409
    :pswitch_198
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    instance-of p1, p1, Ll0/a;

    .line 414
    .line 415
    if-eqz p1, :cond_1aa

    .line 416
    .line 417
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    check-cast p1, Ll0/a;

    .line 422
    .line 423
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 424
    .line 425
    .line 426
    goto :goto_1b3

    .line 427
    :cond_1aa
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    if-eqz p1, :cond_1b3

    .line 432
    .line 433
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 434
    .line 435
    .line 436
    :cond_1b3
    :goto_1b3
    return-void

    .line 437
    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_198
        :pswitch_a2
        :pswitch_9c
        :pswitch_7c
        :pswitch_68
        :pswitch_1a
    .end packed-switch

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
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
    :array_1c4
    .array-data 1
        -0x1ft
        0x34t
        -0x45t
        0x9t
        0x55t
        0x3t
        0xdt
        0x14t
        -0x7t
        0x26t
        -0x50t
        0x1at
        0x74t
        0xft
        0x13t
        0x37t
        -0x3at
        0x26t
        -0x47t
        0x16t
        0x76t
        0x4t
        0x15t
    .end array-data

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
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
        -0x4ct
        0x47t
        -0x22t
        0x7bt
        0x13t
        0x6at
        0x61t
        0x71t
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :array_1dc
    .array-data 1
        -0x29t
        -0x57t
        -0x54t
        -0x7at
        -0x56t
        0x10t
        -0x7bt
        -0x1ft
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
        -0x8t
        -0x18t
        -0x3et
        -0x1et
        -0x28t
        0x7ft
        -0x14t
        -0x7bt
    .end array-data

    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    :array_1ec
    .array-data 1
        0xbt
        -0x4dt
        -0x21t
        0x9t
        -0x48t
        0x40t
        -0x16t
        0x0t
        0xbt
    .end array-data

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    nop

    .line 503
    :array_1f6
    .array-data 1
        0x24t
        -0x40t
        -0x55t
        0x66t
        -0x36t
        0x21t
        -0x73t
        0x65t
    .end array-data

    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :array_1fe
    .array-data 1
        -0x45t
        -0x18t
        0x7ct
        -0x49t
        0x69t
        -0x58t
        -0x50t
        0x7bt
        -0x45t
    .end array-data

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    nop

    .line 521
    :array_208
    .array-data 1
        -0x6ct
        -0x65t
        0x8t
        -0x28t
        0x1bt
        -0x37t
        -0x29t
        0x1et
    .end array-data
.end method
