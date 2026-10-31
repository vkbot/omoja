.class public final synthetic Le0/o1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 8
    iput p1, p0, Le0/o1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/example/navistart/TestSpaceActivity;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Le0/o1;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 10

    .line 1
    iget v0, p0, Le0/o1;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x64

    .line 5
    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_182

    .line 9
    .line 10
    .line 11
    sget-object p1, Le0/w;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lai/onnxruntime/d;

    .line 27
    .line 28
    invoke-direct {p1, v1}, Lai/onnxruntime/d;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 36
    .line 37
    .line 38
    const/16 p1, 0x1a

    .line 39
    .line 40
    new-array p1, p1, [B

    .line 41
    .line 42
    fill-array-data p1, :array_190

    .line 43
    .line 44
    .line 45
    new-array v1, v3, [B

    .line 46
    .line 47
    fill-array-data v1, :array_1a2

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sget-object v1, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 55
    .line 56
    invoke-static {p1, v1}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 v1, 0x0

    .line 64
    :goto_3f
    if-ge v1, p1, :cond_77

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    check-cast v2, Ljava/lang/Thread;

    .line 73
    .line 74
    const/16 v4, 0x14

    .line 75
    .line 76
    new-array v4, v4, [B

    .line 77
    .line 78
    fill-array-data v4, :array_1aa

    .line 79
    .line 80
    .line 81
    new-array v5, v3, [B

    .line 82
    .line 83
    fill-array-data v5, :array_1b8

    .line 84
    .line 85
    .line 86
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    filled-new-array {v5, v6, v2}, [Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    sget-object v4, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 115
    .line 116
    invoke-static {v2, v4}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 117
    .line 118
    .line 119
    goto :goto_3f

    .line 120
    :cond_77
    const/16 p1, 0x1b

    .line 121
    .line 122
    new-array p1, p1, [B

    .line 123
    .line 124
    fill-array-data p1, :array_1c0

    .line 125
    .line 126
    .line 127
    new-array v0, v3, [B

    .line 128
    .line 129
    fill-array-data v0, :array_1d2

    .line 130
    .line 131
    .line 132
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    sget-object v0, Lcom/example/navistart/cores/ColorText;->RED:Lcom/example/navistart/cores/ColorText;

    .line 137
    .line 138
    invoke-static {p1, v0}, Lh0/b;->w(Ljava/lang/String;Lcom/example/navistart/cores/ColorText;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :pswitch_8d
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lh0/b;->r()Lcom/example/navistart/cores/ProBroProxy;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-interface {p1}, Lcom/example/navistart/cores/ProBroProxy;->StopHUD()V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_98
    new-instance p1, Lcom/example/navistart/cores/HUDMassageObj;

    .line 154
    .line 155
    invoke-direct {p1}, Lcom/example/navistart/cores/HUDMassageObj;-><init>()V

    .line 156
    .line 157
    .line 158
    const/16 v0, 0xe

    .line 159
    .line 160
    iput v0, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 161
    .line 162
    iput v2, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 163
    .line 164
    const/16 v0, 0x2710

    .line 165
    .line 166
    iput v0, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 167
    .line 168
    const/16 v0, 0xd

    .line 169
    .line 170
    new-array v0, v0, [B

    .line 171
    .line 172
    fill-array-data v0, :array_1da

    .line 173
    .line 174
    .line 175
    new-array v1, v3, [B

    .line 176
    .line 177
    fill-array-data v1, :array_1e6

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iput-object v0, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 185
    .line 186
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lh0/b;->r()Lcom/example/navistart/cores/ProBroProxy;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-interface {v0}, Lcom/example/navistart/cores/ProBroProxy;->StartHUD()V

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lh0/b;->r()Lcom/example/navistart/cores/ProBroProxy;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-interface {v0, p1}, Lcom/example/navistart/cores/ProBroProxy;->SendInfoHUD(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :pswitch_ce
    sget-object p1, Lcom/example/navistart/VJCT;->g:Landroid/widget/TextView;

    .line 208
    .line 209
    sget-object p1, Lcom/example/navistart/TService;->c:Ld2/h;

    .line 210
    .line 211
    if-eqz p1, :cond_e0

    .line 212
    .line 213
    iget-object v0, p1, Ld2/h;->a:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 216
    .line 217
    new-instance v2, Ll7/a;

    .line 218
    .line 219
    invoke-direct {v2, p1, v1}, Ll7/a;-><init>(Ld2/h;I)V

    .line 220
    .line 221
    .line 222
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 223
    .line 224
    .line 225
    :cond_e0
    return-void

    .line 226
    :pswitch_e1
    sget p1, Lcom/example/navistart/TestSpaceActivity;->h:I

    .line 227
    .line 228
    const/16 p1, 0x11

    .line 229
    .line 230
    new-array v0, p1, [B

    .line 231
    .line 232
    fill-array-data v0, :array_1ee

    .line 233
    .line 234
    .line 235
    new-array v4, v3, [B

    .line 236
    .line 237
    fill-array-data v4, :array_1fc

    .line 238
    .line 239
    .line 240
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v0}, Lh0/b;->v(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const/16 v0, 0x9

    .line 248
    .line 249
    new-array v0, v0, [B

    .line 250
    .line 251
    fill-array-data v0, :array_204

    .line 252
    .line 253
    .line 254
    new-array v4, v3, [B

    .line 255
    .line 256
    fill-array-data v4, :array_20e

    .line 257
    .line 258
    .line 259
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const/4 v4, -0x1

    .line 264
    invoke-static {v4, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 265
    .line 266
    .line 267
    sget v0, Lu1/e;->a:I

    .line 268
    .line 269
    sget v0, Lb1/u;->a:I

    .line 270
    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    new-array p1, p1, [B

    .line 277
    .line 278
    fill-array-data p1, :array_216

    .line 279
    .line 280
    .line 281
    new-array v5, v3, [B

    .line 282
    .line 283
    fill-array-data v5, :array_224

    .line 284
    .line 285
    .line 286
    invoke-static {p1, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-static {p1}, Lh0/b;->v(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    new-instance p1, Lcom/example/navistart/cores/HUDMassageObj;

    .line 304
    .line 305
    invoke-direct {p1}, Lcom/example/navistart/cores/HUDMassageObj;-><init>()V

    .line 306
    .line 307
    .line 308
    iput v0, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 309
    .line 310
    iput v2, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 311
    .line 312
    const/16 v0, 0x2710

    .line 313
    .line 314
    iput v0, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 315
    .line 316
    const/16 v0, 0xd

    .line 317
    .line 318
    new-array v0, v0, [B

    .line 319
    .line 320
    fill-array-data v0, :array_22c

    .line 321
    .line 322
    .line 323
    new-array v2, v3, [B

    .line 324
    .line 325
    fill-array-data v2, :array_238

    .line 326
    .line 327
    .line 328
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    iput-object v0, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 333
    .line 334
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 335
    .line 336
    .line 337
    invoke-static {}, Lh0/b;->r()Lcom/example/navistart/cores/ProBroProxy;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-interface {v0}, Lcom/example/navistart/cores/ProBroProxy;->StartHUD()V

    .line 342
    .line 343
    .line 344
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 345
    .line 346
    .line 347
    invoke-static {}, Lh0/b;->r()Lcom/example/navistart/cores/ProBroProxy;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-interface {v0, p1}, Lcom/example/navistart/cores/ProBroProxy;->SendInfoHUD(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 352
    .line 353
    .line 354
    sget p1, Lb1/u;->a:I

    .line 355
    .line 356
    sub-int/2addr p1, v1

    .line 357
    sput p1, Lb1/u;->a:I

    .line 358
    .line 359
    return-void

    .line 360
    :pswitch_167
    sget-object v0, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    :goto_16d
    instance-of v0, p1, Landroid/view/View;

    .line 367
    .line 368
    if-eqz v0, :cond_180

    .line 369
    .line 370
    instance-of v0, p1, Lcom/example/navistart/mainview/HeatManSetView;

    .line 371
    .line 372
    if-eqz v0, :cond_17b

    .line 373
    .line 374
    check-cast p1, Landroid/view/View;

    .line 375
    .line 376
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 377
    .line 378
    .line 379
    goto :goto_180

    .line 380
    :cond_17b
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    goto :goto_16d

    .line 385
    :cond_180
    :goto_180
    return-void

    .line 386
    nop

    .line 387
    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_167
        :pswitch_e1
        :pswitch_ce
        :pswitch_98
        :pswitch_8d
    .end packed-switch

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    :array_190
    .array-data 1
        0x11t
        0x39t
        -0x26t
        0xet
        -0x68t
        -0x6at
        0x48t
        0x46t
        0x58t
        0x6dt
        -0x6ft
        0x56t
        -0x7bt
        -0x1et
        0x61t
        0x57t
        0x49t
        0x65t
        -0x7dt
        0x40t
        -0x7bt
        -0x75t
        0x34t
        0x18t
        0x11t
        0x39t
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
    nop

    .line 419
    :array_1a2
    .array-data 1
        0x2ct
        0x4t
        -0x19t
        0x33t
        -0x5bt
        -0x4at
        0x9t
        0x25t
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :array_1aa
    .array-data 1
        -0x44t
        -0x11t
        -0x15t
        -0x76t
        -0x58t
        0x34t
        0x64t
        0x8t
        -0x3t
        -0x50t
        -0x15t
        -0x2ft
        -0x4bt
        0x31t
        0x2dt
        0x48t
        -0x5ct
        -0x47t
        -0x48t
        -0x75t
    .end array-data

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
    :array_1b8
    .array-data 1
        -0x67t
        -0x64t
        -0x35t
        -0x5et
        -0x3ft
        0x50t
        0x59t
        0x2dt
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
        -0x65t
        -0x7ft
        0x7at
        0x5ft
        -0x49t
        -0x1dt
        0x21t
        0x64t
        -0x65t
        -0x7ft
        0x7at
        0x5ft
        -0x49t
        -0x1dt
        0x21t
        0x64t
        -0x65t
        -0x7ft
        0x7at
        0x5ft
        -0x49t
        -0x1dt
        0x21t
        0x64t
        -0x65t
        -0x7ft
        0x7at
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
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    :array_1d2
    .array-data 1
        -0x5at
        -0x44t
        0x47t
        0x62t
        -0x76t
        -0x22t
        0x1ct
        0x59t
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_1da
    .array-data 1
        -0x6et
        -0x7ft
        -0x65t
        0x9t
        -0x21t
        -0x71t
        -0xct
        0x9t
        0x63t
        0x77t
        0x2et
        -0x31t
        0x7at
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
    nop

    .line 487
    :array_1e6
    .array-data 1
        0x43t
        0x3t
        0x4bt
        -0x44t
        0xet
        0xet
        0x25t
        -0x75t
    .end array-data

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    :array_1ee
    .array-data 1
        0x5t
        0x5et
        -0x7et
        0xat
        -0x77t
        -0x3ft
        -0x32t
        0x48t
        -0xbt
        0x2dt
        -0x2dt
        0x6et
        -0x26t
        -0x70t
        -0x5ft
        0x1at
        0x6at
    .end array-data

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
    .line 508
    nop

    .line 509
    :array_1fc
    .array-data 1
        -0x2bt
        -0x4t
        0x52t
        -0x41t
        0x58t
        0x40t
        0x1ft
        -0x36t
    .end array-data

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    :array_204
    .array-data 1
        0x13t
        -0x11t
        -0x18t
        0x30t
        -0xat
        -0x28t
        0xbt
        -0x2ft
        0x22t
    .end array-data

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    nop

    .line 527
    :array_20e
    .array-data 1
        0x47t
        -0x76t
        -0x65t
        0x44t
        -0x5bt
        -0x58t
        0x6at
        -0x4et
    .end array-data

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    :array_216
    .array-data 1
        -0x23t
        0x25t
        0x14t
        0x74t
        -0x5ct
        -0x5ct
        0x43t
        0x2t
        -0x4bt
        0x39t
        0x3et
        0x30t
        -0x78t
        -0x41t
        0xct
        0x41t
        -0x4bt
    .end array-data

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    nop

    .line 549
    :array_224
    .array-data 1
        -0x6bt
        0x70t
        0x50t
        0x54t
        -0x13t
        -0x39t
        0x2ct
        0x6ct
    .end array-data

    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_22c
    .array-data 1
        0x49t
        -0x46t
        0x1bt
        -0x5bt
        -0x44t
        -0x32t
        0x5et
        -0x15t
        -0x48t
        0x4ct
        -0x52t
        0x63t
        0x19t
    .end array-data

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    nop

    .line 569
    :array_238
    .array-data 1
        -0x68t
        0x38t
        -0x35t
        0x10t
        0x6dt
        0x4ft
        -0x71t
        0x69t
    .end array-data
.end method
