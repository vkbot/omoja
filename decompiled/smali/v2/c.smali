.class public final Lv2/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final b:Lw7/c;

.field public static c:Ljava/lang/Boolean; = null

.field public static d:Ljava/lang/String; = null

.field public static e:Z = false

.field public static f:I = -0x1

.field public static g:Ljava/lang/Boolean;

.field public static final h:Ljava/lang/ThreadLocal;

.field public static final i:Lv2/e;

.field public static final j:Lp2/e;

.field public static k:Lv2/g;

.field public static l:Lv2/h;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv2/c;->h:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Lv2/e;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lv2/c;->i:Lv2/e;

    .line 14
    .line 15
    new-instance v0, Lp2/e;

    .line 16
    .line 17
    const/16 v1, 0x12

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lp2/e;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lv2/c;->j:Lp2/e;

    .line 23
    .line 24
    new-instance v0, Lw7/c;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lw7/c;-><init>(I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lv2/c;->b:Lw7/c;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv2/c;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Landroid/content/Context;Lw7/c;)Lv2/c;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "No acceptable module com.google.android.gms.providerinstaller.dynamite found. Local version is "

    .line 6
    .line 7
    const-string v3, "Selected remote version of com.google.android.gms.providerinstaller.dynamite, version >= "

    .line 8
    .line 9
    const-string v4, "Selected remote version of com.google.android.gms.providerinstaller.dynamite, version >= "

    .line 10
    .line 11
    const-string v5, " and remote module com.google.android.gms.providerinstaller.dynamite:"

    .line 12
    .line 13
    const-string v6, "Considering local module com.google.android.gms.providerinstaller.dynamite:"

    .line 14
    .line 15
    const-string v7, "VersionPolicy returned invalid code:"

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    if-eqz v8, :cond_17

    .line 22
    .line 23
    sget-object v9, Lv2/c;->h:Ljava/lang/ThreadLocal;

    .line 24
    .line 25
    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v10

    .line 29
    check-cast v10, Lv2/f;

    .line 30
    .line 31
    new-instance v11, Lv2/f;

    .line 32
    .line 33
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v9, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object v12, Lv2/c;->i:Lv2/e;

    .line 40
    .line 41
    invoke-virtual {v12}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v13

    .line 45
    check-cast v13, Ljava/lang/Long;

    .line 46
    .line 47
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v14

    .line 51
    const-wide/16 v16, 0x0

    .line 52
    .line 53
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v18

    .line 57
    move-object/from16 v20, v9

    .line 58
    .line 59
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {v12, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object v9, Lv2/c;->j:Lp2/e;

    .line 67
    .line 68
    invoke-virtual {v2, v1, v9}, Lw7/c;->n(Landroid/content/Context;Lv2/b;)Ll/h;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    const-string v12, "DynamiteModule"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 73
    .line 74
    move-wide/from16 v18, v14

    .line 75
    .line 76
    :try_start_1
    iget v14, v9, Ll/h;->a:I

    .line 77
    .line 78
    iget v15, v9, Ll/h;->b:I

    .line 79
    .line 80
    move-object/from16 v21, v0

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    iget v0, v9, Ll/h;->c:I

    .line 104
    .line 105
    if-eqz v0, :cond_14

    .line 106
    .line 107
    const/4 v5, -0x1

    .line 108
    if-ne v0, v5, :cond_0

    .line 109
    .line 110
    iget v0, v9, Ll/h;->a:I

    .line 111
    .line 112
    if-eqz v0, :cond_14

    .line 113
    .line 114
    move v0, v5

    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    goto/16 :goto_c

    .line 118
    .line 119
    :cond_0
    :goto_0
    const/4 v6, 0x1

    .line 120
    if-ne v0, v6, :cond_1

    .line 121
    .line 122
    iget v12, v9, Ll/h;->b:I

    .line 123
    .line 124
    if-eqz v12, :cond_14

    .line 125
    .line 126
    :cond_1
    if-ne v0, v5, :cond_2

    .line 127
    .line 128
    const-string v0, "com.google.android.gms.providerinstaller.dynamite"

    .line 129
    .line 130
    const-string v1, "Selected local version of "

    .line 131
    .line 132
    const-string v2, "DynamiteModule"

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    new-instance v0, Lv2/c;

    .line 142
    .line 143
    invoke-direct {v0, v8}, Lv2/c;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    .line 146
    goto/16 :goto_a

    .line 147
    .line 148
    :cond_2
    if-ne v0, v6, :cond_13

    .line 149
    .line 150
    :try_start_2
    iget v0, v9, Ll/h;->b:I
    :try_end_2
    .catch Lv2/a; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    .line 152
    :try_start_3
    const-class v7, Lv2/c;

    .line 153
    .line 154
    monitor-enter v7
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lv2/a; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    :try_start_4
    invoke-static {v1}, Lv2/c;->d(Landroid/content/Context;)Z

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    if-eqz v12, :cond_f

    .line 160
    .line 161
    sget-object v12, Lv2/c;->c:Ljava/lang/Boolean;

    .line 162
    .line 163
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 164
    if-eqz v12, :cond_e

    .line 165
    .line 166
    :try_start_5
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    const/4 v12, 0x2

    .line 171
    if-eqz v7, :cond_8

    .line 172
    .line 173
    const-string v3, "DynamiteModule"

    .line 174
    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    const-class v3, Lv2/c;

    .line 191
    .line 192
    monitor-enter v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lv2/a; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 193
    :try_start_6
    sget-object v4, Lv2/c;->l:Lv2/h;

    .line 194
    .line 195
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 196
    if-eqz v4, :cond_7

    .line 197
    .line 198
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    check-cast v3, Lv2/f;

    .line 203
    .line 204
    if-eqz v3, :cond_6

    .line 205
    .line 206
    iget-object v7, v3, Lv2/f;->a:Landroid/database/Cursor;

    .line 207
    .line 208
    if-eqz v7, :cond_6

    .line 209
    .line 210
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    iget-object v3, v3, Lv2/f;->a:Landroid/database/Cursor;

    .line 215
    .line 216
    new-instance v14, Lu2/b;

    .line 217
    .line 218
    const/4 v15, 0x0

    .line 219
    invoke-direct {v14, v15}, Lu2/b;-><init>(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    const-class v14, Lv2/c;

    .line 223
    .line 224
    monitor-enter v14
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lv2/a; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 225
    :try_start_8
    sget v15, Lv2/c;->f:I

    .line 226
    .line 227
    if-lt v15, v12, :cond_3

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_3
    const/4 v6, 0x0

    .line 231
    :goto_1
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 232
    if-eqz v6, :cond_4

    .line 233
    .line 234
    :try_start_9
    const-string v6, "DynamiteModule"

    .line 235
    .line 236
    const-string v12, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    .line 237
    .line 238
    invoke-static {v6, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    new-instance v6, Lu2/b;

    .line 242
    .line 243
    invoke-direct {v6, v7}, Lu2/b;-><init>(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    new-instance v7, Lu2/b;

    .line 247
    .line 248
    invoke-direct {v7, v3}, Lu2/b;-><init>(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v6, v0, v7}, Lv2/h;->e(Lu2/b;ILu2/b;)Lu2/a;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    goto :goto_2

    .line 256
    :catchall_1
    move-exception v0

    .line 257
    goto/16 :goto_6

    .line 258
    .line 259
    :catch_0
    move-exception v0

    .line 260
    goto/16 :goto_7

    .line 261
    .line 262
    :catch_1
    move-exception v0

    .line 263
    goto/16 :goto_8

    .line 264
    .line 265
    :cond_4
    const-string v6, "DynamiteModule"

    .line 266
    .line 267
    const-string v12, "Dynamite loader version < 2, falling back to loadModule2"

    .line 268
    .line 269
    invoke-static {v6, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    new-instance v6, Lu2/b;

    .line 273
    .line 274
    invoke-direct {v6, v7}, Lu2/b;-><init>(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    new-instance v7, Lu2/b;

    .line 278
    .line 279
    invoke-direct {v7, v3}, Lu2/b;-><init>(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4, v6, v0, v7}, Lv2/h;->d(Lu2/b;ILu2/b;)Lu2/a;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    :goto_2
    invoke-static {v0}, Lu2/b;->d(Lu2/a;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Landroid/content/Context;

    .line 291
    .line 292
    if-eqz v0, :cond_5

    .line 293
    .line 294
    new-instance v3, Lv2/c;

    .line 295
    .line 296
    invoke-direct {v3, v0}, Lv2/c;-><init>(Landroid/content/Context;)V

    .line 297
    .line 298
    .line 299
    :goto_3
    move-object v0, v3

    .line 300
    goto/16 :goto_a

    .line 301
    .line 302
    :cond_5
    new-instance v0, Lv2/a;

    .line 303
    .line 304
    const-string v3, "Failed to get module context"

    .line 305
    .line 306
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lv2/a; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 310
    :catchall_2
    move-exception v0

    .line 311
    :try_start_a
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 312
    :try_start_b
    throw v0

    .line 313
    :cond_6
    new-instance v0, Lv2/a;

    .line 314
    .line 315
    const-string v3, "No result cursor"

    .line 316
    .line 317
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw v0

    .line 321
    :cond_7
    new-instance v0, Lv2/a;

    .line 322
    .line 323
    const-string v3, "DynamiteLoaderV2 was not cached."

    .line 324
    .line 325
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lv2/a; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 329
    :catchall_3
    move-exception v0

    .line 330
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 331
    :try_start_d
    throw v0

    .line 332
    :cond_8
    const-string v4, "DynamiteModule"

    .line 333
    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    invoke-static {v1}, Lv2/c;->e(Landroid/content/Context;)Lv2/g;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    if-eqz v3, :cond_d

    .line 354
    .line 355
    invoke-virtual {v3}, Lw2/a;->c()Landroid/os/Parcel;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    const/4 v6, 0x6

    .line 360
    invoke-virtual {v3, v4, v6}, Lw2/a;->b(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 365
    .line 366
    .line 367
    move-result v6

    .line 368
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 369
    .line 370
    .line 371
    const/4 v4, 0x3

    .line 372
    if-lt v6, v4, :cond_a

    .line 373
    .line 374
    invoke-virtual/range {v20 .. v20}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    check-cast v4, Lv2/f;

    .line 379
    .line 380
    if-eqz v4, :cond_9

    .line 381
    .line 382
    new-instance v6, Lu2/b;

    .line 383
    .line 384
    invoke-direct {v6, v1}, Lu2/b;-><init>(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    iget-object v4, v4, Lv2/f;->a:Landroid/database/Cursor;

    .line 388
    .line 389
    new-instance v7, Lu2/b;

    .line 390
    .line 391
    invoke-direct {v7, v4}, Lu2/b;-><init>(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v3, v6, v0, v7}, Lv2/g;->e(Lu2/b;ILu2/b;)Lu2/a;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    goto :goto_4

    .line 399
    :cond_9
    new-instance v0, Lv2/a;

    .line 400
    .line 401
    const-string v3, "No cached result cursor holder"

    .line 402
    .line 403
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    throw v0

    .line 407
    :cond_a
    if-ne v6, v12, :cond_b

    .line 408
    .line 409
    const-string v4, "DynamiteModule"

    .line 410
    .line 411
    const-string v6, "IDynamite loader version = 2"

    .line 412
    .line 413
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    new-instance v4, Lu2/b;

    .line 417
    .line 418
    invoke-direct {v4, v1}, Lu2/b;-><init>(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3, v4, v0}, Lv2/g;->f(Lu2/b;I)Lu2/a;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    goto :goto_4

    .line 426
    :cond_b
    const-string v4, "DynamiteModule"

    .line 427
    .line 428
    const-string v6, "Dynamite loader version < 2, falling back to createModuleContext"

    .line 429
    .line 430
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    new-instance v4, Lu2/b;

    .line 434
    .line 435
    invoke-direct {v4, v1}, Lu2/b;-><init>(Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v3, v4, v0}, Lv2/g;->d(Lu2/b;I)Lu2/a;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    :goto_4
    invoke-static {v0}, Lu2/b;->d(Lu2/a;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    if-eqz v0, :cond_c

    .line 447
    .line 448
    new-instance v3, Lv2/c;

    .line 449
    .line 450
    check-cast v0, Landroid/content/Context;

    .line 451
    .line 452
    invoke-direct {v3, v0}, Lv2/c;-><init>(Landroid/content/Context;)V

    .line 453
    .line 454
    .line 455
    goto/16 :goto_3

    .line 456
    .line 457
    :cond_c
    new-instance v0, Lv2/a;

    .line 458
    .line 459
    const-string v3, "Failed to load remote module."

    .line 460
    .line 461
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    throw v0

    .line 465
    :cond_d
    new-instance v0, Lv2/a;

    .line 466
    .line 467
    const-string v3, "Failed to create IDynamiteLoader."

    .line 468
    .line 469
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw v0

    .line 473
    :cond_e
    new-instance v0, Lv2/a;

    .line 474
    .line 475
    const-string v3, "Failed to determine which loading route to use."

    .line 476
    .line 477
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lv2/a; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 481
    :catchall_4
    move-exception v0

    .line 482
    goto :goto_5

    .line 483
    :cond_f
    :try_start_e
    new-instance v0, Lv2/a;

    .line 484
    .line 485
    const-string v3, "Remote loading disabled"

    .line 486
    .line 487
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    throw v0

    .line 491
    :goto_5
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 492
    :try_start_f
    throw v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lv2/a; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 493
    :goto_6
    :try_start_10
    new-instance v3, Lv2/a;

    .line 494
    .line 495
    const-string v4, "Failed to load remote module."

    .line 496
    .line 497
    invoke-direct {v3, v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    .line 499
    .line 500
    throw v3

    .line 501
    :catch_2
    move-exception v0

    .line 502
    goto :goto_9

    .line 503
    :goto_7
    throw v0

    .line 504
    :goto_8
    new-instance v3, Lv2/a;

    .line 505
    .line 506
    const-string v4, "Failed to load remote module."

    .line 507
    .line 508
    invoke-direct {v3, v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 509
    .line 510
    .line 511
    throw v3
    :try_end_10
    .catch Lv2/a; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 512
    :goto_9
    :try_start_11
    const-string v3, "DynamiteModule"

    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    new-instance v6, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    .line 522
    .line 523
    const-string v7, "Failed to load remote module: "

    .line 524
    .line 525
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    iget v3, v9, Ll/h;->a:I

    .line 539
    .line 540
    if-eqz v3, :cond_12

    .line 541
    .line 542
    new-instance v4, Lc9/i;

    .line 543
    .line 544
    invoke-direct {v4, v3}, Lc9/i;-><init>(I)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2, v1, v4}, Lw7/c;->n(Landroid/content/Context;Lv2/b;)Ll/h;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    iget v1, v1, Ll/h;->c:I

    .line 552
    .line 553
    if-ne v1, v5, :cond_12

    .line 554
    .line 555
    const-string v0, "com.google.android.gms.providerinstaller.dynamite"

    .line 556
    .line 557
    const-string v1, "Selected local version of "

    .line 558
    .line 559
    const-string v2, "DynamiteModule"

    .line 560
    .line 561
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .line 567
    .line 568
    new-instance v0, Lv2/c;

    .line 569
    .line 570
    invoke-direct {v0, v8}, Lv2/c;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 571
    .line 572
    .line 573
    :goto_a
    cmp-long v1, v18, v16

    .line 574
    .line 575
    if-nez v1, :cond_10

    .line 576
    .line 577
    sget-object v1, Lv2/c;->i:Lv2/e;

    .line 578
    .line 579
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 580
    .line 581
    .line 582
    goto :goto_b

    .line 583
    :cond_10
    sget-object v1, Lv2/c;->i:Lv2/e;

    .line 584
    .line 585
    invoke-virtual {v1, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    :goto_b
    iget-object v1, v11, Lv2/f;->a:Landroid/database/Cursor;

    .line 589
    .line 590
    if-eqz v1, :cond_11

    .line 591
    .line 592
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 593
    .line 594
    .line 595
    :cond_11
    sget-object v1, Lv2/c;->h:Ljava/lang/ThreadLocal;

    .line 596
    .line 597
    invoke-virtual {v1, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 598
    .line 599
    .line 600
    return-object v0

    .line 601
    :cond_12
    :try_start_12
    new-instance v1, Lv2/a;

    .line 602
    .line 603
    const-string v2, "Remote load failed. No local fallback found."

    .line 604
    .line 605
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 606
    .line 607
    .line 608
    throw v1

    .line 609
    :cond_13
    new-instance v1, Lv2/a;

    .line 610
    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    throw v1

    .line 627
    :cond_14
    new-instance v0, Lv2/a;

    .line 628
    .line 629
    iget v1, v9, Ll/h;->a:I

    .line 630
    .line 631
    iget v2, v9, Ll/h;->b:I

    .line 632
    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    .line 634
    .line 635
    move-object/from16 v4, v21

    .line 636
    .line 637
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    const-string v1, " and remote version is "

    .line 644
    .line 645
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    const-string v1, "."

    .line 652
    .line 653
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 664
    :catchall_5
    move-exception v0

    .line 665
    move-wide/from16 v18, v14

    .line 666
    .line 667
    :goto_c
    cmp-long v1, v18, v16

    .line 668
    .line 669
    if-nez v1, :cond_15

    .line 670
    .line 671
    sget-object v1, Lv2/c;->i:Lv2/e;

    .line 672
    .line 673
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 674
    .line 675
    .line 676
    goto :goto_d

    .line 677
    :cond_15
    sget-object v1, Lv2/c;->i:Lv2/e;

    .line 678
    .line 679
    invoke-virtual {v1, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 680
    .line 681
    .line 682
    :goto_d
    iget-object v1, v11, Lv2/f;->a:Landroid/database/Cursor;

    .line 683
    .line 684
    if-eqz v1, :cond_16

    .line 685
    .line 686
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 687
    .line 688
    .line 689
    :cond_16
    sget-object v1, Lv2/c;->h:Ljava/lang/ThreadLocal;

    .line 690
    .line 691
    invoke-virtual {v1, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 692
    .line 693
    .line 694
    throw v0

    .line 695
    :cond_17
    new-instance v0, Lv2/a;

    .line 696
    .line 697
    const-string v1, "null application Context"

    .line 698
    .line 699
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    throw v0
.end method

.method public static b(Landroid/content/Context;ZZ)I
    .locals 9

    .line 1
    const-string v0, "com.google.android.gms.providerinstaller.dynamite"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    sget-object p0, Lv2/c;->i:Lv2/e;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Long;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    const-string p0, "api_force_staging"

    .line 21
    .line 22
    const-string v5, "api"

    .line 23
    .line 24
    const/4 v8, 0x1

    .line 25
    if-eq v8, p1, :cond_0

    .line 26
    .line 27
    move-object p0, v5

    .line 28
    :cond_0
    new-instance p1, Landroid/net/Uri$Builder;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v5, "content"

    .line 34
    .line 35
    invoke-virtual {p1, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v5, "com.google.android.gms.chimera"

    .line 40
    .line 41
    invoke-virtual {p1, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "requestStartTime"

    .line 54
    .line 55
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 72
    .line 73
    .line 74
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 75
    if-eqz p0, :cond_a

    .line 76
    .line 77
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_a

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lez v0, :cond_6

    .line 89
    .line 90
    const-class v2, Lv2/c;

    .line 91
    .line 92
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    const/4 v3, 0x2

    .line 94
    :try_start_2
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    sput-object v3, Lv2/c;->d:Ljava/lang/String;

    .line 99
    .line 100
    const-string v3, "loaderVersion"

    .line 101
    .line 102
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-ltz v3, :cond_1

    .line 107
    .line 108
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    sput v3, Lv2/c;->f:I

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    move-object p1, v0

    .line 117
    goto :goto_5

    .line 118
    :cond_1
    :goto_0
    const-string v3, "disableStandaloneDynamiteLoader2"

    .line 119
    .line 120
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-ltz v3, :cond_3

    .line 125
    .line 126
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_2

    .line 131
    .line 132
    move v3, v8

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    move v3, p1

    .line 135
    :goto_1
    sput-boolean v3, Lv2/c;->e:Z

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    move v3, p1

    .line 139
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :try_start_3
    sget-object v2, Lv2/c;->h:Ljava/lang/ThreadLocal;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    check-cast v2, Lv2/f;

    .line 147
    .line 148
    if-eqz v2, :cond_4

    .line 149
    .line 150
    iget-object v4, v2, Lv2/f;->a:Landroid/database/Cursor;

    .line 151
    .line 152
    if-nez v4, :cond_4

    .line 153
    .line 154
    iput-object p0, v2, Lv2/f;->a:Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_4
    move v8, p1

    .line 158
    :goto_3
    if-eqz v8, :cond_5

    .line 159
    .line 160
    :goto_4
    move p1, v3

    .line 161
    goto :goto_6

    .line 162
    :cond_5
    move-object v1, p0

    .line 163
    goto :goto_4

    .line 164
    :goto_5
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    :catchall_1
    move-exception v0

    .line 167
    move-object p1, v0

    .line 168
    goto :goto_8

    .line 169
    :catch_0
    move-exception v0

    .line 170
    move-object p1, v0

    .line 171
    goto :goto_9

    .line 172
    :cond_6
    move-object v1, p0

    .line 173
    :goto_6
    if-eqz p2, :cond_8

    .line 174
    .line 175
    if-nez p1, :cond_7

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_7
    :try_start_6
    new-instance p0, Lv2/a;

    .line 179
    .line 180
    const-string p1, "forcing fallback to container DynamiteLoader impl"

    .line 181
    .line 182
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 186
    :catchall_2
    move-exception v0

    .line 187
    move-object p0, v0

    .line 188
    goto :goto_b

    .line 189
    :catch_1
    move-exception v0

    .line 190
    move-object p0, v0

    .line 191
    goto :goto_a

    .line 192
    :cond_8
    :goto_7
    if-eqz v1, :cond_9

    .line 193
    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 195
    .line 196
    .line 197
    :cond_9
    return v0

    .line 198
    :cond_a
    :try_start_7
    const-string p1, "DynamiteModule"

    .line 199
    .line 200
    const-string p2, "Failed to retrieve remote module version."

    .line 201
    .line 202
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    new-instance p1, Lv2/a;

    .line 206
    .line 207
    const-string p2, "Failed to connect to dynamite module ContentResolver."

    .line 208
    .line 209
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 213
    :goto_8
    move-object v1, p0

    .line 214
    move-object p0, p1

    .line 215
    goto :goto_b

    .line 216
    :goto_9
    move-object v1, p0

    .line 217
    move-object p0, p1

    .line 218
    :goto_a
    :try_start_8
    nop

    .line 219
    instance-of p1, p0, Lv2/a;

    .line 220
    .line 221
    if-eqz p1, :cond_b

    .line 222
    .line 223
    throw p0

    .line 224
    :cond_b
    new-instance p1, Lv2/a;

    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v2, "V2 version check failed: "

    .line 236
    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 251
    :goto_b
    if-eqz v1, :cond_c

    .line 252
    .line 253
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 254
    .line 255
    .line 256
    :cond_c
    throw p0
.end method

.method public static c(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/os/IBinder;

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v2, v1, Lv2/h;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    check-cast v1, Lv2/h;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v1, Lv2/h;

    .line 35
    .line 36
    invoke-direct {v1, p0, v0}, Lw2/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    sput-object v1, Lv2/c;->l:Lv2/h;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p0

    .line 43
    new-instance v0, Lv2/a;

    .line 44
    .line 45
    const-string v1, "Failed to instantiate dynamite loader"

    .line 46
    .line 47
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lv2/c;->g:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :goto_0
    return v2

    .line 21
    :cond_1
    sget-object v0, Lv2/c;->g:Ljava/lang/Boolean;

    .line 22
    .line 23
    const-string v1, "DynamiteModule"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v4, "com.google.android.gms.chimera"

    .line 33
    .line 34
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v4, Lp2/a;->b:Lp2/a;

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const v4, 0x989680

    .line 44
    .line 45
    .line 46
    invoke-static {v4, p0}, Lp2/a;->a(ILandroid/content/Context;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_2

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    const-string p0, "com.google.android.gms"

    .line 55
    .line 56
    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_2

    .line 63
    .line 64
    move v3, v2

    .line 65
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    sput-object p0, Lv2/c;->g:Ljava/lang/Boolean;

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 74
    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 78
    .line 79
    and-int/lit16 p0, p0, 0x81

    .line 80
    .line 81
    if-nez p0, :cond_3

    .line 82
    .line 83
    const-string p0, "Non-system-image GmsCore APK, forcing V1"

    .line 84
    .line 85
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    sput-boolean v2, Lv2/c;->e:Z

    .line 89
    .line 90
    :cond_3
    if-nez v3, :cond_4

    .line 91
    .line 92
    const-string p0, "Invalid GmsCore APK, remote loading disabled."

    .line 93
    .line 94
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_4
    return v3
.end method

.method public static e(Landroid/content/Context;)Lv2/g;
    .locals 5

    .line 1
    const-string v0, "Failed to load IDynamiteLoader from GmsCore: "

    .line 2
    .line 3
    const-class v1, Lv2/c;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, Lv2/c;->k:Lv2/g;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object v2

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :try_start_1
    const-string v3, "com.google.android.gms"

    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v3, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/os/IBinder;

    .line 37
    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    move-object v3, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v3, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 43
    .line 44
    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    instance-of v4, v3, Lv2/g;

    .line 49
    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    check-cast v3, Lv2/g;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    new-instance v3, Lv2/g;

    .line 58
    .line 59
    const-string v4, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 60
    .line 61
    invoke-direct {v3, p0, v4}, Lw2/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    if-eqz v3, :cond_3

    .line 65
    .line 66
    sput-object v3, Lv2/c;->k:Lv2/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    :try_start_2
    monitor-exit v1

    .line 69
    return-object v3

    .line 70
    :goto_1
    const-string v3, "DynamiteModule"

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_3
    monitor-exit v1

    .line 92
    return-object v2

    .line 93
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    throw p0
.end method
