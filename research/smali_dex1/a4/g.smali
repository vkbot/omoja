.class public final synthetic La4/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, La4/g;->b:I

    .line 2
    .line 3
    iput-object p2, p0, La4/g;->c:Ljava/lang/Object;

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
    .registers 14

    .line 1
    iget v0, p0, La4/g;->b:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const/16 v5, 0x8

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_500

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/bumptech/glide/m;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/bumptech/glide/m;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lf1/e;

    .line 19
    .line 20
    const/16 v2, 0x11

    .line 21
    .line 22
    new-array v2, v2, [B

    .line 23
    .line 24
    fill-array-data v2, :array_53e

    .line 25
    .line 26
    .line 27
    new-array v3, v5, [B

    .line 28
    .line 29
    fill-array-data v3, :array_54c

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {v2, v3}, Lf1/e;->v(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v1, v1, Lf1/e;->b:Landroid/os/Handler;

    .line 42
    .line 43
    new-instance v3, Le0/j2;

    .line 44
    .line 45
    const/4 v4, 0x7

    .line 46
    invoke-direct {v3, v4, v0, v2}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_34
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lf1/e;

    .line 56
    .line 57
    sget v1, Lf1/e;->q:I

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Lf1/e;->Q(Z)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_3e
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_48
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Le4/l;

    .line 76
    .line 77
    iget-object v1, v0, Le4/l;->h:Landroid/widget/AutoCompleteTextView;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v0, v1}, Le4/l;->s(Z)V

    .line 84
    .line 85
    .line 86
    iput-boolean v1, v0, Le4/l;->m:Z

    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_58
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Le4/d;

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Le4/d;->s(Z)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_60
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Lcom/example/navistart/punto;

    .line 100
    .line 101
    iget-boolean v1, v0, Lcom/example/navistart/punto;->b:Z

    .line 102
    .line 103
    if-eqz v1, :cond_8a

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_8a

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_8a

    .line 116
    .line 117
    iget-object v1, v0, Lcom/example/navistart/punto;->k:Landroid/widget/EditText;

    .line 118
    .line 119
    new-instance v2, Landroid/graphics/Rect;

    .line 120
    .line 121
    iget-object v3, v0, Lcom/example/navistart/punto;->k:Landroid/widget/EditText;

    .line 122
    .line 123
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    iget-object v0, v0, Lcom/example/navistart/punto;->k:Landroid/widget/EditText;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-direct {v2, v4, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2, v4}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 137
    .line 138
    .line 139
    :cond_8a
    return-void

    .line 140
    :pswitch_8b
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Lcom/example/navistart/ZaglushkaActivity;

    .line 143
    .line 144
    sget v1, Lcom/example/navistart/ZaglushkaActivity;->b:I

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :pswitch_95
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Le0/y2;

    .line 153
    .line 154
    iput-boolean v3, v0, Le0/y2;->b:Z

    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_9c
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v0, Lcom/example/navistart/TestSpaceActivity;

    .line 160
    .line 161
    iget-object v0, v0, Lcom/example/navistart/TestSpaceActivity;->c:Landroid/widget/ScrollView;

    .line 162
    .line 163
    const/16 v1, 0x82

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_a8
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v0, Ljava/lang/Boolean;

    .line 172
    .line 173
    sget-object v1, Lcom/example/navistart/TService;->c:Ld2/h;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_bd

    .line 180
    .line 181
    sget-object v0, Lcom/example/navistart/TService;->e:Landroid/widget/ImageView;

    .line 182
    .line 183
    const v1, 0x7f070245

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 187
    .line 188
    .line 189
    goto :goto_c5

    .line 190
    :cond_bd
    sget-object v0, Lcom/example/navistart/TService;->e:Landroid/widget/ImageView;

    .line 191
    .line 192
    const v1, 0x7f070244

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 196
    .line 197
    .line 198
    :goto_c5
    return-void

    .line 199
    :pswitch_c6
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v0, Lcom/example/navistart/SystemMessageReceiver;

    .line 202
    .line 203
    iget-object v1, v0, Lcom/example/navistart/SystemMessageReceiver;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/example/navistart/SystemMessageReceiver;->d:Lcom/bumptech/glide/m;

    .line 206
    .line 207
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_d2
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v0, Lcom/example/navistart/SpeedBoardActi;

    .line 214
    .line 215
    sget v1, Lcom/example/navistart/SpeedBoardActi;->f:I

    .line 216
    .line 217
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    const/16 v2, 0x1a

    .line 222
    .line 223
    new-array v2, v2, [B

    .line 224
    .line 225
    fill-array-data v2, :array_554

    .line 226
    .line 227
    .line 228
    new-array v3, v5, [B

    .line 229
    .line 230
    fill-array-data v3, :array_566

    .line 231
    .line 232
    .line 233
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v1, v2, v4}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_104

    .line 242
    .line 243
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 244
    .line 245
    .line 246
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-interface {v1}, Lcom/example/navistart/cores/CarCmdProxy;->getSpeed()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    iget-object v2, v0, Lcom/example/navistart/SpeedBoardActi;->e:Landroidx/fragment/app/Fragment;

    .line 255
    .line 256
    if-eqz v2, :cond_104

    .line 257
    .line 258
    invoke-interface {v2, v1}, Lv0/g;->d(I)V

    .line 259
    .line 260
    .line 261
    :cond_104
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 262
    .line 263
    .line 264
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-interface {v1}, Lcom/example/navistart/cores/CarCmdProxy;->getRPM()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    iget-object v0, v0, Lcom/example/navistart/SpeedBoardActi;->e:Landroidx/fragment/app/Fragment;

    .line 273
    .line 274
    if-eqz v0, :cond_116

    .line 275
    .line 276
    invoke-interface {v0, v1}, Lv0/g;->l(I)V

    .line 277
    .line 278
    .line 279
    :cond_116
    return-void

    .line 280
    :pswitch_117
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v0, Lcom/example/navistart/OverlayService;

    .line 283
    .line 284
    sget-object v1, Lcom/example/navistart/OverlayService;->f:Lcom/example/navistart/OverlayService;

    .line 285
    .line 286
    invoke-virtual {v0}, Lcom/example/navistart/OverlayService;->d()V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :pswitch_121
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v0, Lcom/example/navistart/NLService;

    .line 293
    .line 294
    sget-object v1, Lcom/example/navistart/NLService;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 295
    .line 296
    sget-boolean v1, Lcom/example/navistart/boot;->u:Z

    .line 297
    .line 298
    if-nez v1, :cond_160

    .line 299
    .line 300
    iget-object v1, v0, Lcom/example/navistart/NLService;->d:Ljava/lang/String;

    .line 301
    .line 302
    const/4 v2, 0x4

    .line 303
    new-array v2, v2, [B

    .line 304
    .line 305
    fill-array-data v2, :array_56e

    .line 306
    .line 307
    .line 308
    new-array v3, v5, [B

    .line 309
    .line 310
    fill-array-data v3, :array_574

    .line 311
    .line 312
    .line 313
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    new-instance v1, Lcom/example/navistart/SystemMessageReceiver;

    .line 321
    .line 322
    invoke-direct {v1}, Lcom/example/navistart/SystemMessageReceiver;-><init>()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    new-instance v2, Landroid/content/Intent;

    .line 330
    .line 331
    const/16 v3, 0x24

    .line 332
    .line 333
    new-array v3, v3, [B

    .line 334
    .line 335
    fill-array-data v3, :array_57c

    .line 336
    .line 337
    .line 338
    new-array v4, v5, [B

    .line 339
    .line 340
    fill-array-data v4, :array_592

    .line 341
    .line 342
    .line 343
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v0, v2}, Lcom/example/navistart/SystemMessageReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 351
    .line 352
    .line 353
    :cond_160
    return-void

    .line 354
    :pswitch_161
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v0, Lcom/example/navistart/MyCarReceiver;

    .line 357
    .line 358
    :try_start_165
    invoke-static {}, Lcom/example/navistart/MyCarReceiver;->k()Ljava/lang/Boolean;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-eqz v1, :cond_17f

    .line 367
    .line 368
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 369
    .line 370
    .line 371
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-interface {v1}, Lj1/v;->d()Lj1/w;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    iget-object v0, v0, Lcom/example/navistart/MyCarReceiver;->b:Landroid/content/Context;

    .line 380
    .line 381
    invoke-interface {v1, v0}, Lj1/w;->i(Landroid/content/Context;)V
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_17f} :catch_17f

    .line 382
    .line 383
    .line 384
    :catch_17f
    :cond_17f
    return-void

    .line 385
    :pswitch_180
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 386
    .line 387
    move-object v5, v0

    .line 388
    check-cast v5, Ld2/h;

    .line 389
    .line 390
    invoke-virtual {v5}, Ld2/h;->m()V

    .line 391
    .line 392
    .line 393
    iget-object v0, v5, Ld2/h;->e:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v0, Ljava/util/HashSet;

    .line 396
    .line 397
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 398
    .line 399
    .line 400
    iget-object v1, v5, Ld2/h;->c:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v1, Lo0/e;

    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    new-instance v2, Ljava/util/ArrayList;

    .line 408
    .line 409
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-static {}, Lo0/f;->values()[Lo0/f;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    array-length v7, v6

    .line 417
    :goto_1a0
    if-ge v4, v7, :cond_1b0

    .line 418
    .line 419
    aget-object v8, v6, v4

    .line 420
    .line 421
    invoke-virtual {v1, v8}, Lo0/e;->a(Lo0/f;)Z

    .line 422
    .line 423
    .line 424
    move-result v9

    .line 425
    if-eqz v9, :cond_1ad

    .line 426
    .line 427
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    :cond_1ad
    add-int/lit8 v4, v4, 0x1

    .line 431
    .line 432
    goto :goto_1a0

    .line 433
    :cond_1b0
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 434
    .line 435
    .line 436
    iget-object v1, v5, Ld2/h;->a:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 439
    .line 440
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    check-cast v1, Landroid/content/Context;

    .line 445
    .line 446
    if-nez v1, :cond_1c1

    .line 447
    .line 448
    goto/16 :goto_268

    .line 449
    .line 450
    :cond_1c1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 459
    .line 460
    const/high16 v4, 0x42000000    # 32.0f

    .line 461
    .line 462
    mul-float/2addr v4, v2

    .line 463
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 468
    .line 469
    .line 470
    move-result v9

    .line 471
    iget-object v2, v5, Ld2/h;->b:Ljava/lang/Object;

    .line 472
    .line 473
    check-cast v2, Landroid/view/WindowManager;

    .line 474
    .line 475
    new-instance v3, Landroid/util/DisplayMetrics;

    .line 476
    .line 477
    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 478
    .line 479
    .line 480
    :try_start_1df
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e6} :catch_1e7

    .line 485
    .line 486
    .line 487
    goto :goto_1ee

    .line 488
    :catch_1e7
    :try_start_1e7
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1ee} :catch_1ee

    .line 493
    .line 494
    .line 495
    :catch_1ee
    :goto_1ee
    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 496
    .line 497
    if-lez v2, :cond_1f6

    .line 498
    .line 499
    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 500
    .line 501
    if-gtz v2, :cond_1fe

    .line 502
    .line 503
    :cond_1f6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    :cond_1fe
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 512
    .line 513
    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 514
    .line 515
    sget-object v6, Lo0/f;->b:Lo0/f;

    .line 516
    .line 517
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    const/4 v7, 0x0

    .line 522
    if-eqz v3, :cond_211

    .line 523
    .line 524
    div-int/lit8 v10, v2, 0x2

    .line 525
    .line 526
    const/4 v8, 0x0

    .line 527
    invoke-virtual/range {v5 .. v10}, Ld2/h;->k(Lo0/f;IIII)V

    .line 528
    .line 529
    .line 530
    :cond_211
    sget-object v6, Lo0/f;->c:Lo0/f;

    .line 531
    .line 532
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v3

    .line 536
    if-eqz v3, :cond_21f

    .line 537
    .line 538
    div-int/lit8 v8, v2, 0x2

    .line 539
    .line 540
    move v10, v8

    .line 541
    invoke-virtual/range {v5 .. v10}, Ld2/h;->k(Lo0/f;IIII)V

    .line 542
    .line 543
    .line 544
    :cond_21f
    sget-object v6, Lo0/f;->d:Lo0/f;

    .line 545
    .line 546
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    if-eqz v3, :cond_22f

    .line 551
    .line 552
    sub-int v7, v1, v9

    .line 553
    .line 554
    div-int/lit8 v10, v2, 0x2

    .line 555
    .line 556
    const/4 v8, 0x0

    .line 557
    invoke-virtual/range {v5 .. v10}, Ld2/h;->k(Lo0/f;IIII)V

    .line 558
    .line 559
    .line 560
    :cond_22f
    sget-object v6, Lo0/f;->e:Lo0/f;

    .line 561
    .line 562
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    if-eqz v3, :cond_23f

    .line 567
    .line 568
    sub-int v7, v1, v9

    .line 569
    .line 570
    div-int/lit8 v8, v2, 0x2

    .line 571
    .line 572
    move v10, v8

    .line 573
    invoke-virtual/range {v5 .. v10}, Ld2/h;->k(Lo0/f;IIII)V

    .line 574
    .line 575
    .line 576
    :cond_23f
    sub-int v8, v2, v9

    .line 577
    .line 578
    mul-int/lit8 v2, v9, 0x2

    .line 579
    .line 580
    sub-int/2addr v1, v2

    .line 581
    move v7, v9

    .line 582
    div-int/lit8 v9, v1, 0x2

    .line 583
    .line 584
    sub-int v2, v1, v9

    .line 585
    .line 586
    if-lez v1, :cond_268

    .line 587
    .line 588
    sget-object v6, Lo0/f;->f:Lo0/f;

    .line 589
    .line 590
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    if-eqz v1, :cond_257

    .line 595
    .line 596
    move v10, v7

    .line 597
    invoke-virtual/range {v5 .. v10}, Ld2/h;->k(Lo0/f;IIII)V

    .line 598
    .line 599
    .line 600
    :cond_257
    move v1, v9

    .line 601
    move v9, v7

    .line 602
    sget-object v6, Lo0/f;->g:Lo0/f;

    .line 603
    .line 604
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    if-eqz v0, :cond_268

    .line 609
    .line 610
    add-int v7, v9, v1

    .line 611
    .line 612
    move v10, v9

    .line 613
    move v9, v2

    .line 614
    invoke-virtual/range {v5 .. v10}, Ld2/h;->k(Lo0/f;IIII)V

    .line 615
    .line 616
    .line 617
    :cond_268
    :goto_268
    return-void

    .line 618
    :pswitch_269
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 619
    .line 620
    check-cast v0, Lcom/example/navistart/MyA11yService;

    .line 621
    .line 622
    sget-object v1, Lcom/example/navistart/MyA11yService;->d:Ld2/h;

    .line 623
    .line 624
    if-nez v1, :cond_2cb

    .line 625
    .line 626
    new-instance v1, Ld2/h;

    .line 627
    .line 628
    new-instance v2, Le0/g;

    .line 629
    .line 630
    const/4 v3, 0x6

    .line 631
    invoke-direct {v2, v3}, Le0/g;-><init>(I)V

    .line 632
    .line 633
    .line 634
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 635
    .line 636
    .line 637
    new-instance v3, Ljava/util/HashMap;

    .line 638
    .line 639
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 640
    .line 641
    .line 642
    iput-object v3, v1, Ld2/h;->f:Ljava/lang/Object;

    .line 643
    .line 644
    new-instance v3, Ljava/util/HashSet;

    .line 645
    .line 646
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 647
    .line 648
    .line 649
    iput-object v3, v1, Ld2/h;->e:Ljava/lang/Object;

    .line 650
    .line 651
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 652
    .line 653
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    iput-object v3, v1, Ld2/h;->a:Ljava/lang/Object;

    .line 657
    .line 658
    iput-object v2, v1, Ld2/h;->d:Ljava/lang/Object;

    .line 659
    .line 660
    new-instance v2, Lo0/e;

    .line 661
    .line 662
    invoke-direct {v2, v0}, Lo0/e;-><init>(Landroid/content/Context;)V

    .line 663
    .line 664
    .line 665
    iput-object v2, v1, Ld2/h;->c:Ljava/lang/Object;

    .line 666
    .line 667
    const/4 v2, 0x6

    .line 668
    new-array v2, v2, [B

    .line 669
    .line 670
    fill-array-data v2, :array_59a

    .line 671
    .line 672
    .line 673
    new-array v3, v5, [B

    .line 674
    .line 675
    fill-array-data v3, :array_5a2

    .line 676
    .line 677
    .line 678
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    invoke-virtual {v0, v2}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    check-cast v2, Landroid/view/WindowManager;

    .line 687
    .line 688
    iput-object v2, v1, Ld2/h;->b:Ljava/lang/Object;

    .line 689
    .line 690
    sput-object v1, Lcom/example/navistart/MyA11yService;->d:Ld2/h;

    .line 691
    .line 692
    new-instance v1, Landroid/os/Handler;

    .line 693
    .line 694
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 699
    .line 700
    .line 701
    sget-object v2, Lcom/example/navistart/MyA11yService;->d:Ld2/h;

    .line 702
    .line 703
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    new-instance v3, La4/g;

    .line 707
    .line 708
    const/16 v4, 0xe

    .line 709
    .line 710
    invoke-direct {v3, v4, v2}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 714
    .line 715
    .line 716
    :cond_2cb
    new-instance v1, Lcom/example/navistart/SystemMessageReceiver;

    .line 717
    .line 718
    invoke-direct {v1}, Lcom/example/navistart/SystemMessageReceiver;-><init>()V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    new-instance v2, Landroid/content/Intent;

    .line 726
    .line 727
    const/16 v3, 0x24

    .line 728
    .line 729
    new-array v3, v3, [B

    .line 730
    .line 731
    fill-array-data v3, :array_5aa

    .line 732
    .line 733
    .line 734
    new-array v4, v5, [B

    .line 735
    .line 736
    fill-array-data v4, :array_5c0

    .line 737
    .line 738
    .line 739
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v3

    .line 743
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v1, v0, v2}, Lcom/example/navistart/SystemMessageReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 747
    .line 748
    .line 749
    const/16 v0, 0x19

    .line 750
    .line 751
    :try_start_2ee
    new-array v0, v0, [B

    .line 752
    .line 753
    fill-array-data v0, :array_5c8

    .line 754
    .line 755
    .line 756
    new-array v1, v5, [B

    .line 757
    .line 758
    fill-array-data v1, :array_5da

    .line 759
    .line 760
    .line 761
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V
    :try_end_2ff
    .catch Ljava/lang/Exception; {:try_start_2ee .. :try_end_2ff} :catch_2ff

    .line 766
    .line 767
    .line 768
    :catch_2ff
    return-void

    .line 769
    :pswitch_300
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 770
    .line 771
    check-cast v0, Ln0/g;

    .line 772
    .line 773
    sget-object v4, Le0/x1;->r:Landroid/media/session/MediaController;

    .line 774
    .line 775
    if-eqz v4, :cond_37f

    .line 776
    .line 777
    new-instance v4, Ljava/lang/StringBuilder;

    .line 778
    .line 779
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .line 781
    .line 782
    const/16 v6, 0x12

    .line 783
    .line 784
    new-array v6, v6, [B

    .line 785
    .line 786
    fill-array-data v6, :array_5e2

    .line 787
    .line 788
    .line 789
    new-array v7, v5, [B

    .line 790
    .line 791
    fill-array-data v7, :array_5f0

    .line 792
    .line 793
    .line 794
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v6

    .line 798
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    sget-object v6, Le0/x1;->r:Landroid/media/session/MediaController;

    .line 802
    .line 803
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v6

    .line 807
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    new-array v6, v1, [B

    .line 811
    .line 812
    fill-array-data v6, :array_5f8

    .line 813
    .line 814
    .line 815
    new-array v5, v5, [B

    .line 816
    .line 817
    fill-array-data v5, :array_5fe

    .line 818
    .line 819
    .line 820
    invoke-static {v6, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v5

    .line 824
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v5

    .line 831
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v4

    .line 838
    sget-object v5, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 839
    .line 840
    invoke-static {v4, v5}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    if-eqz v0, :cond_375

    .line 848
    .line 849
    if-eq v0, v3, :cond_36b

    .line 850
    .line 851
    if-eq v0, v2, :cond_361

    .line 852
    .line 853
    if-eq v0, v1, :cond_357

    .line 854
    .line 855
    goto :goto_394

    .line 856
    :cond_357
    sget-object v0, Le0/x1;->r:Landroid/media/session/MediaController;

    .line 857
    .line 858
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    .line 863
    .line 864
    .line 865
    goto :goto_394

    .line 866
    :cond_361
    sget-object v0, Le0/x1;->r:Landroid/media/session/MediaController;

    .line 867
    .line 868
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    .line 873
    .line 874
    .line 875
    goto :goto_394

    .line 876
    :cond_36b
    sget-object v0, Le0/x1;->r:Landroid/media/session/MediaController;

    .line 877
    .line 878
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 883
    .line 884
    .line 885
    goto :goto_394

    .line 886
    :cond_375
    sget-object v0, Le0/x1;->r:Landroid/media/session/MediaController;

    .line 887
    .line 888
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 893
    .line 894
    .line 895
    goto :goto_394

    .line 896
    :cond_37f
    const/16 v0, 0x16

    .line 897
    .line 898
    new-array v0, v0, [B

    .line 899
    .line 900
    fill-array-data v0, :array_606

    .line 901
    .line 902
    .line 903
    new-array v1, v5, [B

    .line 904
    .line 905
    fill-array-data v1, :array_616

    .line 906
    .line 907
    .line 908
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    sget-object v1, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 913
    .line 914
    invoke-static {v0, v1}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 915
    .line 916
    .line 917
    :goto_394
    return-void

    .line 918
    :pswitch_395
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 919
    .line 920
    check-cast v0, Ld4/m;

    .line 921
    .line 922
    iget-object v0, v0, Ld4/m;->b:Ljava/lang/Object;

    .line 923
    .line 924
    check-cast v0, Lcom/example/navistart/MainActivity;

    .line 925
    .line 926
    sget-object v1, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 927
    .line 928
    invoke-virtual {v0}, Lcom/example/navistart/MainActivity;->N()V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 932
    .line 933
    .line 934
    move-result-object v1

    .line 935
    new-instance v2, Ljava/lang/StringBuilder;

    .line 936
    .line 937
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 938
    .line 939
    .line 940
    const/16 v3, 0x1f

    .line 941
    .line 942
    new-array v3, v3, [B

    .line 943
    .line 944
    fill-array-data v3, :array_61e

    .line 945
    .line 946
    .line 947
    new-array v4, v5, [B

    .line 948
    .line 949
    fill-array-data v4, :array_632

    .line 950
    .line 951
    .line 952
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v3

    .line 956
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    .line 959
    invoke-virtual {v0}, Lcom/example/navistart/MainActivity;->A()I

    .line 960
    .line 961
    .line 962
    move-result v0

    .line 963
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 964
    .line 965
    .line 966
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    invoke-static {v1, v0}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 971
    .line 972
    .line 973
    return-void

    .line 974
    :pswitch_3cd
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 975
    .line 976
    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    .line 977
    .line 978
    sget-object v1, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 979
    .line 980
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 981
    .line 982
    .line 983
    return-void

    .line 984
    :pswitch_3d7
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 985
    .line 986
    check-cast v0, Landroid/location/Location;

    .line 987
    .line 988
    sget-object v1, Lcom/example/navistart/LocServ;->h:Landroidx/fragment/app/h;

    .line 989
    .line 990
    :try_start_3dd
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 991
    .line 992
    .line 993
    move-result-object v1

    .line 994
    invoke-virtual {v1}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 995
    .line 996
    .line 997
    move-result-object v1

    .line 998
    if-nez v1, :cond_3e8

    .line 999
    .line 1000
    goto :goto_3eb

    .line 1001
    :cond_3e8
    invoke-interface {v1, v0}, Lcom/example/navistart/cores/InterC;->lo(Landroid/location/Location;)V
    :try_end_3eb
    .catch Ljava/lang/Exception; {:try_start_3dd .. :try_end_3eb} :catch_3eb

    .line 1002
    .line 1003
    .line 1004
    :catch_3eb
    :goto_3eb
    return-void

    .line 1005
    :pswitch_3ec
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 1006
    .line 1007
    check-cast v0, Le0/q;

    .line 1008
    .line 1009
    invoke-virtual {v0}, Le0/q;->a()V

    .line 1010
    .line 1011
    .line 1012
    return-void

    .line 1013
    :pswitch_3f4
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 1014
    .line 1015
    check-cast v0, Ld2/h;

    .line 1016
    .line 1017
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 1018
    .line 1019
    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1020
    .line 1021
    .line 1022
    iput-object v5, v0, Ld2/h;->e:Ljava/lang/Object;

    .line 1023
    .line 1024
    iget-object v5, v0, Ld2/h;->d:Ljava/lang/Object;

    .line 1025
    .line 1026
    check-cast v5, Ljava/util/LinkedList;

    .line 1027
    .line 1028
    monitor-enter v5

    .line 1029
    :try_start_404
    new-instance v6, Ljava/util/ArrayList;

    .line 1030
    .line 1031
    iget-object v7, v0, Ld2/h;->d:Ljava/lang/Object;

    .line 1032
    .line 1033
    check-cast v7, Ljava/util/LinkedList;

    .line 1034
    .line 1035
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1036
    .line 1037
    .line 1038
    monitor-exit v5
    :try_end_40e
    .catchall {:try_start_404 .. :try_end_40e} :catchall_4a0

    .line 1039
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1040
    .line 1041
    .line 1042
    move-result v5

    .line 1043
    move v7, v4

    .line 1044
    :goto_413
    if-ge v7, v5, :cond_47b

    .line 1045
    .line 1046
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v8

    .line 1050
    add-int/lit8 v7, v7, 0x1

    .line 1051
    .line 1052
    check-cast v8, Le0/j;

    .line 1053
    .line 1054
    iget-object v9, v8, Le0/j;->a:Ljava/lang/String;

    .line 1055
    .line 1056
    iget-object v8, v8, Le0/j;->b:Lcom/example/navistart/cores/ColorText;

    .line 1057
    .line 1058
    iget-object v10, v0, Ld2/h;->e:Ljava/lang/Object;

    .line 1059
    .line 1060
    check-cast v10, Landroid/text/SpannableStringBuilder;

    .line 1061
    .line 1062
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1063
    .line 1064
    .line 1065
    move-result v10

    .line 1066
    iget-object v11, v0, Ld2/h;->e:Ljava/lang/Object;

    .line 1067
    .line 1068
    check-cast v11, Landroid/text/SpannableStringBuilder;

    .line 1069
    .line 1070
    invoke-virtual {v11, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v9

    .line 1074
    const-string v11, "\n"

    .line 1075
    .line 1076
    invoke-virtual {v9, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1077
    .line 1078
    .line 1079
    iget-object v9, v0, Ld2/h;->e:Ljava/lang/Object;

    .line 1080
    .line 1081
    check-cast v9, Landroid/text/SpannableStringBuilder;

    .line 1082
    .line 1083
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1084
    .line 1085
    .line 1086
    move-result v9

    .line 1087
    sget-object v11, Le0/i;->a:[I

    .line 1088
    .line 1089
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 1090
    .line 1091
    .line 1092
    move-result v8

    .line 1093
    aget v8, v11, v8

    .line 1094
    .line 1095
    if-eq v8, v3, :cond_46c

    .line 1096
    .line 1097
    if-eq v8, v2, :cond_45d

    .line 1098
    .line 1099
    if-eq v8, v1, :cond_44d

    .line 1100
    .line 1101
    goto :goto_413

    .line 1102
    :cond_44d
    iget-object v8, v0, Ld2/h;->e:Ljava/lang/Object;

    .line 1103
    .line 1104
    check-cast v8, Landroid/text/SpannableStringBuilder;

    .line 1105
    .line 1106
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    .line 1107
    .line 1108
    const v12, -0xff0100

    .line 1109
    .line 1110
    .line 1111
    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v8, v11, v10, v9, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1115
    .line 1116
    .line 1117
    goto :goto_413

    .line 1118
    :cond_45d
    iget-object v8, v0, Ld2/h;->e:Ljava/lang/Object;

    .line 1119
    .line 1120
    check-cast v8, Landroid/text/SpannableStringBuilder;

    .line 1121
    .line 1122
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    .line 1123
    .line 1124
    const/high16 v12, -0x10000

    .line 1125
    .line 1126
    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v8, v11, v10, v9, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1130
    .line 1131
    .line 1132
    goto :goto_413

    .line 1133
    :cond_46c
    iget-object v8, v0, Ld2/h;->e:Ljava/lang/Object;

    .line 1134
    .line 1135
    check-cast v8, Landroid/text/SpannableStringBuilder;

    .line 1136
    .line 1137
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    .line 1138
    .line 1139
    const/high16 v12, -0x1000000

    .line 1140
    .line 1141
    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v8, v11, v10, v9, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1145
    .line 1146
    .line 1147
    goto :goto_413

    .line 1148
    :cond_47b
    iget-object v2, v0, Ld2/h;->a:Ljava/lang/Object;

    .line 1149
    .line 1150
    check-cast v2, Lcom/example/navistart/TestSpaceActivity;

    .line 1151
    .line 1152
    if-eqz v2, :cond_498

    .line 1153
    .line 1154
    iget-object v4, v0, Ld2/h;->e:Ljava/lang/Object;

    .line 1155
    .line 1156
    check-cast v4, Landroid/text/SpannableStringBuilder;

    .line 1157
    .line 1158
    if-eqz v4, :cond_498

    .line 1159
    .line 1160
    new-instance v5, Landroid/os/Handler;

    .line 1161
    .line 1162
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v6

    .line 1166
    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1167
    .line 1168
    .line 1169
    new-instance v6, Le0/j2;

    .line 1170
    .line 1171
    invoke-direct {v6, v1, v2, v4}, Le0/j2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1175
    .line 1176
    .line 1177
    :cond_498
    iget-object v0, v0, Ld2/h;->b:Ljava/lang/Object;

    .line 1178
    .line 1179
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1180
    .line 1181
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1182
    .line 1183
    .line 1184
    return-void

    .line 1185
    :catchall_4a0
    move-exception v0

    .line 1186
    :try_start_4a1
    monitor-exit v5
    :try_end_4a2
    .catchall {:try_start_4a1 .. :try_end_4a2} :catchall_4a0

    .line 1187
    throw v0

    .line 1188
    :pswitch_4a3
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 1189
    .line 1190
    check-cast v0, Lc7/a;

    .line 1191
    .line 1192
    iget-object v0, v0, Lc7/a;->a:Lc7/b;

    .line 1193
    .line 1194
    iput-boolean v4, v0, Lc7/b;->b:Z

    .line 1195
    .line 1196
    invoke-virtual {v0}, Lc7/b;->a()V

    .line 1197
    .line 1198
    .line 1199
    return-void

    .line 1200
    :pswitch_4af
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 1201
    .line 1202
    check-cast v0, Lr5/c;

    .line 1203
    .line 1204
    iget-object v0, v0, Lr5/c;->c:Ljava/lang/Object;

    .line 1205
    .line 1206
    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 1207
    .line 1208
    invoke-static {v0}, Lb7/f;->a(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    .line 1209
    .line 1210
    .line 1211
    return-void

    .line 1212
    :pswitch_4bb
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 1213
    .line 1214
    check-cast v0, Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 1215
    .line 1216
    invoke-static {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;->a(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    .line 1217
    .line 1218
    .line 1219
    return-void

    .line 1220
    :pswitch_4c3
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 1221
    .line 1222
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 1223
    .line 1224
    invoke-static {v0}, Landroidx/fragment/app/Fragment;->s(Landroidx/fragment/app/Fragment;)V

    .line 1225
    .line 1226
    .line 1227
    return-void

    .line 1228
    :pswitch_4cb
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 1229
    .line 1230
    check-cast v0, Ljava/util/ArrayList;

    .line 1231
    .line 1232
    invoke-static {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->g(Ljava/util/ArrayList;)V

    .line 1233
    .line 1234
    .line 1235
    return-void

    .line 1236
    :pswitch_4d3
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 1237
    .line 1238
    check-cast v0, Landroidx/constraintlayout/helper/widget/Carousel;

    .line 1239
    .line 1240
    invoke-static {v0}, Landroidx/constraintlayout/helper/widget/Carousel;->a(Landroidx/constraintlayout/helper/widget/Carousel;)V

    .line 1241
    .line 1242
    .line 1243
    return-void

    .line 1244
    :pswitch_4db
    iget-object v0, p0, La4/g;->c:Ljava/lang/Object;

    .line 1245
    .line 1246
    check-cast v0, La4/h;

    .line 1247
    .line 1248
    iput-boolean v4, v0, La4/h;->c:Z

    .line 1249
    .line 1250
    iget-object v1, v0, La4/h;->e:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 1251
    .line 1252
    check-cast v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 1253
    .line 1254
    iget-object v4, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:Landroidx/customview/widget/ViewDragHelper;

    .line 1255
    .line 1256
    if-eqz v4, :cond_4f5

    .line 1257
    .line 1258
    invoke-virtual {v4, v3}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    .line 1259
    .line 1260
    .line 1261
    move-result v3

    .line 1262
    if-eqz v3, :cond_4f5

    .line 1263
    .line 1264
    iget v1, v0, La4/h;->b:I

    .line 1265
    .line 1266
    invoke-virtual {v0, v1}, La4/h;->a(I)V

    .line 1267
    .line 1268
    .line 1269
    goto :goto_4fe

    .line 1270
    :cond_4f5
    iget v3, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 1271
    .line 1272
    if-ne v3, v2, :cond_4fe

    .line 1273
    .line 1274
    iget v0, v0, La4/h;->b:I

    .line 1275
    .line 1276
    invoke-virtual {v1, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a(I)V

    .line 1277
    .line 1278
    .line 1279
    :cond_4fe
    :goto_4fe
    return-void

    .line 1280
    nop

    .line 1281
    :pswitch_data_500
    .packed-switch 0x0
        :pswitch_4db
        :pswitch_4d3
        :pswitch_4cb
        :pswitch_4c3
        :pswitch_4bb
        :pswitch_4af
        :pswitch_4a3
        :pswitch_3f4
        :pswitch_3ec
        :pswitch_3d7
        :pswitch_3cd
        :pswitch_395
        :pswitch_300
        :pswitch_269
        :pswitch_180
        :pswitch_161
        :pswitch_121
        :pswitch_117
        :pswitch_d2
        :pswitch_c6
        :pswitch_a8
        :pswitch_9c
        :pswitch_95
        :pswitch_8b
        :pswitch_60
        :pswitch_58
        :pswitch_48
        :pswitch_3e
        :pswitch_34
    .end packed-switch

    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    :array_53e
    .array-data 1
        0x5ft
        0xdt
        0x1ct
        -0x10t
        0xet
        0x56t
        -0x3dt
        -0x7dt
        0x5bt
        0x4t
        0x1t
        -0x3et
        0x1ct
        0x56t
        -0x39t
        -0x58t
        0x59t
    .end array-data

    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    nop

    .line 1357
    :array_54c
    .array-data 1
        0x3ct
        0x61t
        0x75t
        -0x63t
        0x6ft
        0x22t
        -0x5at
        -0x24t
    .end array-data

    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    :array_554
    .array-data 1
        -0x40t
        0x9t
        -0x24t
        0x4bt
        -0x5ct
        -0x42t
        0xat
        0x73t
        -0x1ft
        0x1dt
        -0x8t
        0x4dt
        -0x4ct
        -0x6bt
        0x36t
        0x77t
        -0x19t
        0xdt
        -0x30t
        0x40t
        -0x59t
        -0x71t
        0x3at
        0x55t
        -0x3dt
        0x2at
    .end array-data

    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    nop

    .line 1383
    :array_566
    .array-data 1
        -0x6dt
        0x79t
        -0x47t
        0x2et
        -0x40t
        -0x4t
        0x65t
        0x12t
    .end array-data

    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    :array_56e
    .array-data 1
        -0xft
        0x1at
        -0x3at
        -0x6bt
    .end array-data

    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    :array_574
    .array-data 1
        -0x4dt
        0x55t
        -0x77t
        -0x3ft
        -0x48t
        0x2dt
        -0x4ft
        -0x2t
    .end array-data

    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    :array_57c
    .array-data 1
        -0x26t
        0x59t
        0x4ct
        -0x77t
        0x2et
        -0x1ct
        0x48t
        -0x7et
        -0x2et
        0x59t
        0x5ct
        -0x62t
        0x2ft
        -0x7t
        0x2t
        -0x33t
        -0x28t
        0x43t
        0x41t
        -0x6ct
        0x2ft
        -0x5dt
        0x6et
        -0x1dt
        -0xct
        0x63t
        0x77t
        -0x48t
        0xet
        -0x40t
        0x7ct
        -0x20t
        -0x2t
        0x63t
        0x6dt
        -0x41t
    .end array-data

    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    :array_592
    .array-data 1
        -0x45t
        0x37t
        0x28t
        -0x5t
        0x41t
        -0x73t
        0x2ct
        -0x54t
    .end array-data

    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    :array_59a
    .array-data 1
        0x36t
        0x45t
        0xft
        -0x73t
        -0x48t
        -0x68t
    .end array-data

    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    nop

    .line 1443
    :array_5a2
    .array-data 1
        0x41t
        0x2ct
        0x61t
        -0x17t
        -0x29t
        -0x11t
        0x3t
        0xat
    .end array-data

    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    :array_5aa
    .array-data 1
        -0x27t
        -0x5bt
        0x53t
        0x72t
        -0x5ct
        -0x78t
        -0x24t
        -0x56t
        -0x2ft
        -0x5bt
        0x43t
        0x65t
        -0x5bt
        -0x6bt
        -0x6at
        -0x1bt
        -0x25t
        -0x41t
        0x5et
        0x6ft
        -0x5bt
        -0x31t
        -0x6t
        -0x35t
        -0x9t
        -0x61t
        0x68t
        0x43t
        -0x7ct
        -0x54t
        -0x18t
        -0x38t
        -0x3t
        -0x61t
        0x72t
        0x44t
    .end array-data

    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    :array_5c0
    .array-data 1
        -0x48t
        -0x35t
        0x37t
        0x0t
        -0x35t
        -0x1ft
        -0x48t
        -0x7ct
    .end array-data

    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    :array_5c8
    .array-data 1
        0x50t
        0x6ft
        0x7at
        0x4dt
        -0x42t
        -0x77t
        0x70t
        -0x1ft
        0x78t
        0x60t
        0x70t
        0x5ct
        -0x4ct
        -0x57t
        0x7ct
        -0xft
        0x67t
        0x65t
        0x7at
        0x4dt
        -0x13t
        -0x29t
        0x39t
        -0x34t
        0x5ft
    .end array-data

    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    nop

    .line 1499
    :array_5da
    .array-data 1
        0x11t
        0xct
        0x19t
        0x28t
        -0x33t
        -0x6t
        0x19t
        -0x7dt
    .end array-data

    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    :array_5e2
    .array-data 1
        -0x44t
        0x7dt
        -0x48t
        -0xbt
        -0x63t
        0x52t
        -0x44t
        -0x34t
        -0x7bt
        0x6at
        -0x4dt
        -0x10t
        -0x70t
        0x74t
        -0x5ft
        -0x7et
        -0x24t
        0x38t
    .end array-data

    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    nop

    .line 1521
    :array_5f0
    .array-data 1
        -0xft
        0x18t
        -0x24t
        -0x64t
        -0x4t
        0x11t
        -0x2dt
        -0x5et
    .end array-data

    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    :array_5f8
    .array-data 1
        -0x2et
        -0x20t
        -0x64t
    .end array-data

    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    :array_5fe
    .array-data 1
        -0xet
        -0x33t
        -0x44t
        0x65t
        -0x48t
        -0x2at
        -0x4bt
        0x70t
    .end array-data

    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    :array_606
    .array-data 1
        0x7dt
        -0x1t
        -0x53t
        -0x59t
        -0x13t
        0x32t
        -0x68t
        -0x28t
        0x44t
        -0x18t
        -0x5at
        -0x5et
        -0x20t
        0x14t
        -0x7bt
        -0x6at
        0x1dt
        -0x46t
        -0x79t
        -0x65t
        -0x40t
        0x3dt
    .end array-data

    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    nop

    .line 1559
    :array_616
    .array-data 1
        0x30t
        -0x66t
        -0x37t
        -0x32t
        -0x74t
        0x71t
        -0x9t
        -0x4at
    .end array-data

    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    :array_61e
    .array-data 1
        0x7at
        0x74t
        0xdt
        -0x6at
        -0x27t
        -0x2dt
        -0x7et
        0x3ft
        0x7at
        0x56t
        0xct
        -0x60t
        -0x27t
        -0x2et
        0x73t
        0x6ft
        0x18t
        0x36t
        0x66t
        -0x33t
        -0x4et
        -0x4et
        -0x1dt
        0x6ft
        0x1et
        0x36t
        0x66t
        -0x33t
        -0x47t
        0x58t
        0x73t
    .end array-data

    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    :array_632
    .array-data 1
        -0x56t
        -0x1at
        -0x24t
        0x1dt
        0x9t
        0x62t
        0x53t
        -0x41t
    .end array-data
.end method
