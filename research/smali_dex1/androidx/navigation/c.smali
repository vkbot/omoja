.class public final synthetic Landroidx/navigation/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/navigation/c;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/navigation/c;->c:Ljava/lang/Object;

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
    .registers 10

    .line 1
    iget v0, p0, Landroidx/navigation/c;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Landroidx/navigation/c;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_268

    .line 10
    .line 11
    .line 12
    check-cast v4, Lx0/c;

    .line 13
    .line 14
    iget-object p1, v4, Lx0/c;->c:Lx0/o;

    .line 15
    .line 16
    iget-boolean p1, p1, Lx0/o;->d:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1e

    .line 19
    .line 20
    iget-boolean p1, v4, Lx0/c;->e:Z

    .line 21
    .line 22
    xor-int/2addr p1, v3

    .line 23
    iput-boolean p1, v4, Lx0/c;->e:Z

    .line 24
    .line 25
    invoke-virtual {v4}, Lx0/c;->k()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Lx0/c;->l()V

    .line 29
    .line 30
    .line 31
    :cond_1e
    return-void

    .line 32
    :pswitch_1f
    check-cast v4, Lcom/example/navistart/mainview/OnOffButton;

    .line 33
    .line 34
    sget-object p1, Lcom/example/navistart/mainview/OnOffButton;->g:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_31

    .line 41
    .line 42
    iget-object p1, v4, Lcom/example/navistart/mainview/OnOffButton;->e:Ljava/lang/Runnable;

    .line 43
    .line 44
    if-eqz p1, :cond_38

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 47
    .line 48
    .line 49
    goto :goto_38

    .line 50
    :cond_31
    iget-object p1, v4, Lcom/example/navistart/mainview/OnOffButton;->f:Ljava/lang/Runnable;

    .line 51
    .line 52
    if-eqz p1, :cond_38

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 55
    .line 56
    .line 57
    :cond_38
    :goto_38
    sget-object p1, Lcom/example/navistart/mainview/OnOffButton;->g:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    xor-int/2addr p1, v3

    .line 64
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sput-object p1, Lcom/example/navistart/mainview/OnOffButton;->g:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {v4, p1}, Lcom/example/navistart/mainview/OnOffButton;->setOnOff(Ljava/lang/Boolean;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_49
    check-cast v4, Lt1/h;

    .line 75
    .line 76
    iget-object p1, v4, Lt1/h;->k:Lt1/g;

    .line 77
    .line 78
    if-eqz p1, :cond_83

    .line 79
    .line 80
    iget-boolean v0, v4, Lt1/h;->f:Z

    .line 81
    .line 82
    check-cast p1, Lm0/n1;

    .line 83
    .line 84
    iget-object v2, p1, Lm0/n1;->d:Lt1/h;

    .line 85
    .line 86
    if-eqz v2, :cond_6b

    .line 87
    .line 88
    iget-object v5, v2, Lt1/h;->e:Landroid/widget/ImageButton;

    .line 89
    .line 90
    const v6, 0x7f07017e

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    .line 95
    .line 96
    iput-boolean v1, v2, Lt1/h;->f:Z

    .line 97
    .line 98
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lh0/b;->q()Lw0/y;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-interface {v1}, Lw0/y;->a()V

    .line 106
    .line 107
    .line 108
    :cond_6b
    if-nez v0, :cond_83

    .line 109
    .line 110
    iput-object v4, p1, Lm0/n1;->d:Lt1/h;

    .line 111
    .line 112
    iget-object p1, v4, Lt1/h;->e:Landroid/widget/ImageButton;

    .line 113
    .line 114
    const v0, 0x7f07017f

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    .line 119
    .line 120
    iput-boolean v3, v4, Lt1/h;->f:Z

    .line 121
    .line 122
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lh0/b;->q()Lw0/y;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-interface {p1}, Lw0/y;->d()V

    .line 130
    .line 131
    .line 132
    :cond_83
    return-void

    .line 133
    :pswitch_84
    check-cast v4, Lcom/example/navistart/mainview/HeatManSetView;

    .line 134
    .line 135
    iget-object p1, v4, Lcom/example/navistart/mainview/HeatManSetView;->n:Ljava/lang/String;

    .line 136
    .line 137
    const/16 v0, 0x9

    .line 138
    .line 139
    new-array v5, v0, [B

    .line 140
    .line 141
    fill-array-data v5, :array_298

    .line 142
    .line 143
    .line 144
    new-array v6, v2, [B

    .line 145
    .line 146
    fill-array-data v6, :array_2a2

    .line 147
    .line 148
    .line 149
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_ee

    .line 158
    .line 159
    iget-object p1, v4, Lcom/example/navistart/mainview/HeatManSetView;->n:Ljava/lang/String;

    .line 160
    .line 161
    const/16 v5, 0xe

    .line 162
    .line 163
    new-array v6, v5, [B

    .line 164
    .line 165
    fill-array-data v6, :array_2aa

    .line 166
    .line 167
    .line 168
    new-array v7, v2, [B

    .line 169
    .line 170
    fill-array-data v7, :array_2b6

    .line 171
    .line 172
    .line 173
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-static {p1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-nez p1, :cond_ee

    .line 182
    .line 183
    iget-object p1, v4, Lcom/example/navistart/mainview/HeatManSetView;->n:Ljava/lang/String;

    .line 184
    .line 185
    new-array v5, v5, [B

    .line 186
    .line 187
    fill-array-data v5, :array_2be

    .line 188
    .line 189
    .line 190
    new-array v6, v2, [B

    .line 191
    .line 192
    fill-array-data v6, :array_2ca

    .line 193
    .line 194
    .line 195
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-nez p1, :cond_ee

    .line 204
    .line 205
    iget-object p1, v4, Lcom/example/navistart/mainview/HeatManSetView;->n:Ljava/lang/String;

    .line 206
    .line 207
    new-array v0, v0, [B

    .line 208
    .line 209
    fill-array-data v0, :array_2d2

    .line 210
    .line 211
    .line 212
    new-array v2, v2, [B

    .line 213
    .line 214
    fill-array-data v2, :array_2dc

    .line 215
    .line 216
    .line 217
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_e3

    .line 226
    .line 227
    goto :goto_ee

    .line 228
    :cond_e3
    iget p1, v4, Lcom/example/navistart/mainview/HeatManSetView;->l:I

    .line 229
    .line 230
    const/4 v0, 0x3

    .line 231
    if-ne p1, v0, :cond_e9

    .line 232
    .line 233
    goto :goto_eb

    .line 234
    :cond_e9
    add-int/lit8 v1, p1, 0x1

    .line 235
    .line 236
    :goto_eb
    iput v1, v4, Lcom/example/navistart/mainview/HeatManSetView;->l:I

    .line 237
    .line 238
    goto :goto_f5

    .line 239
    :cond_ee
    :goto_ee
    iget p1, v4, Lcom/example/navistart/mainview/HeatManSetView;->l:I

    .line 240
    .line 241
    if-nez p1, :cond_f3

    .line 242
    .line 243
    move v1, v3

    .line 244
    :cond_f3
    iput v1, v4, Lcom/example/navistart/mainview/HeatManSetView;->l:I

    .line 245
    .line 246
    :goto_f5
    iget p1, v4, Lcom/example/navistart/mainview/HeatManSetView;->l:I

    .line 247
    .line 248
    invoke-virtual {v4, p1}, Lcom/example/navistart/mainview/HeatManSetView;->setLevel(I)V

    .line 249
    .line 250
    .line 251
    iget-object p1, v4, Lcom/example/navistart/mainview/HeatManSetView;->q:Ljava/lang/Runnable;

    .line 252
    .line 253
    if-eqz p1, :cond_101

    .line 254
    .line 255
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 256
    .line 257
    .line 258
    :cond_101
    return-void

    .line 259
    :pswitch_102
    check-cast v4, Ls1/n;

    .line 260
    .line 261
    invoke-virtual {v4}, Ls1/n;->j()V

    .line 262
    .line 263
    .line 264
    new-instance p1, Landroid/content/Intent;

    .line 265
    .line 266
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const-class v1, Lcom/example/navistart/home/WebLauncherActivity;

    .line 271
    .line 272
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .line 274
    .line 275
    const/16 v0, 0x16

    .line 276
    .line 277
    new-array v0, v0, [B

    .line 278
    .line 279
    fill-array-data v0, :array_2e4

    .line 280
    .line 281
    .line 282
    new-array v1, v2, [B

    .line 283
    .line 284
    fill-array-data v1, :array_2f4

    .line 285
    .line 286
    .line 287
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    .line 293
    .line 294
    const/high16 v0, 0x34000000

    .line 295
    .line 296
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :pswitch_132
    check-cast v4, Lm0/w1;

    .line 308
    .line 309
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-static {p1}, Lb1/u;->q(Landroid/content/Context;)Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    if-eqz p1, :cond_13f

    .line 318
    .line 319
    goto :goto_157

    .line 320
    :cond_13f
    :try_start_13f
    new-instance p1, Landroid/content/Intent;

    .line 321
    .line 322
    const/16 v0, 0x26

    .line 323
    .line 324
    new-array v0, v0, [B

    .line 325
    .line 326
    fill-array-data v0, :array_2fc

    .line 327
    .line 328
    .line 329
    new-array v1, v2, [B

    .line 330
    .line 331
    fill-array-data v1, :array_314

    .line 332
    .line 333
    .line 334
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_157} :catch_157

    .line 342
    .line 343
    .line 344
    :catch_157
    :goto_157
    return-void

    .line 345
    :pswitch_158
    check-cast v4, Lm0/s0;

    .line 346
    .line 347
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    instance-of p1, p1, Ll0/a;

    .line 352
    .line 353
    if-eqz p1, :cond_16c

    .line 354
    .line 355
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    check-cast p1, Ll0/a;

    .line 360
    .line 361
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 362
    .line 363
    .line 364
    goto :goto_179

    .line 365
    :cond_16c
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    if-eqz p1, :cond_179

    .line 370
    .line 371
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 376
    .line 377
    .line 378
    :cond_179
    :goto_179
    return-void

    .line 379
    :pswitch_17a
    check-cast v4, Lm0/n0;

    .line 380
    .line 381
    sget-object p1, Lm0/n0;->k:Ljava/lang/String;

    .line 382
    .line 383
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    instance-of p1, p1, Ll0/a;

    .line 388
    .line 389
    if-eqz p1, :cond_190

    .line 390
    .line 391
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    check-cast p1, Ll0/a;

    .line 396
    .line 397
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 398
    .line 399
    .line 400
    goto :goto_19d

    .line 401
    :cond_190
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    if-eqz p1, :cond_19d

    .line 406
    .line 407
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 412
    .line 413
    .line 414
    :cond_19d
    :goto_19d
    return-void

    .line 415
    :pswitch_19e
    check-cast v4, Lm0/y;

    .line 416
    .line 417
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    instance-of p1, p1, Ll0/a;

    .line 422
    .line 423
    if-eqz p1, :cond_1b2

    .line 424
    .line 425
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    check-cast p1, Ll0/a;

    .line 430
    .line 431
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 432
    .line 433
    .line 434
    goto :goto_1bb

    .line 435
    :cond_1b2
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    if-eqz p1, :cond_1bb

    .line 440
    .line 441
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 442
    .line 443
    .line 444
    :cond_1bb
    :goto_1bb
    return-void

    .line 445
    :pswitch_1bc
    check-cast v4, Lf1/e;

    .line 446
    .line 447
    sget p1, Lf1/e;->q:I

    .line 448
    .line 449
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 454
    .line 455
    .line 456
    return-void

    .line 457
    :pswitch_1c8
    check-cast v4, Lf0/e;

    .line 458
    .line 459
    iget-object p1, v4, Lf0/e;->b:Lf0/c;

    .line 460
    .line 461
    invoke-interface {p1}, Lf0/c;->b()V

    .line 462
    .line 463
    .line 464
    return-void

    .line 465
    :pswitch_1d0
    check-cast v4, Lf0/d;

    .line 466
    .line 467
    iget-object p1, v4, Lf0/d;->b:Lf0/c;

    .line 468
    .line 469
    invoke-interface {p1}, Lf0/c;->b()V

    .line 470
    .line 471
    .line 472
    return-void

    .line 473
    :pswitch_1d8
    check-cast v4, Lf0/a;

    .line 474
    .line 475
    iget-object p1, v4, Lf0/a;->b:Lf0/c;

    .line 476
    .line 477
    invoke-interface {p1}, Lf0/c;->b()V

    .line 478
    .line 479
    .line 480
    return-void

    .line 481
    :pswitch_1e0
    check-cast v4, Le4/x;

    .line 482
    .line 483
    iget-object p1, v4, Le4/x;->f:Landroid/widget/EditText;

    .line 484
    .line 485
    if-nez p1, :cond_1e7

    .line 486
    .line 487
    goto :goto_212

    .line 488
    :cond_1e7
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 489
    .line 490
    .line 491
    move-result p1

    .line 492
    iget-object v0, v4, Le4/x;->f:Landroid/widget/EditText;

    .line 493
    .line 494
    if-eqz v0, :cond_1f8

    .line 495
    .line 496
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    .line 501
    .line 502
    if-eqz v0, :cond_1f8

    .line 503
    .line 504
    move v1, v3

    .line 505
    :cond_1f8
    iget-object v0, v4, Le4/x;->f:Landroid/widget/EditText;

    .line 506
    .line 507
    if-eqz v1, :cond_201

    .line 508
    .line 509
    const/4 v1, 0x0

    .line 510
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 511
    .line 512
    .line 513
    goto :goto_208

    .line 514
    :cond_201
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 519
    .line 520
    .line 521
    :goto_208
    if-ltz p1, :cond_20f

    .line 522
    .line 523
    iget-object v0, v4, Le4/x;->f:Landroid/widget/EditText;

    .line 524
    .line 525
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 526
    .line 527
    .line 528
    :cond_20f
    invoke-virtual {v4}, Le4/q;->p()V

    .line 529
    .line 530
    .line 531
    :goto_212
    return-void

    .line 532
    :pswitch_213
    check-cast v4, Le4/l;

    .line 533
    .line 534
    invoke-virtual {v4}, Le4/l;->t()V

    .line 535
    .line 536
    .line 537
    return-void

    .line 538
    :pswitch_219
    check-cast v4, Le4/d;

    .line 539
    .line 540
    iget-object p1, v4, Le4/d;->i:Landroid/widget/EditText;

    .line 541
    .line 542
    if-nez p1, :cond_220

    .line 543
    .line 544
    goto :goto_22c

    .line 545
    :cond_220
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    if-eqz p1, :cond_229

    .line 550
    .line 551
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 552
    .line 553
    .line 554
    :cond_229
    invoke-virtual {v4}, Le4/q;->p()V

    .line 555
    .line 556
    .line 557
    :goto_22c
    return-void

    .line 558
    :pswitch_22d
    check-cast v4, Le0/g2;

    .line 559
    .line 560
    iget-object p1, v4, Le0/g2;->g:La4/g;

    .line 561
    .line 562
    invoke-virtual {p1}, La4/g;->run()V

    .line 563
    .line 564
    .line 565
    iget-object p1, v4, Le0/g2;->i:Le0/g2;

    .line 566
    .line 567
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 568
    .line 569
    .line 570
    return-void

    .line 571
    :pswitch_23a
    check-cast v4, Landroidx/appcompat/app/AlertDialog;

    .line 572
    .line 573
    sget-object p1, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 574
    .line 575
    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 576
    .line 577
    .line 578
    return-void

    .line 579
    :pswitch_242
    check-cast v4, Lcom/example/navistart/AutoVibVodActivity;

    .line 580
    .line 581
    sget p1, Lcom/example/navistart/AutoVibVodActivity;->b:I

    .line 582
    .line 583
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 584
    .line 585
    .line 586
    return-void

    .line 587
    :pswitch_24a
    check-cast v4, Lcom/example/navistart/APInAct;

    .line 588
    .line 589
    sget-object p1, Lcom/example/navistart/APInAct;->f:Ljava/lang/String;

    .line 590
    .line 591
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 592
    .line 593
    .line 594
    return-void

    .line 595
    :pswitch_252
    check-cast v4, Lcom/google/android/material/datepicker/p;

    .line 596
    .line 597
    invoke-virtual {v4}, Lcom/google/android/material/datepicker/p;->t()V

    .line 598
    .line 599
    .line 600
    const/4 p1, 0x0

    .line 601
    throw p1

    .line 602
    :pswitch_259
    check-cast v4, Lb1/h;

    .line 603
    .line 604
    iget-object p1, v4, Lb1/h;->f:Lf0/c;

    .line 605
    .line 606
    invoke-interface {p1}, Lf0/c;->b()V

    .line 607
    .line 608
    .line 609
    return-void

    .line 610
    :pswitch_261
    check-cast v4, Landroidx/navigation/NavDirections;

    .line 611
    .line 612
    invoke-static {v4, p1}, Landroidx/navigation/Navigation;->a(Landroidx/navigation/NavDirections;Landroid/view/View;)V

    .line 613
    .line 614
    .line 615
    return-void

    .line 616
    nop

    .line 617
    :pswitch_data_268
    .packed-switch 0x0
        :pswitch_261
        :pswitch_259
        :pswitch_252
        :pswitch_24a
        :pswitch_242
        :pswitch_23a
        :pswitch_22d
        :pswitch_219
        :pswitch_213
        :pswitch_1e0
        :pswitch_1d8
        :pswitch_1d0
        :pswitch_1c8
        :pswitch_1bc
        :pswitch_19e
        :pswitch_17a
        :pswitch_158
        :pswitch_132
        :pswitch_102
        :pswitch_84
        :pswitch_49
        :pswitch_1f
    .end packed-switch

    .line 618
    .line 619
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
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    :array_298
    .array-data 1
        0x9t
        0x3at
        0x3ct
        0x3ct
        0x18t
        0x3bt
        0x6et
        0x53t
        0x2dt
    .end array-data

    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    nop

    .line 675
    :array_2a2
    .array-data 1
        0x41t
        0x5ft
        0x5dt
        0x48t
        0x4ft
        0x53t
        0xbt
        0x36t
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_2aa
    .array-data 1
        -0x11t
        -0x25t
        0x4ct
        0x1t
        0x3dt
        -0x5at
        -0x2t
        -0x2et
        -0x2ct
        -0x2at
        0x44t
        0x10t
        0x6t
        -0x55t
    .end array-data

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
    nop

    .line 695
    :array_2b6
    .array-data 1
        -0x59t
        -0x42t
        0x2dt
        0x75t
        0x6at
        -0x31t
        -0x70t
        -0x4at
    .end array-data

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    :array_2be
    .array-data 1
        -0x3dt
        0x6dt
        -0x34t
        -0x38t
        0x16t
        0x20t
        0x5t
        0x79t
        -0x4t
        0x61t
        -0x3dt
        -0x28t
        0x2bt
        0x32t
    .end array-data

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    nop

    .line 715
    :array_2ca
    .array-data 1
        -0x75t
        0x8t
        -0x53t
        -0x44t
        0x44t
        0x45t
        0x64t
        0xbt
    .end array-data

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    :array_2d2
    .array-data 1
        0x33t
        -0x51t
        0x4bt
        0xdt
        -0x5t
        0x3et
        -0x52t
        -0x11t
        0x13t
    .end array-data

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    nop

    .line 733
    :array_2dc
    .array-data 1
        0x67t
        -0x3at
        0x26t
        0x68t
        -0x77t
        0x76t
        -0x35t
        -0x72t
    .end array-data

    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    :array_2e4
    .array-data 1
        -0x10t
        0xet
        -0x71t
        0x5dt
        0x7bt
        -0x2et
        0x56t
        0x49t
        -0xft
        0x1dt
        -0x7et
        0x56t
        0x56t
        -0x1ft
        0x44t
        0x59t
        -0x15t
        0xat
        -0x7dt
        0x5dt
        0x43t
        -0x33t
    .end array-data

    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    nop

    .line 757
    :array_2f4
    .array-data 1
        -0x61t
        0x7et
        -0x16t
        0x33t
        0x24t
        -0x42t
        0x37t
        0x3ct
    .end array-data

    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    :array_2fc
    .array-data 1
        -0x53t
        0x45t
        -0x5et
        -0x5ct
        0x5dt
        -0x79t
        0x68t
        0x73t
        -0x41t
        0x4et
        -0x4et
        -0x5et
        0x5bt
        -0x80t
        0x6bt
        0x2et
        -0x1et
        0x7et
        -0x6bt
        -0x69t
        0x75t
        -0x55t
        0x53t
        0x1ct
        -0x71t
        0x68t
        -0x7dt
        -0x7bt
        0x61t
        -0x4ft
        0x5ft
        0x18t
        -0x68t
        0x7ft
        -0x71t
        -0x68t
        0x75t
        -0x43t
    .end array-data

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
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    nop

    .line 789
    :array_314
    .array-data 1
        -0x34t
        0x2bt
        -0x3at
        -0x2at
        0x32t
        -0x12t
        0xct
        0x5dt
    .end array-data
.end method
