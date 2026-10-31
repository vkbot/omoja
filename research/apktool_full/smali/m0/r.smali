.class public final synthetic Lm0/r;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/t;

.field public final synthetic d:Lm0/u;


# direct methods
.method public synthetic constructor <init>(Lm0/t;Lm0/u;I)V
    .locals 0

    .line 1
    iput p3, p0, Lm0/r;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/r;->c:Lm0/t;

    .line 4
    .line 5
    iput-object p2, p0, Lm0/r;->d:Lm0/u;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget p1, p0, Lm0/r;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Lm0/r;->d:Lm0/u;

    .line 4
    .line 5
    iget-object v1, p0, Lm0/r;->c:Lm0/t;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-boolean p1, v0, Lm0/u;->f:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, v1, Lm0/t;->a:Lm0/v;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lm0/v;->t(Lm0/v;Lm0/u;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_0
    iget-object p1, v1, Lm0/t;->a:Lm0/v;

    .line 23
    .line 24
    sget-object v1, Lm0/v;->h:Ljava/lang/String;

    .line 25
    .line 26
    iget-boolean v1, v0, Lm0/u;->f:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v1, v0, Lm0/u;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const v4, 0x7f1402ef

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    const v3, 0x7f13012d

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const v4, 0x7f13012e

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/4 v4, 0x2

    .line 78
    new-array v5, v4, [B

    .line 79
    .line 80
    fill-array-data v5, :array_0

    .line 81
    .line 82
    .line 83
    new-array v6, v2, [B

    .line 84
    .line 85
    fill-array-data v6, :array_1

    .line 86
    .line 87
    .line 88
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v5, v0, Lm0/u;->a:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const/4 v5, 0x3

    .line 101
    new-array v5, v5, [B

    .line 102
    .line 103
    fill-array-data v5, :array_2

    .line 104
    .line 105
    .line 106
    new-array v2, v2, [B

    .line 107
    .line 108
    fill-array-data v2, :array_3

    .line 109
    .line 110
    .line 111
    invoke-static {v5, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const v2, 0x7f130334

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    new-instance v3, Le0/e0;

    .line 134
    .line 135
    invoke-direct {v3, v4, p1, v0}, Le0/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const v1, 0x7f13010a

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 155
    .line 156
    .line 157
    :cond_2
    :goto_0
    return-void

    .line 158
    :pswitch_1
    iget-object p1, v1, Lm0/t;->a:Lm0/v;

    .line 159
    .line 160
    invoke-static {p1, v0}, Lm0/v;->t(Lm0/v;Lm0/u;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_2
    iget-object p1, v1, Lm0/t;->a:Lm0/v;

    .line 165
    .line 166
    sget-object v1, Lm0/v;->h:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    instance-of v1, v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 173
    .line 174
    if-nez v1, :cond_3

    .line 175
    .line 176
    goto/16 :goto_3

    .line 177
    .line 178
    :cond_3
    iget-object v1, v0, Lm0/u;->c:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-nez v1, :cond_8

    .line 185
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    sget-object v4, Le0/m;->j:[B

    .line 196
    .line 197
    sget-object v5, Le0/p3;->a:[Ljava/lang/String;

    .line 198
    .line 199
    const-string v5, ""

    .line 200
    .line 201
    invoke-static {v4, v3, v5, v1}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 202
    .line 203
    .line 204
    const/16 v3, 0x9

    .line 205
    .line 206
    new-array v4, v3, [B

    .line 207
    .line 208
    fill-array-data v4, :array_4

    .line 209
    .line 210
    .line 211
    invoke-static {v4, v1}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 212
    .line 213
    .line 214
    sget-object v4, Le0/x1;->q:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {v1, v4}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    sget-object v6, Le0/m;->f:[B

    .line 225
    .line 226
    invoke-static {v6, v4, v5, v1}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    const/4 v4, 0x1

    .line 231
    const/4 v5, 0x0

    .line 232
    if-eqz v1, :cond_5

    .line 233
    .line 234
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v1}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    const-wide v7, 0x7fffffffffffffffL

    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    invoke-static {v7, v8, v1}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 248
    .line 249
    .line 250
    move-result-wide v7

    .line 251
    new-instance v1, Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    new-instance v11, Ljava/lang/String;

    .line 262
    .line 263
    invoke-direct {v11, v6}, Ljava/lang/String;-><init>([B)V

    .line 264
    .line 265
    .line 266
    sget-object v6, Le0/m;->g:[B

    .line 267
    .line 268
    invoke-static {v6, v10, v11}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    new-array v10, v4, [B

    .line 273
    .line 274
    const/4 v11, -0x7

    .line 275
    aput-byte v11, v10, v5

    .line 276
    .line 277
    new-array v11, v2, [B

    .line 278
    .line 279
    fill-array-data v11, :array_5

    .line 280
    .line 281
    .line 282
    invoke-static {v10, v11, v9, v6, v5}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    .line 287
    .line 288
    .line 289
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 290
    .line 291
    .line 292
    move-result-wide v9

    .line 293
    cmp-long v1, v7, v9

    .line 294
    .line 295
    if-gez v1, :cond_4

    .line 296
    .line 297
    move v1, v4

    .line 298
    goto :goto_1

    .line 299
    :cond_4
    move v1, v5

    .line 300
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    goto :goto_2

    .line 305
    :cond_5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 306
    .line 307
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_8

    .line 312
    .line 313
    new-instance v1, Le0/y2;

    .line 314
    .line 315
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 320
    .line 321
    iget-object v6, v0, Lm0/u;->c:Ljava/lang/String;

    .line 322
    .line 323
    iget-object v7, v0, Lm0/u;->b:Ljava/lang/String;

    .line 324
    .line 325
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 326
    .line 327
    .line 328
    move-result v8

    .line 329
    if-eqz v8, :cond_6

    .line 330
    .line 331
    iget-object v7, v0, Lm0/u;->a:Ljava/lang/String;

    .line 332
    .line 333
    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_7

    .line 338
    .line 339
    new-array v0, v3, [B

    .line 340
    .line 341
    fill-array-data v0, :array_6

    .line 342
    .line 343
    .line 344
    new-array v3, v2, [B

    .line 345
    .line 346
    fill-array-data v3, :array_7

    .line 347
    .line 348
    .line 349
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 359
    .line 360
    invoke-virtual {v7, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    const/16 v7, 0xc

    .line 365
    .line 366
    new-array v7, v7, [B

    .line 367
    .line 368
    fill-array-data v7, :array_8

    .line 369
    .line 370
    .line 371
    new-array v8, v2, [B

    .line 372
    .line 373
    fill-array-data v8, :array_9

    .line 374
    .line 375
    .line 376
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    new-array v4, v4, [B

    .line 381
    .line 382
    const/16 v8, 0x20

    .line 383
    .line 384
    aput-byte v8, v4, v5

    .line 385
    .line 386
    new-array v5, v2, [B

    .line 387
    .line 388
    fill-array-data v5, :array_a

    .line 389
    .line 390
    .line 391
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const/4 v3, 0x4

    .line 403
    new-array v3, v3, [B

    .line 404
    .line 405
    fill-array-data v3, :array_b

    .line 406
    .line 407
    .line 408
    new-array v2, v2, [B

    .line 409
    .line 410
    fill-array-data v2, :array_c

    .line 411
    .line 412
    .line 413
    invoke-static {v3, v2, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-direct {v1, p1, v6, v0}, Le0/y2;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    :cond_8
    :goto_3
    return-void

    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    :array_0
    .array-data 1
        0x31t
        -0x66t
    .end array-data

    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    nop

    .line 437
    :array_1
    .array-data 1
        0x11t
        -0x48t
        0x4t
        -0x1et
        0x14t
        0x55t
        0x17t
        -0x4et
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    :array_2
    .array-data 1
        -0x27t
        0x1ct
        -0x24t
    .end array-data

    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :array_3
    .array-data 1
        -0x5t
        0x3ct
        -0x1dt
        0x7ct
        0x77t
        -0x43t
        -0x2dt
        -0x66t
    .end array-data

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_4
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

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    nop

    .line 469
    :array_5
    .array-data 1
        -0x37t
        -0x17t
        0x54t
        0x6ct
        0x16t
        -0x79t
        -0x79t
        -0x5t
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :array_6
    .array-data 1
        -0x77t
        0x58t
        0x40t
        -0x77t
        0x74t
        0x45t
        -0x6at
        0x1et
        -0x76t
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    nop

    .line 487
    :array_7
    .array-data 1
        -0x6t
        0x2ct
        0x2ft
        -0x5t
        0x11t
        0x1at
        -0x9t
        0x6et
    .end array-data

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    :array_8
    .array-data 1
        0x7at
        -0x30t
        -0x55t
        0x2at
        0x53t
        -0x6bt
        0x4at
        0x14t
        0xft
        -0x2ft
        -0x19t
        0x5at
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
    :array_9
    .array-data 1
        0x21t
        -0x72t
        -0x36t
        0x7t
        0x29t
        -0x5bt
        0x67t
        0x2dt
    .end array-data

    .line 506
    :array_a
    .array-data 1
        0x7ft
        0x1bt
        0x9t
        0x59t
        0x22t
        -0x61t
        -0x9t
        0x57t
    .end array-data

    :array_b
    .array-data 1
        0x21t
        0x52t
        -0x62t
        -0x29t
    .end array-data

    :array_c
    .array-data 1
        0xft
        0x33t
        -0x12t
        -0x44t
        0x4t
        0x76t
        0x77t
        -0x27t
    .end array-data
.end method
