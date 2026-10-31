.class public final synthetic Ls1/c0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/q0;


# direct methods
.method public synthetic constructor <init>(Ls1/q0;I)V
    .locals 0

    .line 1
    iput p2, p0, Ls1/c0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/c0;->c:Ls1/q0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Ls1/c0;->b:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ls1/c0;->c:Ls1/q0;

    .line 10
    .line 11
    new-instance v3, Landroid/content/Intent;

    .line 12
    .line 13
    const/16 v4, 0x1a

    .line 14
    .line 15
    new-array v4, v4, [B

    .line 16
    .line 17
    fill-array-data v4, :array_0

    .line 18
    .line 19
    .line 20
    new-array v5, v1, [B

    .line 21
    .line 22
    fill-array-data v5, :array_1

    .line 23
    .line 24
    .line 25
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 v4, 0x20

    .line 33
    .line 34
    new-array v4, v4, [B

    .line 35
    .line 36
    fill-array-data v4, :array_2

    .line 37
    .line 38
    .line 39
    new-array v1, v1, [B

    .line 40
    .line 41
    fill-array-data v1, :array_3

    .line 42
    .line 43
    .line 44
    invoke-static {v4, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Li7/c;

    .line 70
    .line 71
    const/16 v4, 0x9

    .line 72
    .line 73
    invoke-direct {v1, v4, v0}, Li7/c;-><init>(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 77
    .line 78
    .line 79
    new-instance v1, Lh3/d;

    .line 80
    .line 81
    const/4 v4, 0x2

    .line 82
    invoke-direct {v1, v4, v0}, Lh3/d;-><init>(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    :goto_0
    if-ge v2, v4, :cond_0

    .line 98
    .line 99
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-static {v5, v6}, Lj0/e;->b(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Lj0/e;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    iget-object v2, v0, Ls1/q0;->r:Landroid/os/Handler;

    .line 124
    .line 125
    new-instance v4, Lb1/n;

    .line 126
    .line 127
    const/16 v5, 0xd

    .line 128
    .line 129
    invoke-direct {v4, v0, v1, v3, v5}, Lb1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Ls1/c0;->c:Ls1/q0;

    .line 137
    .line 138
    iget-boolean v1, v0, Ls1/q0;->E:Z

    .line 139
    .line 140
    if-nez v1, :cond_1

    .line 141
    .line 142
    iput-boolean v2, v0, Ls1/q0;->B:Z

    .line 143
    .line 144
    :cond_1
    return-void

    .line 145
    :pswitch_1
    iget-object v0, p0, Ls1/c0;->c:Ls1/q0;

    .line 146
    .line 147
    iget-boolean v2, v0, Ls1/q0;->E:Z

    .line 148
    .line 149
    if-nez v2, :cond_2

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const/16 v2, 0x42

    .line 156
    .line 157
    new-array v2, v2, [B

    .line 158
    .line 159
    fill-array-data v2, :array_4

    .line 160
    .line 161
    .line 162
    new-array v1, v1, [B

    .line 163
    .line 164
    fill-array-data v1, :array_5

    .line 165
    .line 166
    .line 167
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v0, v1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    :cond_2
    return-void

    .line 175
    :pswitch_2
    iget-object v0, p0, Ls1/c0;->c:Ls1/q0;

    .line 176
    .line 177
    iget-boolean v2, v0, Ls1/q0;->E:Z

    .line 178
    .line 179
    if-nez v2, :cond_3

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const/16 v2, 0x38

    .line 186
    .line 187
    new-array v2, v2, [B

    .line 188
    .line 189
    fill-array-data v2, :array_6

    .line 190
    .line 191
    .line 192
    new-array v1, v1, [B

    .line 193
    .line 194
    fill-array-data v1, :array_7

    .line 195
    .line 196
    .line 197
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    :cond_3
    return-void

    .line 205
    :pswitch_3
    iget-object v0, p0, Ls1/c0;->c:Ls1/q0;

    .line 206
    .line 207
    iput-boolean v2, v0, Ls1/q0;->B:Z

    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_4
    iget-object v0, p0, Ls1/c0;->c:Ls1/q0;

    .line 211
    .line 212
    iget-boolean v1, v0, Ls1/q0;->E:Z

    .line 213
    .line 214
    if-eqz v1, :cond_4

    .line 215
    .line 216
    goto/16 :goto_4

    .line 217
    .line 218
    :cond_4
    new-instance v1, Ljava/io/File;

    .line 219
    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    sget-object v3, Ls1/q0;->L:Ljava/lang/String;

    .line 229
    .line 230
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_9

    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 240
    .line 241
    .line 242
    move-result-wide v2

    .line 243
    const-wide/16 v4, 0x0

    .line 244
    .line 245
    cmp-long v2, v2, v4

    .line 246
    .line 247
    if-nez v2, :cond_5

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_5
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 251
    .line 252
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 253
    .line 254
    .line 255
    const/4 v3, 0x1

    .line 256
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 263
    .line 264
    .line 265
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 266
    .line 267
    if-lez v4, :cond_8

    .line 268
    .line 269
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 270
    .line 271
    if-gtz v4, :cond_6

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 283
    .line 284
    const/16 v5, 0x500

    .line 285
    .line 286
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 299
    .line 300
    const/16 v6, 0x2d0

    .line 301
    .line 302
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    :goto_1
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 307
    .line 308
    mul-int/lit8 v7, v3, 0x2

    .line 309
    .line 310
    div-int/2addr v6, v7

    .line 311
    if-lt v6, v4, :cond_7

    .line 312
    .line 313
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 314
    .line 315
    div-int/2addr v6, v7

    .line 316
    if-lt v6, v5, :cond_7

    .line 317
    .line 318
    move v3, v7

    .line 319
    goto :goto_1

    .line 320
    :cond_7
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 321
    .line 322
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 323
    .line 324
    .line 325
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    goto :goto_3

    .line 336
    :cond_8
    :goto_2
    const/4 v1, 0x0

    .line 337
    :goto_3
    if-eqz v1, :cond_9

    .line 338
    .line 339
    iget-object v2, v0, Ls1/q0;->r:Landroid/os/Handler;

    .line 340
    .line 341
    new-instance v3, Le0/j2;

    .line 342
    .line 343
    const/16 v4, 0x1d

    .line 344
    .line 345
    invoke-direct {v3, v4, v0, v1}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    .line 350
    .line 351
    :cond_9
    :goto_4
    return-void

    .line 352
    :pswitch_5
    iget-object v0, p0, Ls1/c0;->c:Ls1/q0;

    .line 353
    .line 354
    invoke-virtual {v0}, Ls1/q0;->s()V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    nop

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :array_0
    .array-data 1
        -0x1et
        -0x52t
        0x52t
        0x4at
        -0x2bt
        0x3ft
        0x66t
        0x71t
        -0x16t
        -0x52t
        0x42t
        0x5dt
        -0x2ct
        0x22t
        0x2ct
        0x3et
        -0x20t
        -0x4ct
        0x5ft
        0x57t
        -0x2ct
        0x78t
        0x4ft
        0x1et
        -0x36t
        -0x72t
    .end array-data

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
    .line 392
    nop

    .line 393
    :array_1
    .array-data 1
        -0x7dt
        -0x40t
        0x36t
        0x38t
        -0x46t
        0x56t
        0x2t
        0x5ft
    .end array-data

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    :array_2
    .array-data 1
        0x1t
        0x5at
        -0x4ct
        0x69t
        -0xbt
        0x5t
        -0x70t
        0x69t
        0x9t
        0x5at
        -0x5ct
        0x7et
        -0xct
        0x18t
        -0x26t
        0x24t
        0x1t
        0x40t
        -0x4bt
        0x7ct
        -0xbt
        0x1et
        -0x73t
        0x69t
        0x2ct
        0x75t
        -0x7bt
        0x55t
        -0x27t
        0x24t
        -0x4ft
        0x15t
    .end array-data

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
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :array_3
    .array-data 1
        0x60t
        0x34t
        -0x30t
        0x1bt
        -0x66t
        0x6ct
        -0xct
        0x47t
    .end array-data

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    :array_4
    .array-data 1
        -0x5t
        0x4at
        0x2ft
        0x7dt
        0x2t
        0x51t
        0x76t
        -0x51t
        -0x56t
        0x7t
        0x4at
        0x19t
        0x51t
        0x3t
        -0x12t
        0x5et
        -0x37t
        0x57t
        0x6bt
        -0x18t
        0x3t
        0x6dt
        -0x79t
        -0x1t
        -0x6t
        0x55t
        0x2ft
        0x78t
        0x3t
        0x61t
        -0x7at
        -0x3bt
        -0x5t
        0x62t
        0x2ft
        0x75t
        -0xdt
        0x2t
        -0x29t
        -0x52t
        -0x6bt
        0x6t
        0x7at
        0x19t
        0x53t
        0x3t
        -0x1at
        -0x52t
        -0x6at
        0x6t
        0x6et
        0x18t
        0x6et
        0x3t
        -0x15t
        -0x51t
        -0x60t
        0x7t
        0x46t
        -0x18t
        0x2t
        0x57t
        -0x7at
        -0x40t
        -0x5t
        0x6at
    .end array-data

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
    nop

    .line 467
    :array_5
    .array-data 1
        0x2bt
        -0x29t
        -0x1t
        -0x38t
        -0x2dt
        -0x2dt
        0x56t
        0x7et
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_6
    .array-data 1
        0x52t
        0x1bt
        -0x4dt
        0x12t
        0x62t
        0x25t
        0x31t
        0x6dt
        0x36t
        0x56t
        -0x2dt
        0x77t
        -0x7t
        0x24t
        0xct
        0x6ct
        0x3t
        0x57t
        -0x11t
        -0x79t
        -0x6dt
        0x75t
        0x62t
        0x3t
        0x53t
        0x3t
        -0x4et
        0x27t
        -0x6et
        0x44t
        0x62t
        0x0t
        0x52t
        0x3et
        -0x4et
        0x25t
        -0x6dt
        0x78t
        -0x6et
        0x6dt
        0x3ft
        0x56t
        -0x23t
        0x77t
        -0x10t
        0x25t
        0x39t
        0x6dt
        0x3bt
        -0x5at
        -0x4et
        0x23t
        -0x6et
        0x4at
        0x62t
        0x0t
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
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    :array_7
    .array-data 1
        -0x7et
        -0x7at
        0x63t
        -0x59t
        0x42t
        -0xct
        -0x4et
        -0x43t
    .end array-data
.end method
