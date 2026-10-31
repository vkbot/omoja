.class public final synthetic Lm0/y0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lm0/y0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/y0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lm0/y0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lm0/y0;->e:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    iget p1, p0, Lm0/y0;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    iget-object v2, p0, Lm0/y0;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lm0/y0;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lm0/y0;->c:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v4, Lcom/woha/wifim/MainWifiManadger;

    .line 15
    .line 16
    check-cast v3, Landroid/widget/EditText;

    .line 17
    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    sget-object p1, Lcom/woha/wifim/MainWifiManadger;->v:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_0

    .line 35
    .line 36
    iget-object p2, v4, Lcom/woha/wifim/MainWifiManadger;->o:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v4, v2, p1, p2}, Lcom/woha/wifim/MainWifiManadger;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const v0, 0x7f1304ea

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p1, p2}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void

    .line 61
    :pswitch_0
    check-cast v4, Lm0/n3;

    .line 62
    .line 63
    check-cast v3, Lcom/bumptech/glide/manager/t;

    .line 64
    .line 65
    check-cast v2, Ljava/util/ArrayList;

    .line 66
    .line 67
    if-nez p2, :cond_1

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    if-ne p2, v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    add-int/lit8 p2, p2, -0x2

    .line 82
    .line 83
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/io/File;

    .line 88
    .line 89
    :goto_1
    iput-object p1, v4, Lm0/n3;->m:Ljava/io/File;

    .line 90
    .line 91
    invoke-virtual {v4}, Lm0/n3;->w()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_1
    check-cast v4, Lm0/c3;

    .line 96
    .line 97
    check-cast v3, Landroid/widget/EditText;

    .line 98
    .line 99
    check-cast v2, Ljava/io/File;

    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-nez p1, :cond_3

    .line 106
    .line 107
    const-string p1, ""

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_a

    .line 127
    .line 128
    new-array p2, v1, [B

    .line 129
    .line 130
    const/16 v3, -0x48

    .line 131
    .line 132
    aput-byte v3, p2, v0

    .line 133
    .line 134
    const/16 v3, 0x8

    .line 135
    .line 136
    new-array v5, v3, [B

    .line 137
    .line 138
    fill-array-data v5, :array_0

    .line 139
    .line 140
    .line 141
    invoke-static {p2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-nez p2, :cond_a

    .line 150
    .line 151
    new-array p2, v1, [B

    .line 152
    .line 153
    const/16 v1, -0x71

    .line 154
    .line 155
    aput-byte v1, p2, v0

    .line 156
    .line 157
    new-array v1, v3, [B

    .line 158
    .line 159
    fill-array-data v1, :array_1

    .line 160
    .line 161
    .line 162
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    if-eqz p2, :cond_4

    .line 171
    .line 172
    goto/16 :goto_3

    .line 173
    .line 174
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    const v1, 0x7f130453

    .line 179
    .line 180
    .line 181
    if-nez p2, :cond_5

    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v4, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {v4, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_4

    .line 199
    .line 200
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_6

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_6
    new-instance v3, Ljava/io/File;

    .line 212
    .line 213
    invoke-direct {v3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    if-eqz p2, :cond_7

    .line 221
    .line 222
    const p2, 0x7f130454

    .line 223
    .line 224
    .line 225
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {v4, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {v4, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_7
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 238
    .line 239
    .line 240
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :catch_0
    if-eqz v0, :cond_9

    .line 242
    .line 243
    iget-object p1, v4, Lm0/c3;->u:Ljava/io/File;

    .line 244
    .line 245
    if-eqz p1, :cond_8

    .line 246
    .line 247
    invoke-static {p1}, Lm0/c3;->G(Ljava/io/File;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-static {v2}, Lm0/c3;->G(Ljava/io/File;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_8

    .line 260
    .line 261
    iput-object v3, v4, Lm0/c3;->u:Ljava/io/File;

    .line 262
    .line 263
    invoke-virtual {v4}, Lm0/c3;->K()V

    .line 264
    .line 265
    .line 266
    :cond_8
    invoke-virtual {v4}, Lm0/c3;->v()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    const p2, 0x7f130451

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {v4, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    iget-object p1, v4, Lm0/c3;->t:Ljava/io/File;

    .line 288
    .line 289
    invoke-virtual {v4, p1}, Lm0/c3;->D(Ljava/io/File;)V

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {v4, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-virtual {v4, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_a
    :goto_3
    const p1, 0x7f130452

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {v4, p1}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :goto_4
    return-void

    .line 320
    :pswitch_2
    check-cast v4, Lm0/z0;

    .line 321
    .line 322
    check-cast v3, Landroid/widget/Spinner;

    .line 323
    .line 324
    check-cast v2, Lm0/t0;

    .line 325
    .line 326
    iget-object p1, v4, Lm0/z0;->b:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    instance-of v3, p2, Lj0/e;

    .line 333
    .line 334
    if-eqz v3, :cond_10

    .line 335
    .line 336
    check-cast p2, Lj0/e;

    .line 337
    .line 338
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    invoke-static {p2}, Lj0/f;->d(Lj0/e;)Z

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    if-nez v5, :cond_b

    .line 347
    .line 348
    if-ltz v3, :cond_d

    .line 349
    .line 350
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    iget-object p2, v4, Lm0/z0;->c:Ljava/util/LinkedHashMap;

    .line 354
    .line 355
    iget-object v2, v2, Lm0/t0;->a:Lcom/example/navistart/cores/LogcatRule;

    .line 356
    .line 357
    invoke-virtual {v2}, Lcom/example/navistart/cores/LogcatRule;->toStorageValue()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    iget-object p2, v4, Lm0/z0;->i:Lm0/v0;

    .line 365
    .line 366
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 367
    .line 368
    .line 369
    goto :goto_5

    .line 370
    :cond_b
    iput-object p2, v2, Lm0/t0;->b:Lj0/e;

    .line 371
    .line 372
    iput-boolean v1, v2, Lm0/t0;->c:Z

    .line 373
    .line 374
    if-ltz v3, :cond_c

    .line 375
    .line 376
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    iget-object p2, v4, Lm0/z0;->i:Lm0/v0;

    .line 380
    .line 381
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 382
    .line 383
    .line 384
    :cond_c
    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    iget-object p2, v4, Lm0/z0;->i:Lm0/v0;

    .line 388
    .line 389
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 390
    .line 391
    .line 392
    iget-object p2, v4, Lm0/z0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 393
    .line 394
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 395
    .line 396
    .line 397
    :cond_d
    :goto_5
    new-instance p2, Ljava/util/ArrayList;

    .line 398
    .line 399
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    :cond_e
    :goto_6
    if-ge v0, v2, :cond_f

    .line 407
    .line 408
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    add-int/lit8 v0, v0, 0x1

    .line 413
    .line 414
    check-cast v3, Lm0/t0;

    .line 415
    .line 416
    iget-boolean v5, v3, Lm0/t0;->c:Z

    .line 417
    .line 418
    if-eqz v5, :cond_e

    .line 419
    .line 420
    iget-object v5, v3, Lm0/t0;->b:Lj0/e;

    .line 421
    .line 422
    invoke-static {v5}, Lj0/f;->d(Lj0/e;)Z

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    if-eqz v5, :cond_e

    .line 427
    .line 428
    new-instance v5, Lw0/o0;

    .line 429
    .line 430
    iget-object v6, v3, Lm0/t0;->a:Lcom/example/navistart/cores/LogcatRule;

    .line 431
    .line 432
    invoke-virtual {v6}, Lcom/example/navistart/cores/LogcatRule;->toStorageValue()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    iget-object v3, v3, Lm0/t0;->b:Lj0/e;

    .line 437
    .line 438
    invoke-direct {v5, v6, v3, v1, v1}, Lw0/o0;-><init>(Ljava/lang/String;Lj0/e;ZZ)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    goto :goto_6

    .line 445
    :cond_f
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 446
    .line 447
    .line 448
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    sget-object v0, Lm0/z0;->m:Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    invoke-static {v0, p2}, Lj0/c;->l(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v4}, Lm0/z0;->u()V

    .line 461
    .line 462
    .line 463
    :cond_10
    return-void

    .line 464
    nop

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_0
    .array-data 1
        -0x69t
        -0x41t
        -0x36t
        0x43t
        0x73t
        0x3ft
        -0x49t
        0x1et
    .end array-data

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    :array_1
    .array-data 1
        -0x2dt
        -0x7at
        0x2dt
        0x5at
        0x5t
        -0x4bt
        -0x71t
        0x76t
    .end array-data
.end method
