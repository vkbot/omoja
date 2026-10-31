.class public final synthetic Le0/q3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/punto;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/punto;I)V
    .locals 0

    .line 1
    iput p2, p0, Le0/q3;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/q3;->c:Lcom/example/navistart/punto;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Le0/q3;->b:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const-string v3, ""

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x2

    .line 11
    const/4 v7, 0x0

    .line 12
    const/16 v8, 0x8

    .line 13
    .line 14
    iget-object v9, v0, Le0/q3;->c:Lcom/example/navistart/punto;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget-object v1, v9, Lcom/example/navistart/punto;->j:Landroid/widget/EditText;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    move v1, v7

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    :goto_0
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const v2, 0x7f130356

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v1}, Ly5/k;->w(ILandroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v9, Lcom/example/navistart/punto;->j:Landroid/widget/EditText;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    new-instance v10, Le0/s3;

    .line 66
    .line 67
    iget-object v1, v9, Lcom/example/navistart/punto;->c:Lcom/example/navistart/punto;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    sget-object v1, Le0/x1;->q:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/example/navistart/punto;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    new-array v1, v6, [B

    .line 80
    .line 81
    fill-array-data v1, :array_0

    .line 82
    .line 83
    .line 84
    new-array v2, v8, [B

    .line 85
    .line 86
    fill-array-data v2, :array_1

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    const/16 v16, 0x0

    .line 94
    .line 95
    const-string v14, ""

    .line 96
    .line 97
    invoke-direct/range {v10 .. v16}, Le0/s3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v10}, Lcom/example/navistart/punto;->u(Le0/s3;)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v2, v9, Lcom/example/navistart/punto;->c:Lcom/example/navistart/punto;

    .line 108
    .line 109
    invoke-static {v2}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2, v11}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v5}, Lcom/example/navistart/punto;->v(Z)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v9, Lcom/example/navistart/punto;->k:Landroid/widget/EditText;

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 122
    .line 123
    .line 124
    iget-object v1, v9, Lcom/example/navistart/punto;->l:Landroid/widget/Button;

    .line 125
    .line 126
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 127
    .line 128
    .line 129
    new-instance v1, Le0/r3;

    .line 130
    .line 131
    invoke-direct {v1, v9}, Le0/r3;-><init>(Lcom/example/navistart/punto;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const v2, 0x7f130355

    .line 143
    .line 144
    .line 145
    invoke-static {v2, v1}, Ly5/k;->w(ILandroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    :goto_1
    return-void

    .line 149
    :pswitch_0
    sget-object v1, Lcom/example/navistart/punto;->r:Ljava/lang/String;

    .line 150
    .line 151
    new-instance v1, Landroid/content/Intent;

    .line 152
    .line 153
    iget-object v2, v9, Lcom/example/navistart/punto;->c:Lcom/example/navistart/punto;

    .line 154
    .line 155
    const-class v3, Lcom/woha/wifim/MainWifiManadger;

    .line 156
    .line 157
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v9, v1, v4}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_1
    sget-object v1, Lcom/example/navistart/punto;->r:Ljava/lang/String;

    .line 165
    .line 166
    new-instance v1, Landroid/content/Intent;

    .line 167
    .line 168
    const-class v2, Lcom/example/navistart/PermActivity;

    .line 169
    .line 170
    invoke-direct {v1, v9, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v9, v1, v4}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_2
    sget-object v1, Lcom/example/navistart/punto;->r:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :pswitch_3
    sget-object v1, Lcom/example/navistart/punto;->r:Ljava/lang/String;

    .line 184
    .line 185
    new-instance v1, Landroid/content/Intent;

    .line 186
    .line 187
    const-class v2, Lcom/example/navistart/UpdateActivity;

    .line 188
    .line 189
    invoke-direct {v1, v9, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v9, v1, v4}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :pswitch_4
    sget-object v1, Lcom/example/navistart/punto;->r:Ljava/lang/String;

    .line 197
    .line 198
    sget-object v1, Le0/g0;->a:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {}, Le0/f0;->values()[Le0/f0;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 205
    .line 206
    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    .line 208
    .line 209
    const/16 v4, 0xf

    .line 210
    .line 211
    new-array v4, v4, [B

    .line 212
    .line 213
    fill-array-data v4, :array_2

    .line 214
    .line 215
    .line 216
    new-array v5, v8, [B

    .line 217
    .line 218
    fill-array-data v5, :array_3

    .line 219
    .line 220
    .line 221
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 226
    .line 227
    .line 228
    array-length v4, v1

    .line 229
    new-array v4, v4, [Ljava/lang/String;

    .line 230
    .line 231
    move v5, v7

    .line 232
    :goto_2
    array-length v6, v1

    .line 233
    if-ge v5, v6, :cond_3

    .line 234
    .line 235
    aget-object v6, v1, v5

    .line 236
    .line 237
    iget-object v6, v6, Le0/f0;->b:Ljava/lang/String;

    .line 238
    .line 239
    aput-object v6, v4, v5

    .line 240
    .line 241
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-eqz v6, :cond_2

    .line 246
    .line 247
    invoke-virtual {v9}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    const/high16 v8, 0x7f130000

    .line 252
    .line 253
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    aput-object v6, v4, v5

    .line 258
    .line 259
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_3
    new-instance v3, Le0/e0;

    .line 263
    .line 264
    invoke-direct {v3, v7, v9, v1}, Le0/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :pswitch_5
    sget-object v1, Lcom/example/navistart/punto;->r:Ljava/lang/String;

    .line 275
    .line 276
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 277
    .line 278
    sput-object v1, Lcom/example/navistart/punto;->t:Ljava/lang/Boolean;

    .line 279
    .line 280
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    new-array v4, v6, [B

    .line 285
    .line 286
    fill-array-data v4, :array_4

    .line 287
    .line 288
    .line 289
    new-array v5, v8, [B

    .line 290
    .line 291
    fill-array-data v5, :array_5

    .line 292
    .line 293
    .line 294
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    sget-object v5, Lcom/example/navistart/punto;->t:Ljava/lang/Boolean;

    .line 299
    .line 300
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    invoke-virtual {v1, v4, v5}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 305
    .line 306
    .line 307
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    new-array v2, v2, [B

    .line 312
    .line 313
    fill-array-data v2, :array_6

    .line 314
    .line 315
    .line 316
    new-array v4, v8, [B

    .line 317
    .line 318
    fill-array-data v4, :array_7

    .line 319
    .line 320
    .line 321
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v1, v2, v3}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v9}, Lcom/example/navistart/punto;->x()V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :pswitch_6
    sget-object v1, Lcom/example/navistart/punto;->r:Ljava/lang/String;

    .line 333
    .line 334
    new-instance v10, Le0/s3;

    .line 335
    .line 336
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    new-array v2, v2, [B

    .line 341
    .line 342
    fill-array-data v2, :array_8

    .line 343
    .line 344
    .line 345
    new-array v3, v8, [B

    .line 346
    .line 347
    fill-array-data v3, :array_9

    .line 348
    .line 349
    .line 350
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    new-array v3, v5, [B

    .line 355
    .line 356
    const/16 v4, 0x7f

    .line 357
    .line 358
    aput-byte v4, v3, v7

    .line 359
    .line 360
    new-array v4, v8, [B

    .line 361
    .line 362
    fill-array-data v4, :array_a

    .line 363
    .line 364
    .line 365
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-virtual {v1, v2, v3}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    iget-object v1, v9, Lcom/example/navistart/punto;->c:Lcom/example/navistart/punto;

    .line 374
    .line 375
    invoke-static {v1}, Lcom/example/navistart/punto;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v12

    .line 379
    sget-object v1, Le0/x1;->q:Ljava/lang/String;

    .line 380
    .line 381
    invoke-static {v1}, Lcom/example/navistart/punto;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v13

    .line 385
    iget-object v1, v9, Lcom/example/navistart/punto;->k:Landroid/widget/EditText;

    .line 386
    .line 387
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v14

    .line 395
    new-array v1, v6, [B

    .line 396
    .line 397
    fill-array-data v1, :array_b

    .line 398
    .line 399
    .line 400
    new-array v2, v8, [B

    .line 401
    .line 402
    fill-array-data v2, :array_c

    .line 403
    .line 404
    .line 405
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v15

    .line 409
    const/16 v16, 0x0

    .line 410
    .line 411
    invoke-direct/range {v10 .. v16}, Le0/s3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v9, v10}, Lcom/example/navistart/punto;->u(Le0/s3;)V

    .line 415
    .line 416
    .line 417
    iget-object v1, v9, Lcom/example/navistart/punto;->k:Landroid/widget/EditText;

    .line 418
    .line 419
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 420
    .line 421
    .line 422
    return-void

    .line 423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    .line 441
    :array_0
    .array-data 1
        0x40t
        -0x1bt
    .end array-data

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    nop

    .line 447
    :array_1
    .array-data 1
        0x36t
        -0x78t
        0x7bt
        0x47t
        0x28t
        -0x3ft
        -0x55t
        0x38t
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :array_2
    .array-data 1
        -0xdt
        0x45t
        -0x5ct
        -0x55t
        -0x53t
        -0x1t
        0x19t
        0x3ft
        -0x2ft
        0x43t
        -0x54t
        -0x4ft
        -0x41t
        -0x3t
        0x5ct
    .end array-data

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
    .line 467
    :array_3
    .array-data 1
        -0x50t
        0x2dt
        -0x35t
        -0x3ct
        -0x22t
        -0x66t
        0x39t
        0x53t
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_4
    .array-data 1
        -0x2ft
        -0x1bt
    .end array-data

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    nop

    .line 481
    :array_5
    .array-data 1
        -0x50t
        -0x70t
        -0x8t
        -0x7bt
        -0x38t
        0x71t
        -0xft
        0xft
    .end array-data

    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_6
    .array-data 1
        -0x47t
        -0x76t
        0x2dt
    .end array-data

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    :array_7
    .array-data 1
        -0x2ct
        -0x1t
        0x5ft
        0x56t
        -0x2bt
        0x4dt
        0x71t
        -0x5dt
    .end array-data

    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    :array_8
    .array-data 1
        -0x5at
        -0x25t
        -0x80t
    .end array-data

    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :array_9
    .array-data 1
        -0x35t
        -0x52t
        -0xet
        -0x2et
        0x43t
        -0x74t
        -0x73t
        0x36t
    .end array-data

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    :array_a
    .array-data 1
        0x4et
        0x2et
        0x71t
        0x4ct
        0x2at
        0x17t
        -0xbt
        -0x77t
    .end array-data

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    :array_b
    .array-data 1
        0x1at
        0x79t
    .end array-data

    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    nop

    .line 531
    :array_c
    .array-data 1
        0x6at
        0xft
        0x6at
        0x45t
        -0x45t
        -0x7t
        0x69t
        0x17t
    .end array-data
.end method
