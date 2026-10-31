.class public final Le0/e1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Le0/e1;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Le0/e1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/widget/AdapterView;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final b(Landroid/widget/AdapterView;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final c(Landroid/widget/AdapterView;)V
    .registers 2

    .line 1
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    .line 1
    iget p1, p0, Le0/e1;->b:I

    .line 2
    .line 3
    iget-object p2, p0, Le0/e1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    const/16 p4, 0x8

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_128

    .line 8
    .line 9
    .line 10
    check-cast p2, Ljava/util/function/IntConsumer;

    .line 11
    .line 12
    invoke-interface {p2, p3}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    check-cast p2, Lm0/e2;

    .line 17
    .line 18
    iget-object p1, p2, Lm0/e2;->g:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    const/16 p5, 0x1c

    .line 31
    .line 32
    new-array p5, p5, [B

    .line 33
    .line 34
    fill-array-data p5, :array_136

    .line 35
    .line 36
    .line 37
    new-array v0, p4, [B

    .line 38
    .line 39
    fill-array-data v0, :array_148

    .line 40
    .line 41
    .line 42
    invoke-static {p5, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p5

    .line 46
    invoke-virtual {p3, p5, p1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/16 p3, 0xb

    .line 50
    .line 51
    new-array p3, p3, [B

    .line 52
    .line 53
    fill-array-data p3, :array_150

    .line 54
    .line 55
    .line 56
    new-array p5, p4, [B

    .line 57
    .line 58
    fill-array-data p5, :array_15a

    .line 59
    .line 60
    .line 61
    invoke-static {p3, p5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_8b

    .line 70
    .line 71
    new-instance p1, Ljava/io/File;

    .line 72
    .line 73
    iget-object p3, p2, Lm0/e2;->f:Ljava/io/File;

    .line 74
    .line 75
    const/16 p5, 0x16

    .line 76
    .line 77
    new-array p5, p5, [B

    .line 78
    .line 79
    fill-array-data p5, :array_162

    .line 80
    .line 81
    .line 82
    new-array v0, p4, [B

    .line 83
    .line 84
    fill-array-data v0, :array_172

    .line 85
    .line 86
    .line 87
    invoke-static {p5, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p5

    .line 91
    invoke-direct {p1, p3, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_8b

    .line 99
    .line 100
    new-instance p1, Ljava/io/File;

    .line 101
    .line 102
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-virtual {p3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    const/16 p5, 0xf

    .line 111
    .line 112
    new-array p5, p5, [B

    .line 113
    .line 114
    fill-array-data p5, :array_17a

    .line 115
    .line 116
    .line 117
    new-array p4, p4, [B

    .line 118
    .line 119
    fill-array-data p4, :array_186

    .line 120
    .line 121
    .line 122
    invoke-static {p5, p4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p4

    .line 126
    invoke-direct {p1, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object p3, p2, Lm0/e2;->i:Lb1/m;

    .line 130
    .line 131
    invoke-virtual {p3, p1}, Lb1/m;->c(Ljava/io/File;)Z

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    if-eqz p3, :cond_8b

    .line 136
    .line 137
    invoke-virtual {p2, p1}, Lm0/e2;->v(Ljava/io/File;)V

    .line 138
    .line 139
    .line 140
    :cond_8b
    invoke-virtual {p2}, Lm0/e2;->x()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Lm0/e2;->y()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Lcom/example/navistart/SpeedBoardService;->b(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :pswitch_99
    check-cast p2, Lm0/c2;

    .line 155
    .line 156
    iget-object p1, p2, Lm0/c2;->g:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 165
    .line 166
    .line 167
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    const/16 p5, 0x13

    .line 172
    .line 173
    new-array p5, p5, [B

    .line 174
    .line 175
    fill-array-data p5, :array_18e

    .line 176
    .line 177
    .line 178
    new-array p4, p4, [B

    .line 179
    .line 180
    fill-array-data p4, :array_19c

    .line 181
    .line 182
    .line 183
    invoke-static {p5, p4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p4

    .line 187
    invoke-virtual {p3, p4, p1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Lm0/c2;->w()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Lm0/c2;->x()V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :pswitch_c4
    check-cast p2, Lm0/a0;

    .line 198
    .line 199
    iget-object p1, p2, Lm0/a0;->c:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    const/16 p5, 0x1e

    .line 215
    .line 216
    new-array p5, p5, [B

    .line 217
    .line 218
    fill-array-data p5, :array_1a4

    .line 219
    .line 220
    .line 221
    new-array p4, p4, [B

    .line 222
    .line 223
    fill-array-data p4, :array_1b8

    .line 224
    .line 225
    .line 226
    invoke-static {p5, p4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p4

    .line 230
    invoke-virtual {p3, p4, p1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2}, Lm0/a0;->w()V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :pswitch_ec
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    const/16 p5, 0x11

    .line 242
    .line 243
    new-array p5, p5, [B

    .line 244
    .line 245
    fill-array-data p5, :array_1c0

    .line 246
    .line 247
    .line 248
    new-array p4, p4, [B

    .line 249
    .line 250
    fill-array-data p4, :array_1ce

    .line 251
    .line 252
    .line 253
    invoke-static {p5, p4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p4

    .line 257
    check-cast p2, [Li7/h;

    .line 258
    .line 259
    aget-object p2, p2, p3

    .line 260
    .line 261
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    invoke-virtual {p1, p4, p2}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :pswitch_10c
    check-cast p2, [Ljava/lang/String;

    .line 270
    .line 271
    aget-object p1, p2, p3

    .line 272
    .line 273
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    const/16 p3, 0x17

    .line 278
    .line 279
    new-array p3, p3, [B

    .line 280
    .line 281
    fill-array-data p3, :array_1d6

    .line 282
    .line 283
    .line 284
    new-array p4, p4, [B

    .line 285
    .line 286
    fill-array-data p4, :array_1e6

    .line 287
    .line 288
    .line 289
    invoke-static {p3, p4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p3

    .line 293
    invoke-virtual {p2, p3, p1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_10c
        :pswitch_ec
        :pswitch_c4
        :pswitch_99
        :pswitch_f
    .end packed-switch

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    :array_136
    .array-data 1
        -0xet
        -0x80t
        -0x46t
        0x39t
        -0x7et
        -0x1dt
        -0x16t
        0x6dt
        -0x2bt
        -0x64t
        -0x72t
        0x28t
        -0x58t
        -0x1at
        -0x24t
        0x5dt
        -0x14t
        -0x64t
        -0x67t
        0x28t
        -0x77t
        -0x23t
        -0x1t
        0x71t
        -0x20t
        -0x4et
        -0x78t
        0x25t
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_148
    .array-data 1
        -0x41t
        -0x7t
        -0x13t
        0x5ct
        -0x20t
        -0x4dt
        -0x68t
        0x2t
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_150
    .array-data 1
        -0x4ct
        0x6at
        0xet
        0x45t
        -0x45t
        -0x4bt
        0x10t
        0x45t
        -0x48t
        0x7at
        0xct
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    :array_15a
    .array-data 1
        -0x30t
        0xft
        0x68t
        0x24t
        -0x32t
        -0x27t
        0x64t
        0x1at
    .end array-data

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    :array_162
    .array-data 1
        0x1bt
        -0x2et
        0x14t
        0x38t
        0x6t
        -0x57t
        0x28t
        -0x1ft
        0x17t
        -0x3et
        0x16t
        0x76t
        0x1at
        -0x55t
        0x38t
        -0x25t
        0x7t
        -0x67t
        0x1at
        0x2dt
        0x1et
        -0x57t
    .end array-data

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    nop

    .line 371
    :array_172
    .array-data 1
        0x7ft
        -0x49t
        0x72t
        0x59t
        0x73t
        -0x3bt
        0x5ct
        -0x42t
    .end array-data

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    :array_17a
    .array-data 1
        -0x56t
        -0x13t
        0x69t
        0x30t
        -0x76t
        -0x37t
        -0x48t
        0x1et
        -0x5at
        -0x3t
        0x6bt
        0x7ft
        -0x7bt
        -0x34t
        -0x44t
    .end array-data

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
        -0x32t
        -0x78t
        0xft
        0x51t
        -0x1t
        -0x5bt
        -0x34t
        0x41t
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
        0x64t
        0x11t
        0x3et
        -0x74t
        0x40t
        -0x2bt
        -0x76t
        0x49t
        0x76t
        0x0t
        0x3t
        -0x60t
        0x52t
        -0x30t
        -0x75t
        0x4dt
        0x67t
        0x11t
        0x38t
    .end array-data

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
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
        0x13t
        0x74t
        0x5ct
        -0x2dt
        0x37t
        -0x44t
        -0x12t
        0x2et
    .end array-data

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :array_1a4
    .array-data 1
        0x46t
        0x4at
        -0x30t
        -0x31t
        0x5at
        -0x5ct
        -0x2bt
        -0x15t
        0x61t
        0x56t
        -0x1ct
        -0x22t
        0x7at
        -0x68t
        -0x3at
        -0x19t
        0x60t
        0x6ct
        -0x2ct
        -0x31t
        0x4ct
        -0x80t
        -0x32t
        -0x16t
        0x6ct
        0x40t
        -0x28t
        -0x1ft
        0x5dt
        -0x73t
    .end array-data

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
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    nop

    .line 441
    :array_1b8
    .array-data 1
        0xbt
        0x33t
        -0x79t
        -0x56t
        0x38t
        -0xct
        -0x59t
        -0x7ct
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
        0x72t
        0x5t
        0x7at
        -0x1t
        -0x1bt
        -0x3t
        -0x76t
        0x49t
        0x41t
        0x2ft
        0x6ft
        -0x1et
        -0xat
        -0x2t
        -0x71t
        0x5bt
        0x56t
    .end array-data

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
    .line 461
    .line 462
    nop

    .line 463
    :array_1ce
    .array-data 1
        0x33t
        0x6bt
        0xet
        -0x6at
        -0x69t
        -0x64t
        -0x12t
        0x28t
    .end array-data

    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    :array_1d6
    .array-data 1
        0x78t
        -0x59t
        0x57t
        0x5ct
        -0x13t
        0x75t
        -0x37t
        -0x13t
        0x7bt
        -0x48t
        0x59t
        0x5dt
        -0x19t
        0x71t
        -0x1ct
        -0x3bt
        0x62t
        -0x4dt
        0x59t
        0x6dt
        -0xdt
        0x62t
        -0x2ct
    .end array-data

    .line 472
    .line 473
    .line 474
    .line 475
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
    :array_1e6
    .array-data 1
        0xbt
        -0x29t
        0x3et
        0x32t
        -0x7dt
        0x10t
        -0x45t
        -0x4et
    .end array-data
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 3

    .line 1
    iget p1, p0, Le0/e1;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Le0/e1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_26

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_8
    check-cast v0, Lm0/e2;

    .line 10
    .line 11
    sget-object p1, Lm0/e2;->j:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Lm0/e2;->x()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm0/e2;->y()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_13
    check-cast v0, Lm0/c2;

    .line 21
    .line 22
    sget-object p1, Lm0/c2;->i:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0}, Lm0/c2;->w()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lm0/c2;->x()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1e
    check-cast v0, Lm0/a0;

    .line 32
    .line 33
    sget-object p1, Lm0/a0;->h:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0}, Lm0/a0;->w()V

    .line 36
    .line 37
    .line 38
    :pswitch_25
    return-void

    .line 39
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_25
        :pswitch_25
        :pswitch_1e
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method
