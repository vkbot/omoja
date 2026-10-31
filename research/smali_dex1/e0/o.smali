.class public final synthetic Le0/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/CarControlActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/CarControlActivity;I)V
    .registers 3

    .line 1
    iput p2, p0, Le0/o;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/o;->c:Lcom/example/navistart/CarControlActivity;

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
    .registers 9

    .line 1
    iget p1, p0, Le0/o;->b:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x3

    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/16 v4, 0x11

    .line 9
    .line 10
    iget-object v5, p0, Le0/o;->c:Lcom/example/navistart/CarControlActivity;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch p1, :pswitch_data_212

    .line 14
    .line 15
    .line 16
    iget-object p1, v5, Lcom/example/navistart/CarControlActivity;->m:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->a()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-ne p1, v2, :cond_24

    .line 23
    .line 24
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->zadheatonoff(Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    goto :goto_32

    .line 37
    :cond_24
    if-ne p1, v6, :cond_32

    .line 38
    .line 39
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->zadheatonoff(Ljava/lang/Boolean;)V

    .line 49
    .line 50
    .line 51
    :cond_32
    :goto_32
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->v()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->s()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_39
    iget-object p1, v5, Lcom/example/navistart/CarControlActivity;->l:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->a()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-ne p1, v2, :cond_4e

    .line 65
    .line 66
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->lobheatonoff(Ljava/lang/Boolean;)V

    .line 76
    .line 77
    .line 78
    goto :goto_5c

    .line 79
    :cond_4e
    if-ne p1, v6, :cond_5c

    .line 80
    .line 81
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->lobheatonoff(Ljava/lang/Boolean;)V

    .line 91
    .line 92
    .line 93
    :cond_5c
    :goto_5c
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->v()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->s()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_63
    iget-object p1, v5, Lcom/example/navistart/CarControlActivity;->k:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->a()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-ne p1, v2, :cond_78

    .line 107
    .line 108
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->rulheatonoff(Ljava/lang/Boolean;)V

    .line 118
    .line 119
    .line 120
    goto :goto_86

    .line 121
    :cond_78
    if-ne p1, v6, :cond_86

    .line 122
    .line 123
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 131
    .line 132
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->rulheatonoff(Ljava/lang/Boolean;)V

    .line 133
    .line 134
    .line 135
    :cond_86
    :goto_86
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->v()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->s()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :pswitch_8d
    sget p1, Lcom/example/navistart/CarControlActivity;->t:I

    .line 143
    .line 144
    invoke-virtual {v5, v6}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :pswitch_93
    iget-object p1, v5, Lcom/example/navistart/CarControlActivity;->q:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->a()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-le p1, v6, :cond_a0

    .line 155
    .line 156
    iget-object v0, v5, Lcom/example/navistart/CarControlActivity;->o:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 157
    .line 158
    invoke-virtual {v0, v6}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 159
    .line 160
    .line 161
    :cond_a0
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {v0, v1, p1}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatVent(II)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->v()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->s()V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :pswitch_b1
    iget-object p1, v5, Lcom/example/navistart/CarControlActivity;->o:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->a()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-le p1, v6, :cond_be

    .line 185
    .line 186
    iget-object v0, v5, Lcom/example/navistart/CarControlActivity;->q:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 187
    .line 188
    invoke-virtual {v0, v6}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 189
    .line 190
    .line 191
    :cond_be
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 192
    .line 193
    .line 194
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-interface {v0, v1, p1}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatHeat(II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->v()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->s()V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :pswitch_cf
    iget-object p1, v5, Lcom/example/navistart/CarControlActivity;->p:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->a()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-le p1, v6, :cond_dc

    .line 215
    .line 216
    iget-object v0, v5, Lcom/example/navistart/CarControlActivity;->n:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 217
    .line 218
    invoke-virtual {v0, v6}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 219
    .line 220
    .line 221
    :cond_dc
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-interface {v0, v6, p1}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatVent(II)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->v()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->s()V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :pswitch_ed
    sget p1, Lcom/example/navistart/CarControlActivity;->t:I

    .line 239
    .line 240
    invoke-virtual {v5, v6}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :pswitch_f3
    iget-object p1, v5, Lcom/example/navistart/CarControlActivity;->n:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->a()I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-le p1, v6, :cond_100

    .line 251
    .line 252
    iget-object v0, v5, Lcom/example/navistart/CarControlActivity;->p:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 253
    .line 254
    invoke-virtual {v0, v6}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 255
    .line 256
    .line 257
    :cond_100
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 258
    .line 259
    .line 260
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-interface {v0, v6, p1}, Lcom/example/navistart/cores/CarCmdProxy;->carZadSeatHeat(II)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->v()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->s()V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :pswitch_111
    iget-object p1, v5, Lcom/example/navistart/CarControlActivity;->j:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->a()I

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    if-le p1, v6, :cond_11e

    .line 281
    .line 282
    iget-object v1, v5, Lcom/example/navistart/CarControlActivity;->i:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 283
    .line 284
    invoke-virtual {v1, v6}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 285
    .line 286
    .line 287
    :cond_11e
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 288
    .line 289
    .line 290
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-interface {v1, p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V

    .line 295
    .line 296
    .line 297
    iget-object v0, v5, Lcom/example/navistart/CarControlActivity;->b:Ljava/lang/String;

    .line 298
    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    new-array v2, v4, [B

    .line 305
    .line 306
    fill-array-data v2, :array_22e

    .line 307
    .line 308
    .line 309
    new-array v3, v3, [B

    .line 310
    .line 311
    fill-array-data v3, :array_23c

    .line 312
    .line 313
    .line 314
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->v()V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->s()V

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    :pswitch_151
    iget-object p1, v5, Lcom/example/navistart/CarControlActivity;->i:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 339
    .line 340
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->a()I

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    if-le p1, v6, :cond_15e

    .line 345
    .line 346
    iget-object v1, v5, Lcom/example/navistart/CarControlActivity;->j:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 347
    .line 348
    invoke-virtual {v1, v6}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 349
    .line 350
    .line 351
    :cond_15e
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 352
    .line 353
    .line 354
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-interface {v1, p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 359
    .line 360
    .line 361
    iget-object v0, v5, Lcom/example/navistart/CarControlActivity;->b:Ljava/lang/String;

    .line 362
    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    new-array v2, v4, [B

    .line 369
    .line 370
    fill-array-data v2, :array_244

    .line 371
    .line 372
    .line 373
    new-array v3, v3, [B

    .line 374
    .line 375
    fill-array-data v3, :array_252

    .line 376
    .line 377
    .line 378
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->v()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->s()V

    .line 399
    .line 400
    .line 401
    return-void

    .line 402
    :pswitch_191
    iget-object p1, v5, Lcom/example/navistart/CarControlActivity;->h:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 403
    .line 404
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->a()I

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    if-le p1, v6, :cond_19e

    .line 409
    .line 410
    iget-object v0, v5, Lcom/example/navistart/CarControlActivity;->g:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 411
    .line 412
    invoke-virtual {v0, v6}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 413
    .line 414
    .line 415
    :cond_19e
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 416
    .line 417
    .line 418
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-interface {v0, p1, v6}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V

    .line 423
    .line 424
    .line 425
    iget-object v0, v5, Lcom/example/navistart/CarControlActivity;->b:Ljava/lang/String;

    .line 426
    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .line 431
    .line 432
    new-array v2, v4, [B

    .line 433
    .line 434
    fill-array-data v2, :array_25a

    .line 435
    .line 436
    .line 437
    new-array v3, v3, [B

    .line 438
    .line 439
    fill-array-data v3, :array_268

    .line 440
    .line 441
    .line 442
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .line 458
    .line 459
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->v()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->s()V

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :pswitch_1d1
    iget-object p1, v5, Lcom/example/navistart/CarControlActivity;->g:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 467
    .line 468
    invoke-virtual {p1}, Lcom/example/navistart/mainview/HeatingButtonView;->a()I

    .line 469
    .line 470
    .line 471
    move-result p1

    .line 472
    if-le p1, v6, :cond_1de

    .line 473
    .line 474
    iget-object v0, v5, Lcom/example/navistart/CarControlActivity;->h:Lcom/example/navistart/mainview/HeatingButtonView;

    .line 475
    .line 476
    invoke-virtual {v0, v6}, Lcom/example/navistart/mainview/HeatingButtonView;->c(I)V

    .line 477
    .line 478
    .line 479
    :cond_1de
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 480
    .line 481
    .line 482
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-interface {v0, p1, v6}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 487
    .line 488
    .line 489
    iget-object v0, v5, Lcom/example/navistart/CarControlActivity;->b:Ljava/lang/String;

    .line 490
    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .line 495
    .line 496
    new-array v2, v4, [B

    .line 497
    .line 498
    fill-array-data v2, :array_270

    .line 499
    .line 500
    .line 501
    new-array v3, v3, [B

    .line 502
    .line 503
    fill-array-data v3, :array_27e

    .line 504
    .line 505
    .line 506
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .line 522
    .line 523
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->v()V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v5}, Lcom/example/navistart/CarControlActivity;->s()V

    .line 527
    .line 528
    .line 529
    return-void

    .line 530
    nop

    .line 531
    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_1d1
        :pswitch_191
        :pswitch_151
        :pswitch_111
        :pswitch_f3
        :pswitch_ed
        :pswitch_cf
        :pswitch_b1
        :pswitch_93
        :pswitch_8d
        :pswitch_63
        :pswitch_39
    .end packed-switch

    .line 532
    .line 533
    .line 534
    .line 535
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
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :array_22e
    .array-data 1
        -0x32t
        0x4ft
        0x5dt
        -0x11t
        0x36t
        -0x36t
        0x16t
        0x14t
        -0x27t
        0x61t
        0x41t
        -0x8t
        0x29t
        -0x13t
        0x1dt
        0x4ft
        -0x73t
    .end array-data

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    nop

    .line 573
    :array_23c
    .array-data 1
        -0x53t
        0x23t
        0x34t
        -0x74t
        0x5dt
        -0x7et
        0x73t
        0x75t
    .end array-data

    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    :array_244
    .array-data 1
        -0x3at
        -0x4bt
        -0x7ft
        0x13t
        0x18t
        0x21t
        0x77t
        0x1dt
        -0x2ft
        -0x65t
        -0x63t
        0x4t
        0x7t
        0x6t
        0x7ct
        0x46t
        -0x7bt
    .end array-data

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    nop

    .line 595
    :array_252
    .array-data 1
        -0x5bt
        -0x27t
        -0x18t
        0x70t
        0x73t
        0x69t
        0x12t
        0x7ct
    .end array-data

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    :array_25a
    .array-data 1
        0x23t
        -0x4at
        0x68t
        -0x1at
        0x4at
        -0x9t
        -0x2t
        -0x76t
        0x34t
        -0x68t
        0x74t
        -0xft
        0x55t
        -0x30t
        -0xbt
        -0x2ft
        0x60t
    .end array-data

    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    nop

    .line 617
    :array_268
    .array-data 1
        0x40t
        -0x26t
        0x1t
        -0x7bt
        0x21t
        -0x41t
        -0x65t
        -0x15t
    .end array-data

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    :array_270
    .array-data 1
        -0x48t
        0x39t
        -0x3at
        0x2et
        -0x64t
        -0x34t
        -0x7ft
        0x68t
        -0x51t
        0x17t
        -0x26t
        0x39t
        -0x7dt
        -0x15t
        -0x76t
        0x33t
        -0x5t
    .end array-data

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
    nop

    .line 639
    :array_27e
    .array-data 1
        -0x25t
        0x55t
        -0x51t
        0x4dt
        -0x9t
        -0x7ct
        -0x1ct
        0x9t
    .end array-data
.end method
