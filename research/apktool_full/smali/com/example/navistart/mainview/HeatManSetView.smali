.class public Lcom/example/navistart/mainview/HeatManSetView;
.super Landroidx/cardview/widget/CardView;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final synthetic t:I


# instance fields
.field public b:Z

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public f:I

.field public final g:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

.field public final h:I

.field public final i:I

.field public j:I

.field public final k:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

.field public l:I

.field public final m:Landroid/widget/ProgressBar;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->b:Z

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, p0, Lcom/example/navistart/mainview/HeatManSetView;->c:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/example/navistart/mainview/HeatManSetView;->n:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/example/navistart/mainview/HeatManSetView;->o:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/example/navistart/mainview/HeatManSetView;->p:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Le0/l2;->c:[I

    .line 22
    .line 23
    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/example/navistart/mainview/HeatManSetView;->n:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iput-object v2, p0, Lcom/example/navistart/mainview/HeatManSetView;->c:Ljava/lang/String;

    .line 39
    .line 40
    const/16 v2, 0xd

    .line 41
    .line 42
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iput v2, p0, Lcom/example/navistart/mainview/HeatManSetView;->f:I

    .line 47
    .line 48
    const/16 v2, 0xa

    .line 49
    .line 50
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iput v2, p0, Lcom/example/navistart/mainview/HeatManSetView;->d:I

    .line 55
    .line 56
    const/16 v2, 0x14

    .line 57
    .line 58
    const/16 v3, 0xc

    .line 59
    .line 60
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iput v2, p0, Lcom/example/navistart/mainview/HeatManSetView;->e:I

    .line 65
    .line 66
    const/16 v2, 0xb

    .line 67
    .line 68
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 69
    .line 70
    .line 71
    const/4 v2, 0x6

    .line 72
    const/16 v3, -0x28

    .line 73
    .line 74
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iput v2, p0, Lcom/example/navistart/mainview/HeatManSetView;->h:I

    .line 79
    .line 80
    const/16 v2, 0x28

    .line 81
    .line 82
    const/16 v3, 0x8

    .line 83
    .line 84
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput v2, p0, Lcom/example/navistart/mainview/HeatManSetView;->i:I

    .line 89
    .line 90
    const/16 v2, 0x9

    .line 91
    .line 92
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    iput v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->j:I

    .line 97
    .line 98
    const/4 v4, 0x7

    .line 99
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 100
    .line 101
    .line 102
    const/4 v4, 0x3

    .line 103
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    iput v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->l:I

    .line 108
    .line 109
    const/16 v4, 0xe

    .line 110
    .line 111
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    iput-object v5, p0, Lcom/example/navistart/mainview/HeatManSetView;->o:Ljava/lang/String;

    .line 116
    .line 117
    const/16 v5, 0xf

    .line 118
    .line 119
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    iput-object v5, p0, Lcom/example/navistart/mainview/HeatManSetView;->p:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    const v5, 0x7f0c0034

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v5, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    const p2, 0x7f09016c

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    check-cast p2, Landroid/widget/TextView;

    .line 146
    .line 147
    iget-object v5, p0, Lcom/example/navistart/mainview/HeatManSetView;->c:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    const p2, 0x7f090442

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Landroid/widget/ImageView;

    .line 160
    .line 161
    const v5, 0x7f090443

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    check-cast v5, Landroid/widget/ProgressBar;

    .line 169
    .line 170
    iput-object v5, p0, Lcom/example/navistart/mainview/HeatManSetView;->m:Landroid/widget/ProgressBar;

    .line 171
    .line 172
    iget v5, p0, Lcom/example/navistart/mainview/HeatManSetView;->l:I

    .line 173
    .line 174
    invoke-virtual {p0, v5}, Lcom/example/navistart/mainview/HeatManSetView;->setLevel(I)V

    .line 175
    .line 176
    .line 177
    const v5, 0x7f09050d

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Landroid/widget/ImageView;

    .line 185
    .line 186
    iget-object v6, p0, Lcom/example/navistart/mainview/HeatManSetView;->n:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    const v8, 0x7f070085

    .line 193
    .line 194
    .line 195
    sparse-switch v7, :sswitch_data_0

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :sswitch_0
    new-array v4, v4, [B

    .line 201
    .line 202
    fill-array-data v4, :array_0

    .line 203
    .line 204
    .line 205
    new-array v7, v3, [B

    .line 206
    .line 207
    fill-array-data v7, :array_1

    .line 208
    .line 209
    .line 210
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-eqz v4, :cond_0

    .line 219
    .line 220
    const v4, 0x7f0700b1

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    .line 228
    .line 229
    iget-object v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->m:Landroid/widget/ProgressBar;

    .line 230
    .line 231
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 232
    .line 233
    .line 234
    iget-object v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->m:Landroid/widget/ProgressBar;

    .line 235
    .line 236
    invoke-static {v4}, Lorg/apache/commons/net/util/a;->v(Landroid/widget/ProgressBar;)V

    .line 237
    .line 238
    .line 239
    iget v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->l:I

    .line 240
    .line 241
    invoke-virtual {p0, v4}, Lcom/example/navistart/mainview/HeatManSetView;->setLevel(I)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :sswitch_1
    new-array v4, v2, [B

    .line 247
    .line 248
    fill-array-data v4, :array_2

    .line 249
    .line 250
    .line 251
    new-array v5, v3, [B

    .line 252
    .line 253
    fill-array-data v5, :array_3

    .line 254
    .line 255
    .line 256
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-eqz v4, :cond_0

    .line 265
    .line 266
    const v4, 0x7f07014b

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    .line 271
    .line 272
    iget-object v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->m:Landroid/widget/ProgressBar;

    .line 273
    .line 274
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 275
    .line 276
    .line 277
    iget-object v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->m:Landroid/widget/ProgressBar;

    .line 278
    .line 279
    invoke-static {v4}, Lorg/apache/commons/net/util/a;->v(Landroid/widget/ProgressBar;)V

    .line 280
    .line 281
    .line 282
    iget v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->l:I

    .line 283
    .line 284
    invoke-virtual {p0, v4}, Lcom/example/navistart/mainview/HeatManSetView;->setLevel(I)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :sswitch_2
    new-array v4, v4, [B

    .line 290
    .line 291
    fill-array-data v4, :array_4

    .line 292
    .line 293
    .line 294
    new-array v7, v3, [B

    .line 295
    .line 296
    fill-array-data v7, :array_5

    .line 297
    .line 298
    .line 299
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-eqz v4, :cond_0

    .line 308
    .line 309
    const v4, 0x7f0700c3

    .line 310
    .line 311
    .line 312
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    .line 317
    .line 318
    iget-object v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->m:Landroid/widget/ProgressBar;

    .line 319
    .line 320
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 321
    .line 322
    .line 323
    iget-object v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->m:Landroid/widget/ProgressBar;

    .line 324
    .line 325
    invoke-static {v4}, Lorg/apache/commons/net/util/a;->v(Landroid/widget/ProgressBar;)V

    .line 326
    .line 327
    .line 328
    iget v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->l:I

    .line 329
    .line 330
    invoke-virtual {p0, v4}, Lcom/example/navistart/mainview/HeatManSetView;->setLevel(I)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_0

    .line 334
    .line 335
    :sswitch_3
    new-array v4, v3, [B

    .line 336
    .line 337
    fill-array-data v4, :array_6

    .line 338
    .line 339
    .line 340
    new-array v7, v3, [B

    .line 341
    .line 342
    fill-array-data v7, :array_7

    .line 343
    .line 344
    .line 345
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    if-eqz v4, :cond_0

    .line 354
    .line 355
    const v4, 0x7f0700b2

    .line 356
    .line 357
    .line 358
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    .line 363
    .line 364
    iget-object v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->m:Landroid/widget/ProgressBar;

    .line 365
    .line 366
    const v5, 0x7f05006f

    .line 367
    .line 368
    .line 369
    invoke-static {p1, v5}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 374
    .line 375
    .line 376
    goto :goto_0

    .line 377
    :sswitch_4
    new-array v4, v3, [B

    .line 378
    .line 379
    fill-array-data v4, :array_8

    .line 380
    .line 381
    .line 382
    new-array v7, v3, [B

    .line 383
    .line 384
    fill-array-data v7, :array_9

    .line 385
    .line 386
    .line 387
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    if-eqz v4, :cond_0

    .line 396
    .line 397
    const v4, 0x7f0700bc

    .line 398
    .line 399
    .line 400
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 401
    .line 402
    .line 403
    const v4, 0x7f070086

    .line 404
    .line 405
    .line 406
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 407
    .line 408
    .line 409
    iget-object v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->m:Landroid/widget/ProgressBar;

    .line 410
    .line 411
    const v5, 0x7f0503e8

    .line 412
    .line 413
    .line 414
    invoke-static {p1, v5}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 419
    .line 420
    .line 421
    goto :goto_0

    .line 422
    :sswitch_5
    new-array v4, v2, [B

    .line 423
    .line 424
    fill-array-data v4, :array_a

    .line 425
    .line 426
    .line 427
    new-array v7, v3, [B

    .line 428
    .line 429
    fill-array-data v7, :array_b

    .line 430
    .line 431
    .line 432
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    if-eqz v4, :cond_0

    .line 441
    .line 442
    const v4, 0x7f0700ad

    .line 443
    .line 444
    .line 445
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    .line 450
    .line 451
    iget-object v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->m:Landroid/widget/ProgressBar;

    .line 452
    .line 453
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 454
    .line 455
    .line 456
    iget-object v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->m:Landroid/widget/ProgressBar;

    .line 457
    .line 458
    invoke-static {v4}, Lorg/apache/commons/net/util/a;->v(Landroid/widget/ProgressBar;)V

    .line 459
    .line 460
    .line 461
    iget v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->l:I

    .line 462
    .line 463
    invoke-virtual {p0, v4}, Lcom/example/navistart/mainview/HeatManSetView;->setLevel(I)V

    .line 464
    .line 465
    .line 466
    :cond_0
    :goto_0
    new-instance v4, Landroidx/navigation/c;

    .line 467
    .line 468
    const/16 v5, 0x13

    .line 469
    .line 470
    invoke-direct {v4, v5, p0}, Landroidx/navigation/c;-><init>(ILjava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    .line 475
    .line 476
    const p2, 0x7f090575

    .line 477
    .line 478
    .line 479
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 480
    .line 481
    .line 482
    move-result-object p2

    .line 483
    check-cast p2, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 484
    .line 485
    iput-object p2, p0, Lcom/example/navistart/mainview/HeatManSetView;->g:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 486
    .line 487
    iget v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->d:I

    .line 488
    .line 489
    invoke-static {p2, v4}, Lorg/apache/commons/net/util/a;->w(Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;I)V

    .line 490
    .line 491
    .line 492
    iget-object p2, p0, Lcom/example/navistart/mainview/HeatManSetView;->g:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 493
    .line 494
    iget v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->e:I

    .line 495
    .line 496
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 497
    .line 498
    .line 499
    iget p2, p0, Lcom/example/navistart/mainview/HeatManSetView;->f:I

    .line 500
    .line 501
    invoke-virtual {p0, p2}, Lcom/example/navistart/mainview/HeatManSetView;->setTimeValue(I)V

    .line 502
    .line 503
    .line 504
    const p2, 0x7f090576

    .line 505
    .line 506
    .line 507
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 508
    .line 509
    .line 510
    move-result-object p2

    .line 511
    check-cast p2, Landroid/widget/TextView;

    .line 512
    .line 513
    new-array v4, v2, [B

    .line 514
    .line 515
    fill-array-data v4, :array_c

    .line 516
    .line 517
    .line 518
    new-array v5, v3, [B

    .line 519
    .line 520
    fill-array-data v5, :array_d

    .line 521
    .line 522
    .line 523
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v4

    .line 527
    iget-object v5, p0, Lcom/example/navistart/mainview/HeatManSetView;->n:Ljava/lang/String;

    .line 528
    .line 529
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    iget v5, p0, Lcom/example/navistart/mainview/HeatManSetView;->f:I

    .line 534
    .line 535
    if-eqz v4, :cond_1

    .line 536
    .line 537
    invoke-static {v5}, Lcom/example/navistart/mainview/HeatManSetView;->b(I)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    .line 543
    .line 544
    goto :goto_1

    .line 545
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    const/4 v5, 0x2

    .line 554
    new-array v5, v5, [B

    .line 555
    .line 556
    fill-array-data v5, :array_e

    .line 557
    .line 558
    .line 559
    new-array v6, v3, [B

    .line 560
    .line 561
    fill-array-data v6, :array_f

    .line 562
    .line 563
    .line 564
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    .line 577
    .line 578
    :goto_1
    iget-object v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->g:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 579
    .line 580
    new-instance v5, Lt1/f;

    .line 581
    .line 582
    invoke-direct {v5, p0, p2, v0}, Lt1/f;-><init>(Lcom/example/navistart/mainview/HeatManSetView;Landroid/widget/TextView;I)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 586
    .line 587
    .line 588
    const p2, 0x7f09050c

    .line 589
    .line 590
    .line 591
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 592
    .line 593
    .line 594
    move-result-object p2

    .line 595
    check-cast p2, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 596
    .line 597
    iput-object p2, p0, Lcom/example/navistart/mainview/HeatManSetView;->k:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 598
    .line 599
    iget v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->h:I

    .line 600
    .line 601
    invoke-static {p2, v4}, Lorg/apache/commons/net/util/a;->w(Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;I)V

    .line 602
    .line 603
    .line 604
    iget-object p2, p0, Lcom/example/navistart/mainview/HeatManSetView;->k:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 605
    .line 606
    iget v4, p0, Lcom/example/navistart/mainview/HeatManSetView;->i:I

    .line 607
    .line 608
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 609
    .line 610
    .line 611
    iget p2, p0, Lcom/example/navistart/mainview/HeatManSetView;->j:I

    .line 612
    .line 613
    invoke-virtual {p0, p2}, Lcom/example/navistart/mainview/HeatManSetView;->setTemperatureValue(I)V

    .line 614
    .line 615
    .line 616
    const p2, 0x7f09050e

    .line 617
    .line 618
    .line 619
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 620
    .line 621
    .line 622
    move-result-object p2

    .line 623
    check-cast p2, Landroid/widget/TextView;

    .line 624
    .line 625
    new-array v2, v2, [B

    .line 626
    .line 627
    fill-array-data v2, :array_10

    .line 628
    .line 629
    .line 630
    new-array v3, v3, [B

    .line 631
    .line 632
    fill-array-data v3, :array_11

    .line 633
    .line 634
    .line 635
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    iget-object v3, p0, Lcom/example/navistart/mainview/HeatManSetView;->n:Ljava/lang/String;

    .line 640
    .line 641
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    move-result v2

    .line 645
    iget v3, p0, Lcom/example/navistart/mainview/HeatManSetView;->j:I

    .line 646
    .line 647
    if-eqz v2, :cond_2

    .line 648
    .line 649
    invoke-static {v3}, Lcom/example/navistart/mainview/HeatManSetView;->b(I)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    .line 655
    .line 656
    goto :goto_2

    .line 657
    :cond_2
    invoke-static {v3}, Lcom/example/navistart/mainview/HeatManSetView;->a(I)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    .line 663
    .line 664
    :goto_2
    iget-object v2, p0, Lcom/example/navistart/mainview/HeatManSetView;->k:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 665
    .line 666
    new-instance v3, Lt1/f;

    .line 667
    .line 668
    invoke-direct {v3, p0, p2, v1}, Lt1/f;-><init>(Lcom/example/navistart/mainview/HeatManSetView;Landroid/widget/TextView;I)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 672
    .line 673
    .line 674
    const p2, 0x7f090228

    .line 675
    .line 676
    .line 677
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 678
    .line 679
    .line 680
    move-result-object p2

    .line 681
    check-cast p2, Landroid/widget/ImageView;

    .line 682
    .line 683
    new-instance p2, Landroidx/navigation/ui/a;

    .line 684
    .line 685
    const/16 v1, 0x15

    .line 686
    .line 687
    invoke-direct {p2, v1, p0, p1}, Landroidx/navigation/ui/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {p0, v0}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {p0, v0}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 697
    .line 698
    .line 699
    return-void

    .line 700
    :catchall_0
    move-exception p1

    .line 701
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 702
    .line 703
    .line 704
    throw p1

    .line 705
    :sswitch_data_0
    .sparse-switch
        -0x7ac0acd5 -> :sswitch_5
        -0x79468f86 -> :sswitch_4
        -0x3dc603cb -> :sswitch_3
        -0x121d8c5f -> :sswitch_2
        0x7a993eb5 -> :sswitch_1
        0x7c6d34c4 -> :sswitch_0
    .end sparse-switch

    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    :array_0
    .array-data 1
        -0x4at
        -0x44t
        0x49t
        0x54t
        0x56t
        0xct
        -0x36t
        0x6bt
        -0x77t
        -0x50t
        0x46t
        0x44t
        0x6bt
        0x1et
    .end array-data

    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    nop

    .line 743
    :array_1
    .array-data 1
        -0x2t
        -0x27t
        0x28t
        0x20t
        0x4t
        0x69t
        -0x55t
        0x19t
    .end array-data

    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    :array_2
    .array-data 1
        0x46t
        -0x4dt
        0x67t
        -0x73t
        -0x67t
        -0x48t
        0xbt
        0x61t
        0x66t
    .end array-data

    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    nop

    .line 761
    :array_3
    .array-data 1
        0x12t
        -0x26t
        0xat
        -0x18t
        -0x15t
        -0x10t
        0x6et
        0x0t
    .end array-data

    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    :array_4
    .array-data 1
        -0x26t
        0x21t
        0x7at
        0x44t
        0x6ft
        -0x5dt
        -0x53t
        0x3et
        -0x1ft
        0x2ct
        0x72t
        0x55t
        0x54t
        -0x52t
    .end array-data

    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    nop

    .line 781
    :array_5
    .array-data 1
        -0x6et
        0x44t
        0x1bt
        0x30t
        0x38t
        -0x36t
        -0x3dt
        0x5at
    .end array-data

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :array_6
    .array-data 1
        -0x4bt
        -0x40t
        -0x7et
        0x6at
        -0x11t
        0x57t
        0x5et
        -0x7et
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    :array_7
    .array-data 1
        -0x3t
        -0x5bt
        -0x1dt
        0x1et
        -0x44t
        0x32t
        0x3ft
        -0xat
    .end array-data

    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :array_8
    .array-data 1
        0x48t
        -0x5t
        -0x5ft
        -0x52t
        0x4at
        0x48t
        -0x6ct
        0x38t
    .end array-data

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    :array_9
    .array-data 1
        0x1et
        -0x62t
        -0x31t
        -0x26t
        0x19t
        0x2dt
        -0xbt
        0x4ct
    .end array-data

    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    :array_a
    .array-data 1
        0x46t
        -0x7et
        -0x23t
        -0xet
        0x74t
        -0x7bt
        0x4at
        -0x10t
        0x62t
    .end array-data

    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    nop

    .line 831
    :array_b
    .array-data 1
        0xet
        -0x19t
        -0x44t
        -0x7at
        0x23t
        -0x13t
        0x2ft
        -0x6bt
    .end array-data

    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    :array_c
    .array-data 1
        0x3et
        -0x3ct
        -0x3ct
        0x62t
        -0x41t
        0x44t
        0x69t
        -0x3ct
        0x1et
    .end array-data

    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    nop

    .line 849
    :array_d
    .array-data 1
        0x6at
        -0x53t
        -0x57t
        0x7t
        -0x33t
        0xct
        0xct
        -0x5bt
    .end array-data

    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    :array_e
    .array-data 1
        0x60t
        -0xft
    .end array-data

    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    nop

    .line 863
    :array_f
    .array-data 1
        0x40t
        -0x64t
        0x65t
        0x32t
        0x55t
        0x4dt
        -0x68t
        0xct
    .end array-data

    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    :array_10
    .array-data 1
        0x5et
        -0x14t
        0x28t
        -0x7ct
        -0x26t
        0x43t
        -0x27t
        -0x66t
        0x7et
    .end array-data

    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    nop

    .line 881
    :array_11
    .array-data 1
        0xat
        -0x7bt
        0x45t
        -0x1ft
        -0x58t
        0xbt
        -0x44t
        -0x5t
    .end array-data
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x2

    .line 10
    new-array p0, p0, [B

    .line 11
    .line 12
    fill-array-data p0, :array_0

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    new-array v1, v1, [B

    .line 18
    .line 19
    fill-array-data v1, :array_1

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v1, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :array_0
    .array-data 1
        0x7et
        0x55t
    .end array-data

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    nop

    .line 33
    :array_1
    .array-data 1
        -0x44t
        -0x1bt
        0x1dt
        -0x4ft
        -0x80t
        0x1ct
        0x7at
        0x17t
    .end array-data
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    new-array p0, p0, [B

    .line 11
    .line 12
    const/16 v1, 0x6d

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-byte v1, p0, v2

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    new-array v1, v1, [B

    .line 20
    .line 21
    fill-array-data v1, :array_0

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v1, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :array_0
    .array-data 1
        0x0t
        -0x7ct
        -0x5dt
        0x17t
        -0x15t
        0x7at
        -0x53t
        0x33t
    .end array-data
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public getTemperatureValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public getisEnable()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->b:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setLevel(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->m:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gt p1, v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->m:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lcom/example/navistart/mainview/HeatManSetView;->l:I

    .line 15
    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/example/navistart/mainview/HeatManSetView;->b:Z

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/example/navistart/mainview/HeatManSetView;->b:Z

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public setLevelRun(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/example/navistart/mainview/HeatManSetView;->q:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-void
.end method

.method public setTempRun(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/example/navistart/mainview/HeatManSetView;->s:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-void
.end method

.method public setTempSliderEnable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->k:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/16 p1, 0x9

    .line 14
    .line 15
    new-array p1, p1, [B

    .line 16
    .line 17
    fill-array-data p1, :array_0

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    new-array v1, v1, [B

    .line 23
    .line 24
    fill-array-data v1, :array_1

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 1
        0x35t
        -0x3et
        0x3bt
        -0x53t
        -0x65t
        0x33t
        0x21t
        0x7bt
        0x57t
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    nop

    .line 49
    :array_1
    .array-data 1
        0x16t
        -0x6t
        0x3t
        -0x14t
        -0x26t
        0x72t
        0x60t
        0x3at
    .end array-data
.end method

.method public setTemperatureValue(I)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->k:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gt p1, v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->k:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 16
    .line 17
    invoke-static {v0}, Lorg/apache/commons/net/util/a;->a(Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lt p1, v0, :cond_0

    .line 22
    .line 23
    iput p1, p0, Lcom/example/navistart/mainview/HeatManSetView;->j:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->k:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatManSetView;->k:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 32
    .line 33
    invoke-static {p1}, Lorg/apache/commons/net/util/a;->a(Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lcom/example/navistart/mainview/HeatManSetView;->j:I

    .line 38
    .line 39
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->k:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public setTimeRun(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/example/navistart/mainview/HeatManSetView;->r:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-void
.end method

.method public setTimeValue(I)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->g:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gt p1, v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->g:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 16
    .line 17
    invoke-static {v0}, Lorg/apache/commons/net/util/a;->a(Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lt p1, v0, :cond_0

    .line 22
    .line 23
    iput p1, p0, Lcom/example/navistart/mainview/HeatManSetView;->f:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->g:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/example/navistart/mainview/HeatManSetView;->g:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 32
    .line 33
    invoke-static {p1}, Lorg/apache/commons/net/util/a;->a(Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lcom/example/navistart/mainview/HeatManSetView;->f:I

    .line 38
    .line 39
    iget-object v0, p0, Lcom/example/navistart/mainview/HeatManSetView;->g:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->setProgress(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public setisEnable(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/example/navistart/mainview/HeatManSetView;->setLevel(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/example/navistart/mainview/HeatManSetView;->setLevel(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
