.class public abstract Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static volatile a:Z = true


# direct methods
.method public static final a(Ljava/lang/String;[Lg9/e;Lkotlin/jvm/functions/Function1;)Lg9/f;
    .locals 7

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v6, Lg9/a;

    .line 8
    .line 9
    invoke-direct {v6, p0}, Lg9/a;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lg9/f;

    .line 16
    .line 17
    sget-object v3, Lg9/j;->d:Lg9/j;

    .line 18
    .line 19
    iget-object p2, v6, Lg9/a;->c:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    move-object v2, p0

    .line 30
    invoke-direct/range {v1 .. v6}, Lg9/f;-><init>(Ljava/lang/String;Lcom/bumptech/glide/d;ILjava/util/List;Lg9/a;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_0
    const-string p0, "Blank serial names are prohibited"

    .line 35
    .line 36
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public static final b(Ljava/lang/String;Lcom/bumptech/glide/d;[Lg9/e;Lkotlin/jvm/functions/Function1;)Lg9/f;
    .locals 7

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lg9/j;->d:Lg9/j;

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v6, Lg9/a;

    .line 19
    .line 20
    invoke-direct {v6, p0}, Lg9/a;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p3, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance v1, Lg9/f;

    .line 27
    .line 28
    iget-object p3, v6, Lg9/a;->c:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    move-object v2, p0

    .line 39
    move-object v3, p1

    .line 40
    invoke-direct/range {v1 .. v6}, Lg9/f;-><init>(Ljava/lang/String;Lcom/bumptech/glide/d;ILjava/util/List;Lg9/a;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_0
    const-string p0, "For StructureKind.CLASS please use \'buildClassSerialDescriptor\' instead"

    .line 45
    .line 46
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :cond_1
    const-string p0, "Blank serial names are prohibited"

    .line 52
    .line 53
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0
.end method

.method public static f(Lcom/bumptech/glide/b;Ljava/util/ArrayList;)Lcom/bumptech/glide/j;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/b;->b:Lk/b;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/bumptech/glide/b;->e:Lk/g;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v0, v0, Lcom/bumptech/glide/e;->h:Lr5/c;

    .line 14
    .line 15
    new-instance v4, Lcom/bumptech/glide/j;

    .line 16
    .line 17
    invoke-direct {v4}, Lcom/bumptech/glide/j;-><init>()V

    .line 18
    .line 19
    .line 20
    const-class v5, Lg/d;

    .line 21
    .line 22
    const-string v6, "BitmapDrawable"

    .line 23
    .line 24
    const-class v7, Ljava/lang/String;

    .line 25
    .line 26
    const-string v8, "legacy_append"

    .line 27
    .line 28
    const-class v9, Lu/b;

    .line 29
    .line 30
    const-string v10, "Animation"

    .line 31
    .line 32
    const-class v11, [B

    .line 33
    .line 34
    const-class v12, Ljava/lang/Integer;

    .line 35
    .line 36
    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    .line 38
    const-string v14, "Bitmap"

    .line 39
    .line 40
    const-class v15, Ljava/io/File;

    .line 41
    .line 42
    move-object/from16 p0, v11

    .line 43
    .line 44
    const-class v11, Landroid/os/ParcelFileDescriptor;

    .line 45
    .line 46
    move-object/from16 v16, v7

    .line 47
    .line 48
    const-class v7, Landroid/content/res/AssetFileDescriptor;

    .line 49
    .line 50
    move-object/from16 v17, v12

    .line 51
    .line 52
    const-class v12, Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    move-object/from16 v18, v15

    .line 55
    .line 56
    const-class v15, Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    move-object/from16 v19, v8

    .line 59
    .line 60
    const-class v8, Landroid/graphics/Bitmap;

    .line 61
    .line 62
    move-object/from16 v20, v5

    .line 63
    .line 64
    const-class v5, Landroid/net/Uri;

    .line 65
    .line 66
    move-object/from16 v21, v5

    .line 67
    .line 68
    const-class v5, Ljava/io/InputStream;

    .line 69
    .line 70
    move-object/from16 v22, v9

    .line 71
    .line 72
    new-instance v9, Lq/n;

    .line 73
    .line 74
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    move-object/from16 v23, v6

    .line 78
    .line 79
    iget-object v6, v4, Lcom/bumptech/glide/j;->g:Li7/i;

    .line 80
    .line 81
    monitor-enter v6

    .line 82
    move-object/from16 v24, v13

    .line 83
    .line 84
    :try_start_0
    iget-object v13, v6, Li7/i;->b:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    .line 88
    .line 89
    monitor-exit v6

    .line 90
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    const/16 v9, 0x1b

    .line 93
    .line 94
    if-lt v6, v9, :cond_0

    .line 95
    .line 96
    new-instance v9, Lq/u;

    .line 97
    .line 98
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v13, v4, Lcom/bumptech/glide/j;->g:Li7/i;

    .line 102
    .line 103
    monitor-enter v13

    .line 104
    move-object/from16 v25, v7

    .line 105
    .line 106
    :try_start_1
    iget-object v7, v13, Li7/i;->b:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    monitor-exit v13

    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    throw v0

    .line 116
    :cond_0
    move-object/from16 v25, v7

    .line 117
    .line 118
    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v4}, Lcom/bumptech/glide/j;->e()Ljava/util/ArrayList;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    new-instance v13, Lu/a;

    .line 127
    .line 128
    invoke-direct {v13, v3, v9, v1, v2}, Lu/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lk/b;Lk/g;)V

    .line 129
    .line 130
    .line 131
    move-object/from16 v26, v13

    .line 132
    .line 133
    new-instance v13, Lq/f0;

    .line 134
    .line 135
    move-object/from16 v27, v7

    .line 136
    .line 137
    new-instance v7, Lp2/e;

    .line 138
    .line 139
    move-object/from16 v28, v11

    .line 140
    .line 141
    const/16 v11, 0x11

    .line 142
    .line 143
    invoke-direct {v7, v11}, Lp2/e;-><init>(I)V

    .line 144
    .line 145
    .line 146
    invoke-direct {v13, v1, v7}, Lq/f0;-><init>(Lk/b;Lq/e0;)V

    .line 147
    .line 148
    .line 149
    new-instance v7, Lq/q;

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/bumptech/glide/j;->e()Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    move-object/from16 v29, v13

    .line 156
    .line 157
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    invoke-direct {v7, v11, v13, v1, v2}, Lq/q;-><init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lk/b;Lk/g;)V

    .line 162
    .line 163
    .line 164
    const/16 v11, 0x1c

    .line 165
    .line 166
    if-lt v6, v11, :cond_1

    .line 167
    .line 168
    const-class v13, Lcom/bumptech/glide/c;

    .line 169
    .line 170
    iget-object v0, v0, Lr5/c;->c:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v0, Ljava/util/Map;

    .line 173
    .line 174
    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    .line 180
    new-instance v0, Lq/h;

    .line 181
    .line 182
    const/4 v13, 0x1

    .line 183
    invoke-direct {v0, v13}, Lq/h;-><init>(I)V

    .line 184
    .line 185
    .line 186
    new-instance v13, Lq/h;

    .line 187
    .line 188
    const/4 v11, 0x0

    .line 189
    invoke-direct {v13, v11}, Lq/h;-><init>(I)V

    .line 190
    .line 191
    .line 192
    :goto_1
    const/16 v11, 0x1c

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_1
    new-instance v13, Lq/g;

    .line 196
    .line 197
    const/4 v0, 0x0

    .line 198
    invoke-direct {v13, v7, v0}, Lq/g;-><init>(Lq/q;I)V

    .line 199
    .line 200
    .line 201
    new-instance v0, Lq/a;

    .line 202
    .line 203
    const/4 v11, 0x2

    .line 204
    invoke-direct {v0, v11, v7, v2}, Lq/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :goto_2
    if-lt v6, v11, :cond_2

    .line 209
    .line 210
    new-instance v11, Ls/a;

    .line 211
    .line 212
    move/from16 v30, v6

    .line 213
    .line 214
    new-instance v6, Ll/d;

    .line 215
    .line 216
    move-object/from16 v31, v1

    .line 217
    .line 218
    const/16 v1, 0xc

    .line 219
    .line 220
    invoke-direct {v6, v1, v9, v2}, Ll/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    const/4 v1, 0x1

    .line 224
    invoke-direct {v11, v6, v1}, Ls/a;-><init>(Ll/d;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v10, v5, v15, v11}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 228
    .line 229
    .line 230
    new-instance v1, Ls/a;

    .line 231
    .line 232
    new-instance v6, Ll/d;

    .line 233
    .line 234
    const/16 v11, 0xc

    .line 235
    .line 236
    invoke-direct {v6, v11, v9, v2}, Ll/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    const/4 v11, 0x0

    .line 240
    invoke-direct {v1, v6, v11}, Ls/a;-><init>(Ll/d;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v10, v12, v15, v1}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_2
    move-object/from16 v31, v1

    .line 248
    .line 249
    move/from16 v30, v6

    .line 250
    .line 251
    :goto_3
    new-instance v1, Ls/c;

    .line 252
    .line 253
    invoke-direct {v1, v3}, Ls/c;-><init>(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    new-instance v6, Lq/b;

    .line 257
    .line 258
    invoke-direct {v6, v2}, Lq/b;-><init>(Lk/g;)V

    .line 259
    .line 260
    .line 261
    new-instance v11, Lj/i;

    .line 262
    .line 263
    move-object/from16 v32, v3

    .line 264
    .line 265
    const/4 v3, 0x5

    .line 266
    invoke-direct {v11, v3}, Lj/i;-><init>(I)V

    .line 267
    .line 268
    .line 269
    new-instance v3, Lv/c;

    .line 270
    .line 271
    move-object/from16 v33, v11

    .line 272
    .line 273
    const/4 v11, 0x1

    .line 274
    invoke-direct {v3, v11}, Lv/c;-><init>(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    move-object/from16 v34, v3

    .line 282
    .line 283
    new-instance v3, Ln/c0;

    .line 284
    .line 285
    move-object/from16 v35, v11

    .line 286
    .line 287
    const/4 v11, 0x5

    .line 288
    invoke-direct {v3, v11}, Ln/c0;-><init>(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v12, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Lh/b;)V

    .line 292
    .line 293
    .line 294
    new-instance v3, Ln/p;

    .line 295
    .line 296
    const/4 v11, 0x1

    .line 297
    invoke-direct {v3, v11, v2}, Ln/p;-><init>(ILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, v5, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Lh/b;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v14, v12, v8, v13}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v14, v5, v8, v0}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 307
    .line 308
    .line 309
    const-string v3, "robolectric"

    .line 310
    .line 311
    sget-object v11, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-nez v3, :cond_3

    .line 318
    .line 319
    new-instance v3, Lq/g;

    .line 320
    .line 321
    move-object/from16 v36, v11

    .line 322
    .line 323
    const/4 v11, 0x1

    .line 324
    invoke-direct {v3, v7, v11}, Lq/g;-><init>(Lq/q;I)V

    .line 325
    .line 326
    .line 327
    move-object/from16 v7, v28

    .line 328
    .line 329
    invoke-virtual {v4, v14, v7, v8, v3}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 330
    .line 331
    .line 332
    goto :goto_4

    .line 333
    :cond_3
    move-object/from16 v36, v11

    .line 334
    .line 335
    move-object/from16 v7, v28

    .line 336
    .line 337
    :goto_4
    new-instance v3, Lq/f0;

    .line 338
    .line 339
    new-instance v11, Lw7/c;

    .line 340
    .line 341
    move-object/from16 v28, v1

    .line 342
    .line 343
    const/16 v1, 0x10

    .line 344
    .line 345
    invoke-direct {v11, v1}, Lw7/c;-><init>(I)V

    .line 346
    .line 347
    .line 348
    move-object/from16 v1, v31

    .line 349
    .line 350
    invoke-direct {v3, v1, v11}, Lq/f0;-><init>(Lk/b;Lq/e0;)V

    .line 351
    .line 352
    .line 353
    move-object/from16 v11, v25

    .line 354
    .line 355
    invoke-virtual {v4, v14, v11, v8, v3}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 356
    .line 357
    .line 358
    move-object/from16 v3, v29

    .line 359
    .line 360
    invoke-virtual {v4, v14, v7, v8, v3}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 361
    .line 362
    .line 363
    sget-object v11, Ln/c0;->c:Ln/c0;

    .line 364
    .line 365
    invoke-virtual {v4, v8, v8, v11}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 366
    .line 367
    .line 368
    move-object/from16 v29, v15

    .line 369
    .line 370
    new-instance v15, Lq/b0;

    .line 371
    .line 372
    move-object/from16 v31, v11

    .line 373
    .line 374
    const/4 v11, 0x0

    .line 375
    invoke-direct {v15, v11}, Lq/b0;-><init>(I)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4, v14, v8, v8, v15}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v4, v8, v6}, Lcom/bumptech/glide/j;->b(Ljava/lang/Class;Lh/k;)V

    .line 382
    .line 383
    .line 384
    new-instance v11, Lq/a;

    .line 385
    .line 386
    move-object/from16 v15, v27

    .line 387
    .line 388
    invoke-direct {v11, v15, v13}, Lq/a;-><init>(Landroid/content/res/Resources;Lh/j;)V

    .line 389
    .line 390
    .line 391
    move-object/from16 v13, v23

    .line 392
    .line 393
    move-object/from16 v23, v8

    .line 394
    .line 395
    move-object/from16 v8, v24

    .line 396
    .line 397
    invoke-virtual {v4, v13, v12, v8, v11}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 398
    .line 399
    .line 400
    new-instance v11, Lq/a;

    .line 401
    .line 402
    invoke-direct {v11, v15, v0}, Lq/a;-><init>(Landroid/content/res/Resources;Lh/j;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v4, v13, v5, v8, v11}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 406
    .line 407
    .line 408
    new-instance v0, Lq/a;

    .line 409
    .line 410
    invoke-direct {v0, v15, v3}, Lq/a;-><init>(Landroid/content/res/Resources;Lh/j;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4, v13, v7, v8, v0}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 414
    .line 415
    .line 416
    new-instance v0, Ll/d;

    .line 417
    .line 418
    const/4 v3, 0x7

    .line 419
    invoke-direct {v0, v3, v1, v6}, Ll/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v4, v8, v0}, Lcom/bumptech/glide/j;->b(Ljava/lang/Class;Lh/k;)V

    .line 423
    .line 424
    .line 425
    new-instance v0, Lu/h;

    .line 426
    .line 427
    move-object/from16 v3, v26

    .line 428
    .line 429
    invoke-direct {v0, v9, v3, v2}, Lu/h;-><init>(Ljava/util/ArrayList;Lu/a;Lk/g;)V

    .line 430
    .line 431
    .line 432
    move-object/from16 v6, v22

    .line 433
    .line 434
    invoke-virtual {v4, v10, v5, v6, v0}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v4, v10, v12, v6, v3}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 438
    .line 439
    .line 440
    new-instance v0, Lc5/e;

    .line 441
    .line 442
    const/16 v3, 0x12

    .line 443
    .line 444
    invoke-direct {v0, v3}, Lc5/e;-><init>(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v4, v6, v0}, Lcom/bumptech/glide/j;->b(Ljava/lang/Class;Lh/k;)V

    .line 448
    .line 449
    .line 450
    move-object/from16 v0, v20

    .line 451
    .line 452
    move-object/from16 v3, v31

    .line 453
    .line 454
    invoke-virtual {v4, v0, v0, v3}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 455
    .line 456
    .line 457
    new-instance v9, Lq/d;

    .line 458
    .line 459
    invoke-direct {v9, v1}, Lq/d;-><init>(Lk/b;)V

    .line 460
    .line 461
    .line 462
    move-object/from16 v10, v23

    .line 463
    .line 464
    invoke-virtual {v4, v14, v0, v10, v9}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 465
    .line 466
    .line 467
    move-object/from16 v0, v19

    .line 468
    .line 469
    move-object/from16 v11, v21

    .line 470
    .line 471
    move-object/from16 v13, v28

    .line 472
    .line 473
    move-object/from16 v9, v29

    .line 474
    .line 475
    invoke-virtual {v4, v0, v11, v9, v13}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 476
    .line 477
    .line 478
    new-instance v14, Lq/a;

    .line 479
    .line 480
    const/4 v6, 0x1

    .line 481
    invoke-direct {v14, v6, v13, v1}, Lq/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v4, v0, v11, v10, v14}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 485
    .line 486
    .line 487
    new-instance v6, Lcom/bumptech/glide/load/data/h;

    .line 488
    .line 489
    const/4 v13, 0x2

    .line 490
    invoke-direct {v6, v13}, Lcom/bumptech/glide/load/data/h;-><init>(I)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v4, v6}, Lcom/bumptech/glide/j;->h(Lcom/bumptech/glide/load/data/f;)V

    .line 494
    .line 495
    .line 496
    new-instance v6, Ln/c0;

    .line 497
    .line 498
    const/4 v13, 0x6

    .line 499
    invoke-direct {v6, v13}, Ln/c0;-><init>(I)V

    .line 500
    .line 501
    .line 502
    move-object/from16 v13, v18

    .line 503
    .line 504
    invoke-virtual {v4, v13, v12, v6}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 505
    .line 506
    .line 507
    new-instance v6, Ln/f;

    .line 508
    .line 509
    new-instance v14, Ln/c0;

    .line 510
    .line 511
    move-object/from16 v31, v1

    .line 512
    .line 513
    const/16 v1, 0x9

    .line 514
    .line 515
    invoke-direct {v14, v1}, Ln/c0;-><init>(I)V

    .line 516
    .line 517
    .line 518
    invoke-direct {v6, v14}, Lk/a;-><init>(Ln/c0;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v4, v13, v5, v6}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 522
    .line 523
    .line 524
    new-instance v1, Lq/b0;

    .line 525
    .line 526
    const/4 v6, 0x2

    .line 527
    invoke-direct {v1, v6}, Lq/b0;-><init>(I)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v4, v0, v13, v13, v1}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 531
    .line 532
    .line 533
    new-instance v1, Ln/f;

    .line 534
    .line 535
    new-instance v6, Ln/c0;

    .line 536
    .line 537
    const/16 v14, 0x8

    .line 538
    .line 539
    invoke-direct {v6, v14}, Ln/c0;-><init>(I)V

    .line 540
    .line 541
    .line 542
    invoke-direct {v1, v6}, Lk/a;-><init>(Ln/c0;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v4, v13, v7, v1}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v4, v13, v13, v3}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 549
    .line 550
    .line 551
    new-instance v1, Lcom/bumptech/glide/load/data/m;

    .line 552
    .line 553
    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/data/m;-><init>(Lk/g;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v4, v1}, Lcom/bumptech/glide/j;->h(Lcom/bumptech/glide/load/data/f;)V

    .line 557
    .line 558
    .line 559
    const-string v1, "robolectric"

    .line 560
    .line 561
    move-object/from16 v2, v36

    .line 562
    .line 563
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    if-nez v1, :cond_4

    .line 568
    .line 569
    new-instance v1, Lcom/bumptech/glide/load/data/h;

    .line 570
    .line 571
    const/4 v2, 0x1

    .line 572
    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/data/h;-><init>(I)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v4, v1}, Lcom/bumptech/glide/j;->h(Lcom/bumptech/glide/load/data/f;)V

    .line 576
    .line 577
    .line 578
    :cond_4
    new-instance v1, Lcom/bumptech/glide/manager/o;

    .line 579
    .line 580
    const/4 v2, 0x5

    .line 581
    move-object/from16 v6, v32

    .line 582
    .line 583
    invoke-direct {v1, v6, v2}, Lcom/bumptech/glide/manager/o;-><init>(Landroid/content/Context;I)V

    .line 584
    .line 585
    .line 586
    new-instance v2, Lcom/bumptech/glide/manager/o;

    .line 587
    .line 588
    const/4 v14, 0x3

    .line 589
    invoke-direct {v2, v6, v14}, Lcom/bumptech/glide/manager/o;-><init>(Landroid/content/Context;I)V

    .line 590
    .line 591
    .line 592
    new-instance v14, Lcom/bumptech/glide/manager/o;

    .line 593
    .line 594
    move-object/from16 v24, v8

    .line 595
    .line 596
    const/4 v8, 0x4

    .line 597
    invoke-direct {v14, v6, v8}, Lcom/bumptech/glide/manager/o;-><init>(Landroid/content/Context;I)V

    .line 598
    .line 599
    .line 600
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 601
    .line 602
    invoke-virtual {v4, v8, v5, v1}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 603
    .line 604
    .line 605
    move-object/from16 v23, v10

    .line 606
    .line 607
    move-object/from16 v10, v17

    .line 608
    .line 609
    invoke-virtual {v4, v10, v5, v1}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 610
    .line 611
    .line 612
    move-object/from16 v1, v25

    .line 613
    .line 614
    invoke-virtual {v4, v8, v1, v2}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v4, v10, v1, v2}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v4, v8, v9, v14}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v4, v10, v9, v14}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 624
    .line 625
    .line 626
    new-instance v2, Lcom/bumptech/glide/manager/o;

    .line 627
    .line 628
    const/16 v14, 0x8

    .line 629
    .line 630
    invoke-direct {v2, v6, v14}, Lcom/bumptech/glide/manager/o;-><init>(Landroid/content/Context;I)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v4, v11, v5, v2}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 634
    .line 635
    .line 636
    new-instance v2, Lcom/bumptech/glide/manager/o;

    .line 637
    .line 638
    const/4 v14, 0x7

    .line 639
    invoke-direct {v2, v6, v14}, Lcom/bumptech/glide/manager/o;-><init>(Landroid/content/Context;I)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v4, v11, v1, v2}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 643
    .line 644
    .line 645
    new-instance v2, Ln/a0;

    .line 646
    .line 647
    const/4 v14, 0x2

    .line 648
    invoke-direct {v2, v15, v14}, Ln/a0;-><init>(Landroid/content/res/Resources;I)V

    .line 649
    .line 650
    .line 651
    new-instance v14, Ln/a0;

    .line 652
    .line 653
    move-object/from16 v19, v0

    .line 654
    .line 655
    const/4 v0, 0x0

    .line 656
    invoke-direct {v14, v15, v0}, Ln/a0;-><init>(Landroid/content/res/Resources;I)V

    .line 657
    .line 658
    .line 659
    new-instance v0, Ln/a0;

    .line 660
    .line 661
    move-object/from16 v29, v9

    .line 662
    .line 663
    const/4 v9, 0x1

    .line 664
    invoke-direct {v0, v15, v9}, Ln/a0;-><init>(Landroid/content/res/Resources;I)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v4, v10, v11, v2}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v4, v8, v11, v2}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v4, v10, v1, v14}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v4, v8, v1, v14}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v4, v10, v5, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v4, v8, v5, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 683
    .line 684
    .line 685
    new-instance v0, Lr5/c;

    .line 686
    .line 687
    const/16 v2, 0x1d

    .line 688
    .line 689
    invoke-direct {v0, v2}, Lr5/c;-><init>(I)V

    .line 690
    .line 691
    .line 692
    move-object/from16 v2, v16

    .line 693
    .line 694
    invoke-virtual {v4, v2, v5, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 695
    .line 696
    .line 697
    new-instance v0, Lr5/c;

    .line 698
    .line 699
    const/16 v8, 0x1d

    .line 700
    .line 701
    invoke-direct {v0, v8}, Lr5/c;-><init>(I)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v4, v11, v5, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 705
    .line 706
    .line 707
    new-instance v0, Ln/c0;

    .line 708
    .line 709
    const/16 v8, 0xc

    .line 710
    .line 711
    invoke-direct {v0, v8}, Ln/c0;-><init>(I)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v4, v2, v5, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 715
    .line 716
    .line 717
    new-instance v0, Ln/c0;

    .line 718
    .line 719
    const/16 v8, 0xb

    .line 720
    .line 721
    invoke-direct {v0, v8}, Ln/c0;-><init>(I)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v4, v2, v7, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 725
    .line 726
    .line 727
    new-instance v0, Ln/c0;

    .line 728
    .line 729
    const/16 v8, 0xa

    .line 730
    .line 731
    invoke-direct {v0, v8}, Ln/c0;-><init>(I)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v4, v2, v1, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 735
    .line 736
    .line 737
    new-instance v0, Ln/a;

    .line 738
    .line 739
    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    const/4 v8, 0x1

    .line 744
    invoke-direct {v0, v2, v8}, Ln/a;-><init>(Landroid/content/res/AssetManager;I)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v4, v11, v5, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 748
    .line 749
    .line 750
    new-instance v0, Ln/a;

    .line 751
    .line 752
    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    const/4 v8, 0x0

    .line 757
    invoke-direct {v0, v2, v8}, Ln/a;-><init>(Landroid/content/res/AssetManager;I)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v4, v11, v1, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 761
    .line 762
    .line 763
    new-instance v0, Lcom/bumptech/glide/manager/o;

    .line 764
    .line 765
    const/16 v2, 0x9

    .line 766
    .line 767
    invoke-direct {v0, v6, v2}, Lcom/bumptech/glide/manager/o;-><init>(Landroid/content/Context;I)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v4, v11, v5, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 771
    .line 772
    .line 773
    new-instance v0, Lcom/bumptech/glide/manager/o;

    .line 774
    .line 775
    const/16 v2, 0xa

    .line 776
    .line 777
    invoke-direct {v0, v6, v2}, Lcom/bumptech/glide/manager/o;-><init>(Landroid/content/Context;I)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v4, v11, v5, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 781
    .line 782
    .line 783
    const/16 v0, 0x1d

    .line 784
    .line 785
    move/from16 v2, v30

    .line 786
    .line 787
    if-lt v2, v0, :cond_5

    .line 788
    .line 789
    new-instance v0, Lo/c;

    .line 790
    .line 791
    invoke-direct {v0, v6, v5}, Lo/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v4, v11, v5, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 795
    .line 796
    .line 797
    new-instance v0, Lo/c;

    .line 798
    .line 799
    invoke-direct {v0, v6, v7}, Lo/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v4, v11, v7, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 803
    .line 804
    .line 805
    :cond_5
    new-instance v0, Ln/e0;

    .line 806
    .line 807
    const/4 v2, 0x2

    .line 808
    move-object/from16 v8, v35

    .line 809
    .line 810
    invoke-direct {v0, v8, v2}, Ln/e0;-><init>(Landroid/content/ContentResolver;I)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v4, v11, v5, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 814
    .line 815
    .line 816
    new-instance v0, Ln/e0;

    .line 817
    .line 818
    const/4 v2, 0x1

    .line 819
    invoke-direct {v0, v8, v2}, Ln/e0;-><init>(Landroid/content/ContentResolver;I)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v4, v11, v7, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 823
    .line 824
    .line 825
    new-instance v0, Ln/e0;

    .line 826
    .line 827
    const/4 v2, 0x0

    .line 828
    invoke-direct {v0, v8, v2}, Ln/e0;-><init>(Landroid/content/ContentResolver;I)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v4, v11, v1, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 832
    .line 833
    .line 834
    new-instance v0, Ln/c0;

    .line 835
    .line 836
    const/16 v1, 0xd

    .line 837
    .line 838
    invoke-direct {v0, v1}, Ln/c0;-><init>(I)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v4, v11, v5, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 842
    .line 843
    .line 844
    const-class v0, Ljava/net/URL;

    .line 845
    .line 846
    new-instance v1, Lp2/e;

    .line 847
    .line 848
    const/16 v2, 0xf

    .line 849
    .line 850
    invoke-direct {v1, v2}, Lp2/e;-><init>(I)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v4, v0, v5, v1}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 854
    .line 855
    .line 856
    new-instance v0, Lcom/bumptech/glide/manager/o;

    .line 857
    .line 858
    const/4 v1, 0x6

    .line 859
    invoke-direct {v0, v6, v1}, Lcom/bumptech/glide/manager/o;-><init>(Landroid/content/Context;I)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v4, v11, v13, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 863
    .line 864
    .line 865
    const-class v0, Ln/g;

    .line 866
    .line 867
    new-instance v1, Ln/p;

    .line 868
    .line 869
    const/4 v2, 0x2

    .line 870
    invoke-direct {v1, v2}, Ln/p;-><init>(I)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v4, v0, v5, v1}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 874
    .line 875
    .line 876
    new-instance v0, Ln/c0;

    .line 877
    .line 878
    const/4 v1, 0x2

    .line 879
    invoke-direct {v0, v1}, Ln/c0;-><init>(I)V

    .line 880
    .line 881
    .line 882
    move-object/from16 v1, p0

    .line 883
    .line 884
    invoke-virtual {v4, v1, v12, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 885
    .line 886
    .line 887
    new-instance v0, Ln/c0;

    .line 888
    .line 889
    const/4 v2, 0x4

    .line 890
    invoke-direct {v0, v2}, Ln/c0;-><init>(I)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v4, v1, v5, v0}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v4, v11, v11, v3}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 897
    .line 898
    .line 899
    move-object/from16 v9, v29

    .line 900
    .line 901
    invoke-virtual {v4, v9, v9, v3}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Ljava/lang/Class;Ln/s;)V

    .line 902
    .line 903
    .line 904
    new-instance v0, Lq/b0;

    .line 905
    .line 906
    const/4 v2, 0x1

    .line 907
    invoke-direct {v0, v2}, Lq/b0;-><init>(I)V

    .line 908
    .line 909
    .line 910
    move-object/from16 v2, v19

    .line 911
    .line 912
    invoke-virtual {v4, v2, v9, v9, v0}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 913
    .line 914
    .line 915
    new-instance v0, Ln/a0;

    .line 916
    .line 917
    const/4 v2, 0x3

    .line 918
    invoke-direct {v0, v15, v2}, Ln/a0;-><init>(Landroid/content/res/Resources;I)V

    .line 919
    .line 920
    .line 921
    move-object/from16 v10, v23

    .line 922
    .line 923
    move-object/from16 v8, v24

    .line 924
    .line 925
    invoke-virtual {v4, v10, v8, v0}, Lcom/bumptech/glide/j;->i(Ljava/lang/Class;Ljava/lang/Class;Lv/a;)V

    .line 926
    .line 927
    .line 928
    move-object/from16 v0, v33

    .line 929
    .line 930
    invoke-virtual {v4, v10, v1, v0}, Lcom/bumptech/glide/j;->i(Ljava/lang/Class;Ljava/lang/Class;Lv/a;)V

    .line 931
    .line 932
    .line 933
    new-instance v2, La5/h;

    .line 934
    .line 935
    const/16 v3, 0x1a

    .line 936
    .line 937
    move-object/from16 v5, v31

    .line 938
    .line 939
    move-object/from16 v6, v34

    .line 940
    .line 941
    invoke-direct {v2, v5, v0, v6, v3}, La5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 942
    .line 943
    .line 944
    invoke-virtual {v4, v9, v1, v2}, Lcom/bumptech/glide/j;->i(Ljava/lang/Class;Ljava/lang/Class;Lv/a;)V

    .line 945
    .line 946
    .line 947
    move-object/from16 v0, v22

    .line 948
    .line 949
    invoke-virtual {v4, v0, v1, v6}, Lcom/bumptech/glide/j;->i(Ljava/lang/Class;Ljava/lang/Class;Lv/a;)V

    .line 950
    .line 951
    .line 952
    new-instance v0, Lq/f0;

    .line 953
    .line 954
    new-instance v1, Lz3/f;

    .line 955
    .line 956
    const/16 v2, 0x10

    .line 957
    .line 958
    invoke-direct {v1, v2}, Lz3/f;-><init>(I)V

    .line 959
    .line 960
    .line 961
    invoke-direct {v0, v5, v1}, Lq/f0;-><init>(Lk/b;Lq/e0;)V

    .line 962
    .line 963
    .line 964
    const-class v1, Ljava/nio/ByteBuffer;

    .line 965
    .line 966
    const-string v2, "legacy_append"

    .line 967
    .line 968
    invoke-virtual {v4, v2, v1, v10, v0}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 969
    .line 970
    .line 971
    new-instance v1, Lq/a;

    .line 972
    .line 973
    invoke-direct {v1, v15, v0}, Lq/a;-><init>(Landroid/content/res/Resources;Lh/j;)V

    .line 974
    .line 975
    .line 976
    const-class v0, Ljava/nio/ByteBuffer;

    .line 977
    .line 978
    const-string v2, "legacy_append"

    .line 979
    .line 980
    invoke-virtual {v4, v2, v0, v8, v1}, Lcom/bumptech/glide/j;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lh/j;)V

    .line 981
    .line 982
    .line 983
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 988
    .line 989
    .line 990
    move-result v1

    .line 991
    if-nez v1, :cond_6

    .line 992
    .line 993
    return-object v4

    .line 994
    :cond_6
    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    throw v0

    .line 999
    :catchall_1
    move-exception v0

    .line 1000
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1001
    throw v0
