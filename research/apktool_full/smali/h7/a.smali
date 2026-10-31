.class public final synthetic Lh7/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/woha/appmanag/FilePickerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/woha/appmanag/FilePickerActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lh7/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lh7/a;->c:Lcom/woha/appmanag/FilePickerActivity;

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
    .locals 10

    .line 1
    iget p1, p0, Lh7/a;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lh7/a;->c:Lcom/woha/appmanag/FilePickerActivity;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p1, v1, Lcom/woha/appmanag/FilePickerActivity;->g:Lh7/k;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lh7/k;->o(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object v2, v1, Lcom/woha/appmanag/FilePickerActivity;->g:Lh7/k;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2}, Lh7/k;->e()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    move v4, v0

    .line 34
    :cond_1
    :goto_0
    if-ge v4, v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    check-cast v5, Ljava/io/File;

    .line 43
    .line 44
    invoke-static {v5}, Lcom/woha/appmanag/FilePickerActivity;->u(Ljava/io/File;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    invoke-static {p1, v5}, Lcom/woha/appmanag/FilePickerActivity;->s(Ljava/util/ArrayList;Ljava/io/File;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-nez v6, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    :cond_2
    const/4 v2, 0x0

    .line 61
    const/16 v3, 0x9

    .line 62
    .line 63
    const/16 v4, 0x8

    .line 64
    .line 65
    :try_start_1
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    array-length v5, v2

    .line 70
    move v6, v0

    .line 71
    :goto_1
    if-ge v6, v5, :cond_6

    .line 72
    .line 73
    aget-object v7, v2, v6

    .line 74
    .line 75
    if-nez v7, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    new-array v8, v3, [B

    .line 83
    .line 84
    fill-array-data v8, :array_0

    .line 85
    .line 86
    .line 87
    new-array v9, v4, [B

    .line 88
    .line 89
    fill-array-data v9, :array_1

    .line 90
    .line 91
    .line 92
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_5

    .line 101
    .line 102
    const/4 v8, 0x7

    .line 103
    new-array v8, v8, [B

    .line 104
    .line 105
    fill-array-data v8, :array_2

    .line 106
    .line 107
    .line 108
    new-array v9, v4, [B

    .line 109
    .line 110
    fill-array-data v9, :array_3

    .line 111
    .line 112
    .line 113
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-nez v8, :cond_4

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    new-array v8, v4, [B

    .line 125
    .line 126
    fill-array-data v8, :array_4

    .line 127
    .line 128
    .line 129
    new-array v9, v4, [B

    .line 130
    .line 131
    fill-array-data v9, :array_5

    .line 132
    .line 133
    .line 134
    invoke-static {v8, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    new-instance v8, Ljava/io/File;

    .line 147
    .line 148
    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v8}, Lcom/woha/appmanag/FilePickerActivity;->u(Ljava/io/File;)Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-eqz v7, :cond_5

    .line 156
    .line 157
    invoke-static {p1, v8}, Lcom/woha/appmanag/FilePickerActivity;->s(Ljava/util/ArrayList;Ljava/io/File;)Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-nez v7, :cond_5

    .line 162
    .line 163
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    .line 165
    .line 166
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :catch_1
    :cond_6
    :try_start_2
    new-instance v2, Ljava/io/File;

    .line 170
    .line 171
    new-array v3, v3, [B

    .line 172
    .line 173
    fill-array-data v3, :array_6

    .line 174
    .line 175
    .line 176
    new-array v4, v4, [B

    .line 177
    .line 178
    fill-array-data v4, :array_7

    .line 179
    .line 180
    .line 181
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    if-eqz v2, :cond_9

    .line 193
    .line 194
    array-length v3, v2

    .line 195
    move v4, v0

    .line 196
    :goto_3
    if-ge v4, v3, :cond_9

    .line 197
    .line 198
    aget-object v5, v2, v4

    .line 199
    .line 200
    if-nez v5, :cond_7

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_7
    invoke-static {v5}, Lcom/woha/appmanag/FilePickerActivity;->u(Ljava/io/File;)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-eqz v6, :cond_8

    .line 208
    .line 209
    invoke-static {p1, v5}, Lcom/woha/appmanag/FilePickerActivity;->s(Ljava/util/ArrayList;Ljava/io/File;)Z

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    if-nez v6, :cond_8

    .line 214
    .line 215
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 216
    .line 217
    .line 218
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :catch_2
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_a

    .line 226
    .line 227
    const p1, 0x7f130416

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-static {v1, p1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    new-array v2, v2, [Ljava/lang/String;

    .line 243
    .line 244
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-ge v0, v3, :cond_b

    .line 249
    .line 250
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    check-cast v3, Ljava/io/File;

    .line 255
    .line 256
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    aput-object v3, v2, v0

    .line 261
    .line 262
    add-int/lit8 v0, v0, 0x1

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 266
    .line 267
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    .line 269
    .line 270
    const v3, 0x7f130415

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    new-instance v3, Le0/e0;

    .line 282
    .line 283
    const/4 v4, 0x1

    .line 284
    invoke-direct {v3, v4, v1, p1}, Le0/e0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 292
    .line 293
    .line 294
    :goto_6
    return-void

    .line 295
    :pswitch_0
    iget-object p1, v1, Lcom/woha/appmanag/FilePickerActivity;->e:Ljava/io/File;

    .line 296
    .line 297
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    if-eqz p1, :cond_c

    .line 302
    .line 303
    iget-object p1, v1, Lcom/woha/appmanag/FilePickerActivity;->e:Ljava/io/File;

    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-virtual {v1, p1}, Lcom/woha/appmanag/FilePickerActivity;->v(Ljava/io/File;)V

    .line 310
    .line 311
    .line 312
    goto :goto_7

    .line 313
    :cond_c
    const p1, 0x7f130410

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-static {v1, p1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    :goto_7
    return-void

    .line 324
    :pswitch_1
    sget-object p1, Lcom/woha/appmanag/FilePickerActivity;->j:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
        0x17t
        0x1dt
        0x61t
        0x1at
        0x13t
        -0x21t
        0x2ft
        -0x12t
        0x17t
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
        0x38t
        0x6et
        0x15t
        0x75t
        0x61t
        -0x42t
        0x48t
        -0x75t
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
        -0x62t
        0x57t
        -0x35t
        -0x4et
        0x56t
        0x1bt
        0x7et
    .end array-data

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    :array_3
    .array-data 1
        -0x21t
        0x39t
        -0x51t
        -0x40t
        0x39t
        0x72t
        0x1at
        0x1ft
    .end array-data

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :array_4
    .array-data 1
        0x5at
        0x53t
        0x12t
        -0x7ft
        0x6t
        -0x60t
        -0x3at
        0x71t
    .end array-data

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    :array_5
    .array-data 1
        0x75t
        0x12t
        0x7ct
        -0x1bt
        0x74t
        -0x31t
        -0x51t
        0x15t
    .end array-data

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    :array_6
    .array-data 1
        0x1t
        0x4at
        -0x49t
        -0x60t
        0x5dt
        -0x59t
        -0x68t
        0x19t
        0x1t
    .end array-data

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    nop

    .line 401
    :array_7
    .array-data 1
        0x2et
        0x39t
        -0x3dt
        -0x31t
        0x2ft
        -0x3at
        -0x1t
        0x7ct
    .end array-data
.end method
