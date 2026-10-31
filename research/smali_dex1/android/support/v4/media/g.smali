.class public final Landroid/support/v4/media/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroid/support/v4/media/g;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 15

    .line 1
    iget v0, p0, Landroid/support/v4/media/g;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0xffffff

    .line 5
    .line 6
    .line 7
    const/high16 v3, -0x40800000    # -1.0f

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    const/high16 v5, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, -0x2

    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v9, 0x0

    .line 16
    packed-switch v0, :pswitch_data_38c

    .line 17
    .line 18
    .line 19
    new-instance v0, Lz1/d;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, v0, Lz1/d;->b:F

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, v0, Lz1/d;->c:F

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2b

    .line 41
    .line 42
    move v1, v8

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v1, v9

    .line 45
    :goto_2c
    iput-boolean v1, v0, Lz1/d;->i:Z

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput v1, v0, Lz1/d;->d:F

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput v1, v0, Lz1/d;->e:I

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iput v1, v0, Lz1/d;->f:I

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iput v1, v0, Lz1/d;->g:I

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iput v1, v0, Lz1/d;->h:I

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_54

    .line 82
    .line 83
    move v1, v8

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    move v1, v9

    .line 86
    :goto_55
    iput-boolean v1, v0, Lz1/d;->j:Z

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_5f

    .line 93
    .line 94
    move v1, v8

    .line 95
    goto :goto_60

    .line 96
    :cond_5f
    move v1, v9

    .line 97
    :goto_60
    iput-boolean v1, v0, Lz1/d;->k:Z

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_6a

    .line 104
    .line 105
    move v1, v8

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move v1, v9

    .line 108
    :goto_6b
    iput-boolean v1, v0, Lz1/d;->l:Z

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_75

    .line 115
    .line 116
    move v1, v8

    .line 117
    goto :goto_76

    .line 118
    :cond_75
    move v1, v9

    .line 119
    :goto_76
    iput-boolean v1, v0, Lz1/d;->m:Z

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_80

    .line 126
    .line 127
    move v1, v8

    .line 128
    goto :goto_81

    .line 129
    :cond_80
    move v1, v9

    .line 130
    :goto_81
    iput-boolean v1, v0, Lz1/d;->n:Z

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_8a

    .line 137
    .line 138
    goto :goto_8b

    .line 139
    :cond_8a
    move v8, v9

    .line 140
    :goto_8b
    iput-boolean v8, v0, Lz1/d;->o:Z

    .line 141
    .line 142
    return-object v0

    .line 143
    :pswitch_8e
    new-instance v0, Lo2/i;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    iput v1, v0, Lo2/i;->b:I

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    iput p1, v0, Lo2/i;->c:I

    .line 159
    .line 160
    return-object v0

    .line 161
    :pswitch_a0
    new-instance v0, Lo2/g;

    .line 162
    .line 163
    invoke-direct {v0, v7, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 164
    .line 165
    .line 166
    iput v6, v0, Lo2/g;->b:F

    .line 167
    .line 168
    iput v5, v0, Lo2/g;->c:F

    .line 169
    .line 170
    iput v4, v0, Lo2/g;->d:I

    .line 171
    .line 172
    iput v3, v0, Lo2/g;->e:F

    .line 173
    .line 174
    iput v2, v0, Lo2/g;->h:I

    .line 175
    .line 176
    iput v2, v0, Lo2/g;->i:I

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    iput v1, v0, Lo2/g;->b:F

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    iput v1, v0, Lo2/g;->c:F

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, v0, Lo2/g;->d:I

    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    iput v1, v0, Lo2/g;->e:F

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    iput v1, v0, Lo2/g;->f:I

    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    iput v1, v0, Lo2/g;->g:I

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    iput v1, v0, Lo2/g;->h:I

    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    iput v1, v0, Lo2/g;->i:I

    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_e8

    .line 231
    .line 232
    goto :goto_e9

    .line 233
    :cond_e8
    move v8, v9

    .line 234
    :goto_e9
    iput-boolean v8, v0, Lo2/g;->j:Z

    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 241
    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 247
    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 253
    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 259
    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 265
    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 271
    .line 272
    return-object v0

    .line 273
    :pswitch_110
    new-instance v0, Lo2/e;

    .line 274
    .line 275
    invoke-direct {v0, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 276
    .line 277
    .line 278
    iput v8, v0, Lo2/e;->b:I

    .line 279
    .line 280
    iput v6, v0, Lo2/e;->c:F

    .line 281
    .line 282
    iput v5, v0, Lo2/e;->d:F

    .line 283
    .line 284
    iput v4, v0, Lo2/e;->e:I

    .line 285
    .line 286
    iput v3, v0, Lo2/e;->f:F

    .line 287
    .line 288
    iput v4, v0, Lo2/e;->g:I

    .line 289
    .line 290
    iput v4, v0, Lo2/e;->h:I

    .line 291
    .line 292
    iput v2, v0, Lo2/e;->i:I

    .line 293
    .line 294
    iput v2, v0, Lo2/e;->j:I

    .line 295
    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    iput v1, v0, Lo2/e;->b:I

    .line 301
    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    iput v1, v0, Lo2/e;->c:F

    .line 307
    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    iput v1, v0, Lo2/e;->d:F

    .line 313
    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    iput v1, v0, Lo2/e;->e:I

    .line 319
    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    iput v1, v0, Lo2/e;->f:F

    .line 325
    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    iput v1, v0, Lo2/e;->g:I

    .line 331
    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    iput v1, v0, Lo2/e;->h:I

    .line 337
    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    iput v1, v0, Lo2/e;->i:I

    .line 343
    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    iput v1, v0, Lo2/e;->j:I

    .line 349
    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_164

    .line 355
    .line 356
    goto :goto_165

    .line 357
    :cond_164
    move v8, v9

    .line 358
    :goto_165
    iput-boolean v8, v0, Lo2/e;->k:Z

    .line 359
    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 365
    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 371
    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 377
    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 383
    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 389
    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 395
    .line 396
    return-object v0

    .line 397
    :pswitch_18c
    new-instance v0, Lk3/b;

    .line 398
    .line 399
    invoke-direct {v0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 400
    .line 401
    .line 402
    const-class v1, Lk3/b;

    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    check-cast p1, Ljava/lang/Integer;

    .line 413
    .line 414
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    iput p1, v0, Lk3/b;->b:I

    .line 419
    .line 420
    return-object v0

    .line 421
    :pswitch_1a4
    new-instance v0, Ld3/b;

    .line 422
    .line 423
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 424
    .line 425
    .line 426
    const/16 v1, 0xff

    .line 427
    .line 428
    iput v1, v0, Ld3/b;->j:I

    .line 429
    .line 430
    iput v7, v0, Ld3/b;->l:I

    .line 431
    .line 432
    iput v7, v0, Ld3/b;->m:I

    .line 433
    .line 434
    iput v7, v0, Ld3/b;->n:I

    .line 435
    .line 436
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 437
    .line 438
    iput-object v1, v0, Ld3/b;->u:Ljava/lang/Boolean;

    .line 439
    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    iput v1, v0, Ld3/b;->b:I

    .line 445
    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    check-cast v1, Ljava/lang/Integer;

    .line 451
    .line 452
    iput-object v1, v0, Ld3/b;->c:Ljava/lang/Integer;

    .line 453
    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    check-cast v1, Ljava/lang/Integer;

    .line 459
    .line 460
    iput-object v1, v0, Ld3/b;->d:Ljava/lang/Integer;

    .line 461
    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    check-cast v1, Ljava/lang/Integer;

    .line 467
    .line 468
    iput-object v1, v0, Ld3/b;->e:Ljava/lang/Integer;

    .line 469
    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    check-cast v1, Ljava/lang/Integer;

    .line 475
    .line 476
    iput-object v1, v0, Ld3/b;->f:Ljava/lang/Integer;

    .line 477
    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    check-cast v1, Ljava/lang/Integer;

    .line 483
    .line 484
    iput-object v1, v0, Ld3/b;->g:Ljava/lang/Integer;

    .line 485
    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    check-cast v1, Ljava/lang/Integer;

    .line 491
    .line 492
    iput-object v1, v0, Ld3/b;->h:Ljava/lang/Integer;

    .line 493
    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    check-cast v1, Ljava/lang/Integer;

    .line 499
    .line 500
    iput-object v1, v0, Ld3/b;->i:Ljava/lang/Integer;

    .line 501
    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    iput v1, v0, Ld3/b;->j:I

    .line 507
    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    iput-object v1, v0, Ld3/b;->k:Ljava/lang/String;

    .line 513
    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    iput v1, v0, Ld3/b;->l:I

    .line 519
    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    iput v1, v0, Ld3/b;->m:I

    .line 525
    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    iput v1, v0, Ld3/b;->n:I

    .line 531
    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    iput-object v1, v0, Ld3/b;->p:Ljava/lang/CharSequence;

    .line 537
    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    iput-object v1, v0, Ld3/b;->q:Ljava/lang/CharSequence;

    .line 543
    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    iput v1, v0, Ld3/b;->r:I

    .line 549
    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    check-cast v1, Ljava/lang/Integer;

    .line 555
    .line 556
    iput-object v1, v0, Ld3/b;->t:Ljava/lang/Integer;

    .line 557
    .line 558
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    check-cast v1, Ljava/lang/Integer;

    .line 563
    .line 564
    iput-object v1, v0, Ld3/b;->v:Ljava/lang/Integer;

    .line 565
    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    check-cast v1, Ljava/lang/Integer;

    .line 571
    .line 572
    iput-object v1, v0, Ld3/b;->w:Ljava/lang/Integer;

    .line 573
    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    check-cast v1, Ljava/lang/Integer;

    .line 579
    .line 580
    iput-object v1, v0, Ld3/b;->x:Ljava/lang/Integer;

    .line 581
    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    check-cast v1, Ljava/lang/Integer;

    .line 587
    .line 588
    iput-object v1, v0, Ld3/b;->y:Ljava/lang/Integer;

    .line 589
    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    check-cast v1, Ljava/lang/Integer;

    .line 595
    .line 596
    iput-object v1, v0, Ld3/b;->z:Ljava/lang/Integer;

    .line 597
    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    check-cast v1, Ljava/lang/Integer;

    .line 603
    .line 604
    iput-object v1, v0, Ld3/b;->A:Ljava/lang/Integer;

    .line 605
    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    check-cast v1, Ljava/lang/Integer;

    .line 611
    .line 612
    iput-object v1, v0, Ld3/b;->D:Ljava/lang/Integer;

    .line 613
    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    check-cast v1, Ljava/lang/Integer;

    .line 619
    .line 620
    iput-object v1, v0, Ld3/b;->B:Ljava/lang/Integer;

    .line 621
    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    check-cast v1, Ljava/lang/Integer;

    .line 627
    .line 628
    iput-object v1, v0, Ld3/b;->C:Ljava/lang/Integer;

    .line 629
    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    check-cast v1, Ljava/lang/Boolean;

    .line 635
    .line 636
    iput-object v1, v0, Ld3/b;->u:Ljava/lang/Boolean;

    .line 637
    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    check-cast v1, Ljava/util/Locale;

    .line 643
    .line 644
    iput-object v1, v0, Ld3/b;->o:Ljava/util/Locale;

    .line 645
    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    check-cast v1, Ljava/lang/Boolean;

    .line 651
    .line 652
    iput-object v1, v0, Ld3/b;->E:Ljava/lang/Boolean;

    .line 653
    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    check-cast p1, Ljava/lang/Integer;

    .line 659
    .line 660
    iput-object p1, v0, Ld3/b;->F:Ljava/lang/Integer;

    .line 661
    .line 662
    return-object v0

    .line 663
    :pswitch_296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 664
    .line 665
    .line 666
    move-result v0

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 668
    .line 669
    .line 670
    move-result p1

    .line 671
    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/r;->q(II)Lcom/google/android/material/datepicker/r;

    .line 672
    .line 673
    .line 674
    move-result-object p1

    .line 675
    return-object p1

    .line 676
    :pswitch_2a3
    new-instance v0, Lcom/google/android/material/datepicker/d;

    .line 677
    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 679
    .line 680
    .line 681
    move-result-wide v1

    .line 682
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/d;-><init>(J)V

    .line 683
    .line 684
    .line 685
    return-object v0

    .line 686
    :pswitch_2ad
    const-class v0, Lcom/google/android/material/datepicker/r;

    .line 687
    .line 688
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    move-object v3, v1

    .line 697
    check-cast v3, Lcom/google/android/material/datepicker/r;

    .line 698
    .line 699
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    move-object v4, v1

    .line 708
    check-cast v4, Lcom/google/android/material/datepicker/r;

    .line 709
    .line 710
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    move-object v6, v0

    .line 719
    check-cast v6, Lcom/google/android/material/datepicker/r;

    .line 720
    .line 721
    const-class v0, Lcom/google/android/material/datepicker/d;

    .line 722
    .line 723
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    move-object v5, v0

    .line 732
    check-cast v5, Lcom/google/android/material/datepicker/d;

    .line 733
    .line 734
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 735
    .line 736
    .line 737
    move-result v7

    .line 738
    new-instance v2, Lcom/google/android/material/datepicker/b;

    .line 739
    .line 740
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/datepicker/b;-><init>(Lcom/google/android/material/datepicker/r;Lcom/google/android/material/datepicker/r;Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/r;I)V

    .line 741
    .line 742
    .line 743
    return-object v2

    .line 744
    :pswitch_2e7
    new-instance v0, Lb/d;

    .line 745
    .line 746
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 747
    .line 748
    .line 749
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 750
    .line 751
    .line 752
    move-result-object p1

    .line 753
    sget v2, Lb/c;->d:I

    .line 754
    .line 755
    if-nez p1, :cond_2f5

    .line 756
    .line 757
    goto :goto_30b

    .line 758
    :cond_2f5
    sget-object v1, Lb/b;->b:Ljava/lang/String;

    .line 759
    .line 760
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    if-eqz v1, :cond_304

    .line 765
    .line 766
    instance-of v2, v1, Lb/b;

    .line 767
    .line 768
    if-eqz v2, :cond_304

    .line 769
    .line 770
    check-cast v1, Lb/b;

    .line 771
    .line 772
    goto :goto_30b

    .line 773
    :cond_304
    new-instance v1, Lb/a;

    .line 774
    .line 775
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 776
    .line 777
    .line 778
    iput-object p1, v1, Lb/a;->c:Landroid/os/IBinder;

    .line 779
    .line 780
    :goto_30b
    iput-object v1, v0, Lb/d;->b:Lb/b;

    .line 781
    .line 782
    return-object v0

    .line 783
    :pswitch_30e
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    .line 784
    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 786
    .line 787
    .line 788
    move-result v1

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 790
    .line 791
    .line 792
    move-result p1

    .line 793
    invoke-direct {v0, v1, p1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    .line 794
    .line 795
    .line 796
    return-object v0

    .line 797
    :pswitch_31c
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat;

    .line 798
    .line 799
    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    .line 800
    .line 801
    .line 802
    return-object v0

    .line 803
    :pswitch_322
    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 804
    .line 805
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object p1

    .line 809
    if-eqz p1, :cond_385

    .line 810
    .line 811
    check-cast p1, Landroid/media/MediaDescription;

    .line 812
    .line 813
    invoke-static {p1}, Landroid/support/v4/media/j;->g(Landroid/media/MediaDescription;)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v3

    .line 817
    invoke-static {p1}, Landroid/support/v4/media/j;->i(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    .line 818
    .line 819
    .line 820
    move-result-object v4

    .line 821
    invoke-static {p1}, Landroid/support/v4/media/j;->h(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    .line 822
    .line 823
    .line 824
    move-result-object v5

    .line 825
    invoke-static {p1}, Landroid/support/v4/media/j;->c(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    .line 826
    .line 827
    .line 828
    move-result-object v6

    .line 829
    invoke-static {p1}, Landroid/support/v4/media/j;->e(Landroid/media/MediaDescription;)Landroid/graphics/Bitmap;

    .line 830
    .line 831
    .line 832
    move-result-object v7

    .line 833
    invoke-static {p1}, Landroid/support/v4/media/j;->f(Landroid/media/MediaDescription;)Landroid/net/Uri;

    .line 834
    .line 835
    .line 836
    move-result-object v8

    .line 837
    invoke-static {p1}, Landroid/support/v4/media/j;->d(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    if-eqz v0, :cond_34e

    .line 842
    .line 843
    invoke-static {v0}, Landroid/support/v4/media/session/h;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    :cond_34e
    const-string v2, "android.support.v4.media.description.MEDIA_URI"

    .line 848
    .line 849
    if-eqz v0, :cond_359

    .line 850
    .line 851
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 852
    .line 853
    .line 854
    move-result-object v9

    .line 855
    check-cast v9, Landroid/net/Uri;

    .line 856
    .line 857
    goto :goto_35a

    .line 858
    :cond_359
    move-object v9, v1

    .line 859
    :goto_35a
    if-eqz v9, :cond_372

    .line 860
    .line 861
    const-string v10, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    .line 862
    .line 863
    invoke-virtual {v0, v10}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 864
    .line 865
    .line 866
    move-result v11

    .line 867
    if-eqz v11, :cond_36c

    .line 868
    .line 869
    invoke-virtual {v0}, Landroid/os/BaseBundle;->size()I

    .line 870
    .line 871
    .line 872
    move-result v11

    .line 873
    const/4 v12, 0x2

    .line 874
    if-ne v11, v12, :cond_36c

    .line 875
    .line 876
    goto :goto_373

    .line 877
    :cond_36c
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    :cond_372
    move-object v1, v0

    .line 884
    :goto_373
    if-eqz v9, :cond_377

    .line 885
    .line 886
    :goto_375
    move-object v10, v9

    .line 887
    goto :goto_37c

    .line 888
    :cond_377
    invoke-static {p1}, Landroid/support/v4/media/k;->a(Landroid/media/MediaDescription;)Landroid/net/Uri;

    .line 889
    .line 890
    .line 891
    move-result-object v9

    .line 892
    goto :goto_375

    .line 893
    :goto_37c
    new-instance v2, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 894
    .line 895
    move-object v9, v1

    .line 896
    invoke-direct/range {v2 .. v10}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 897
    .line 898
    .line 899
    iput-object p1, v2, Landroid/support/v4/media/MediaDescriptionCompat;->j:Landroid/media/MediaDescription;

    .line 900
    .line 901
    move-object v1, v2

    .line 902
    :cond_385
    return-object v1

    .line 903
    :pswitch_386
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 904
    .line 905
    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;)V

    .line 906
    .line 907
    .line 908
    return-object v0

    .line 909
    :pswitch_data_38c
    .packed-switch 0x0
        :pswitch_386
        :pswitch_322
        :pswitch_31c
        :pswitch_30e
        :pswitch_2e7
        :pswitch_2ad
        :pswitch_2a3
        :pswitch_296
        :pswitch_1a4
        :pswitch_18c
        :pswitch_110
        :pswitch_a0
        :pswitch_8e
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Landroid/support/v4/media/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_30

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Lz1/d;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_8
    new-array p1, p1, [Lo2/i;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_b
    new-array p1, p1, [Lo2/g;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_e
    new-array p1, p1, [Lo2/e;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_11
    new-array p1, p1, [Lk3/b;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_14
    new-array p1, p1, [Ld3/b;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_17
    new-array p1, p1, [Lcom/google/android/material/datepicker/r;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_1a
    new-array p1, p1, [Lcom/google/android/material/datepicker/d;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_1d
    new-array p1, p1, [Lcom/google/android/material/datepicker/b;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_20
    new-array p1, p1, [Lb/d;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_23
    new-array p1, p1, [Landroid/support/v4/media/RatingCompat;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_26
    new-array p1, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_29
    new-array p1, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_2c
    new-array p1, p1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 46
    .line 47
    return-object p1

    .line 48
    nop

    .line 49
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
