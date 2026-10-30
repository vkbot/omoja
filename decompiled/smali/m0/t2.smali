.class public final synthetic Lm0/t2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lm0/c3;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lm0/c3;Ljava/io/File;I)V
    .locals 0

    .line 1
    iput p3, p0, Lm0/t2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lm0/t2;->c:Lm0/c3;

    .line 4
    .line 5
    iput-object p2, p0, Lm0/t2;->d:Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lm0/t2;->b:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x8

    .line 9
    .line 10
    iget-object v5, p0, Lm0/t2;->d:Ljava/io/File;

    .line 11
    .line 12
    iget-object v6, p0, Lm0/t2;->c:Lm0/c3;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget-object v12, p0, Lm0/t2;->d:Ljava/io/File;

    .line 18
    .line 19
    :try_start_0
    invoke-static {v12}, Lm0/c3;->E(Ljava/io/File;)Lm0/b3;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, v0, Lm0/b3;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    .line 25
    :try_start_1
    iget-boolean v0, v0, Lm0/b3;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    .line 27
    move v11, v0

    .line 28
    move-object v10, v1

    .line 29
    move-object v9, v3

    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception v0

    .line 32
    move-object v3, v1

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    .line 35
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_1
    const/4 v1, 0x0

    .line 55
    move-object v9, v0

    .line 56
    move v11, v1

    .line 57
    move-object v10, v3

    .line 58
    :goto_2
    new-instance v7, Lb1/j;

    .line 59
    .line 60
    iget-object v8, p0, Lm0/t2;->c:Lm0/c3;

    .line 61
    .line 62
    invoke-direct/range {v7 .. v12}, Lb1/j;-><init>(Lm0/c3;Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v7}, Lm0/c3;->F(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_0
    const v0, 0x7f13043f

    .line 70
    .line 71
    .line 72
    :try_start_2
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    new-instance v7, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    new-array v2, v2, [B

    .line 89
    .line 90
    fill-array-data v2, :array_0

    .line 91
    .line 92
    .line 93
    new-array v8, v4, [B

    .line 94
    .line 95
    fill-array-data v8, :array_1

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v3, v2, v5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    new-instance v7, Landroid/content/Intent;

    .line 114
    .line 115
    new-array v1, v1, [B

    .line 116
    .line 117
    fill-array-data v1, :array_2

    .line 118
    .line 119
    .line 120
    new-array v4, v4, [B

    .line 121
    .line 122
    fill-array-data v4, :array_3

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v5}, Lm0/c3;->A(Ljava/io/File;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v7, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v1, v3, v2}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 152
    .line 153
    .line 154
    const/4 v1, 0x1

    .line 155
    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    const v1, 0x7f13044b

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v7, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v6, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :catch_2
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v6, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v6, v0}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :catch_3
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v6, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v6, v0}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :goto_3
    return-void

    .line 205
    :pswitch_1
    const v0, 0x7f13045c

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v6, v0}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-array v0, v1, [B

    .line 216
    .line 217
    fill-array-data v0, :array_4

    .line 218
    .line 219
    .line 220
    new-array v1, v4, [B

    .line 221
    .line 222
    fill-array-data v1, :array_5

    .line 223
    .line 224
    .line 225
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    const/4 v1, -0x1

    .line 230
    invoke-static {v1, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    new-instance v1, Lm0/t2;

    .line 235
    .line 236
    const/4 v2, 0x4

    .line 237
    invoke-direct {v1, v6, v5, v2}, Lm0/t2;-><init>(Lm0/c3;Ljava/io/File;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :pswitch_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const v1, 0x7f130447

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v6, v0}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v5}, Lm0/c3;->G(Ljava/io/File;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-static {v0, v1, v3}, Le0/y2;->c(Ljava/lang/String;Landroid/content/Context;Le0/g2;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :catch_4
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    const v1, 0x7f130446

    .line 283
    .line 284
    .line 285
    invoke-virtual {v6, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v6, v0}, Lm0/c3;->I(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :goto_4
    return-void

    .line 293
    :pswitch_3
    :try_start_4
    invoke-static {v5}, Lm0/c3;->y(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 294
    .line 295
    .line 296
    goto :goto_6

    .line 297
    :catch_5
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    if-nez v1, :cond_1

    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    :goto_5
    move-object v3, v0

    .line 313
    goto :goto_6

    .line 314
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    goto :goto_5

    .line 319
    :goto_6
    new-instance v0, Lb1/n;

    .line 320
    .line 321
    invoke-direct {v0, v6, v3, v5, v2}, Lb1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6, v0}, Lm0/c3;->F(Ljava/lang/Runnable;)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    nop

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_0
    .array-data 1
        -0x62t
        -0x14t
        0x7at
        -0x5t
        -0x4bt
        -0x69t
        0x65t
        0x37t
        -0x3et
    .end array-data

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    nop

    .line 351
    :array_1
    .array-data 1
        -0x50t
        -0x64t
        0x8t
        -0x6ct
        -0x3dt
        -0x2t
        0x1t
        0x52t
    .end array-data

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :array_2
    .array-data 1
        0x23t
        -0x67t
        0xbt
        0x61t
        0x60t
        0x44t
        -0x7et
        -0x66t
        0x2bt
        -0x67t
        0x1bt
        0x76t
        0x61t
        0x59t
        -0x38t
        -0x2bt
        0x21t
        -0x7dt
        0x6t
        0x7ct
        0x61t
        0x3t
        -0x50t
        -0x3t
        0x7t
        -0x60t
    .end array-data

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    nop

    .line 377
    :array_3
    .array-data 1
        0x42t
        -0x9t
        0x6ft
        0x13t
        0xft
        0x2dt
        -0x1at
        -0x4ct
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_4
    .array-data 1
        -0x12t
        0xdt
        0x61t
        -0x48t
        -0x3t
        -0x3at
        0x58t
        0x56t
        -0xat
        0x1ft
        0x6at
        -0x55t
        -0x24t
        -0x36t
        0x46t
        0x67t
        -0x22t
        0x6t
        0x70t
        -0x66t
        -0x37t
        -0x36t
        0x42t
        0x5at
        -0x22t
        0x9t
    .end array-data

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
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    nop

    .line 403
    :array_5
    .array-data 1
        -0x45t
        0x7et
        0x4t
        -0x36t
        -0x45t
        -0x51t
        0x34t
        0x33t
    .end array-data
.end method
