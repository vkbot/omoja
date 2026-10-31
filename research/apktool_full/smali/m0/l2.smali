.class public final synthetic Lm0/l2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/m2;


# direct methods
.method public synthetic constructor <init>(Lm0/m2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lm0/l2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/l2;->c:Lm0/m2;

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
    .locals 7

    .line 1
    iget p1, p0, Lm0/l2;->b:I

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lm0/l2;->c:Lm0/m2;

    .line 9
    .line 10
    iget-object v1, p1, Lm0/m2;->f:Landroid/widget/EditText;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p1, Lm0/m2;->h:Landroid/widget/EditText;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p1, Lm0/m2;->e:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_0

    .line 51
    .line 52
    sget-object v3, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_1

    .line 63
    .line 64
    :cond_0
    iget-object v0, p1, Lm0/m2;->f:Landroid/widget/EditText;

    .line 65
    .line 66
    const v1, 0x7f1303fa

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_1
    invoke-static {v2}, Ly0/m;->b(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_2

    .line 83
    .line 84
    iget-object v0, p1, Lm0/m2;->h:Landroid/widget/EditText;

    .line 85
    .line 86
    const v1, 0x7f1303fb

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_2
    iget-object v3, p1, Lm0/m2;->g:Landroid/widget/Spinner;

    .line 99
    .line 100
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-lez v3, :cond_3

    .line 105
    .line 106
    iget-object v3, p1, Lm0/m2;->g:Landroid/widget/Spinner;

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    goto :goto_0

    .line 117
    :cond_3
    const-string v3, ""

    .line 118
    .line 119
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    iget-object v5, p1, Lm0/m2;->e:Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 124
    .line 125
    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-static {v2}, Ly0/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-nez v6, :cond_5

    .line 138
    .line 139
    invoke-static {v2}, Ly0/m;->b(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-eqz v6, :cond_4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    const/16 p1, 0x2d

    .line 147
    .line 148
    new-array p1, p1, [B

    .line 149
    .line 150
    fill-array-data p1, :array_0

    .line 151
    .line 152
    .line 153
    new-array v0, v0, [B

    .line 154
    .line 155
    fill-array-data v0, :array_1

    .line 156
    .line 157
    .line 158
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_5
    :goto_1
    invoke-static {v4}, Ly0/m;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    sget-object v4, Ly0/m;->b:Ljava/lang/String;

    .line 175
    .line 176
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    sget-object v4, Ly0/m;->c:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {v1}, Ly0/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    sget-object v1, Ly0/m;->d:Ljava/lang/String;

    .line 191
    .line 192
    const/16 v4, 0x22c1

    .line 193
    .line 194
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    sget-object v1, Ly0/m;->e:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    sget-object v1, Ly0/m;->f:Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {v2}, Ly0/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 219
    .line 220
    .line 221
    sget-object v0, Ly0/n;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 222
    .line 223
    const/4 v1, 0x0

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 225
    .line 226
    .line 227
    sget-object v0, Lcom/example/navistart/Transport/TransportService;->z:Lcom/example/navistart/Transport/TransportService;

    .line 228
    .line 229
    if-eqz v0, :cond_6

    .line 230
    .line 231
    iget-object v0, v0, Lcom/example/navistart/Transport/TransportService;->l:Le0/s3;

    .line 232
    .line 233
    if-eqz v0, :cond_6

    .line 234
    .line 235
    invoke-virtual {v0}, Le0/s3;->e()V

    .line 236
    .line 237
    .line 238
    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    const v0, 0x7f130402

    .line 243
    .line 244
    .line 245
    invoke-static {v0, p1}, Ly5/k;->w(ILandroid/content/Context;)V

    .line 246
    .line 247
    .line 248
    :goto_2
    return-void

    .line 249
    :pswitch_0
    iget-object p1, p0, Lm0/l2;->c:Lm0/m2;

    .line 250
    .line 251
    iget-object v1, p1, Lm0/m2;->h:Landroid/widget/EditText;

    .line 252
    .line 253
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 254
    .line 255
    const/4 v3, 0x4

    .line 256
    new-array v3, v3, [B

    .line 257
    .line 258
    fill-array-data v3, :array_2

    .line 259
    .line 260
    .line 261
    new-array v0, v0, [B

    .line 262
    .line 263
    fill-array-data v0, :array_3

    .line 264
    .line 265
    .line 266
    invoke-static {v3, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iget-object p1, p1, Lm0/m2;->b:Ljava/security/SecureRandom;

    .line 271
    .line 272
    const v3, 0x3b9aca00

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-static {v2, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :pswitch_1
    iget-object p1, p0, Lm0/l2;->c:Lm0/m2;

    .line 296
    .line 297
    sget-object v0, Lm0/m2;->m:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    sget-object v1, Ly0/g;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 304
    .line 305
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    new-instance v2, Landroid/content/Intent;

    .line 310
    .line 311
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    const-class v3, Lcom/example/navistart/Transport/TransportService;

    .line 316
    .line 317
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1}, Lm0/m2;->t()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    const v0, 0x7f130406

    .line 331
    .line 332
    .line 333
    invoke-static {v0, p1}, Ly5/k;->w(ILandroid/content/Context;)V

    .line 334
    .line 335
    .line 336
    return-void

    .line 337
    :pswitch_2
    iget-object p1, p0, Lm0/l2;->c:Lm0/m2;

    .line 338
    .line 339
    sget-object v0, Lm0/m2;->m:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-static {v0}, Ly0/g;->d(Landroid/content/Context;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1}, Lm0/m2;->t()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    const v0, 0x7f130405

    .line 356
    .line 357
    .line 358
    invoke-static {v0, p1}, Ly5/k;->w(ILandroid/content/Context;)V

    .line 359
    .line 360
    .line 361
    return-void

    .line 362
    :pswitch_3
    iget-object p1, p0, Lm0/l2;->c:Lm0/m2;

    .line 363
    .line 364
    sget-object v0, Lm0/m2;->m:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    instance-of v0, v0, Ll0/a;

    .line 371
    .line 372
    if-eqz v0, :cond_7

    .line 373
    .line 374
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    check-cast p1, Ll0/a;

    .line 379
    .line 380
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 381
    .line 382
    .line 383
    goto :goto_3

    .line 384
    :cond_7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    if-eqz v0, :cond_8

    .line 389
    .line 390
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 395
    .line 396
    .line 397
    :cond_8
    :goto_3
    return-void

    .line 398
    nop

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 400
    .line 401
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
    :array_0
    .array-data 1
        -0x21t
        -0x45t
        0x1t
        -0x44t
        -0x4t
        0x7et
        0x4dt
        0x10t
        -0x1t
        -0x17t
        0x14t
        -0x43t
        -0x1ct
        0x6bt
        0x4ct
        0x42t
        -0x1at
        -0x44t
        0x13t
        -0x5at
        -0x51t
        0x6dt
        0x4dt
        0xct
        -0x1t
        -0x58t
        0x9t
        -0x44t
        -0x51t
        0x6bt
        0x5at
        0x3t
        -0x18t
        -0x43t
        0xct
        -0x55t
        -0x51t
        0x37t
        0x2t
        0x6t
        -0x1et
        -0x52t
        0x9t
        -0x5at
        -0x4t
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
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
    nop

    .line 439
    :array_1
    .array-data 1
        -0x75t
        -0x37t
        0x60t
        -0x2et
        -0x71t
        0xet
        0x22t
        0x62t
    .end array-data

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_2
    .array-data 1
        -0x7ct
        0x10t
        0x69t
        0x3at
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    :array_3
    .array-data 1
        -0x5ft
        0x20t
        0x50t
        0x5et
        0x11t
        -0x6bt
        0x24t
        0x19t
    .end array-data
.end method
