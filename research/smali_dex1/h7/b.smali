.class public final synthetic Lh7/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lh7/b;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lh7/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13

    .line 1
    iget p1, p0, Lh7/b;->b:I

    .line 2
    .line 3
    iget-object p2, p0, Lh7/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    const/16 p4, 0x8

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_210

    .line 8
    .line 9
    .line 10
    check-cast p2, Lm0/a0;

    .line 11
    .line 12
    sget-object p1, Lm0/a0;->h:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {}, Lf0/b;->values()[Lf0/b;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    aget-object p1, p1, p3

    .line 19
    .line 20
    sget-object p3, Lf0/b;->d:Lf0/b;

    .line 21
    .line 22
    if-ne p1, p3, :cond_66

    .line 23
    .line 24
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    sget-object p5, Lm0/a0;->i:Ljava/lang/String;

    .line 29
    .line 30
    sget-object v0, Lm0/a0;->j:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p3, p5, v0}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_66

    .line 41
    .line 42
    new-instance p3, Ljava/io/File;

    .line 43
    .line 44
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p5

    .line 48
    invoke-virtual {p5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object p5

    .line 52
    const/16 v0, 0x2e

    .line 53
    .line 54
    new-array v0, v0, [B

    .line 55
    .line 56
    fill-array-data v0, :array_218

    .line 57
    .line 58
    .line 59
    new-array v1, p4, [B

    .line 60
    .line 61
    fill-array-data v1, :array_234

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p3, p5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    if-nez p3, :cond_66

    .line 76
    .line 77
    new-instance p3, Ljava/io/File;

    .line 78
    .line 79
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p5

    .line 83
    invoke-virtual {p5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object p5

    .line 87
    iget-object v0, p2, Lm0/a0;->f:Ljava/lang/String;

    .line 88
    .line 89
    invoke-direct {p3, p5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p5, p2, Lm0/a0;->g:Lb1/m;

    .line 93
    .line 94
    invoke-virtual {p5, p3}, Lb1/m;->c(Ljava/io/File;)Z

    .line 95
    .line 96
    .line 97
    move-result p5

    .line 98
    if-eqz p5, :cond_66

    .line 99
    .line 100
    invoke-virtual {p2, p3}, Lm0/a0;->u(Ljava/io/File;)V

    .line 101
    .line 102
    .line 103
    :cond_66
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    const/16 p5, 0x15

    .line 108
    .line 109
    new-array p5, p5, [B

    .line 110
    .line 111
    fill-array-data p5, :array_23c

    .line 112
    .line 113
    .line 114
    new-array p4, p4, [B

    .line 115
    .line 116
    fill-array-data p4, :array_24c

    .line 117
    .line 118
    .line 119
    invoke-static {p5, p4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p5

    .line 127
    invoke-virtual {p3, p4, p5}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p3, p2, Lm0/a0;->b:Lcom/example/navistart/BlackActivity;

    .line 131
    .line 132
    if-eqz p3, :cond_88

    .line 133
    .line 134
    invoke-virtual {p3, p1}, Lcom/example/navistart/BlackActivity;->u(Lf0/b;)V

    .line 135
    .line 136
    .line 137
    :cond_88
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Ll0/a;

    .line 142
    .line 143
    if-eqz p1, :cond_93

    .line 144
    .line 145
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 146
    .line 147
    .line 148
    :cond_93
    return-void

    .line 149
    :pswitch_94
    check-cast p2, Lcom/woha/appmanag/ManageAppsActivity;

    .line 150
    .line 151
    iget-object p1, p2, Lcom/woha/appmanag/ManageAppsActivity;->b:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lh7/g;

    .line 158
    .line 159
    const/16 p3, 0xd

    .line 160
    .line 161
    new-array p3, p3, [B

    .line 162
    .line 163
    fill-array-data p3, :array_254

    .line 164
    .line 165
    .line 166
    new-array p5, p4, [B

    .line 167
    .line 168
    fill-array-data p5, :array_260

    .line 169
    .line 170
    .line 171
    invoke-static {p3, p5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    check-cast p3, Landroid/app/admin/DevicePolicyManager;

    .line 180
    .line 181
    const/4 p5, 0x3

    .line 182
    const/4 v0, 0x2

    .line 183
    const/4 v1, 0x0

    .line 184
    const v2, 0x7f13010a

    .line 185
    .line 186
    .line 187
    const v3, 0x7f130334

    .line 188
    .line 189
    .line 190
    const v4, 0x7f13012e

    .line 191
    .line 192
    .line 193
    const v5, 0x7f13012d

    .line 194
    .line 195
    .line 196
    if-eqz p3, :cond_131

    .line 197
    .line 198
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {p3, v6}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result p3

    .line 206
    if-eqz p3, :cond_131

    .line 207
    .line 208
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 209
    .line 210
    invoke-direct {p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {p3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 218
    .line 219
    .line 220
    move-result-object p3

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    new-array v0, v0, [B

    .line 234
    .line 235
    fill-array-data v0, :array_268

    .line 236
    .line 237
    .line 238
    new-array v4, p4, [B

    .line 239
    .line 240
    fill-array-data v4, :array_26e

    .line 241
    .line 242
    .line 243
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object v0, p1, Lh7/g;->a:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    new-array p5, p5, [B

    .line 256
    .line 257
    fill-array-data p5, :array_276

    .line 258
    .line 259
    .line 260
    new-array p4, p4, [B

    .line 261
    .line 262
    fill-array-data p4, :array_27c

    .line 263
    .line 264
    .line 265
    invoke-static {p5, p4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p4

    .line 269
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p4

    .line 276
    invoke-virtual {p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 277
    .line 278
    .line 279
    move-result-object p3

    .line 280
    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p4

    .line 284
    new-instance p5, Lh7/d;

    .line 285
    .line 286
    const/4 v0, 0x0

    .line 287
    invoke-direct {p5, p2, p1, v0}, Lh7/d;-><init>(Lcom/woha/appmanag/ManageAppsActivity;Lh7/g;I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p3, p4, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 303
    .line 304
    .line 305
    goto :goto_1a8

    .line 306
    :cond_131
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 307
    .line 308
    .line 309
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 310
    .line 311
    .line 312
    invoke-static {}, Lh0/b;->g()Lj1/v;

    .line 313
    .line 314
    .line 315
    move-result-object p3

    .line 316
    invoke-interface {p3}, Lj1/v;->h()Z

    .line 317
    .line 318
    .line 319
    move-result p3

    .line 320
    if-eqz p3, :cond_1a3

    .line 321
    .line 322
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 323
    .line 324
    invoke-direct {p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    invoke-virtual {p3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 332
    .line 333
    .line 334
    move-result-object p3

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    new-array v0, v0, [B

    .line 348
    .line 349
    fill-array-data v0, :array_284

    .line 350
    .line 351
    .line 352
    new-array v4, p4, [B

    .line 353
    .line 354
    fill-array-data v4, :array_28a

    .line 355
    .line 356
    .line 357
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    iget-object v0, p1, Lh7/g;->a:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    new-array p5, p5, [B

    .line 370
    .line 371
    fill-array-data p5, :array_292

    .line 372
    .line 373
    .line 374
    new-array p4, p4, [B

    .line 375
    .line 376
    fill-array-data p4, :array_298

    .line 377
    .line 378
    .line 379
    invoke-static {p5, p4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p4

    .line 383
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p4

    .line 390
    invoke-virtual {p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 391
    .line 392
    .line 393
    move-result-object p3

    .line 394
    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p4

    .line 398
    new-instance p5, Lh7/d;

    .line 399
    .line 400
    const/4 v0, 0x1

    .line 401
    invoke-direct {p5, p2, p1, v0}, Lh7/d;-><init>(Lcom/woha/appmanag/ManageAppsActivity;Lh7/g;I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p3, p4, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p2

    .line 412
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 417
    .line 418
    .line 419
    goto :goto_1a8

    .line 420
    :cond_1a3
    iget-object p1, p1, Lh7/g;->b:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {p2, p1}, Lcom/woha/appmanag/ManageAppsActivity;->t(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    :goto_1a8
    return-void

    .line 426
    :pswitch_1a9
    check-cast p2, Lcom/woha/appmanag/FilePickerActivity;

    .line 427
    .line 428
    iget-object p1, p2, Lcom/woha/appmanag/FilePickerActivity;->b:Landroid/widget/ListView;

    .line 429
    .line 430
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 431
    .line 432
    .line 433
    move-result p1

    .line 434
    sub-int/2addr p3, p1

    .line 435
    if-ltz p3, :cond_20f

    .line 436
    .line 437
    iget-object p1, p2, Lcom/woha/appmanag/FilePickerActivity;->f:Ljava/util/ArrayList;

    .line 438
    .line 439
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    if-lt p3, p1, :cond_1bd

    .line 444
    .line 445
    goto :goto_20f

    .line 446
    :cond_1bd
    iget-object p1, p2, Lcom/woha/appmanag/FilePickerActivity;->f:Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    check-cast p1, Ljava/io/File;

    .line 453
    .line 454
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 455
    .line 456
    .line 457
    move-result p3

    .line 458
    if-eqz p3, :cond_1cf

    .line 459
    .line 460
    invoke-virtual {p2, p1}, Lcom/woha/appmanag/FilePickerActivity;->v(Ljava/io/File;)V

    .line 461
    .line 462
    .line 463
    goto :goto_20f

    .line 464
    :cond_1cf
    iget p3, p2, Lcom/woha/appmanag/FilePickerActivity;->i:I

    .line 465
    .line 466
    const/4 p5, -0x1

    .line 467
    const/4 v0, 0x1

    .line 468
    if-ne p3, v0, :cond_1ea

    .line 469
    .line 470
    new-instance p3, Landroid/content/Intent;

    .line 471
    .line 472
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 473
    .line 474
    .line 475
    sget-object p4, Lcom/woha/appmanag/FilePickerActivity;->j:Ljava/lang/String;

    .line 476
    .line 477
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    .line 483
    .line 484
    invoke-virtual {p2, p5, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 488
    .line 489
    .line 490
    goto :goto_20f

    .line 491
    :cond_1ea
    const/16 p3, 0x1e

    .line 492
    .line 493
    new-array p3, p3, [B

    .line 494
    .line 495
    fill-array-data p3, :array_2a0

    .line 496
    .line 497
    .line 498
    new-array p4, p4, [B

    .line 499
    .line 500
    fill-array-data p4, :array_2b4

    .line 501
    .line 502
    .line 503
    invoke-static {p3, p4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object p3

    .line 507
    invoke-static {p2, p3, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    new-instance p3, Landroid/content/Intent;

    .line 512
    .line 513
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 517
    .line 518
    .line 519
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 520
    .line 521
    .line 522
    invoke-virtual {p2, p5, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 526
    .line 527
    .line 528
    :cond_20f
    :goto_20f
    return-void

    .line 529
    :pswitch_data_210
    .packed-switch 0x0
        :pswitch_1a9
        :pswitch_94
    .end packed-switch

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    :array_218
    .array-data 1
        -0x20t
        -0x8t
        -0x3dt
        -0x79t
        -0x5t
        0x47t
        -0x16t
        -0xdt
        -0x39t
        -0x1ct
        -0x9t
        -0x6at
        -0x25t
        0x7bt
        -0x7t
        -0x1t
        -0x3at
        -0x52t
        -0x10t
        -0x79t
        -0x1t
        0x76t
        -0x13t
        -0x10t
        -0x27t
        -0x22t
        -0x1dt
        -0x79t
        -0x5t
        0x48t
        -0x6t
        -0x10t
        -0x34t
        -0x1et
        -0x1t
        -0x33t
        -0x10t
        0x79t
        -0x4t
        -0x7t
        -0x2bt
        -0x51t
        -0x4t
        -0x6at
        -0xct
        0x7bt
    .end array-data

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
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    nop

    .line 565
    :array_234
    .array-data 1
        -0x53t
        -0x7ft
        -0x6ct
        -0x1et
        -0x67t
        0x17t
        -0x68t
        -0x64t
    .end array-data

    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    :array_23c
    .array-data 1
        0x30t
        0x54t
        0x5et
        0x72t
        -0x17t
        0x2bt
        -0x5at
        -0x7t
        0x31t
        0x54t
        0x50t
        0x72t
        -0x17t
        0x2ct
        -0x49t
        -0x14t
        0x15t
        0x55t
        0x5at
        0x7ft
        -0xat
    .end array-data

    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    nop

    .line 589
    :array_24c
    .array-data 1
        0x72t
        0x38t
        0x3ft
        0x11t
        -0x7et
        0x6at
        -0x3bt
        -0x73t
    .end array-data

    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    :array_254
    .array-data 1
        -0x5at
        0x5ct
        0x79t
        -0x2ft
        0x45t
        -0x27t
        0x35t
        -0x6at
        -0x53t
        0x55t
        0x66t
        -0x25t
        0x5ft
    .end array-data

    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    nop

    .line 609
    :array_260
    .array-data 1
        -0x3et
        0x39t
        0xft
        -0x48t
        0x26t
        -0x44t
        0x6at
        -0x1at
    .end array-data

    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    :array_268
    .array-data 1
        0x37t
        -0x44t
    .end array-data

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    nop

    .line 623
    :array_26e
    .array-data 1
        0x17t
        -0x62t
        -0x3dt
        -0x6t
        0x18t
        0x6t
        0x64t
        0x57t
    .end array-data

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    :array_276
    .array-data 1
        0x14t
        -0x7ct
        0x2t
    .end array-data

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    :array_27c
    .array-data 1
        0x36t
        -0x5ct
        0x3dt
        -0xct
        0x52t
        -0x28t
        -0x53t
        -0x6bt
    .end array-data

    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    :array_284
    .array-data 1
        0x3t
        -0x2t
    .end array-data

    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    nop

    .line 651
    :array_28a
    .array-data 1
        0x23t
        -0x24t
        -0x55t
        0x17t
        0x5et
        -0x3dt
        -0x24t
        -0x2ct
    .end array-data

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_292
    .array-data 1
        -0x16t
        -0x57t
        0x37t
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    :array_298
    .array-data 1
        -0x38t
        -0x77t
        0x8t
        0x34t
        0x22t
        0x49t
        -0x1et
        0x52t
    .end array-data

    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    :array_2a0
    .array-data 1
        0x3ft
        -0x10t
        -0x7bt
        0x6t
        0x6at
        -0x74t
        -0x58t
        0x31t
        0x2ct
        -0xdt
        -0x73t
        0x6t
        0x61t
        -0x6bt
        -0x41t
        0x35t
        0x2ft
        -0x15t
        -0x77t
        0x5at
        0x7bt
        -0x26t
        -0x47t
        0x2et
        0x33t
        -0x17t
        -0x7ft
        0x4ct
        0x6at
        -0x7at
    .end array-data

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
    nop

    .line 693
    :array_2b4
    .array-data 1
        0x5ct
        -0x61t
        -0x18t
        0x28t
        0xft
        -0xct
        -0x37t
        0x5ct
    .end array-data
.end method
