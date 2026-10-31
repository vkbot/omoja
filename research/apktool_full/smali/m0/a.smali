.class public final synthetic Lm0/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/i;


# direct methods
.method public synthetic constructor <init>(Lm0/i;I)V
    .locals 0

    .line 1
    iput p2, p0, Lm0/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/a;->c:Lm0/i;

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
    .locals 14

    .line 1
    iget p1, p0, Lm0/a;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lm0/a;->c:Lm0/i;

    .line 7
    .line 8
    iget-boolean p1, v1, Lm0/i;->i:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_7

    .line 13
    .line 14
    :cond_0
    iget-boolean p1, v1, Lm0/i;->h:Z

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object p1, v1, Lm0/i;->b:Landroid/widget/Spinner;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    move-object v4, p1

    .line 29
    check-cast v4, Lm0/h;

    .line 30
    .line 31
    if-nez v4, :cond_1

    .line 32
    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    move v5, v3

    .line 44
    iget v3, v1, Lm0/i;->j:I

    .line 45
    .line 46
    iput-boolean v0, v1, Lm0/i;->i:Z

    .line 47
    .line 48
    iget-object v0, v1, Lm0/i;->b:Landroid/widget/Spinner;

    .line 49
    .line 50
    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lm0/i;->u()V

    .line 54
    .line 55
    .line 56
    iget-object v0, v1, Lm0/i;->d:Landroid/widget/TextView;

    .line 57
    .line 58
    const v5, 0x7f1300b8

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 62
    .line 63
    .line 64
    const/16 v0, 0x12

    .line 65
    .line 66
    new-array v0, v0, [B

    .line 67
    .line 68
    fill-array-data v0, :array_0

    .line 69
    .line 70
    .line 71
    new-array v2, v2, [B

    .line 72
    .line 73
    fill-array-data v2, :array_1

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/4 v2, -0x1

    .line 81
    invoke-static {v2, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    new-instance v0, Lj2/d;

    .line 86
    .line 87
    const/4 v5, 0x1

    .line 88
    move-object v2, p1

    .line 89
    invoke-direct/range {v0 .. v5}, Lj2/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_7

    .line 96
    .line 97
    :cond_2
    move v5, v3

    .line 98
    invoke-virtual {v1}, Lm0/i;->t()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_5

    .line 103
    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    sget-object v4, Le0/m;->j:[B

    .line 114
    .line 115
    sget-object v6, Le0/p3;->a:[Ljava/lang/String;

    .line 116
    .line 117
    const-string v6, ""

    .line 118
    .line 119
    invoke-static {v4, v3, v6, p1}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 120
    .line 121
    .line 122
    const/16 v3, 0x9

    .line 123
    .line 124
    new-array v3, v3, [B

    .line 125
    .line 126
    fill-array-data v3, :array_2

    .line 127
    .line 128
    .line 129
    invoke-static {v3, p1}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 130
    .line 131
    .line 132
    sget-object v3, Le0/x1;->q:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {p1, v3}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    sget-object v4, Le0/m;->f:[B

    .line 143
    .line 144
    invoke-static {v4, v3, v6, p1}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_4

    .line 149
    .line 150
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-wide v6, 0x7fffffffffffffffL

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v6

    .line 167
    new-instance p1, Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    new-instance v9, Ljava/lang/String;

    .line 178
    .line 179
    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([B)V

    .line 180
    .line 181
    .line 182
    sget-object v4, Le0/m;->g:[B

    .line 183
    .line 184
    invoke-static {v4, v8, v9}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    new-array v8, v0, [B

    .line 189
    .line 190
    const/4 v9, 0x3

    .line 191
    aput-byte v9, v8, v5

    .line 192
    .line 193
    new-array v9, v2, [B

    .line 194
    .line 195
    fill-array-data v9, :array_3

    .line 196
    .line 197
    .line 198
    invoke-static {v8, v9, v3, v4, v5}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    .line 203
    .line 204
    .line 205
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 206
    .line 207
    .line 208
    move-result-wide v3

    .line 209
    cmp-long p1, v6, v3

    .line 210
    .line 211
    if-gez p1, :cond_3

    .line 212
    .line 213
    move p1, v0

    .line 214
    goto :goto_0

    .line 215
    :cond_3
    move p1, v5

    .line 216
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    goto :goto_1

    .line 221
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 222
    .line 223
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-nez p1, :cond_5

    .line 228
    .line 229
    invoke-virtual {v1}, Lm0/i;->u()V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_7

    .line 233
    .line 234
    :cond_5
    iget-object p1, v1, Lm0/i;->b:Landroid/widget/Spinner;

    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p1, Lm0/h;

    .line 241
    .line 242
    if-nez p1, :cond_6

    .line 243
    .line 244
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    const v0, 0x7f1300b4

    .line 249
    .line 250
    .line 251
    invoke-static {v0, p1}, Ly5/k;->w(ILandroid/content/Context;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_7

    .line 255
    .line 256
    :cond_6
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    const/16 v4, 0xd

    .line 261
    .line 262
    new-array v4, v4, [B

    .line 263
    .line 264
    fill-array-data v4, :array_4

    .line 265
    .line 266
    .line 267
    new-array v2, v2, [B

    .line 268
    .line 269
    fill-array-data v2, :array_5

    .line 270
    .line 271
    .line 272
    invoke-static {v4, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 281
    .line 282
    if-nez v2, :cond_7

    .line 283
    .line 284
    goto/16 :goto_7

    .line 285
    .line 286
    :cond_7
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    new-instance v4, Landroid/content/ComponentName;

    .line 295
    .line 296
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    const-class v7, Lcom/example/navistart/DPups;

    .line 301
    .line 302
    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .line 304
    .line 305
    :try_start_0
    iget-object v6, p1, Lm0/h;->b:Ljava/lang/String;

    .line 306
    .line 307
    const/16 v7, 0x1000

    .line 308
    .line 309
    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 314
    .line 315
    if-eqz v6, :cond_d

    .line 316
    .line 317
    array-length v7, v6

    .line 318
    if-nez v7, :cond_8

    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_8
    array-length v7, v6

    .line 322
    move v8, v5

    .line 323
    move v9, v8

    .line 324
    move v10, v9

    .line 325
    move v11, v10

    .line 326
    :goto_2
    if-ge v8, v7, :cond_c

    .line 327
    .line 328
    aget-object v12, v6, v8

    .line 329
    .line 330
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 331
    .line 332
    .line 333
    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 334
    if-eqz v13, :cond_9

    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_9
    :try_start_1
    invoke-virtual {v3, v12, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 338
    .line 339
    .line 340
    move-result-object v13

    .line 341
    iget v13, v13, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    .line 343
    and-int/lit8 v13, v13, 0xf

    .line 344
    .line 345
    if-ne v13, v0, :cond_b

    .line 346
    .line 347
    :try_start_2
    iget-object v13, p1, Lm0/h;->b:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {v2, v4, v13, v12, v0}, Landroid/app/admin/DevicePolicyManager;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 350
    .line 351
    .line 352
    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 353
    if-eqz v12, :cond_a

    .line 354
    .line 355
    add-int/lit8 v9, v9, 0x1

    .line 356
    .line 357
    goto :goto_3

    .line 358
    :catch_0
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 359
    .line 360
    goto :goto_3

    .line 361
    :catch_1
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 362
    .line 363
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 364
    .line 365
    goto :goto_2

    .line 366
    :catch_2
    move-exception v0

    .line 367
    move-object p1, v0

    .line 368
    goto :goto_5

    .line 369
    :cond_c
    iget-object v0, v1, Lm0/i;->d:Landroid/widget/TextView;

    .line 370
    .line 371
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 372
    .line 373
    const v3, 0x7f1300b7

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    iget-object p1, p1, Lm0/h;->a:Ljava/lang/String;

    .line 381
    .line 382
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    filled-new-array {p1, v3, v4, v5}, [Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-static {v2, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    .line 404
    .line 405
    goto :goto_7

    .line 406
    :cond_d
    :goto_4
    :try_start_3
    iget-object p1, v1, Lm0/i;->d:Landroid/widget/TextView;

    .line 407
    .line 408
    const v0, 0x7f1300b6

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 412
    .line 413
    .line 414
    goto :goto_7

    .line 415
    :goto_5
    iget-object v0, v1, Lm0/i;->d:Landroid/widget/TextView;

    .line 416
    .line 417
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    if-nez v2, :cond_e

    .line 422
    .line 423
    const p1, 0x7f1300b3

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    goto :goto_6

    .line 431
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    :goto_6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    .line 437
    .line 438
    :goto_7
    return-void

    .line 439
    :pswitch_0
    iget-object p1, p0, Lm0/a;->c:Lm0/i;

    .line 440
    .line 441
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    instance-of v0, v0, Ll0/a;

    .line 446
    .line 447
    if-eqz v0, :cond_f

    .line 448
    .line 449
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    check-cast p1, Ll0/a;

    .line 454
    .line 455
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 456
    .line 457
    .line 458
    goto :goto_8

    .line 459
    :cond_f
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    if-eqz p1, :cond_10

    .line 464
    .line 465
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 466
    .line 467
    .line 468
    :cond_10
    :goto_8
    return-void

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_0
    .array-data 1
        0x36t
        -0x80t
        -0xdt
        0x16t
        -0x6at
        -0x5et
        -0x53t
        -0x68t
        0x4t
        -0x7dt
        -0x16t
        0x29t
        -0x63t
        -0x69t
        -0x4et
        -0x70t
        0x19t
        -0x7ct
    .end array-data

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    nop

    .line 489
    :array_1
    .array-data 1
        0x77t
        -0x10t
        -0x7dt
        0x46t
        -0xdt
        -0x30t
        -0x40t
        -0xft
    .end array-data

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    :array_2
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
    :array_3
    .array-data 1
        0x33t
        0x3bt
        0xbt
        0x6et
        0x53t
        -0x10t
        -0x78t
        -0x6ft
    .end array-data

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    :array_4
    .array-data 1
        -0xbt
        0x20t
        0x0t
        -0x70t
        -0x1dt
        -0x1dt
        0x32t
        0x55t
        -0x2t
        0x29t
        0x1ft
        -0x66t
        -0x7t
    .end array-data

    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    nop

    .line 527
    :array_5
    .array-data 1
        -0x6ft
        0x45t
        0x76t
        -0x7t
        -0x80t
        -0x7at
        0x6dt
        0x25t
    .end array-data
.end method
