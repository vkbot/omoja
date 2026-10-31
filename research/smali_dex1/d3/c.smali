.class public final Ld3/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ld3/b;

.field public final b:Ld3/b;

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 16

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld3/b;

    .line 5
    .line 6
    invoke-direct {v0}, Ld3/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ld3/c;->b:Ld3/b;

    .line 10
    .line 11
    new-instance v0, Ld3/b;

    .line 12
    .line 13
    invoke-direct {v0}, Ld3/b;-><init>()V

    .line 14
    .line 15
    .line 16
    iget v1, v0, Ld3/b;->b:I

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v1, :cond_82

    .line 22
    .line 23
    const-string v5, "badge"

    .line 24
    .line 25
    :try_start_18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    :cond_20
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eq v7, v2, :cond_28

    .line 38
    .line 39
    if-ne v7, v3, :cond_20

    .line 40
    .line 41
    :cond_28
    if-ne v7, v2, :cond_5f

    .line 42
    .line 43
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_43

    .line 52
    .line 53
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 54
    .line 55
    .line 56
    move-result-object v1
    :try_end_38
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_38} :catch_41
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_38} :catch_3e

    .line 57
    invoke-interface {v1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    :goto_3c
    move-object v6, v1

    .line 62
    goto :goto_85

    .line 63
    :catch_3e
    move-exception v0

    .line 64
    :goto_3f
    move-object p1, v0

    .line 65
    goto :goto_67

    .line 66
    :catch_41
    move-exception v0

    .line 67
    goto :goto_3f

    .line 68
    :cond_43
    :try_start_43
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "Must have a <"

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, "> start tag"

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_5f
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 97
    .line 98
    const-string v0, "No start tag found"

    .line 99
    .line 100
    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
    :try_end_67
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_67} :catch_41
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_67} :catch_3e

    .line 104
    :goto_67
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    .line 105
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v3, "Can\'t load badge resource ID #0x"

    .line 109
    .line 110
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :cond_82
    const/4 v1, 0x0

    .line 132
    move v5, v4

    .line 133
    goto :goto_3c

    .line 134
    :goto_85
    if-nez v5, :cond_8a

    .line 135
    .line 136
    const v5, 0x7f14048f

    .line 137
    .line 138
    .line 139
    :cond_8a
    move v9, v5

    .line 140
    sget-object v7, La3/a;->c:[I

    .line 141
    .line 142
    new-array v10, v4, [I

    .line 143
    .line 144
    const v8, 0x7f030061

    .line 145
    .line 146
    .line 147
    move-object v5, p1

    .line 148
    invoke-static/range {v5 .. v10}, Ls3/l;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const/4 v6, 0x5

    .line 157
    const/4 v7, -0x1

    .line 158
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    int-to-float v6, v6

    .line 163
    iput v6, p0, Ld3/c;->c:F

    .line 164
    .line 165
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    const v8, 0x7f060337

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    iput v6, p0, Ld3/c;->i:I

    .line 177
    .line 178
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    const v8, 0x7f06033a

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    iput v6, p0, Ld3/c;->j:I

    .line 190
    .line 191
    const/16 v6, 0xf

    .line 192
    .line 193
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    int-to-float v6, v6

    .line 198
    iput v6, p0, Ld3/c;->d:F

    .line 199
    .line 200
    const/16 v6, 0xd

    .line 201
    .line 202
    const v8, 0x7f0600c0

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    iput v6, p0, Ld3/c;->e:F

    .line 214
    .line 215
    const/16 v6, 0x12

    .line 216
    .line 217
    const v9, 0x7f0600c4

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    invoke-virtual {p1, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    iput v6, p0, Ld3/c;->g:F

    .line 229
    .line 230
    const/4 v6, 0x4

    .line 231
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    invoke-virtual {p1, v6, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    iput v6, p0, Ld3/c;->f:F

    .line 240
    .line 241
    const/16 v6, 0xe

    .line 242
    .line 243
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    invoke-virtual {p1, v6, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    iput v6, p0, Ld3/c;->h:F

    .line 252
    .line 253
    const/16 v6, 0x19

    .line 254
    .line 255
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    iput v6, p0, Ld3/c;->k:I

    .line 260
    .line 261
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    iput v2, p0, Ld3/c;->l:I

    .line 266
    .line 267
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 268
    .line 269
    iget v6, v0, Ld3/b;->j:I

    .line 270
    .line 271
    const/4 v8, -0x2

    .line 272
    if-ne v6, v8, :cond_113

    .line 273
    .line 274
    const/16 v6, 0xff

    .line 275
    .line 276
    :cond_113
    iput v6, v2, Ld3/b;->j:I

    .line 277
    .line 278
    iget v6, v0, Ld3/b;->l:I

    .line 279
    .line 280
    if-eq v6, v8, :cond_11c

    .line 281
    .line 282
    iput v6, v2, Ld3/b;->l:I

    .line 283
    .line 284
    goto :goto_12f

    .line 285
    :cond_11c
    const/16 v2, 0x18

    .line 286
    .line 287
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    iget-object v9, p0, Ld3/c;->b:Ld3/b;

    .line 292
    .line 293
    if-eqz v6, :cond_12d

    .line 294
    .line 295
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    iput v2, v9, Ld3/b;->l:I

    .line 300
    .line 301
    goto :goto_12f

    .line 302
    :cond_12d
    iput v7, v9, Ld3/b;->l:I

    .line 303
    .line 304
    :goto_12f
    iget-object v2, v0, Ld3/b;->k:Ljava/lang/String;

    .line 305
    .line 306
    if-eqz v2, :cond_138

    .line 307
    .line 308
    iget-object v6, p0, Ld3/c;->b:Ld3/b;

    .line 309
    .line 310
    iput-object v2, v6, Ld3/b;->k:Ljava/lang/String;

    .line 311
    .line 312
    goto :goto_148

    .line 313
    :cond_138
    const/16 v2, 0x8

    .line 314
    .line 315
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 316
    .line 317
    .line 318
    move-result v6

    .line 319
    if-eqz v6, :cond_148

    .line 320
    .line 321
    iget-object v6, p0, Ld3/c;->b:Ld3/b;

    .line 322
    .line 323
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    iput-object v2, v6, Ld3/b;->k:Ljava/lang/String;

    .line 328
    .line 329
    :cond_148
    :goto_148
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 330
    .line 331
    iget-object v6, v0, Ld3/b;->p:Ljava/lang/CharSequence;

    .line 332
    .line 333
    iput-object v6, v2, Ld3/b;->p:Ljava/lang/CharSequence;

    .line 334
    .line 335
    iget-object v6, v0, Ld3/b;->q:Ljava/lang/CharSequence;

    .line 336
    .line 337
    if-nez v6, :cond_159

    .line 338
    .line 339
    const v6, 0x7f1302df

    .line 340
    .line 341
    .line 342
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    :cond_159
    iput-object v6, v2, Ld3/b;->q:Ljava/lang/CharSequence;

    .line 347
    .line 348
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 349
    .line 350
    iget v6, v0, Ld3/b;->r:I

    .line 351
    .line 352
    if-nez v6, :cond_163

    .line 353
    .line 354
    const/high16 v6, 0x7f110000

    .line 355
    .line 356
    :cond_163
    iput v6, v2, Ld3/b;->r:I

    .line 357
    .line 358
    iget v6, v0, Ld3/b;->s:I

    .line 359
    .line 360
    if-nez v6, :cond_16c

    .line 361
    .line 362
    const v6, 0x7f1302ee

    .line 363
    .line 364
    .line 365
    :cond_16c
    iput v6, v2, Ld3/b;->s:I

    .line 366
    .line 367
    iget-object v6, v0, Ld3/b;->u:Ljava/lang/Boolean;

    .line 368
    .line 369
    if-eqz v6, :cond_17b

    .line 370
    .line 371
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    if-eqz v6, :cond_179

    .line 376
    .line 377
    goto :goto_17b

    .line 378
    :cond_179
    move v6, v4

    .line 379
    goto :goto_17c

    .line 380
    :cond_17b
    :goto_17b
    move v6, v3

    .line 381
    :goto_17c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    iput-object v6, v2, Ld3/b;->u:Ljava/lang/Boolean;

    .line 386
    .line 387
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 388
    .line 389
    iget v6, v0, Ld3/b;->m:I

    .line 390
    .line 391
    if-ne v6, v8, :cond_18e

    .line 392
    .line 393
    const/16 v6, 0x16

    .line 394
    .line 395
    invoke-virtual {p1, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    :cond_18e
    iput v6, v2, Ld3/b;->m:I

    .line 400
    .line 401
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 402
    .line 403
    iget v6, v0, Ld3/b;->n:I

    .line 404
    .line 405
    if-ne v6, v8, :cond_19c

    .line 406
    .line 407
    const/16 v6, 0x17

    .line 408
    .line 409
    invoke-virtual {p1, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 410
    .line 411
    .line 412
    move-result v6

    .line 413
    :cond_19c
    iput v6, v2, Ld3/b;->n:I

    .line 414
    .line 415
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 416
    .line 417
    iget-object v6, v0, Ld3/b;->f:Ljava/lang/Integer;

    .line 418
    .line 419
    const v7, 0x7f1401a7

    .line 420
    .line 421
    .line 422
    if-nez v6, :cond_1ad

    .line 423
    .line 424
    const/4 v6, 0x6

    .line 425
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 426
    .line 427
    .line 428
    move-result v6

    .line 429
    goto :goto_1b1

    .line 430
    :cond_1ad
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 431
    .line 432
    .line 433
    move-result v6

    .line 434
    :goto_1b1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    iput-object v6, v2, Ld3/b;->f:Ljava/lang/Integer;

    .line 439
    .line 440
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 441
    .line 442
    iget-object v6, v0, Ld3/b;->g:Ljava/lang/Integer;

    .line 443
    .line 444
    if-nez v6, :cond_1c3

    .line 445
    .line 446
    const/4 v6, 0x7

    .line 447
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 448
    .line 449
    .line 450
    move-result v6

    .line 451
    goto :goto_1c7

    .line 452
    :cond_1c3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    :goto_1c7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v6

    .line 460
    iput-object v6, v2, Ld3/b;->g:Ljava/lang/Integer;

    .line 461
    .line 462
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 463
    .line 464
    iget-object v6, v0, Ld3/b;->h:Ljava/lang/Integer;

    .line 465
    .line 466
    if-nez v6, :cond_1da

    .line 467
    .line 468
    const/16 v6, 0x10

    .line 469
    .line 470
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 471
    .line 472
    .line 473
    move-result v6

    .line 474
    goto :goto_1de

    .line 475
    :cond_1da
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 476
    .line 477
    .line 478
    move-result v6

    .line 479
    :goto_1de
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    iput-object v6, v2, Ld3/b;->h:Ljava/lang/Integer;

    .line 484
    .line 485
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 486
    .line 487
    iget-object v6, v0, Ld3/b;->i:Ljava/lang/Integer;

    .line 488
    .line 489
    if-nez v6, :cond_1f1

    .line 490
    .line 491
    const/16 v6, 0x11

    .line 492
    .line 493
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 494
    .line 495
    .line 496
    move-result v6

    .line 497
    goto :goto_1f5

    .line 498
    :cond_1f1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 499
    .line 500
    .line 501
    move-result v6

    .line 502
    :goto_1f5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 503
    .line 504
    .line 505
    move-result-object v6

    .line 506
    iput-object v6, v2, Ld3/b;->i:Ljava/lang/Integer;

    .line 507
    .line 508
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 509
    .line 510
    iget-object v6, v0, Ld3/b;->c:Ljava/lang/Integer;

    .line 511
    .line 512
    if-nez v6, :cond_20a

    .line 513
    .line 514
    invoke-static {v5, p1, v3}, Lw3/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 515
    .line 516
    .line 517
    move-result-object v6

    .line 518
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    goto :goto_20e

    .line 523
    :cond_20a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 524
    .line 525
    .line 526
    move-result v6

    .line 527
    :goto_20e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    .line 529
    .line 530
    move-result-object v6

    .line 531
    iput-object v6, v2, Ld3/b;->c:Ljava/lang/Integer;

    .line 532
    .line 533
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 534
    .line 535
    iget-object v6, v0, Ld3/b;->e:Ljava/lang/Integer;

    .line 536
    .line 537
    if-nez v6, :cond_224

    .line 538
    .line 539
    const/16 v6, 0x9

    .line 540
    .line 541
    const v7, 0x7f14025c

    .line 542
    .line 543
    .line 544
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 545
    .line 546
    .line 547
    move-result v6

    .line 548
    goto :goto_228

    .line 549
    :cond_224
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 550
    .line 551
    .line 552
    move-result v6

    .line 553
    :goto_228
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 554
    .line 555
    .line 556
    move-result-object v6

    .line 557
    iput-object v6, v2, Ld3/b;->e:Ljava/lang/Integer;

    .line 558
    .line 559
    iget-object v2, v0, Ld3/b;->d:Ljava/lang/Integer;

    .line 560
    .line 561
    const/4 v6, 0x3

    .line 562
    const/16 v7, 0x1a

    .line 563
    .line 564
    if-eqz v2, :cond_23b

    .line 565
    .line 566
    iget-object v3, p0, Ld3/c;->b:Ld3/b;

    .line 567
    .line 568
    iput-object v2, v3, Ld3/b;->d:Ljava/lang/Integer;

    .line 569
    .line 570
    goto/16 :goto_2d8

    .line 571
    .line 572
    :cond_23b
    const/16 v2, 0xa

    .line 573
    .line 574
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 575
    .line 576
    .line 577
    move-result v8

    .line 578
    iget-object v9, p0, Ld3/c;->b:Ld3/b;

    .line 579
    .line 580
    if-eqz v8, :cond_255

    .line 581
    .line 582
    invoke-static {v5, p1, v2}, Lw3/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 587
    .line 588
    .line 589
    move-result v2

    .line 590
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    iput-object v2, v9, Ld3/b;->d:Ljava/lang/Integer;

    .line 595
    .line 596
    goto/16 :goto_2d8

    .line 597
    .line 598
    :cond_255
    iget-object v2, v9, Ld3/b;->e:Ljava/lang/Integer;

    .line 599
    .line 600
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    sget-object v8, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 605
    .line 606
    invoke-virtual {v5, v2, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 607
    .line 608
    .line 609
    move-result-object v8

    .line 610
    sget v9, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 611
    .line 612
    const/4 v10, 0x0

    .line 613
    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 614
    .line 615
    .line 616
    sget v9, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 617
    .line 618
    invoke-static {v5, v8, v9}, Lw3/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 619
    .line 620
    .line 621
    move-result-object v9

    .line 622
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    .line 623
    .line 624
    invoke-static {v5, v8, v11}, Lw3/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 625
    .line 626
    .line 627
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    .line 628
    .line 629
    invoke-static {v5, v8, v11}, Lw3/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 630
    .line 631
    .line 632
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    .line 633
    .line 634
    invoke-virtual {v8, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 635
    .line 636
    .line 637
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    .line 638
    .line 639
    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 640
    .line 641
    .line 642
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 643
    .line 644
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    .line 645
    .line 646
    invoke-virtual {v8, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 647
    .line 648
    .line 649
    move-result v13

    .line 650
    if-eqz v13, :cond_28c

    .line 651
    .line 652
    goto :goto_28d

    .line 653
    :cond_28c
    move v11, v12

    .line 654
    :goto_28d
    invoke-virtual {v8, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 655
    .line 656
    .line 657
    invoke-virtual {v8, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    .line 661
    .line 662
    invoke-virtual {v8, v11, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 663
    .line 664
    .line 665
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    .line 666
    .line 667
    invoke-static {v5, v8, v11}, Lw3/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 668
    .line 669
    .line 670
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    .line 671
    .line 672
    invoke-virtual {v8, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 673
    .line 674
    .line 675
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    .line 676
    .line 677
    invoke-virtual {v8, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 678
    .line 679
    .line 680
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    .line 681
    .line 682
    invoke-virtual {v8, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 683
    .line 684
    .line 685
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 686
    .line 687
    .line 688
    sget-object v8, La3/a;->z:[I

    .line 689
    .line 690
    invoke-virtual {v5, v2, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 695
    .line 696
    .line 697
    invoke-virtual {v2, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 698
    .line 699
    .line 700
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 701
    .line 702
    if-lt v5, v7, :cond_2c9

    .line 703
    .line 704
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    if-eqz v5, :cond_2c6

    .line 709
    .line 710
    move v3, v6

    .line 711
    :cond_2c6
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    :cond_2c9
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 715
    .line 716
    .line 717
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 718
    .line 719
    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 724
    .line 725
    .line 726
    move-result-object v3

    .line 727
    iput-object v3, v2, Ld3/b;->d:Ljava/lang/Integer;

    .line 728
    .line 729
    :goto_2d8
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 730
    .line 731
    iget-object v3, v0, Ld3/b;->t:Ljava/lang/Integer;

    .line 732
    .line 733
    if-nez v3, :cond_2e6

    .line 734
    .line 735
    const v3, 0x800035

    .line 736
    .line 737
    .line 738
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    goto :goto_2ea

    .line 743
    :cond_2e6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 744
    .line 745
    .line 746
    move-result v3

    .line 747
    :goto_2ea
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 748
    .line 749
    .line 750
    move-result-object v3

    .line 751
    iput-object v3, v2, Ld3/b;->t:Ljava/lang/Integer;

    .line 752
    .line 753
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 754
    .line 755
    iget-object v3, v0, Ld3/b;->v:Ljava/lang/Integer;

    .line 756
    .line 757
    if-nez v3, :cond_304

    .line 758
    .line 759
    const v3, 0x7f060338

    .line 760
    .line 761
    .line 762
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 763
    .line 764
    .line 765
    move-result v3

    .line 766
    const/16 v5, 0xc

    .line 767
    .line 768
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 769
    .line 770
    .line 771
    move-result v3

    .line 772
    goto :goto_308

    .line 773
    :cond_304
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 774
    .line 775
    .line 776
    move-result v3

    .line 777
    :goto_308
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    iput-object v3, v2, Ld3/b;->v:Ljava/lang/Integer;

    .line 782
    .line 783
    iget-object v2, p0, Ld3/c;->b:Ld3/b;

    .line 784
    .line 785
    iget-object v3, v0, Ld3/b;->w:Ljava/lang/Integer;

    .line 786
    .line 787
    if-nez v3, :cond_322

    .line 788
    .line 789
    const v3, 0x7f0600c6

    .line 790
    .line 791
    .line 792
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 793
    .line 794
    .line 795
    move-result v1

    .line 796
    const/16 v3, 0xb

    .line 797
    .line 798
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 799
    .line 800
    .line 801
    move-result v1

    .line 802
    goto :goto_326

    .line 803
    :cond_322
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 804
    .line 805
    .line 806
    move-result v1

    .line 807
    :goto_326
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    iput-object v1, v2, Ld3/b;->w:Ljava/lang/Integer;

    .line 812
    .line 813
    iget-object v1, p0, Ld3/c;->b:Ld3/b;

    .line 814
    .line 815
    iget-object v2, v0, Ld3/b;->x:Ljava/lang/Integer;

    .line 816
    .line 817
    if-nez v2, :cond_339

    .line 818
    .line 819
    const/16 v2, 0x13

    .line 820
    .line 821
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 822
    .line 823
    .line 824
    move-result v2

    .line 825
    goto :goto_33d

    .line 826
    :cond_339
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 827
    .line 828
    .line 829
    move-result v2

    .line 830
    :goto_33d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 831
    .line 832
    .line 833
    move-result-object v2

    .line 834
    iput-object v2, v1, Ld3/b;->x:Ljava/lang/Integer;

    .line 835
    .line 836
    iget-object v1, p0, Ld3/c;->b:Ld3/b;

    .line 837
    .line 838
    iget-object v2, v0, Ld3/b;->y:Ljava/lang/Integer;

    .line 839
    .line 840
    if-nez v2, :cond_34e

    .line 841
    .line 842
    invoke-virtual {p1, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 843
    .line 844
    .line 845
    move-result v2

    .line 846
    goto :goto_352

    .line 847
    :cond_34e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 848
    .line 849
    .line 850
    move-result v2

    .line 851
    :goto_352
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 852
    .line 853
    .line 854
    move-result-object v2

    .line 855
    iput-object v2, v1, Ld3/b;->y:Ljava/lang/Integer;

    .line 856
    .line 857
    iget-object v1, p0, Ld3/c;->b:Ld3/b;

    .line 858
    .line 859
    iget-object v2, v0, Ld3/b;->z:Ljava/lang/Integer;

    .line 860
    .line 861
    if-nez v2, :cond_36b

    .line 862
    .line 863
    iget-object v2, v1, Ld3/b;->x:Ljava/lang/Integer;

    .line 864
    .line 865
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 866
    .line 867
    .line 868
    move-result v2

    .line 869
    const/16 v3, 0x14

    .line 870
    .line 871
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 872
    .line 873
    .line 874
    move-result v2

    .line 875
    goto :goto_36f

    .line 876
    :cond_36b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 877
    .line 878
    .line 879
    move-result v2

    .line 880
    :goto_36f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 881
    .line 882
    .line 883
    move-result-object v2

    .line 884
    iput-object v2, v1, Ld3/b;->z:Ljava/lang/Integer;

    .line 885
    .line 886
    iget-object v1, p0, Ld3/c;->b:Ld3/b;

    .line 887
    .line 888
    iget-object v2, v0, Ld3/b;->A:Ljava/lang/Integer;

    .line 889
    .line 890
    if-nez v2, :cond_388

    .line 891
    .line 892
    iget-object v2, v1, Ld3/b;->y:Ljava/lang/Integer;

    .line 893
    .line 894
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 895
    .line 896
    .line 897
    move-result v2

    .line 898
    const/16 v3, 0x1b

    .line 899
    .line 900
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 901
    .line 902
    .line 903
    move-result v2

    .line 904
    goto :goto_38c

    .line 905
    :cond_388
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 906
    .line 907
    .line 908
    move-result v2

    .line 909
    :goto_38c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 910
    .line 911
    .line 912
    move-result-object v2

    .line 913
    iput-object v2, v1, Ld3/b;->A:Ljava/lang/Integer;

    .line 914
    .line 915
    iget-object v1, p0, Ld3/c;->b:Ld3/b;

    .line 916
    .line 917
    iget-object v2, v0, Ld3/b;->D:Ljava/lang/Integer;

    .line 918
    .line 919
    if-nez v2, :cond_39f

    .line 920
    .line 921
    const/16 v2, 0x15

    .line 922
    .line 923
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 924
    .line 925
    .line 926
    move-result v2

    .line 927
    goto :goto_3a3

    .line 928
    :cond_39f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 929
    .line 930
    .line 931
    move-result v2

    .line 932
    :goto_3a3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 933
    .line 934
    .line 935
    move-result-object v2

    .line 936
    iput-object v2, v1, Ld3/b;->D:Ljava/lang/Integer;

    .line 937
    .line 938
    iget-object v1, p0, Ld3/c;->b:Ld3/b;

    .line 939
    .line 940
    iget-object v2, v0, Ld3/b;->B:Ljava/lang/Integer;

    .line 941
    .line 942
    if-nez v2, :cond_3b1

    .line 943
    .line 944
    move v2, v4

    .line 945
    goto :goto_3b5

    .line 946
    :cond_3b1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 947
    .line 948
    .line 949
    move-result v2

    .line 950
    :goto_3b5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 951
    .line 952
    .line 953
    move-result-object v2

    .line 954
    iput-object v2, v1, Ld3/b;->B:Ljava/lang/Integer;

    .line 955
    .line 956
    iget-object v1, p0, Ld3/c;->b:Ld3/b;

    .line 957
    .line 958
    iget-object v2, v0, Ld3/b;->C:Ljava/lang/Integer;

    .line 959
    .line 960
    if-nez v2, :cond_3c3

    .line 961
    .line 962
    move v2, v4

    .line 963
    goto :goto_3c7

    .line 964
    :cond_3c3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 965
    .line 966
    .line 967
    move-result v2

    .line 968
    :goto_3c7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 969
    .line 970
    .line 971
    move-result-object v2

    .line 972
    iput-object v2, v1, Ld3/b;->C:Ljava/lang/Integer;

    .line 973
    .line 974
    iget-object v1, p0, Ld3/c;->b:Ld3/b;

    .line 975
    .line 976
    iget-object v2, v0, Ld3/b;->E:Ljava/lang/Boolean;

    .line 977
    .line 978
    if-nez v2, :cond_3d8

    .line 979
    .line 980
    invoke-virtual {p1, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 981
    .line 982
    .line 983
    move-result v2

    .line 984
    goto :goto_3dc

    .line 985
    :cond_3d8
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 986
    .line 987
    .line 988
    move-result v2

    .line 989
    :goto_3dc
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 990
    .line 991
    .line 992
    move-result-object v2

    .line 993
    iput-object v2, v1, Ld3/b;->E:Ljava/lang/Boolean;

    .line 994
    .line 995
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 996
    .line 997
    .line 998
    iget-object p1, v0, Ld3/b;->o:Ljava/util/Locale;

    .line 999
    .line 1000
    iget-object v1, p0, Ld3/c;->b:Ld3/b;

    .line 1001
    .line 1002
    if-nez p1, :cond_3f4

    .line 1003
    .line 1004
    sget-object p1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 1005
    .line 1006
    invoke-static {p1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    .line 1007
    .line 1008
    .line 1009
    move-result-object p1

    .line 1010
    iput-object p1, v1, Ld3/b;->o:Ljava/util/Locale;

    .line 1011
    .line 1012
    goto :goto_3f6

    .line 1013
    :cond_3f4
    iput-object p1, v1, Ld3/b;->o:Ljava/util/Locale;

    .line 1014
    .line 1015
    :goto_3f6
    iput-object v0, p0, Ld3/c;->a:Ld3/b;

    .line 1016
    .line 1017
    return-void
.end method
