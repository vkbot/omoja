.class public final synthetic Lr0/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Lr0/e;Landroidx/appcompat/widget/SwitchCompat;[Landroid/widget/Spinner;Le0/g;Landroid/app/AlertDialog;)V
    .locals 0

    .line 1
    const/4 p4, 0x0

    .line 2
    iput p4, p0, Lr0/c;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lr0/c;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lr0/c;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lr0/c;->e:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p5, p0, Lr0/c;->f:Landroid/view/KeyEvent$Callback;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Ls1/k;[Landroid/app/AlertDialog;Landroid/widget/RadioGroup;Landroid/widget/TextView;)V
    .locals 1

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lr0/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lr0/c;->d:Ljava/lang/Object;

    iput-object p3, p0, Lr0/c;->e:Ljava/lang/Object;

    iput-object p4, p0, Lr0/c;->f:Landroid/view/KeyEvent$Callback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget p1, p0, Lr0/c;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lr0/c;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Ls1/k;

    .line 12
    .line 13
    iget-object v2, p1, Ls1/k;->b:Ls1/r;

    .line 14
    .line 15
    iget-object v3, p0, Lr0/c;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, [Landroid/app/AlertDialog;

    .line 18
    .line 19
    iget-object v4, p0, Lr0/c;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v4, Landroid/widget/RadioGroup;

    .line 22
    .line 23
    iget-object v5, p0, Lr0/c;->f:Landroid/view/KeyEvent$Callback;

    .line 24
    .line 25
    check-cast v5, Landroid/widget/TextView;

    .line 26
    .line 27
    aget-object v3, v3, v0

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v3}, Landroid/app/Dialog;->hide()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    if-nez v6, :cond_1

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    :goto_0
    instance-of v7, v6, Ls1/o;

    .line 53
    .line 54
    if-eqz v7, :cond_2

    .line 55
    .line 56
    check-cast v6, Ls1/o;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v2}, Ls1/r;->b()Ls1/o;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    :goto_1
    new-instance v7, Le0/r1;

    .line 64
    .line 65
    invoke-direct {v7, p1, v4, v5, v3}, Le0/r1;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/KeyEvent$Callback;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, p1, Ls1/k;->g:Ls1/f;

    .line 69
    .line 70
    invoke-virtual {p1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    iput-boolean v3, p1, Ls1/k;->j:Z

    .line 75
    .line 76
    iput-object v6, p1, Ls1/k;->l:Ls1/o;

    .line 77
    .line 78
    invoke-virtual {v2}, Ls1/r;->c()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iput v2, p1, Ls1/k;->k:I

    .line 83
    .line 84
    iput-object v7, p1, Ls1/k;->o:Le0/r1;

    .line 85
    .line 86
    iput-boolean v0, p1, Ls1/k;->i:Z

    .line 87
    .line 88
    invoke-virtual {p1}, Ls1/k;->B()V

    .line 89
    .line 90
    .line 91
    iget-object v2, p1, Ls1/k;->f:Landroid/widget/Button;

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    const/16 v4, 0x4a

    .line 97
    .line 98
    new-array v4, v4, [B

    .line 99
    .line 100
    fill-array-data v4, :array_0

    .line 101
    .line 102
    .line 103
    new-array v5, v1, [B

    .line 104
    .line 105
    fill-array-data v5, :array_1

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    new-instance v4, Ls1/d;

    .line 116
    .line 117
    const/4 v5, 0x2

    .line 118
    invoke-direct {v4, p1, v5}, Ls1/d;-><init>(Ls1/k;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    .line 123
    .line 124
    new-instance v2, Landroid/widget/LinearLayout;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    iput-object v2, p1, Ls1/k;->m:Landroid/widget/LinearLayout;

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    .line 137
    .line 138
    iget-object v2, p1, Ls1/k;->m:Landroid/widget/LinearLayout;

    .line 139
    .line 140
    const/16 v4, 0x11

    .line 141
    .line 142
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p1, Ls1/k;->m:Landroid/widget/LinearLayout;

    .line 146
    .line 147
    const/16 v5, 0x12

    .line 148
    .line 149
    invoke-virtual {p1, v5}, Ls1/k;->h(I)I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    const/16 v8, 0xe

    .line 154
    .line 155
    invoke-virtual {p1, v8}, Ls1/k;->h(I)I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    invoke-virtual {p1, v5}, Ls1/k;->h(I)I

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    invoke-virtual {p1, v8}, Ls1/k;->h(I)I

    .line 164
    .line 165
    .line 166
    move-result v11

    .line 167
    invoke-virtual {v2, v7, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 168
    .line 169
    .line 170
    iget-object v2, p1, Ls1/k;->m:Landroid/widget/LinearLayout;

    .line 171
    .line 172
    const v7, -0xde7ded4

    .line 173
    .line 174
    .line 175
    const v9, -0xaf461e

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v7, v4, v9}, Ls1/k;->o(III)Landroid/graphics/drawable/GradientDrawable;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v2, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 183
    .line 184
    .line 185
    iget-object v2, p1, Ls1/k;->m:Landroid/widget/LinearLayout;

    .line 186
    .line 187
    const/16 v7, 0x18

    .line 188
    .line 189
    invoke-virtual {p1, v7}, Ls1/k;->h(I)I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    int-to-float v7, v7

    .line 194
    invoke-virtual {v2, v7}, Landroid/view/View;->setElevation(F)V

    .line 195
    .line 196
    .line 197
    const/16 v2, 0x35

    .line 198
    .line 199
    new-array v2, v2, [B

    .line 200
    .line 201
    fill-array-data v2, :array_2

    .line 202
    .line 203
    .line 204
    new-array v7, v1, [B

    .line 205
    .line 206
    fill-array-data v7, :array_3

    .line 207
    .line 208
    .line 209
    invoke-static {v2, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    const/16 v7, 0x10

    .line 214
    .line 215
    const/4 v10, -0x1

    .line 216
    invoke-virtual {p1, v7, v10, v2}, Ls1/k;->x(IILjava/lang/String;)Landroid/widget/TextView;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 221
    .line 222
    .line 223
    iget-object v7, p1, Ls1/k;->m:Landroid/widget/LinearLayout;

    .line 224
    .line 225
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 226
    .line 227
    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const/16 v7, 0x10

    .line 234
    .line 235
    new-array v7, v7, [B

    .line 236
    .line 237
    fill-array-data v7, :array_4

    .line 238
    .line 239
    .line 240
    new-array v10, v1, [B

    .line 241
    .line 242
    fill-array-data v10, :array_5

    .line 243
    .line 244
    .line 245
    invoke-static {v7, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    iget v7, p1, Ls1/k;->k:I

    .line 253
    .line 254
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    new-array v7, v3, [B

    .line 258
    .line 259
    const/16 v10, -0x50

    .line 260
    .line 261
    aput-byte v10, v7, v0

    .line 262
    .line 263
    new-array v10, v1, [B

    .line 264
    .line 265
    fill-array-data v10, :array_6

    .line 266
    .line 267
    .line 268
    invoke-static {v7, v10, v2}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {p1, v8, v9, v2}, Ls1/k;->x(IILjava/lang/String;)Landroid/widget/TextView;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    iput-object v2, p1, Ls1/k;->n:Landroid/widget/TextView;

    .line 277
    .line 278
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 279
    .line 280
    .line 281
    iget-object v2, p1, Ls1/k;->n:Landroid/widget/TextView;

    .line 282
    .line 283
    const/4 v7, 0x4

    .line 284
    invoke-virtual {p1, v7}, Ls1/k;->h(I)I

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    const/16 v8, 0xa

    .line 289
    .line 290
    invoke-virtual {p1, v8}, Ls1/k;->h(I)I

    .line 291
    .line 292
    .line 293
    move-result v9

    .line 294
    invoke-virtual {v2, v0, v7, v0, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 295
    .line 296
    .line 297
    iget-object v2, p1, Ls1/k;->m:Landroid/widget/LinearLayout;

    .line 298
    .line 299
    iget-object v7, p1, Ls1/k;->n:Landroid/widget/TextView;

    .line 300
    .line 301
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 302
    .line 303
    .line 304
    new-instance v2, Landroid/widget/LinearLayout;

    .line 305
    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 314
    .line 315
    .line 316
    const/16 v4, 0xc

    .line 317
    .line 318
    new-array v4, v4, [B

    .line 319
    .line 320
    fill-array-data v4, :array_7

    .line 321
    .line 322
    .line 323
    new-array v7, v1, [B

    .line 324
    .line 325
    fill-array-data v7, :array_8

    .line 326
    .line 327
    .line 328
    invoke-static {v4, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-virtual {p1, v4, v0}, Ls1/k;->t(Ljava/lang/String;Z)Landroid/widget/Button;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    new-instance v7, Ls1/c;

    .line 337
    .line 338
    const/4 v9, 0x3

    .line 339
    invoke-direct {v7, p1, v9}, Ls1/c;-><init>(Ls1/k;I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    .line 344
    .line 345
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 346
    .line 347
    const/16 v9, 0x8c

    .line 348
    .line 349
    invoke-virtual {p1, v9}, Ls1/k;->h(I)I

    .line 350
    .line 351
    .line 352
    move-result v9

    .line 353
    const/16 v10, 0x30

    .line 354
    .line 355
    invoke-virtual {p1, v10}, Ls1/k;->h(I)I

    .line 356
    .line 357
    .line 358
    move-result v11

    .line 359
    invoke-direct {v7, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    .line 364
    .line 365
    const/16 v4, 0x21

    .line 366
    .line 367
    new-array v4, v4, [B

    .line 368
    .line 369
    fill-array-data v4, :array_9

    .line 370
    .line 371
    .line 372
    new-array v1, v1, [B

    .line 373
    .line 374
    fill-array-data v1, :array_a

    .line 375
    .line 376
    .line 377
    invoke-static {v4, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {p1, v1, v3}, Ls1/k;->t(Ljava/lang/String;Z)Landroid/widget/Button;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    new-instance v4, Ls1/c;

    .line 386
    .line 387
    const/4 v7, 0x4

    .line 388
    invoke-direct {v4, p1, v7}, Ls1/c;-><init>(Ls1/k;I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    .line 393
    .line 394
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 395
    .line 396
    const/16 v7, 0xbe

    .line 397
    .line 398
    invoke-virtual {p1, v7}, Ls1/k;->h(I)I

    .line 399
    .line 400
    .line 401
    move-result v7

    .line 402
    invoke-virtual {p1, v10}, Ls1/k;->h(I)I

    .line 403
    .line 404
    .line 405
    move-result v9

    .line 406
    invoke-direct {v4, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, v8}, Ls1/k;->h(I)I

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    .line 418
    .line 419
    iget-object v1, p1, Ls1/k;->m:Landroid/widget/LinearLayout;

    .line 420
    .line 421
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 422
    .line 423
    .line 424
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 425
    .line 426
    const/4 v2, -0x2

    .line 427
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 428
    .line 429
    .line 430
    sget-object v2, Ls1/o;->d:Ls1/o;

    .line 431
    .line 432
    if-ne v6, v2, :cond_3

    .line 433
    .line 434
    move v0, v3

    .line 435
    :cond_3
    if-eqz v0, :cond_4

    .line 436
    .line 437
    const/16 v10, 0x50

    .line 438
    .line 439
    :cond_4
    or-int/lit8 v2, v10, 0x1

    .line 440
    .line 441
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 442
    .line 443
    iget-object v2, p1, Ls1/k;->h:Landroidx/core/graphics/Insets;

    .line 444
    .line 445
    if-eqz v0, :cond_5

    .line 446
    .line 447
    iget v0, v2, Landroidx/core/graphics/Insets;->bottom:I

    .line 448
    .line 449
    invoke-virtual {p1, v5}, Ls1/k;->h(I)I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    add-int/2addr v2, v0

    .line 454
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 455
    .line 456
    goto :goto_2

    .line 457
    :cond_5
    iget v0, v2, Landroidx/core/graphics/Insets;->top:I

    .line 458
    .line 459
    invoke-virtual {p1, v5}, Ls1/k;->h(I)I

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    add-int/2addr v2, v0

    .line 464
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 465
    .line 466
    :goto_2
    iget-object v0, p1, Ls1/k;->m:Landroid/widget/LinearLayout;

    .line 467
    .line 468
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {p1}, Ls1/k;->d()V

    .line 472
    .line 473
    .line 474
    :goto_3
    return-void

    .line 475
    :pswitch_0
    iget-object p1, p0, Lr0/c;->c:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast p1, Lr0/e;

    .line 478
    .line 479
    iget-object v2, p0, Lr0/c;->d:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    .line 482
    .line 483
    iget-object v3, p0, Lr0/c;->e:Ljava/lang/Object;

    .line 484
    .line 485
    check-cast v3, [Landroid/widget/Spinner;

    .line 486
    .line 487
    iget-object v4, p0, Lr0/c;->f:Landroid/view/KeyEvent$Callback;

    .line 488
    .line 489
    check-cast v4, Landroid/app/AlertDialog;

    .line 490
    .line 491
    iget-object v5, p1, Lr0/e;->b:Ld6/d;

    .line 492
    .line 493
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    iput-boolean v2, v5, Ld6/d;->a:Z

    .line 498
    .line 499
    iget-object v2, v5, Ld6/d;->b:Ljava/lang/Object;

    .line 500
    .line 501
    check-cast v2, [Lj0/e;

    .line 502
    .line 503
    move v6, v0

    .line 504
    :goto_4
    if-ge v6, v1, :cond_6

    .line 505
    .line 506
    aget-object v7, v3, v6

    .line 507
    .line 508
    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v7

    .line 512
    check-cast v7, Lj0/e;

    .line 513
    .line 514
    aput-object v7, v2, v6

    .line 515
    .line 516
    add-int/lit8 v6, v6, 0x1

    .line 517
    .line 518
    goto :goto_4

    .line 519
    :cond_6
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    sget-object v6, Lr0/e;->c:Ljava/lang/String;

    .line 524
    .line 525
    iget-boolean v5, v5, Ld6/d;->a:Z

    .line 526
    .line 527
    if-eqz v5, :cond_7

    .line 528
    .line 529
    move v5, v1

    .line 530
    goto :goto_5

    .line 531
    :cond_7
    const/4 v5, 0x6

    .line 532
    :goto_5
    invoke-virtual {v3, v6, v5}, Lu0/a;->saveInt(Ljava/lang/String;I)V

    .line 533
    .line 534
    .line 535
    :goto_6
    if-ge v0, v1, :cond_8

    .line 536
    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .line 541
    .line 542
    sget-object v5, Lr0/e;->d:Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    aget-object v5, v2, v0

    .line 555
    .line 556
    invoke-static {v3, v5}, Lj0/f;->f(Ljava/lang/String;Lj0/e;)V

    .line 557
    .line 558
    .line 559
    add-int/lit8 v0, v0, 0x1

    .line 560
    .line 561
    goto :goto_6

    .line 562
    :cond_8
    sget-object v0, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 563
    .line 564
    iget-object p1, p1, Lr0/e;->a:Landroid/content/Context;

    .line 565
    .line 566
    invoke-static {p1}, Lr0/e;->a(Landroid/content/Context;)[Landroid/graphics/drawable/Drawable;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    sget-object v0, Lcom/example/navistart/LounchB;->h:Lr5/c;

    .line 571
    .line 572
    if-eqz v0, :cond_b

    .line 573
    .line 574
    iget-object v0, v0, Lr5/c;->c:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v0, Lcom/example/navistart/LounchB;

    .line 577
    .line 578
    iget-object v1, v0, Lcom/example/navistart/LounchB;->c:Lt1/j;

    .line 579
    .line 580
    if-eqz v1, :cond_9

    .line 581
    .line 582
    invoke-virtual {v1, p1}, Lt1/j;->setImageRun([Landroid/graphics/drawable/Drawable;)V

    .line 583
    .line 584
    .line 585
    :cond_9
    iget-object v1, v0, Lcom/example/navistart/LounchB;->d:Lb1/m;

    .line 586
    .line 587
    if-eqz v1, :cond_a

    .line 588
    .line 589
    iget-object v1, v1, Lb1/m;->d:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v1, Lt1/j;

    .line 592
    .line 593
    if-eqz v1, :cond_a

    .line 594
    .line 595
    invoke-virtual {v1, p1}, Lt1/j;->setImageRun([Landroid/graphics/drawable/Drawable;)V

    .line 596
    .line 597
    .line 598
    :cond_a
    iget-object v0, v0, Lcom/example/navistart/LounchB;->e:Lt1/k;

    .line 599
    .line 600
    if-eqz v0, :cond_b

    .line 601
    .line 602
    iget-object v0, v0, Lt1/k;->b:Lt1/j;

    .line 603
    .line 604
    if-eqz v0, :cond_b

    .line 605
    .line 606
    invoke-virtual {v0, p1}, Lt1/j;->setImageRun([Landroid/graphics/drawable/Drawable;)V

    .line 607
    .line 608
    .line 609
    :cond_b
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 610
    .line 611
    .line 612
    return-void

    .line 613
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    :array_0
    .array-data 1
        -0x67t
        -0x21t
        0x54t
        -0x6at
        0x4bt
        -0xbt
        -0x7et
        -0x1bt
        -0x68t
        -0x3et
        0x54t
        -0x6dt
        0x4bt
        -0x4t
        -0x7et
        -0x18t
        -0x68t
        -0x3et
        0x54t
        -0x6at
        -0x46t
        -0x5bt
        -0x18t
        -0x80t
        -0xct
        -0x70t
        0x3at
        -0xdt
        0x25t
        -0x5bt
        -0x18t
        -0x7ft
        -0x36t
        0x60t
        0x54t
        -0x6ft
        0x4at
        -0x3ft
        -0x7et
        -0x12t
        -0x67t
        -0x5t
        0x55t
        -0x51t
        -0x46t
        -0x5bt
        -0x20t
        -0x7ft
        -0x3et
        -0x70t
        0x35t
        -0xet
        0x1at
        -0x5bt
        -0x1et
        -0x80t
        -0xct
        -0x70t
        0x39t
        -0xdt
        0x24t
        -0x5bt
        -0x1ft
        -0x80t
        -0x9t
        0x60t
        0x54t
        -0x67t
        0x4bt
        -0xbt
        -0x7et
        -0x20t
        -0x68t
        -0x31t
    .end array-data

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
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    nop

    .line 661
    :array_1
    .array-data 1
        0x49t
        0x40t
        -0x7ct
        0x23t
        -0x66t
        0x75t
        0x52t
        0x50t
    .end array-data

    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    :array_2
    .array-data 1
        -0x2at
        -0xbt
        -0x30t
        0x4dt
        -0x25t
        0x4dt
        -0x9t
        0xdt
        -0x29t
        -0x18t
        -0x30t
        0x48t
        -0x25t
        0x44t
        -0x9t
        0x0t
        -0x29t
        -0x18t
        -0x30t
        0x4dt
        0x2at
        0x1dt
        -0x63t
        0x68t
        -0x45t
        -0x46t
        -0x42t
        0x28t
        -0x4bt
        0x1dt
        -0x63t
        0x69t
        -0x7bt
        0x4at
        -0x30t
        0x4at
        -0x26t
        0x79t
        -0x9t
        0x6t
        -0x2at
        -0x2ft
        -0x2ft
        0x74t
        0x2at
        0x1dt
        -0x63t
        0x69t
        -0x7at
        -0x46t
        -0x50t
        0x29t
        -0x7bt
    .end array-data

    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    nop

    .line 701
    :array_3
    .array-data 1
        0x6t
        0x6at
        0x0t
        -0x8t
        0xat
        -0x33t
        0x27t
        -0x48t
    .end array-data

    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    :array_4
    .array-data 1
        -0x65t
        -0x58t
        -0x71t
        0x5t
        -0xet
        -0x2ct
        -0x16t
        -0x2dt
        -0x66t
        -0x4ft
        -0x71t
        0x3t
        -0xdt
        -0x14t
        0x0t
        0x4bt
    .end array-data

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
    :array_5
    .array-data 1
        0x4bt
        0x37t
        0x5ft
        -0x45t
        0x22t
        0x63t
        0x3at
        0x6bt
    .end array-data

    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    :array_6
    .array-data 1
        -0x6bt
        0xet
        -0x18t
        0x66t
        0x5t
        -0xdt
        0xat
        0x4t
    .end array-data

    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    :array_7
    .array-data 1
        0x44t
        0x14t
        0x73t
        -0x7bt
        0x2bt
        0x56t
        -0x40t
        -0x50t
        0x44t
        0x37t
        0x72t
        -0x49t
    .end array-data

    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    :array_8
    .array-data 1
        -0x6ct
        -0x76t
        -0x5et
        0x7t
        -0x5t
        -0x16t
        0x10t
        0x5t
    .end array-data

    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    :array_9
    .array-data 1
        -0xat
        -0x5et
        -0x50t
        0x5dt
        -0x35t
        0xet
        -0x1ct
        -0x6t
        -0xat
        -0x4dt
        -0x50t
        0x5et
        -0x36t
        0x33t
        -0x1ct
        -0x8t
        -0x9t
        -0x71t
        0x40t
        0x33t
        -0x5bt
        0x5bt
        -0x75t
        -0x56t
        -0x6ft
        -0x2dt
        -0x28t
        0x32t
        -0x64t
        0x5bt
        -0x73t
        -0x55t
        -0x58t
    .end array-data

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    nop

    .line 777
    :array_a
    .array-data 1
        0x26t
        0x3t
        0x60t
        -0x1dt
        0x1at
        -0x75t
        0x35t
        0x7at
    .end array-data
.end method
