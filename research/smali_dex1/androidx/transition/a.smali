.class public final synthetic Landroidx/transition/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;
.implements Lt1/p;
.implements Lk2/f;
.implements Lorg/apache/commons/io/function/IOSupplier;
.implements Ls1/w;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5

    .line 14
    iput p4, p0, Landroidx/transition/a;->b:I

    iput-object p1, p0, Landroidx/transition/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/transition/a;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/transition/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;Landroidx/transition/Transition;Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/transition/a;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/transition/a;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/transition/a;->e:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/transition/a;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/transition/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/example/navistart/ModernMainActivity;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/transition/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/transition/a;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lcom/example/navistart/mainview/YMovLay;

    .line 12
    .line 13
    sget-object v3, Lcom/example/navistart/ModernMainActivity;->B1:Ljava/lang/String;

    .line 14
    .line 15
    if-nez p2, :cond_11

    .line 16
    .line 17
    return-void

    .line 18
    :cond_11
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p2, v1, v3}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v2, p1}, Lcom/example/navistart/mainview/YMovLay;->setYLayMovX(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Le0/n3;->a(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Landroidx/transition/a;->b:I

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    const/4 v3, 0x5

    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x3

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x1

    .line 11
    const/4 v8, 0x2

    .line 12
    iget-object v9, v1, Landroidx/transition/a;->e:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v10, v1, Landroidx/transition/a;->d:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v11, v1, Landroidx/transition/a;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v11, Lk2/h;

    .line 19
    .line 20
    packed-switch v0, :pswitch_data_222

    .line 21
    .line 22
    .line 23
    check-cast v10, Ljava/util/HashMap;

    .line 24
    .line 25
    check-cast v9, Lb1/m;

    .line 26
    .line 27
    iget-object v0, v9, Lb1/m;->e:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    move-object/from16 v12, p1

    .line 32
    .line 33
    check-cast v12, Landroid/database/Cursor;

    .line 34
    .line 35
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    :goto_25
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 39
    .line 40
    .line 41
    move-result v13

    .line 42
    if-eqz v13, :cond_84

    .line 43
    .line 44
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v13

    .line 48
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 49
    .line 50
    .line 51
    move-result v14

    .line 52
    sget-object v15, Lg2/c;->c:Lg2/c;

    .line 53
    .line 54
    if-nez v14, :cond_38

    .line 55
    .line 56
    goto :goto_61

    .line 57
    :cond_38
    if-ne v14, v7, :cond_3d

    .line 58
    .line 59
    sget-object v15, Lg2/c;->d:Lg2/c;

    .line 60
    .line 61
    goto :goto_61

    .line 62
    :cond_3d
    if-ne v14, v8, :cond_42

    .line 63
    .line 64
    sget-object v15, Lg2/c;->e:Lg2/c;

    .line 65
    .line 66
    goto :goto_61

    .line 67
    :cond_42
    if-ne v14, v5, :cond_47

    .line 68
    .line 69
    sget-object v15, Lg2/c;->f:Lg2/c;

    .line 70
    .line 71
    goto :goto_61

    .line 72
    :cond_47
    if-ne v14, v4, :cond_4c

    .line 73
    .line 74
    sget-object v15, Lg2/c;->g:Lg2/c;

    .line 75
    .line 76
    goto :goto_61

    .line 77
    :cond_4c
    if-ne v14, v3, :cond_51

    .line 78
    .line 79
    sget-object v15, Lg2/c;->h:Lg2/c;

    .line 80
    .line 81
    goto :goto_61

    .line 82
    :cond_51
    if-ne v14, v2, :cond_56

    .line 83
    .line 84
    sget-object v15, Lg2/c;->i:Lg2/c;

    .line 85
    .line 86
    goto :goto_61

    .line 87
    :cond_56
    const-string v2, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 88
    .line 89
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    const-string v3, "SQLiteEventStore"

    .line 94
    .line 95
    invoke-static {v14, v3, v2}, Le3/d;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :goto_61
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    if-nez v14, :cond_73

    .line 107
    .line 108
    new-instance v14, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_73
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    check-cast v13, Ljava/util/List;

    .line 121
    .line 122
    new-instance v14, Lg2/d;

    .line 123
    .line 124
    invoke-direct {v14, v2, v3, v15}, Lg2/d;-><init>(JLg2/c;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    const/4 v2, 0x6

    .line 131
    const/4 v3, 0x5

    .line 132
    goto :goto_25

    .line 133
    :cond_84
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    :goto_8c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_b8

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Ljava/util/Map$Entry;

    .line 152
    .line 153
    sget v4, Lg2/e;->c:I

    .line 154
    .line 155
    new-instance v4, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Ljava/lang/String;

    .line 165
    .line 166
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Ljava/util/List;

    .line 171
    .line 172
    new-instance v5, Lg2/e;

    .line 173
    .line 174
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-direct {v5, v4, v3}, Lg2/e;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_8c

    .line 185
    :cond_b8
    iget-object v2, v11, Lk2/h;->c:Lm2/a;

    .line 186
    .line 187
    invoke-interface {v2}, Lm2/a;->d()J

    .line 188
    .line 189
    .line 190
    move-result-wide v2

    .line 191
    new-instance v4, Lk2/e;

    .line 192
    .line 193
    invoke-direct {v4, v2, v3}, Lk2/e;-><init>(J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v11, v4}, Lk2/h;->y(Lk2/f;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    check-cast v2, Lg2/g;

    .line 201
    .line 202
    iput-object v2, v9, Lb1/m;->c:Ljava/lang/Object;

    .line 203
    .line 204
    invoke-virtual {v11}, Lk2/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    const-string v3, "PRAGMA page_count"

    .line 209
    .line 210
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 215
    .line 216
    .line 217
    move-result-wide v2

    .line 218
    invoke-virtual {v11}, Lk2/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    const-string v5, "PRAGMA page_size"

    .line 223
    .line 224
    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 229
    .line 230
    .line 231
    move-result-wide v4

    .line 232
    mul-long/2addr v4, v2

    .line 233
    sget-object v2, Lk2/a;->f:Lk2/a;

    .line 234
    .line 235
    iget-wide v2, v2, Lk2/a;->a:J

    .line 236
    .line 237
    new-instance v6, Lg2/f;

    .line 238
    .line 239
    invoke-direct {v6, v4, v5, v2, v3}, Lg2/f;-><init>(JJ)V

    .line 240
    .line 241
    .line 242
    new-instance v2, Lg2/b;

    .line 243
    .line 244
    invoke-direct {v2, v6}, Lg2/b;-><init>(Lg2/f;)V

    .line 245
    .line 246
    .line 247
    iput-object v2, v9, Lb1/m;->f:Ljava/lang/Object;

    .line 248
    .line 249
    iget-object v2, v11, Lk2/h;->f:Lt8/a;

    .line 250
    .line 251
    invoke-interface {v2}, Lt8/a;->get()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Ljava/lang/String;

    .line 256
    .line 257
    iput-object v2, v9, Lb1/m;->d:Ljava/lang/Object;

    .line 258
    .line 259
    new-instance v2, Lg2/a;

    .line 260
    .line 261
    iget-object v3, v9, Lb1/m;->c:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v3, Lg2/g;

    .line 264
    .line 265
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iget-object v4, v9, Lb1/m;->f:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v4, Lg2/b;

    .line 272
    .line 273
    iget-object v5, v9, Lb1/m;->d:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v5, Ljava/lang/String;

    .line 276
    .line 277
    invoke-direct {v2, v3, v0, v4, v5}, Lg2/a;-><init>(Lg2/g;Ljava/util/List;Lg2/b;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    return-object v2

    .line 281
    :pswitch_118
    check-cast v10, Ljava/util/ArrayList;

    .line 282
    .line 283
    check-cast v9, Ld2/j;

    .line 284
    .line 285
    move-object/from16 v0, p1

    .line 286
    .line 287
    check-cast v0, Landroid/database/Cursor;

    .line 288
    .line 289
    :goto_120
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_220

    .line 294
    .line 295
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 296
    .line 297
    .line 298
    move-result-wide v2

    .line 299
    const/4 v12, 0x7

    .line 300
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 301
    .line 302
    .line 303
    move-result v12

    .line 304
    if-eqz v12, :cond_133

    .line 305
    .line 306
    move v12, v7

    .line 307
    goto :goto_134

    .line 308
    :cond_133
    move v12, v6

    .line 309
    :goto_134
    new-instance v13, Ld2/h;

    .line 310
    .line 311
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 312
    .line 313
    .line 314
    new-instance v14, Ljava/util/HashMap;

    .line 315
    .line 316
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 317
    .line 318
    .line 319
    iput-object v14, v13, Ld2/h;->f:Ljava/lang/Object;

    .line 320
    .line 321
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v14

    .line 325
    if-eqz v14, :cond_21b

    .line 326
    .line 327
    iput-object v14, v13, Ld2/h;->a:Ljava/lang/Object;

    .line 328
    .line 329
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 330
    .line 331
    .line 332
    move-result-wide v14

    .line 333
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 334
    .line 335
    .line 336
    move-result-object v14

    .line 337
    iput-object v14, v13, Ld2/h;->d:Ljava/lang/Object;

    .line 338
    .line 339
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 340
    .line 341
    .line 342
    move-result-wide v14

    .line 343
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 344
    .line 345
    .line 346
    move-result-object v14

    .line 347
    iput-object v14, v13, Ld2/h;->e:Ljava/lang/Object;

    .line 348
    .line 349
    if-eqz v12, :cond_17e

    .line 350
    .line 351
    new-instance v12, Ld2/l;

    .line 352
    .line 353
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v14

    .line 357
    if-nez v14, :cond_16a

    .line 358
    .line 359
    sget-object v14, Lk2/h;->g:La2/a;

    .line 360
    .line 361
    :goto_168
    const/4 v15, 0x5

    .line 362
    goto :goto_171

    .line 363
    :cond_16a
    new-instance v15, La2/a;

    .line 364
    .line 365
    invoke-direct {v15, v14}, La2/a;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    move-object v14, v15

    .line 369
    goto :goto_168

    .line 370
    :goto_171
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getBlob(I)[B

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    invoke-direct {v12, v14, v5}, Ld2/l;-><init>(La2/a;[B)V

    .line 375
    .line 376
    .line 377
    iput-object v12, v13, Ld2/h;->c:Ljava/lang/Object;

    .line 378
    .line 379
    move v4, v6

    .line 380
    :goto_17b
    const/4 v1, 0x6

    .line 381
    goto/16 :goto_1f1

    .line 382
    .line 383
    :cond_17e
    const/4 v15, 0x5

    .line 384
    new-instance v5, Ld2/l;

    .line 385
    .line 386
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v12

    .line 390
    if-nez v12, :cond_18a

    .line 391
    .line 392
    sget-object v12, Lk2/h;->g:La2/a;

    .line 393
    .line 394
    goto :goto_190

    .line 395
    :cond_18a
    new-instance v14, La2/a;

    .line 396
    .line 397
    invoke-direct {v14, v12}, La2/a;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    move-object v12, v14

    .line 401
    :goto_190
    invoke-virtual {v11}, Lk2/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 402
    .line 403
    .line 404
    move-result-object v16

    .line 405
    const-string v14, "bytes"

    .line 406
    .line 407
    filled-new-array {v14}, [Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v18

    .line 411
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v14

    .line 415
    filled-new-array {v14}, [Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v20

    .line 419
    const/16 v22, 0x0

    .line 420
    .line 421
    const-string v23, "sequence_num"

    .line 422
    .line 423
    const-string v17, "event_payloads"

    .line 424
    .line 425
    const-string v19, "event_id = ?"

    .line 426
    .line 427
    const/16 v21, 0x0

    .line 428
    .line 429
    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 430
    .line 431
    .line 432
    move-result-object v14

    .line 433
    :try_start_1b0
    new-instance v4, Ljava/util/ArrayList;

    .line 434
    .line 435
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .line 437
    .line 438
    move v7, v6

    .line 439
    :goto_1b6
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 440
    .line 441
    .line 442
    move-result v18

    .line 443
    if-eqz v18, :cond_1c7

    .line 444
    .line 445
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getBlob(I)[B

    .line 446
    .line 447
    .line 448
    move-result-object v8

    .line 449
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    array-length v8, v8

    .line 453
    add-int/2addr v7, v8

    .line 454
    const/4 v8, 0x2

    .line 455
    goto :goto_1b6

    .line 456
    :cond_1c7
    new-array v7, v7, [B

    .line 457
    .line 458
    move v8, v6

    .line 459
    move v15, v8

    .line 460
    :goto_1cb
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    if-ge v8, v6, :cond_1e7

    .line 465
    .line 466
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v6

    .line 470
    check-cast v6, [B

    .line 471
    .line 472
    array-length v1, v6

    .line 473
    move-object/from16 p1, v4

    .line 474
    .line 475
    const/4 v4, 0x0

    .line 476
    invoke-static {v6, v4, v7, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    .line 478
    .line 479
    array-length v1, v6
    :try_end_1df
    .catchall {:try_start_1b0 .. :try_end_1df} :catchall_216

    .line 480
    add-int/2addr v15, v1

    .line 481
    add-int/lit8 v8, v8, 0x1

    .line 482
    .line 483
    move-object/from16 v1, p0

    .line 484
    .line 485
    move-object/from16 v4, p1

    .line 486
    .line 487
    goto :goto_1cb

    .line 488
    :cond_1e7
    const/4 v4, 0x0

    .line 489
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 490
    .line 491
    .line 492
    invoke-direct {v5, v12, v7}, Ld2/l;-><init>(La2/a;[B)V

    .line 493
    .line 494
    .line 495
    iput-object v5, v13, Ld2/h;->c:Ljava/lang/Object;

    .line 496
    .line 497
    goto :goto_17b

    .line 498
    :goto_1f1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 499
    .line 500
    .line 501
    move-result v5

    .line 502
    if-nez v5, :cond_201

    .line 503
    .line 504
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    iput-object v5, v13, Ld2/h;->b:Ljava/lang/Object;

    .line 513
    .line 514
    :cond_201
    invoke-virtual {v13}, Ld2/h;->l()Ld2/i;

    .line 515
    .line 516
    .line 517
    move-result-object v5

    .line 518
    new-instance v6, Lk2/b;

    .line 519
    .line 520
    invoke-direct {v6, v2, v3, v9, v5}, Lk2/b;-><init>(JLd2/j;Ld2/i;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-object/from16 v1, p0

    .line 527
    .line 528
    move v6, v4

    .line 529
    const/4 v4, 0x4

    .line 530
    const/4 v5, 0x3

    .line 531
    const/4 v7, 0x1

    .line 532
    const/4 v8, 0x2

    .line 533
    goto/16 :goto_120

    .line 534
    .line 535
    :catchall_216
    move-exception v0

    .line 536
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 537
    .line 538
    .line 539
    throw v0

    .line 540
    :cond_21b
    const-string v0, "Null transportName"

    .line 541
    .line 542
    invoke-static {v0}, Ln0/b;->n(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    :cond_220
    const/4 v0, 0x0

    .line 546
    return-object v0

    .line 547
    :pswitch_data_222
    .packed-switch 0x2
        :pswitch_118
    .end packed-switch
.end method

.method public b(Ljava/lang/String;Z)V
    .registers 6

    .line 1
    iget-object p1, p0, Landroidx/transition/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/example/navistart/home/LauncherWindowService;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/transition/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/transition/a;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Landroid/hardware/display/VirtualDisplay;

    .line 12
    .line 13
    iget-object v2, p1, Lcom/example/navistart/home/LauncherWindowService;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    if-eqz p2, :cond_35

    .line 16
    .line 17
    iget-object p2, p1, Lcom/example/navistart/home/LauncherWindowService;->c:Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_35

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-ne p2, v1, :cond_35

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_35

    .line 42
    .line 43
    iget-object p2, p1, Lcom/example/navistart/home/LauncherWindowService;->d:Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_35

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    .line 52
    .line 53
    .line 54
    :cond_35
    return-void
.end method

.method public c(Lm0/b3;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/transition/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm0/s0;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/transition/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/view/View;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/transition/a;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroid/widget/Button;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_39

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eq v3, v1, :cond_19

    .line 24
    .line 25
    goto :goto_39

    .line 26
    :cond_19
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    .line 29
    .line 30
    const v1, 0x7f1301ef

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object p1, p1, Lm0/b3;->b:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz p1, :cond_2f

    .line 43
    .line 44
    const p1, 0x7f1301fb

    .line 45
    .line 46
    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    const p1, 0x7f1301fa

    .line 49
    .line 50
    .line 51
    :goto_32
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v1, p1}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    :cond_39
    :goto_39
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/transition/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/transition/a;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/nio/file/Path;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/transition/a;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/nio/file/attribute/BasicFileAttributes;

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;->a(Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public onCancel()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/transition/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Runnable;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/transition/a;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/transition/Transition;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/transition/a;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroidx/transition/FragmentTransitionSupport;->a(Ljava/lang/Runnable;Landroidx/transition/Transition;Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
