.class public final synthetic Lm0/q0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ll0/b;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroid/view/KeyEvent$Callback;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ll0/b;Ljava/lang/Object;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Landroid/view/View;I)V
    .registers 7

    .line 1
    iput p6, p0, Lm0/q0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/q0;->c:Ll0/b;

    .line 4
    .line 5
    iput-object p2, p0, Lm0/q0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lm0/q0;->e:Landroid/view/KeyEvent$Callback;

    .line 8
    .line 9
    iput-object p4, p0, Lm0/q0;->f:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lm0/q0;->g:Landroid/view/View;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 14

    .line 1
    iget p1, p0, Lm0/q0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_24e

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lm0/q0;->c:Ll0/b;

    .line 7
    .line 8
    check-cast p1, Lm0/n3;

    .line 9
    .line 10
    iget-object v0, p0, Lm0/q0;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v1, p0, Lm0/q0;->e:Landroid/view/KeyEvent$Callback;

    .line 15
    .line 16
    check-cast v1, Landroidx/appcompat/app/AlertDialog;

    .line 17
    .line 18
    iget-object v2, p0, Lm0/q0;->f:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object v3, p0, Lm0/q0;->g:Landroid/view/View;

    .line 23
    .line 24
    check-cast v3, Landroid/widget/ListView;

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {p1, p2, v1, v2, v3}, Lm0/n3;->v(Ljava/io/File;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/ListView;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_23
    iget-object p1, p0, Lm0/q0;->c:Ll0/b;

    .line 37
    .line 38
    check-cast p1, Lm0/s0;

    .line 39
    .line 40
    iget-object p2, p0, Lm0/q0;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p2, Landroid/widget/Button;

    .line 43
    .line 44
    iget-object v0, p0, Lm0/q0;->e:Landroid/view/KeyEvent$Callback;

    .line 45
    .line 46
    check-cast v0, Landroid/widget/LinearLayout;

    .line 47
    .line 48
    iget-object v1, p0, Lm0/q0;->f:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lp0/b;

    .line 51
    .line 52
    iget-object v2, p0, Lm0/q0;->g:Landroid/view/View;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    .line 57
    .line 58
    const v4, 0x7f1301ee

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 62
    .line 63
    .line 64
    move v4, v3

    .line 65
    :goto_40
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-ge v4, v5, :cond_50

    .line 70
    .line 71
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    goto :goto_40

    .line 81
    :cond_50
    new-instance v0, Landroidx/transition/a;

    .line 82
    .line 83
    const/4 v4, 0x4

    .line 84
    invoke-direct {v0, p1, v2, p2, v4}, Landroidx/transition/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    sget-object p1, Lp0/b;->c:Ljava/lang/Object;

    .line 88
    .line 89
    monitor-enter p1

    .line 90
    :try_start_59
    iget-object p2, v1, Lp0/b;->a:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {p2}, Lp0/b;->f(Landroid/content/Context;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    const/16 v2, 0x8

    .line 97
    .line 98
    if-eqz p2, :cond_80

    .line 99
    .line 100
    const/16 p2, 0x15

    .line 101
    .line 102
    new-array p2, p2, [B

    .line 103
    .line 104
    fill-array-data p2, :array_254

    .line 105
    .line 106
    .line 107
    new-array v1, v2, [B

    .line 108
    .line 109
    fill-array-data v1, :array_264

    .line 110
    .line 111
    .line 112
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {p2}, Lm0/b3;->a(Ljava/lang/String;)Lm0/b3;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {v0, p2}, Landroidx/transition/a;->c(Lm0/b3;)V

    .line 121
    .line 122
    .line 123
    monitor-exit p1

    .line 124
    goto/16 :goto_24a

    .line 125
    .line 126
    :catchall_7d
    move-exception p2

    .line 127
    goto/16 :goto_24b

    .line 128
    .line 129
    :cond_80
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    const/16 v4, 0x16

    .line 134
    .line 135
    new-array v4, v4, [B

    .line 136
    .line 137
    fill-array-data v4, :array_26c

    .line 138
    .line 139
    .line 140
    new-array v5, v2, [B

    .line 141
    .line 142
    fill-array-data v5, :array_27c

    .line 143
    .line 144
    .line 145
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {p2, v4, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-eqz p2, :cond_b4

    .line 154
    .line 155
    const/16 p2, 0xf

    .line 156
    .line 157
    new-array p2, p2, [B

    .line 158
    .line 159
    fill-array-data p2, :array_284

    .line 160
    .line 161
    .line 162
    new-array v1, v2, [B

    .line 163
    .line 164
    fill-array-data v1, :array_290

    .line 165
    .line 166
    .line 167
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-static {p2}, Lm0/b3;->a(Ljava/lang/String;)Lm0/b3;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {v0, p2}, Landroidx/transition/a;->c(Lm0/b3;)V

    .line 176
    .line 177
    .line 178
    monitor-exit p1

    .line 179
    goto/16 :goto_24a

    .line 180
    .line 181
    :cond_b4
    new-instance p2, Ljava/util/HashSet;

    .line 182
    .line 183
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 184
    .line 185
    .line 186
    new-instance v4, Ljava/util/HashSet;

    .line 187
    .line 188
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 189
    .line 190
    .line 191
    iget-object v5, v1, Lp0/b;->b:Ljava/util/List;

    .line 192
    .line 193
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    :cond_c4
    :goto_c4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_e7

    .line 202
    .line 203
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    check-cast v6, Lp0/a;

    .line 208
    .line 209
    iget-object v7, v6, Lp0/a;->b:Landroid/content/ComponentName;

    .line 210
    .line 211
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    iget-boolean v8, v6, Lp0/a;->e:Z

    .line 219
    .line 220
    if-nez v8, :cond_e3

    .line 221
    .line 222
    invoke-static {v6}, Lp0/b;->e(Lp0/a;)Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    if-eqz v6, :cond_c4

    .line 227
    .line 228
    :cond_e3
    invoke-virtual {p2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_c4

    .line 232
    :cond_e7
    iget-object v5, v1, Lp0/b;->a:Landroid/content/Context;

    .line 233
    .line 234
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    new-instance v6, Landroid/content/Intent;

    .line 239
    .line 240
    const/16 v7, 0x1a

    .line 241
    .line 242
    new-array v7, v7, [B

    .line 243
    .line 244
    fill-array-data v7, :array_298

    .line 245
    .line 246
    .line 247
    new-array v8, v2, [B

    .line 248
    .line 249
    fill-array-data v8, :array_2aa

    .line 250
    .line 251
    .line 252
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const/16 v7, 0x20

    .line 260
    .line 261
    new-array v7, v7, [B

    .line 262
    .line 263
    fill-array-data v7, :array_2b2

    .line 264
    .line 265
    .line 266
    new-array v8, v2, [B

    .line 267
    .line 268
    fill-array-data v8, :array_2c6

    .line 269
    .line 270
    .line 271
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    iget-object v7, v1, Lp0/b;->a:Landroid/content/Context;

    .line 280
    .line 281
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    const/16 v7, 0x200

    .line 290
    .line 291
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    :cond_12a
    :goto_12a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    if-eqz v6, :cond_159

    .line 304
    .line 305
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 310
    .line 311
    new-instance v7, Landroid/content/ComponentName;

    .line 312
    .line 313
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 314
    .line 315
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 316
    .line 317
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 318
    .line 319
    invoke-direct {v7, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v8

    .line 330
    if-eqz v8, :cond_12a

    .line 331
    .line 332
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 333
    .line 334
    iget-boolean v6, v6, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 335
    .line 336
    if-eqz v6, :cond_12a

    .line 337
    .line 338
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    goto :goto_12a

    .line 346
    :cond_159
    iget-object v5, v1, Lp0/b;->a:Landroid/content/Context;

    .line 347
    .line 348
    sget-object v6, Lp0/b;->d:Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    const/4 v6, 0x3

    .line 359
    new-array v7, v6, [B

    .line 360
    .line 361
    fill-array-data v7, :array_2ce

    .line 362
    .line 363
    .line 364
    new-array v8, v2, [B

    .line 365
    .line 366
    fill-array-data v8, :array_2d4

    .line 367
    .line 368
    .line 369
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    invoke-interface {v5, v7, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    const/4 v7, 0x7

    .line 378
    new-array v7, v7, [B

    .line 379
    .line 380
    fill-array-data v7, :array_2dc

    .line 381
    .line 382
    .line 383
    new-array v8, v2, [B

    .line 384
    .line 385
    fill-array-data v8, :array_2e4

    .line 386
    .line 387
    .line 388
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    invoke-interface {v5, v7, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    new-array v5, v6, [B

    .line 397
    .line 398
    fill-array-data v5, :array_2ec

    .line 399
    .line 400
    .line 401
    new-array v7, v2, [B

    .line 402
    .line 403
    fill-array-data v7, :array_2f2

    .line 404
    .line 405
    .line 406
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 411
    .line 412
    .line 413
    move-result-wide v7

    .line 414
    const-wide/16 v9, 0x1388

    .line 415
    .line 416
    add-long/2addr v7, v9

    .line 417
    invoke-interface {p2, v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    const/4 v5, 0x7

    .line 422
    new-array v5, v5, [B

    .line 423
    .line 424
    fill-array-data v5, :array_2fa

    .line 425
    .line 426
    .line 427
    new-array v7, v2, [B

    .line 428
    .line 429
    fill-array-data v7, :array_302

    .line 430
    .line 431
    .line 432
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    const/4 v7, 0x1

    .line 437
    invoke-interface {p2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 438
    .line 439
    .line 440
    move-result-object p2

    .line 441
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 442
    .line 443
    .line 444
    move-result p2

    .line 445
    if-nez p2, :cond_1d7

    .line 446
    .line 447
    const/16 p2, 0x1a

    .line 448
    .line 449
    new-array p2, p2, [B

    .line 450
    .line 451
    fill-array-data p2, :array_30a

    .line 452
    .line 453
    .line 454
    new-array v1, v2, [B

    .line 455
    .line 456
    fill-array-data v1, :array_31c

    .line 457
    .line 458
    .line 459
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p2

    .line 463
    invoke-static {p2}, Lm0/b3;->a(Ljava/lang/String;)Lm0/b3;

    .line 464
    .line 465
    .line 466
    move-result-object p2

    .line 467
    invoke-virtual {v0, p2}, Landroidx/transition/a;->c(Lm0/b3;)V

    .line 468
    .line 469
    .line 470
    monitor-exit p1

    .line 471
    goto :goto_24a

    .line 472
    :cond_1d7
    sput-object v0, Lp0/b;->g:Landroidx/transition/a;
    :try_end_1d9
    .catchall {:try_start_59 .. :try_end_1d9} :catchall_7d

    .line 473
    .line 474
    :try_start_1d9
    iget-object p2, v1, Lp0/b;->a:Landroid/content/Context;

    .line 475
    .line 476
    invoke-static {p2}, Lp0/b;->h(Landroid/content/Context;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 480
    .line 481
    .line 482
    move-result-object p2

    .line 483
    :goto_1e2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-eqz v0, :cond_1ff

    .line 488
    .line 489
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    check-cast v0, Ljava/lang/String;

    .line 494
    .line 495
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    iget-object v4, v1, Lp0/b;->a:Landroid/content/Context;

    .line 500
    .line 501
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    const/4 v5, 0x2

    .line 506
    invoke-virtual {v4, v0, v5, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 507
    .line 508
    .line 509
    goto :goto_1e2

    .line 510
    :catch_1fd
    move-exception p2

    .line 511
    goto :goto_23c

    .line 512
    :cond_1ff
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 513
    .line 514
    .line 515
    move-result-object p2

    .line 516
    new-array v0, v6, [B

    .line 517
    .line 518
    fill-array-data v0, :array_324

    .line 519
    .line 520
    .line 521
    new-array v3, v2, [B

    .line 522
    .line 523
    fill-array-data v3, :array_32a

    .line 524
    .line 525
    .line 526
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 531
    .line 532
    .line 533
    move-result-wide v3

    .line 534
    add-long/2addr v3, v9

    .line 535
    invoke-interface {p2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 536
    .line 537
    .line 538
    move-result-object p2

    .line 539
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 540
    .line 541
    .line 542
    move-result p2

    .line 543
    if-eqz p2, :cond_226

    .line 544
    .line 545
    iget-object p2, v1, Lp0/b;->a:Landroid/content/Context;

    .line 546
    .line 547
    invoke-static {p2}, Lp0/b;->h(Landroid/content/Context;)V

    .line 548
    .line 549
    .line 550
    goto :goto_249

    .line 551
    :cond_226
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 552
    .line 553
    const/16 v0, 0x1a

    .line 554
    .line 555
    new-array v0, v0, [B

    .line 556
    .line 557
    fill-array-data v0, :array_332

    .line 558
    .line 559
    .line 560
    new-array v2, v2, [B

    .line 561
    .line 562
    fill-array-data v2, :array_344

    .line 563
    .line 564
    .line 565
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    throw p2
    :try_end_23c
    .catch Ljava/lang/RuntimeException; {:try_start_1d9 .. :try_end_23c} :catch_1fd
    .catchall {:try_start_1d9 .. :try_end_23c} :catchall_7d

    .line 573
    :goto_23c
    :try_start_23c
    iget-object v0, v1, Lp0/b;->a:Landroid/content/Context;

    .line 574
    .line 575
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    move-result-object p2

    .line 579
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object p2

    .line 583
    invoke-static {v0, p2}, Lp0/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    :goto_249
    monitor-exit p1

    .line 587
    :goto_24a
    return-void

    .line 588
    :goto_24b
    monitor-exit p1
    :try_end_24c
    .catchall {:try_start_23c .. :try_end_24c} :catchall_7d

    .line 589
    throw p2

    .line 590
    nop

    .line 591
    :pswitch_data_24e
    .packed-switch 0x0
        :pswitch_23
    .end packed-switch

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    :array_254
    .array-data 1
        -0x30t
        0x5dt
        -0x33t
        0x77t
        0x57t
        -0x7at
        0x64t
        0x3t
        -0x30t
        0x5dt
        -0x21t
        0x76t
        0x5at
        -0x7at
        0x75t
        0xat
        -0x34t
        0x5ct
        -0x29t
        0x7ct
        0x44t
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
    .line 609
    .line 610
    .line 611
    .line 612
    nop

    .line 613
    :array_264
    .array-data 1
        -0x5et
        0x38t
        -0x42t
        0x12t
        0x23t
        -0x5at
        0x5t
        0x6ft
    .end array-data

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    :array_26c
    .array-data 1
        0x74t
        -0x36t
        0x66t
        -0x31t
        0x1ft
        -0x45t
        -0x22t
        0xbt
        0x72t
        -0x1at
        0x6bt
        -0x2ct
        0x24t
        -0x41t
        -0xft
        0x1et
        0x6ft
        -0x28t
        0x61t
        -0x2ft
        0x25t
        -0x42t
    .end array-data

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
    nop

    .line 637
    :array_27c
    .array-data 1
        0x1t
        -0x47t
        0x3t
        -0x43t
        0x40t
        -0x26t
        -0x52t
        0x7bt
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
        0x42t
        -0x49t
        -0x40t
        -0x38t
        -0x1ft
        0x4ft
        -0x2et
        -0x4at
        0x3t
        -0x51t
        -0x27t
        -0x21t
        -0x5bt
        0x4bt
        -0x32t
    .end array-data

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
    :array_290
    .array-data 1
        0x23t
        -0x39t
        -0x50t
        -0x45t
        -0x3ft
        0x2et
        -0x60t
        -0x2dt
    .end array-data

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
        -0x1dt
        0x5ct
        0x5bt
        -0x29t
        -0x27t
        0x2dt
        -0x15t
        -0x1t
        -0x15t
        0x5ct
        0x4bt
        -0x40t
        -0x28t
        0x30t
        -0x5ft
        -0x50t
        -0x1ft
        0x46t
        0x56t
        -0x36t
        -0x28t
        0x6at
        -0x3et
        -0x70t
        -0x35t
        0x7ct
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
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    nop

    .line 683
    :array_2aa
    .array-data 1
        -0x7et
        0x32t
        0x3ft
        -0x5bt
        -0x4at
        0x44t
        -0x71t
        -0x2ft
    .end array-data

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    :array_2b2
    .array-data 1
        -0x72t
        -0x6dt
        -0x36t
        -0x3ft
        0x1dt
        0x2et
        0x0t
        -0x47t
        -0x7at
        -0x6dt
        -0x26t
        -0x2at
        0x1ct
        0x33t
        0x4at
        -0xct
        -0x72t
        -0x77t
        -0x35t
        -0x2ct
        0x1dt
        0x35t
        0x1dt
        -0x47t
        -0x5dt
        -0x44t
        -0x5t
        -0x3t
        0x31t
        0xft
        0x21t
        -0x3bt
    .end array-data

    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    :array_2c6
    .array-data 1
        -0x11t
        -0x3t
        -0x52t
        -0x4dt
        0x72t
        0x47t
        0x64t
        -0x69t
    .end array-data

    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    :array_2ce
    .array-data 1
        -0x45t
        -0x55t
        0x3t
    .end array-data

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    :array_2d4
    .array-data 1
        -0x26t
        -0x39t
        0x6ft
        0x79t
        -0x7bt
        0x7ct
        0x0t
        0x22t
    .end array-data

    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    :array_2dc
    .array-data 1
        0x57t
        -0x6et
        0x72t
        0x43t
        -0x56t
        0x40t
        0x2dt
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
        0x32t
        -0x4t
        0x13t
        0x21t
        -0x3at
        0x25t
        0x49t
        -0x43t
    .end array-data

    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    :array_2ec
    .array-data 1
        -0x62t
        -0x68t
        0x6ct
    .end array-data

    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    :array_2f2
    .array-data 1
        -0x6t
        -0x13t
        0x9t
        0x1et
        -0x12t
        0x52t
        -0x76t
        0x7ft
    .end array-data

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    :array_2fa
    .array-data 1
        0x2t
        0x5dt
        -0x7bt
        0x43t
        0xft
        0x4t
        0x6bt
    .end array-data

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    :array_302
    .array-data 1
        0x72t
        0x38t
        -0x15t
        0x27t
        0x66t
        0x6at
        0xct
        -0x69t
    .end array-data

    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    :array_30a
    .array-data 1
        0x7ft
        -0x13t
        -0x15t
        -0x24t
        0x1ct
        0x4bt
        -0x2ct
        0x57t
        0x7dt
        -0x6t
        -0x20t
        -0x6et
        0x1t
        0x5at
        -0x69t
        0x4bt
        0x6at
        -0x17t
        -0x9t
        -0x35t
        0x53t
        0x4ct
        -0x80t
        0x45t
        0x68t
        -0x17t
    .end array-data

    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    nop

    .line 797
    :array_31c
    .array-data 1
        0x1ct
        -0x74t
        -0x7bt
        -0x4et
        0x73t
        0x3ft
        -0xct
        0x24t
    .end array-data

    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :array_324
    .array-data 1
        -0x13t
        -0x43t
        0x5et
    .end array-data

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    :array_32a
    .array-data 1
        -0x77t
        -0x38t
        0x3bt
        -0x57t
        -0x1et
        0x72t
        -0x50t
        0x47t
    .end array-data

    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    :array_332
    .array-data 1
        0x6ct
        0x61t
        -0x68t
        -0x5bt
        -0x6at
        -0x12t
        0x58t
        0x4dt
        0x6et
        0x76t
        -0x6dt
        -0x15t
        -0x75t
        -0x1t
        0xbt
        0x5bt
        0x7bt
        0x20t
        -0x6et
        -0x52t
        -0x68t
        -0x2t
        0x14t
        0x57t
        0x61t
        0x65t
    .end array-data

    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    nop

    .line 837
    :array_344
    .array-data 1
        0xft
        0x0t
        -0xat
        -0x35t
        -0x7t
        -0x66t
        0x78t
        0x3et
    .end array-data
.end method
