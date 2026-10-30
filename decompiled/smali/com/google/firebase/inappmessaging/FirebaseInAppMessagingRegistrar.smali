.class public Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-fiam"


# instance fields
.field private backgroundExecutor:Lt4/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt4/p;"
        }
    .end annotation
.end field

.field private blockingExecutor:Lt4/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt4/p;"
        }
    .end annotation
.end field

.field private legacyTransportFactory:Lt4/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt4/p;"
        }
    .end annotation
.end field

.field private lightWeightExecutor:Lt4/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt4/p;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lt4/p;

    .line 5
    .line 6
    const-class v1, Ls4/a;

    .line 7
    .line 8
    const-class v2, Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->backgroundExecutor:Lt4/p;

    .line 14
    .line 15
    new-instance v0, Lt4/p;

    .line 16
    .line 17
    const-class v1, Ls4/b;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->blockingExecutor:Lt4/p;

    .line 23
    .line 24
    new-instance v0, Lt4/p;

    .line 25
    .line 26
    const-class v1, Ls4/c;

    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->lightWeightExecutor:Lt4/p;

    .line 32
    .line 33
    new-instance v0, Lt4/p;

    .line 34
    .line 35
    const-class v1, Lv4/a;

    .line 36
    .line 37
    const-class v2, La2/c;

    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->legacyTransportFactory:Lt4/p;

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;Ld2/h;)Ld5/j;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->providesFirebaseInAppMessaging(Lt4/b;)Ld5/j;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private providesFirebaseInAppMessaging(Lt4/b;)Ld5/j;
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-class v2, Lo4/f;

    .line 6
    .line 7
    invoke-interface {v0, v2}, Lt4/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lo4/f;

    .line 12
    .line 13
    const-class v3, Ll5/e;

    .line 14
    .line 15
    invoke-interface {v0, v3}, Lt4/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ll5/e;

    .line 20
    .line 21
    invoke-interface {v0}, Lt4/b;->d()Lt4/n;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-class v5, Lb5/b;

    .line 26
    .line 27
    invoke-interface {v0, v5}, Lt4/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lb5/b;

    .line 32
    .line 33
    invoke-virtual {v2}, Lo4/f;->a()V

    .line 34
    .line 35
    .line 36
    iget-object v6, v2, Lo4/f;->a:Landroid/content/Context;

    .line 37
    .line 38
    check-cast v6, Landroid/app/Application;

    .line 39
    .line 40
    new-instance v10, Lr5/c;

    .line 41
    .line 42
    const/16 v7, 0xf

    .line 43
    .line 44
    invoke-direct {v10, v7, v6}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v6, Landroid/support/v4/media/h;

    .line 48
    .line 49
    invoke-direct {v6, v4, v5}, Landroid/support/v4/media/h;-><init>(Lt4/n;Lb5/b;)V

    .line 50
    .line 51
    .line 52
    new-instance v13, Lz3/f;

    .line 53
    .line 54
    const/4 v4, 0x7

    .line 55
    invoke-direct {v13, v4}, Lz3/f;-><init>(I)V

    .line 56
    .line 57
    .line 58
    new-instance v12, Lr5/c;

    .line 59
    .line 60
    new-instance v4, Lf5/w;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    const/16 v5, 0x12

    .line 66
    .line 67
    const/4 v7, 0x0

    .line 68
    invoke-direct {v12, v5, v7}, Lr5/c;-><init>(IZ)V

    .line 69
    .line 70
    .line 71
    iput-object v4, v12, Lr5/c;->c:Ljava/lang/Object;

    .line 72
    .line 73
    new-instance v14, La5/h;

    .line 74
    .line 75
    iget-object v4, v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->lightWeightExecutor:Lt4/p;

    .line 76
    .line 77
    invoke-interface {v0, v4}, Lt4/b;->h(Lt4/p;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    move-object v15, v4

    .line 82
    check-cast v15, Ljava/util/concurrent/Executor;

    .line 83
    .line 84
    iget-object v4, v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->backgroundExecutor:Lt4/p;

    .line 85
    .line 86
    invoke-interface {v0, v4}, Lt4/b;->h(Lt4/p;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    move-object/from16 v16, v4

    .line 91
    .line 92
    check-cast v16, Ljava/util/concurrent/Executor;

    .line 93
    .line 94
    iget-object v4, v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->blockingExecutor:Lt4/p;

    .line 95
    .line 96
    invoke-interface {v0, v4}, Lt4/b;->h(Lt4/p;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    move-object/from16 v17, v4

    .line 101
    .line 102
    check-cast v17, Ljava/util/concurrent/Executor;

    .line 103
    .line 104
    const/16 v18, 0x8

    .line 105
    .line 106
    const/16 v19, 0x0

    .line 107
    .line 108
    invoke-direct/range {v14 .. v19}, La5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 109
    .line 110
    .line 111
    new-instance v8, Lp2/e;

    .line 112
    .line 113
    const/16 v4, 0x8

    .line 114
    .line 115
    invoke-direct {v8, v4}, Lp2/e;-><init>(I)V

    .line 116
    .line 117
    .line 118
    new-instance v9, Lp2/e;

    .line 119
    .line 120
    const/16 v4, 0x9

    .line 121
    .line 122
    invoke-direct {v9, v4}, Lp2/e;-><init>(I)V

    .line 123
    .line 124
    .line 125
    new-instance v11, Lc5/e;

    .line 126
    .line 127
    const/16 v4, 0x8

    .line 128
    .line 129
    invoke-direct {v11, v4}, Lc5/e;-><init>(I)V

    .line 130
    .line 131
    .line 132
    move-object/from16 v18, v14

    .line 133
    .line 134
    new-instance v14, Lz3/f;

    .line 135
    .line 136
    invoke-direct {v14, v4}, Lz3/f;-><init>(I)V

    .line 137
    .line 138
    .line 139
    new-instance v15, Lp2/e;

    .line 140
    .line 141
    const/16 v4, 0xa

    .line 142
    .line 143
    invoke-direct {v15, v4}, Lp2/e;-><init>(I)V

    .line 144
    .line 145
    .line 146
    new-instance v4, Lc5/e;

    .line 147
    .line 148
    const/16 v5, 0x9

    .line 149
    .line 150
    invoke-direct {v4, v5}, Lc5/e;-><init>(I)V

    .line 151
    .line 152
    .line 153
    new-instance v7, Lg5/b;

    .line 154
    .line 155
    move-object/from16 v16, v4

    .line 156
    .line 157
    move-object/from16 v17, v6

    .line 158
    .line 159
    invoke-direct/range {v7 .. v18}, Lg5/b;-><init>(Lp2/e;Lp2/e;Lr5/c;Lc5/e;Lr5/c;Lz3/f;Lz3/f;Lp2/e;Lc5/e;Landroid/support/v4/media/h;La5/h;)V

    .line 160
    .line 161
    .line 162
    new-instance v4, Lf5/a;

    .line 163
    .line 164
    const-class v5, Lq4/a;

    .line 165
    .line 166
    invoke-interface {v0, v5}, Lt4/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Lq4/a;

    .line 171
    .line 172
    const-string v6, "fiam"

    .line 173
    .line 174
    monitor-enter v5

    .line 175
    :try_start_0
    iget-object v8, v5, Lq4/a;->a:Ljava/util/HashMap;

    .line 176
    .line 177
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    if-nez v8, :cond_0

    .line 182
    .line 183
    iget-object v8, v5, Lq4/a;->a:Ljava/util/HashMap;

    .line 184
    .line 185
    new-instance v9, Lp4/c;

    .line 186
    .line 187
    iget-object v10, v5, Lq4/a;->b:Lk5/b;

    .line 188
    .line 189
    invoke-direct {v9, v10}, Lp4/c;-><init>(Lk5/b;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :cond_0
    :goto_0
    iget-object v8, v5, Lq4/a;->a:Ljava/util/HashMap;

    .line 200
    .line 201
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    check-cast v6, Lp4/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .line 207
    monitor-exit v5

    .line 208
    iget-object v5, v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->blockingExecutor:Lt4/p;

    .line 209
    .line 210
    invoke-interface {v0, v5}, Lt4/b;->h(Lt4/p;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 215
    .line 216
    invoke-direct {v4, v6, v5}, Lf5/a;-><init>(Lp4/c;Ljava/util/concurrent/Executor;)V

    .line 217
    .line 218
    .line 219
    new-instance v10, La5/h;

    .line 220
    .line 221
    new-instance v5, Li5/a;

    .line 222
    .line 223
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 224
    .line 225
    .line 226
    const/4 v6, 0x6

    .line 227
    invoke-direct {v10, v2, v3, v5, v6}, La5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 228
    .line 229
    .line 230
    new-instance v3, Lf5/l0;

    .line 231
    .line 232
    invoke-direct {v3, v2}, Lf5/l0;-><init>(Lo4/f;)V

    .line 233
    .line 234
    .line 235
    iget-object v2, v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->legacyTransportFactory:Lt4/p;

    .line 236
    .line 237
    invoke-interface {v0, v2}, Lt4/b;->h(Lt4/p;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, La2/c;

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    new-instance v2, Lg5/a;

    .line 247
    .line 248
    const/4 v5, 0x2

    .line 249
    invoke-direct {v2, v7, v5}, Lg5/a;-><init>(Lg5/b;I)V

    .line 250
    .line 251
    .line 252
    new-instance v5, Lg5/a;

    .line 253
    .line 254
    const/16 v6, 0xb

    .line 255
    .line 256
    invoke-direct {v5, v7, v6}, Lg5/a;-><init>(Lg5/b;I)V

    .line 257
    .line 258
    .line 259
    new-instance v14, Lg5/a;

    .line 260
    .line 261
    const/4 v6, 0x5

    .line 262
    invoke-direct {v14, v7, v6}, Lg5/a;-><init>(Lg5/b;I)V

    .line 263
    .line 264
    .line 265
    new-instance v15, Lz3/f;

    .line 266
    .line 267
    const/4 v6, 0x6

    .line 268
    invoke-direct {v15, v6, v7}, Lz3/f;-><init>(ILjava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    new-instance v6, Lg5/a;

    .line 272
    .line 273
    const/16 v8, 0x8

    .line 274
    .line 275
    invoke-direct {v6, v7, v8}, Lg5/a;-><init>(Lg5/b;I)V

    .line 276
    .line 277
    .line 278
    new-instance v8, Lr5/c;

    .line 279
    .line 280
    const/16 v9, 0x11

    .line 281
    .line 282
    invoke-direct {v8, v9, v3}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    new-instance v9, Landroid/support/v4/media/h;

    .line 286
    .line 287
    const/16 v11, 0xf

    .line 288
    .line 289
    invoke-direct {v9, v3, v6, v8, v11}, Landroid/support/v4/media/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 290
    .line 291
    .line 292
    invoke-static {v9}, Le5/a;->a(Le5/b;)Lt8/a;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    new-instance v6, Lf5/m;

    .line 297
    .line 298
    const/4 v8, 0x0

    .line 299
    invoke-direct {v6, v3, v8}, Lf5/m;-><init>(Lt8/a;I)V

    .line 300
    .line 301
    .line 302
    invoke-static {v6}, Le5/a;->a(Le5/b;)Lt8/a;

    .line 303
    .line 304
    .line 305
    move-result-object v11

    .line 306
    new-instance v12, Lg5/a;

    .line 307
    .line 308
    const/4 v3, 0x3

    .line 309
    invoke-direct {v12, v7, v3}, Lg5/a;-><init>(Lg5/b;I)V

    .line 310
    .line 311
    .line 312
    new-instance v13, Lg5/a;

    .line 313
    .line 314
    const/16 v3, 0xd

    .line 315
    .line 316
    invoke-direct {v13, v7, v3}, Lg5/a;-><init>(Lg5/b;I)V

    .line 317
    .line 318
    .line 319
    new-instance v8, Lb1/m;

    .line 320
    .line 321
    const/4 v9, 0x5

    .line 322
    invoke-direct/range {v8 .. v13}, Lb1/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v8}, Le5/a;->a(Le5/b;)Lt8/a;

    .line 326
    .line 327
    .line 328
    move-result-object v16

    .line 329
    new-instance v3, Lg5/a;

    .line 330
    .line 331
    const/4 v6, 0x1

    .line 332
    invoke-direct {v3, v7, v6}, Lg5/a;-><init>(Lg5/b;I)V

    .line 333
    .line 334
    .line 335
    new-instance v6, Lg5/a;

    .line 336
    .line 337
    const/16 v8, 0xf

    .line 338
    .line 339
    invoke-direct {v6, v7, v8}, Lg5/a;-><init>(Lg5/b;I)V

    .line 340
    .line 341
    .line 342
    new-instance v12, Lg5/a;

    .line 343
    .line 344
    const/16 v8, 0x9

    .line 345
    .line 346
    invoke-direct {v12, v7, v8}, Lg5/a;-><init>(Lg5/b;I)V

    .line 347
    .line 348
    .line 349
    new-instance v8, Lg5/a;

    .line 350
    .line 351
    const/16 v9, 0xe

    .line 352
    .line 353
    invoke-direct {v8, v7, v9}, Lg5/a;-><init>(Lg5/b;I)V

    .line 354
    .line 355
    .line 356
    new-instance v9, Lw7/c;

    .line 357
    .line 358
    const/4 v11, 0x6

    .line 359
    invoke-direct {v9, v11, v7}, Lw7/c;-><init>(ILjava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    new-instance v11, Lh5/a;

    .line 363
    .line 364
    const/4 v13, 0x2

    .line 365
    invoke-direct {v11, v10, v13}, Lh5/a;-><init>(La5/h;I)V

    .line 366
    .line 367
    .line 368
    new-instance v13, Lr5/c;

    .line 369
    .line 370
    invoke-direct {v13, v10, v11}, Lr5/c;-><init>(La5/h;Lh5/a;)V

    .line 371
    .line 372
    .line 373
    new-instance v1, Lh5/a;

    .line 374
    .line 375
    move-object/from16 p1, v2

    .line 376
    .line 377
    const/4 v2, 0x1

    .line 378
    invoke-direct {v1, v10, v2}, Lh5/a;-><init>(La5/h;I)V

    .line 379
    .line 380
    .line 381
    new-instance v2, Lg5/a;

    .line 382
    .line 383
    move-object/from16 v23, v1

    .line 384
    .line 385
    const/4 v1, 0x7

    .line 386
    invoke-direct {v2, v7, v1}, Lg5/a;-><init>(Lg5/b;I)V

    .line 387
    .line 388
    .line 389
    new-instance v1, La5/h;

    .line 390
    .line 391
    move-object/from16 v17, v3

    .line 392
    .line 393
    const/4 v3, 0x7

    .line 394
    invoke-direct {v1, v10, v11, v2, v3}, La5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 395
    .line 396
    .line 397
    new-instance v2, Le5/c;

    .line 398
    .line 399
    const/4 v3, 0x0

    .line 400
    invoke-direct {v2, v3, v4}, Le5/c;-><init>(ILjava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    new-instance v3, Lg5/a;

    .line 404
    .line 405
    const/4 v4, 0x4

    .line 406
    invoke-direct {v3, v7, v4}, Lg5/a;-><init>(Lg5/b;I)V

    .line 407
    .line 408
    .line 409
    new-instance v11, Lf5/u;

    .line 410
    .line 411
    move-object/from16 v24, v1

    .line 412
    .line 413
    move-object/from16 v25, v2

    .line 414
    .line 415
    move-object/from16 v26, v3

    .line 416
    .line 417
    move-object/from16 v18, v6

    .line 418
    .line 419
    move-object/from16 v20, v8

    .line 420
    .line 421
    move-object/from16 v21, v9

    .line 422
    .line 423
    move-object/from16 v19, v12

    .line 424
    .line 425
    move-object/from16 v22, v13

    .line 426
    .line 427
    move-object/from16 v12, p1

    .line 428
    .line 429
    move-object v13, v5

    .line 430
    invoke-direct/range {v11 .. v26}, Lf5/u;-><init>(Lg5/a;Lg5/a;Lg5/a;Lz3/f;Lt8/a;Lg5/a;Lg5/a;Lg5/a;Lg5/a;Lw7/c;Lr5/c;Lh5/a;La5/h;Le5/c;Lg5/a;)V

    .line 431
    .line 432
    .line 433
    move-object/from16 v1, v18

    .line 434
    .line 435
    move-object/from16 v12, v19

    .line 436
    .line 437
    move-object/from16 v2, v20

    .line 438
    .line 439
    move-object/from16 v3, v21

    .line 440
    .line 441
    move-object/from16 v22, v26

    .line 442
    .line 443
    invoke-static {v11}, Le5/a;->a(Le5/b;)Lt8/a;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    new-instance v5, Lg5/a;

    .line 448
    .line 449
    const/16 v6, 0xc

    .line 450
    .line 451
    invoke-direct {v5, v7, v6}, Lg5/a;-><init>(Lg5/b;I)V

    .line 452
    .line 453
    .line 454
    new-instance v6, Lh5/a;

    .line 455
    .line 456
    const/4 v8, 0x0

    .line 457
    invoke-direct {v6, v10, v8}, Lh5/a;-><init>(La5/h;I)V

    .line 458
    .line 459
    .line 460
    new-instance v8, Le5/c;

    .line 461
    .line 462
    const/4 v9, 0x0

    .line 463
    invoke-direct {v8, v9, v0}, Le5/c;-><init>(ILjava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    new-instance v0, Lg5/a;

    .line 467
    .line 468
    invoke-direct {v0, v7, v9}, Lg5/a;-><init>(Lg5/b;I)V

    .line 469
    .line 470
    .line 471
    new-instance v9, Lg5/a;

    .line 472
    .line 473
    const/4 v10, 0x6

    .line 474
    invoke-direct {v9, v7, v10}, Lg5/a;-><init>(Lg5/b;I)V

    .line 475
    .line 476
    .line 477
    move-object/from16 v20, v15

    .line 478
    .line 479
    new-instance v15, Le0/s3;

    .line 480
    .line 481
    move-object/from16 v18, v0

    .line 482
    .line 483
    move-object/from16 v16, v6

    .line 484
    .line 485
    move-object/from16 v17, v8

    .line 486
    .line 487
    move-object/from16 v21, v9

    .line 488
    .line 489
    move-object/from16 v19, v23

    .line 490
    .line 491
    invoke-direct/range {v15 .. v22}, Le0/s3;-><init>(Lh5/a;Le5/c;Lg5/a;Lh5/a;Lz3/f;Lg5/a;Lg5/a;)V

    .line 492
    .line 493
    .line 494
    move-object v0, v15

    .line 495
    move-object/from16 v15, v20

    .line 496
    .line 497
    invoke-static {v0}, Le5/a;->a(Le5/b;)Lt8/a;

    .line 498
    .line 499
    .line 500
    move-result-object v18

    .line 501
    new-instance v22, Lf5/i;

    .line 502
    .line 503
    move-object/from16 v17, v3

    .line 504
    .line 505
    move-object/from16 v16, v14

    .line 506
    .line 507
    move-object v13, v15

    .line 508
    move-object/from16 v11, v22

    .line 509
    .line 510
    move-object/from16 v19, v24

    .line 511
    .line 512
    move-object v14, v1

    .line 513
    move-object v15, v2

    .line 514
    invoke-direct/range {v11 .. v19}, Lf5/i;-><init>(Lg5/a;Lz3/f;Lg5/a;Lg5/a;Lg5/a;Lw7/c;Lt8/a;La5/h;)V

    .line 515
    .line 516
    .line 517
    new-instance v0, Lg5/a;

    .line 518
    .line 519
    const/16 v1, 0xa

    .line 520
    .line 521
    invoke-direct {v0, v7, v1}, Lg5/a;-><init>(Lg5/b;I)V

    .line 522
    .line 523
    .line 524
    new-instance v17, Lc2/k;

    .line 525
    .line 526
    const/16 v25, 0x1

    .line 527
    .line 528
    move-object/from16 v18, v23

    .line 529
    .line 530
    move-object/from16 v23, v21

    .line 531
    .line 532
    move-object/from16 v21, v18

    .line 533
    .line 534
    move-object/from16 v18, v4

    .line 535
    .line 536
    move-object/from16 v19, v5

    .line 537
    .line 538
    move-object/from16 v20, v24

    .line 539
    .line 540
    move-object/from16 v24, v0

    .line 541
    .line 542
    invoke-direct/range {v17 .. v25}, Lc2/k;-><init>(Lt8/a;Lt8/a;Lt8/a;Lt8/a;Lt8/a;Lt8/a;Lt8/a;I)V

    .line 543
    .line 544
    .line 545
    invoke-static/range {v17 .. v17}, Le5/a;->a(Le5/b;)Lt8/a;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    check-cast v0, Ld5/j;

    .line 554
    .line 555
    return-object v0

    .line 556
    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    throw v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lt4/a;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ld5/j;

    .line 2
    .line 3
    invoke-static {v0}, Lt4/a;->a(Ljava/lang/Class;)Lf6/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "fire-fiam"

    .line 8
    .line 9
    iput-object v1, v0, Lf6/d;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-class v2, Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v2}, Lt4/h;->a(Ljava/lang/Class;)Lt4/h;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Lf6/d;->a(Lt4/h;)V

    .line 18
    .line 19
    .line 20
    const-class v2, Ll5/e;

    .line 21
    .line 22
    invoke-static {v2}, Lt4/h;->a(Ljava/lang/Class;)Lt4/h;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Lf6/d;->a(Lt4/h;)V

    .line 27
    .line 28
    .line 29
    const-class v2, Lo4/f;

    .line 30
    .line 31
    invoke-static {v2}, Lt4/h;->a(Ljava/lang/Class;)Lt4/h;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Lf6/d;->a(Lt4/h;)V

    .line 36
    .line 37
    .line 38
    const-class v2, Lq4/a;

    .line 39
    .line 40
    invoke-static {v2}, Lt4/h;->a(Ljava/lang/Class;)Lt4/h;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Lf6/d;->a(Lt4/h;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lt4/h;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x2

    .line 51
    const-class v5, Lf5/b0;

    .line 52
    .line 53
    invoke-direct {v2, v3, v4, v5}, Lt4/h;-><init>(IILjava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lf6/d;->a(Lt4/h;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->legacyTransportFactory:Lt4/p;

    .line 60
    .line 61
    new-instance v5, Lt4/h;

    .line 62
    .line 63
    const/4 v6, 0x1

    .line 64
    invoke-direct {v5, v2, v6, v3}, Lt4/h;-><init>(Lt4/p;II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v5}, Lf6/d;->a(Lt4/h;)V

    .line 68
    .line 69
    .line 70
    const-class v2, Lb5/b;

    .line 71
    .line 72
    invoke-static {v2}, Lt4/h;->a(Ljava/lang/Class;)Lt4/h;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Lf6/d;->a(Lt4/h;)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->backgroundExecutor:Lt4/p;

    .line 80
    .line 81
    new-instance v5, Lt4/h;

    .line 82
    .line 83
    invoke-direct {v5, v2, v6, v3}, Lt4/h;-><init>(Lt4/p;II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v5}, Lf6/d;->a(Lt4/h;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->blockingExecutor:Lt4/p;

    .line 90
    .line 91
    new-instance v5, Lt4/h;

    .line 92
    .line 93
    invoke-direct {v5, v2, v6, v3}, Lt4/h;-><init>(Lt4/p;II)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v5}, Lf6/d;->a(Lt4/h;)V

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->lightWeightExecutor:Lt4/p;

    .line 100
    .line 101
    new-instance v5, Lt4/h;

    .line 102
    .line 103
    invoke-direct {v5, v2, v6, v3}, Lt4/h;-><init>(Lt4/p;II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v5}, Lf6/d;->a(Lt4/h;)V

    .line 107
    .line 108
    .line 109
    new-instance v2, Landroidx/fragment/app/h;

    .line 110
    .line 111
    const/4 v5, 0x5

    .line 112
    invoke-direct {v2, v5, p0}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iput-object v2, v0, Lf6/d;->f:Ljava/lang/Object;

    .line 116
    .line 117
    iget v2, v0, Lf6/d;->b:I

    .line 118
    .line 119
    if-nez v2, :cond_0

    .line 120
    .line 121
    move v3, v6

    .line 122
    :cond_0
    if-eqz v3, :cond_1

    .line 123
    .line 124
    iput v4, v0, Lf6/d;->b:I

    .line 125
    .line 126
    invoke-virtual {v0}, Lf6/d;->b()Lt4/a;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v2, "21.0.1"

    .line 131
    .line 132
    invoke-static {v1, v2}, Lb1/u;->d(Ljava/lang/String;Ljava/lang/String;)Lt4/a;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    filled-new-array {v0, v1}, [Lt4/a;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    return-object v0

    .line 145
    :cond_1
    const-string v0, "Instantiation type has already been set."

    .line 146
    .line 147
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/4 v0, 0x0

    .line 151
    return-object v0
.end method