.end method

.method public static g(Ljava/lang/String;)Lru/transfer/MessageData;
    .locals 9

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x3

    .line 7
    new-array p0, p0, [B

    .line 8
    .line 9
    fill-array-data p0, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    new-array v2, v1, [B

    .line 15
    .line 16
    fill-array-data v2, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-array p0, v1, [B

    .line 28
    .line 29
    fill-array-data p0, :array_2

    .line 30
    .line 31
    .line 32
    new-array v3, v1, [B

    .line 33
    .line 34
    fill-array-data v3, :array_3

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/16 p0, 0xb

    .line 47
    .line 48
    new-array p0, p0, [B

    .line 49
    .line 50
    fill-array-data p0, :array_4

    .line 51
    .line 52
    .line 53
    new-array v4, v1, [B

    .line 54
    .line 55
    fill-array-data v4, :array_5

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string v4, ""

    .line 63
    .line 64
    invoke-virtual {v0, p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const/4 v5, 0x6

    .line 69
    new-array v5, v5, [B

    .line 70
    .line 71
    fill-array-data v5, :array_6

    .line 72
    .line 73
    .line 74
    new-array v6, v1, [B

    .line 75
    .line 76
    fill-array-data v6, :array_7

    .line 77
    .line 78
    .line 79
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const/4 v6, 0x7

    .line 88
    new-array v6, v6, [B

    .line 89
    .line 90
    fill-array-data v6, :array_8

    .line 91
    .line 92
    .line 93
    new-array v7, v1, [B

    .line 94
    .line 95
    fill-array-data v7, :array_9

    .line 96
    .line 97
    .line 98
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    const/4 v4, 0x4

    .line 107
    new-array v7, v4, [B

    .line 108
    .line 109
    fill-array-data v7, :array_a

    .line 110
    .line 111
    .line 112
    new-array v8, v1, [B

    .line 113
    .line 114
    fill-array-data v8, :array_b

    .line 115
    .line 116
    .line 117
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    const/4 v8, 0x0

    .line 126
    if-eqz v7, :cond_0

    .line 127
    .line 128
    :goto_0
    move-object v4, p0

    .line 129
    move-object v7, v8

    .line 130
    goto :goto_1

    .line 131
    :cond_0
    new-array v4, v4, [B

    .line 132
    .line 133
    fill-array-data v4, :array_c

    .line 134
    .line 135
    .line 136
    new-array v1, v1, [B

    .line 137
    .line 138
    fill-array-data v1, :array_d

    .line 139
    .line 140
    .line 141
    invoke-static {v4, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    goto :goto_0

    .line 150
    :goto_1
    invoke-static/range {v2 .. v7}, Lru/transfer/MessageData;->fromEncodedIcon(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/transfer/MessageData;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :array_0
    .array-data 1
        0x74t
        0x19t
        -0x16t
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_1
    .array-data 1
        0x1ft
        0x7ct
        -0x6dt
        0x15t
        -0x4t
        -0x19t
        0x49t
        -0x42t
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_2
    .array-data 1
        0x4et
        0x75t
        -0x6et
        0x3bt
        0x3at
        0x57t
        0x1ft
        0x4at
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_3
    .array-data 1
        0x26t
        0x14t
        -0x1ft
        0x69t
        0x5ft
        0x27t
        0x73t
        0x33t
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_4
    .array-data 1
        -0x5at
        0x3dt
        0x61t
        0xft
        0x4t
        0x58t
        0x71t
        -0x41t
        -0x49t
        0x31t
        0x67t
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_5
    .array-data 1
        -0x2at
        0x5ct
        0x2t
        0x64t
        0x65t
        0x3ft
        0x14t
        -0xft
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_6
    .array-data 1
        -0x20t
        -0x3ct
        -0x4dt
        0x1ct
        0x9t
        0x4et
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    nop

    .line 211
    :array_7
    .array-data 1
        -0x6dt
        -0x5ft
        -0x23t
        0x78t
        0x6ct
        0x3ct
        -0x7bt
        -0x1at
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_8
    .array-data 1
        -0x33t
        0x3at
        -0x22t
        -0xft
        -0x59t
        -0x66t
        0x57t
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_9
    .array-data 1
        -0x60t
        0x5ft
        -0x53t
        -0x7et
        -0x3at
        -0x3t
        0x32t
        -0x62t
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_a
    .array-data 1
        -0xat
        0x39t
        -0x15t
        -0x75t
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_b
    .array-data 1
        -0x61t
        0x5at
        -0x7ct
        -0x1bt
        0x34t
        0x6ct
        0x46t
        -0x53t
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_c
    .array-data 1
        -0x64t
        -0x9t
        -0x14t
        -0x56t
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_d
    .array-data 1
        -0xbt
        -0x6ct
        -0x7dt
        -0x3ct
        0x52t
        0x18t
        0x62t
        0x49t
    .end array-data
.end method

.method public static h(Ljava/lang/String;)Lm0/b3;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lm0/b3;

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    new-array v3, v2, [B

    .line 17
    .line 18
    fill-array-data v3, :array_1

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v3, 0x7

    .line 30
    new-array v3, v3, [B

    .line 31
    .line 32
    fill-array-data v3, :array_2

    .line 33
    .line 34
    .line 35
    new-array v2, v2, [B

    .line 36
    .line 37
    fill-array-data v2, :array_3

    .line 38
    .line 39
    .line 40
    invoke-static {v3, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-direct {p0, v1, v0}, Lm0/b3;-><init>(Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :array_0
    .array-data 1
        0x4ct
        -0x38t
        -0x46t
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_1
    .array-data 1
        0x27t
        -0x53t
        -0x3dt
        0x74t
        0x61t
        -0x9t
        -0x45t
        -0x61t
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_2
    .array-data 1
        -0x77t
        -0x5at
        0xft
        0x2et
        -0x2ft
        0x68t
        0x19t
    .end array-data

    .line 68
    :array_3
    .array-data 1
        -0x6t
        -0x2dt
        0x6ct
        0x4dt
        -0x4ct
        0x1bt
        0x6at
        -0x80t
    .end array-data
.end method

.method public static i(Lru/transfer/MessageData;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v3, v2, [B

    .line 15
    .line 16
    fill-array-data v3, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0}, Lru/transfer/MessageData;->getKey()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x7

    .line 32
    new-array v1, v1, [B

    .line 33
    .line 34
    fill-array-data v1, :array_2

    .line 35
    .line 36
    .line 37
    new-array v2, v2, [B

    .line 38
    .line 39
    fill-array-data v2, :array_3

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lru/transfer/MessageData;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    const-string p0, ""

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lru/transfer/MessageData;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :goto_0
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    nop

    :array_0
    .array-data 1
        -0x22t
        -0x50t
        -0x3ft
    .end array-data

    :array_1
    .array-data 1
        -0x4bt
        -0x2bt
        -0x48t
        -0x1bt
        0x15t
        0x55t
        0x6t
        -0x7ct
    .end array-data

    :array_2
    .array-data 1
        -0x39t
        -0xdt
        0x0t
        0x43t
        -0x35t
        -0x42t
        -0x1dt
    .end array-data

    :array_3
    .array-data 1
        -0x56t
        -0x6at
        0x73t
        0x30t
        -0x56t
        -0x27t
        -0x7at
        0x7dt
    .end array-data
.end method

.method public static final j(Li9/b;Lh9/c;Ljava/lang/String;)Le9/a;
    .locals 2

    .line 1
    invoke-interface {p1}, Lh9/c;->getSerializersModule()Lj9/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p0, Le9/e;

    .line 6
    .line 7
    iget-object p0, p0, Le9/e;->a:Lkotlin/reflect/KClass;

    .line 8
    .line 9
    check-cast p1, Lj9/a;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lj9/a;->d:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Le9/b;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v0, v1

    .line 36
    :goto_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v0, v1

    .line 40
    :goto_1
    if-eqz v0, :cond_2

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_2
    iget-object p1, p1, Lj9/a;->e:Ljava/util/Map;

    .line 44
    .line 45
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-static {p1, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move-object p1, v1

    .line 60
    :goto_2
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    move-object v0, p1

    .line 67
    check-cast v0, Le9/a;

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    move-object v0, v1

    .line 71
    :goto_3
    if-eqz v0, :cond_5

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_5
    invoke-static {p2, p0}, Li9/d1;->i(Ljava/lang/String;Lkotlin/reflect/KClass;)V

    .line 75
    .line 76
    .line 77
    throw v1
.end method

.method public static m(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/bumptech/glide/c;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/c;->n(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p3

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    throw p3

    .line 31
    :catch_1
    const/4 p0, 0x0

    .line 32
    sput-boolean p0, Lcom/bumptech/glide/c;->a:Z

    .line 33
    .line 34
    :catch_2
    :cond_1
    if-eqz p3, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0, p2, p3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static n(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Landroidx/appcompat/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 17
    .line 18
    .line 19
    move-object p0, v0

    .line 20
    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static o(Lw5/a;)Lt5/b;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lw5/a;->p0()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lw5/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_1
    sget-object v1, Lv5/a;->a:Lt5/g;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Lt5/g;->B(Lw5/a;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lt5/b;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lw5/c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception p0

    .line 17
    new-instance v0, Lt5/c;

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-direct {v0, v1, p0}, La8/a;-><init>(ILjava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :catch_2
    move-exception p0

    .line 25
    new-instance v0, Lt5/c;

    .line 26
    .line 27
    const/4 v1, 0x5

    .line 28
    invoke-direct {v0, v1, p0}, La8/a;-><init>(ILjava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :catch_3
    move-exception p0

    .line 33
    new-instance v0, Lt5/c;

    .line 34
    .line 35
    const/4 v1, 0x5

    .line 36
    invoke-direct {v0, v1, p0}, La8/a;-><init>(ILjava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :catch_4
    move-exception p0

    .line 41
    const/4 v0, 0x1

    .line 42
    :goto_0
    if-eqz v0, :cond_0

    .line 43
    .line 44
    sget-object p0, Lt5/d;->b:Lt5/d;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_0
    new-instance v0, Lt5/c;

    .line 48
    .line 49
    const/4 v1, 0x5

    .line 50
    invoke-direct {v0, v1, p0}, La8/a;-><init>(ILjava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public static s(I)I
    .locals 4

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide/32 v2, -0x3361d2af

    .line 3
    .line 4
    .line 5
    mul-long/2addr v0, v2

    .line 6
    long-to-int p0, v0

    .line 7
    const/16 v0, 0xf

    .line 8
    .line 9
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    int-to-long v0, p0

    .line 14
    const-wide/32 v2, 0x1b873593

    .line 15
    .line 16
    .line 17
    mul-long/2addr v0, v2

    .line 18
    long-to-int p0, v0

    .line 19
    return p0
.end method

.method public static t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/s;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public abstract c(Lm4/m;Lm4/d;Lm4/d;)Z
.end method

.method public abstract d(Lm4/m;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract e(Lm4/m;Lm4/l;Lm4/l;)Z
.end method

.method public abstract k(Lm4/m;)Lm4/d;
.end method

.method public abstract l(Lm4/m;)Lm4/l;
.end method

.method public abstract p(Ljava/lang/String;)V
.end method

.method public abstract q(Lm4/l;Lm4/l;)V
.end method

.method public abstract r(Lm4/l;Ljava/lang/Thread;)V
.end method
