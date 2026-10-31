.class public final synthetic Le0/s0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 10
    iput p1, p0, Le0/s0;->a:I

    iput-object p2, p0, Le0/s0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/example/navistart/MainActivity;Lcom/example/navistart/cores/HFunEnum;)V
    .registers 3

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Le0/s0;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Le0/s0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7

    .line 1
    iget v0, p0, Le0/s0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_172

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Le0/s0;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lw0/v0;

    .line 12
    .line 13
    iget-object v0, p1, Lw0/v0;->e:Landroid/widget/EditText;

    .line 14
    .line 15
    xor-int/lit8 v1, p2, 0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    iput-boolean p2, p1, Lw0/v0;->f:Z

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_16
    iget-object p1, p0, Le0/s0;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Lu1/d;

    .line 26
    .line 27
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/16 v1, 0x10

    .line 32
    .line 33
    new-array v1, v1, [B

    .line 34
    .line 35
    fill-array-data v1, :array_18a

    .line 36
    .line 37
    .line 38
    new-array v2, v2, [B

    .line 39
    .line 40
    fill-array-data v2, :array_196

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1, p2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    if-eqz p2, :cond_3b

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/example/navistart/Si;->a(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    goto :goto_4f

    .line 60
    :cond_3b
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-boolean p2, Lcom/example/navistart/Si;->d:Z

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance p2, Landroid/content/Intent;

    .line 71
    .line 72
    const-class v0, Lcom/example/navistart/Si;

    .line 73
    .line 74
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 78
    .line 79
    .line 80
    :goto_4f
    return-void

    .line 81
    :pswitch_50
    iget-object p1, p0, Le0/s0;->b:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Lq0/l;

    .line 84
    .line 85
    iget-boolean p2, p1, Lq0/l;->v:Z

    .line 86
    .line 87
    if-nez p2, :cond_9d

    .line 88
    .line 89
    const/16 p2, 0x9

    .line 90
    .line 91
    new-array p2, p2, [B

    .line 92
    .line 93
    fill-array-data p2, :array_19e

    .line 94
    .line 95
    .line 96
    new-array v0, v2, [B

    .line 97
    .line 98
    fill-array-data v0, :array_1a8

    .line 99
    .line 100
    .line 101
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    iget-object v0, p1, Lq0/l;->t:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-nez p2, :cond_71

    .line 112
    .line 113
    goto :goto_9d

    .line 114
    :cond_71
    sput-boolean v1, Lcom/example/navistart/MockGPS/MockGpsService;->z:Z

    .line 115
    .line 116
    sget-object p2, Lcom/example/navistart/MockGPS/MockGpsService;->s:Ljava/lang/String;

    .line 117
    .line 118
    sget-boolean v0, Lcom/example/navistart/MockGPS/MockGpsService;->z:Z

    .line 119
    .line 120
    :try_start_77
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1, p2, v0}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7e} :catch_7e

    .line 125
    .line 126
    .line 127
    :catch_7e
    sget-object p2, Lcom/example/navistart/MockGPS/MockGpsService;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    if-eqz p2, :cond_9d

    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    iget-object v0, p1, Lq0/l;->t:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v1, p1, Lq0/l;->d:Landroid/widget/EditText;

    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {p1}, Lq0/l;->x()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    invoke-static {p2, p1, v0, v1}, Lcom/example/navistart/MockGPS/MockGpsService;->n(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_9d
    :goto_9d
    return-void

    .line 159
    :pswitch_9e
    iget-object p1, p0, Le0/s0;->b:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p1, Landroid/widget/EditText;

    .line 162
    .line 163
    sget-object v0, Lcom/woha/wifim/MainWifiManadger;->v:Ljava/lang/String;

    .line 164
    .line 165
    if-eqz p2, :cond_ac

    .line 166
    .line 167
    const/16 p2, 0x91

    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setInputType(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_b1

    .line 173
    :cond_ac
    const/16 p2, 0x81

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setInputType(I)V

    .line 176
    .line 177
    .line 178
    :goto_b1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :pswitch_bd
    iget-object p1, p0, Le0/s0;->b:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast p1, Lm0/m2;

    .line 193
    .line 194
    sget-object p2, Lm0/m2;->m:Ljava/lang/String;

    .line 195
    .line 196
    iget-object p2, p1, Lm0/m2;->e:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 197
    .line 198
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    iget-object p1, p1, Lm0/m2;->f:Landroid/widget/EditText;

    .line 203
    .line 204
    if-nez p2, :cond_ce

    .line 205
    .line 206
    goto :goto_cf

    .line 207
    :cond_ce
    move v1, v2

    .line 208
    :goto_cf
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :pswitch_d3
    iget-object v0, p0, Le0/s0;->b:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 215
    .line 216
    iget-object v0, v0, Lcom/google/android/material/chip/Chip;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 217
    .line 218
    if-eqz v0, :cond_de

    .line 219
    .line 220
    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 221
    .line 222
    .line 223
    :cond_de
    return-void

    .line 224
    :pswitch_df
    iget-object p1, p0, Le0/s0;->b:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p1, Lcom/example/navistart/punto;

    .line 227
    .line 228
    sget-object v0, Lcom/example/navistart/punto;->r:Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const/4 v1, 0x3

    .line 235
    new-array v1, v1, [B

    .line 236
    .line 237
    fill-array-data v1, :array_1b0

    .line 238
    .line 239
    .line 240
    new-array v2, v2, [B

    .line 241
    .line 242
    fill-array-data v2, :array_1b6

    .line 243
    .line 244
    .line 245
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v0, v1, p2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p1, Lcom/example/navistart/punto;->j:Landroid/widget/EditText;

    .line 253
    .line 254
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p1, Lcom/example/navistart/punto;->l:Landroid/widget/Button;

    .line 258
    .line 259
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, p2}, Lcom/example/navistart/punto;->s(Z)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :pswitch_109
    iget-object p1, p0, Le0/s0;->b:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast p1, Lcom/example/navistart/UpdateActivity;

    .line 269
    .line 270
    iget-object v0, p1, Lcom/example/navistart/UpdateActivity;->g:Landroid/widget/Button;

    .line 271
    .line 272
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 273
    .line 274
    .line 275
    iget-object p1, p1, Lcom/example/navistart/UpdateActivity;->h:Landroid/widget/Button;

    .line 276
    .line 277
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :pswitch_118
    iget-object p1, p0, Le0/s0;->b:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast p1, Lcom/example/navistart/ModernMainActivity;

    .line 284
    .line 285
    sget-object v0, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const/16 v3, 0x15

    .line 292
    .line 293
    new-array v3, v3, [B

    .line 294
    .line 295
    fill-array-data v3, :array_1be

    .line 296
    .line 297
    .line 298
    new-array v2, v2, [B

    .line 299
    .line 300
    fill-array-data v2, :array_1ce

    .line 301
    .line 302
    .line 303
    invoke-static {v3, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v0, v2, p2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 308
    .line 309
    .line 310
    sget-object p2, Lcom/example/navistart/AllWidgetServices;->g:Lcom/example/navistart/AllWidgetServices;

    .line 311
    .line 312
    if-nez p2, :cond_13d

    .line 313
    .line 314
    invoke-static {p1}, Lcom/example/navistart/AllWidgetServices;->c(Landroid/content/Context;)V

    .line 315
    .line 316
    .line 317
    goto :goto_147

    .line 318
    :cond_13d
    iget-object p1, p2, Lcom/example/navistart/AllWidgetServices;->b:Landroid/os/Handler;

    .line 319
    .line 320
    new-instance v0, Le0/c;

    .line 321
    .line 322
    invoke-direct {v0, p2, v1}, Le0/c;-><init>(Lcom/example/navistart/AllWidgetServices;I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    .line 327
    .line 328
    :goto_147
    return-void

    .line 329
    :pswitch_148
    iget-object p1, p0, Le0/s0;->b:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast p1, Lcom/example/navistart/cores/HFunEnum;

    .line 332
    .line 333
    sget-object v0, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 334
    .line 335
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v0, v1, p2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 344
    .line 345
    .line 346
    :try_start_159
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 347
    .line 348
    .line 349
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-interface {v0, p1, p2}, Lcom/example/navistart/cores/CarCmdProxy;->hybrid(Lcom/example/navistart/cores/HFunEnum;Z)V
    :try_end_163
    .catchall {:try_start_159 .. :try_end_163} :catchall_163

    .line 354
    .line 355
    .line 356
    :catchall_163
    return-void

    .line 357
    :pswitch_164
    iget-object p1, p0, Le0/s0;->b:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast p1, Ljava/lang/String;

    .line 360
    .line 361
    sget-object v0, Lcom/example/navistart/MainActivity;->e1:Ljava/lang/String;

    .line 362
    .line 363
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v0, p1, p2}, Lu0/a;->saveBoolean(Ljava/lang/String;Z)V

    .line 368
    .line 369
    .line 370
    return-void

    .line 371
    :pswitch_data_172
    .packed-switch 0x0
        :pswitch_164
        :pswitch_148
        :pswitch_118
        :pswitch_109
        :pswitch_df
        :pswitch_d3
        :pswitch_bd
        :pswitch_9e
        :pswitch_50
        :pswitch_16
    .end packed-switch

    .line 372
    .line 373
    .line 374
    .line 375
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
    .line 393
    .line 394
    .line 395
    :array_18a
    .array-data 1
        -0x41t
        -0x78t
        -0x36t
        0x6dt
        0x4t
        0x7ft
        -0x5dt
        -0x7bt
        -0x5dt
        -0x62t
        -0x3bt
        0x6dt
        0x15t
        0x7ct
        -0x5dt
        -0x4ct
    .end array-data

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    :array_196
    .array-data 1
        -0x34t
        -0x8t
        -0x5dt
        0x32t
        0x65t
        0x13t
        -0x31t
        -0x26t
    .end array-data

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :array_19e
    .array-data 1
        0x68t
        -0x2dt
        -0x4dt
        0x73t
        -0x10t
        -0x39t
        0x13t
        0x43t
        0x68t
    .end array-data

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    nop

    .line 425
    :array_1a8
    .array-data 1
        0x18t
        -0x45t
        -0x24t
        0x1dt
        -0x6bt
        -0x68t
        0x72t
        0x33t
    .end array-data

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    :array_1b0
    .array-data 1
        0x3at
        0xdt
        0x5et
    .end array-data

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    :array_1b6
    .array-data 1
        0x4at
        0x69t
        0x30t
        -0x24t
        0x61t
        0x5ft
        -0x61t
        -0x24t
    .end array-data

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_1be
    .array-data 1
        -0x2at
        -0x42t
        0x2dt
        0x31t
        0x70t
        -0x53t
        0x7et
        0x54t
        -0x3ft
        -0x54t
        0x38t
        0x20t
        0x71t
        -0x53t
        0x6ct
        0x53t
        -0x3ct
        -0x57t
        0x31t
        0x31t
        0x66t
    .end array-data

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
    nop

    .line 463
    :array_1ce
    .array-data 1
        -0x5bt
        -0x35t
        0x5dt
        0x54t
        0x2t
        -0xet
        0x9t
        0x3dt
    .end array-data
.end method
